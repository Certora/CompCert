/-
  **M0a, part 2 — the loop calibration.**

  `ZAdler32` proved adler32.c's `len == 1` fast path: 579 lines for a *loop-free*
  branch, which is where the plan's "45 Lean lines per line of C" figure came
  from.  There was no data at all on loops.  This file supplies it, on the next
  branch of the same function:

      if (len < 16) {
          while (len--) {
              adler += *buf++;
              sum2 += adler;
          }
          if (adler >= BASE) adler -= BASE;
          sum2 %= BASE;
          return adler | (sum2 << 16);
      }

  Four C lines of loop, and everything the round-trip proof will meet a thousand
  times over: `Sep.triple_loop` with a `Nat` measure, a moving pointer, a byte
  read out of `arrayU8`, and an unreduced accumulator that only agrees with the
  model modulo `BASE`.

  **Two design decisions, both load-bearing:**

  1. **The whole buffer stays owned; only `buf` moves.**  The invariant keeps
     `arrayU8 p b ofs0 n f` intact and tracks a consumed count `k`, so there is
     no array splitting anywhere in the proof and the frame is literally constant
     across every iteration.  (`arrayOf_split` exists and would have worked; not
     needing it is much cheaper.)
  2. **The moving pointer is carried abstractly.**  The invariant says
     `le.get _buf = some (.Vptr b ofsk)` together with
     `Ptrofs.unsigned ofsk = Ptrofs.unsigned ofs0 + k` — an *equation*, never a
     computed `Ptrofs` value.  `TreeSep` learned this the hard way: comparing two
     computed `Ptrofs` values blew the whnf heartbeat limit.  Normalising in the
     lemma statement is the fix, and here it means the pointer increment costs one
     rewrite by `byteOfs_unsigned` instead of any reduction at all.
-/
import ZAdler32
import ZAdlerMath
import CCLib
open CC CC.Sep CC.HProp
open Adler32

namespace ZAdlerLoop

open ZAdler32 ZAdlerMath

/-! ## The AST, transcribed and guarded -/

/-- `len < 16` -/
def lt16Cond : Expr :=
  .Ebinop .Olt (.Etempvar _len tulong) (.Econst_int (Integers.Int.repr 16) tint) tint

/-- `while (len--)` — clightgen's expansion: stash `len`, decrement it, then
    break if the *stashed* value was zero.  Note the decrement happens **before**
    the test, so on the exit iteration `len` wraps to `2^64 - 1`; nothing may read
    it afterwards, and nothing does. -/
def loopTest : Stmt :=
  .Ssequence
    (.Ssequence
      (.Sset _t'1 (.Etempvar _len tulong))
      (.Sset _len (.Ebinop .Osub (.Etempvar _t'1 tulong)
        (.Econst_int (Integers.Int.repr 1) tint) tulong)))
    (.Sifthenelse (.Etempvar _t'1 tulong) .Sskip .Sbreak)

/-- `adler += *buf++; sum2 += adler;` -/
def loopWork : Stmt :=
  .Ssequence
    (.Ssequence
      (.Ssequence
        (.Sset _t'2 (.Etempvar _buf (tptr tuchar)))
        (.Sset _buf (.Ebinop .Oadd (.Etempvar _t'2 (tptr tuchar))
          (.Econst_int (Integers.Int.repr 1) tint) (tptr tuchar))))
      (.Ssequence
        (.Sset _t'39 (.Ederef (.Etempvar _t'2 (tptr tuchar)) tuchar))
        (.Sset _adler (.Ebinop .Oadd (.Etempvar _adler tulong)
          (.Etempvar _t'39 tuchar) tulong))))
    (.Sset _sum2 (.Ebinop .Oadd (.Etempvar _sum2 tulong)
      (.Etempvar _adler tulong) tulong))

def lt16Loop : Stmt := .Sloop (.Ssequence loopTest loopWork) .Sskip

/-- `sum2 %= BASE;` — a real modulo here, unlike the `len == 1` path's
    conditional subtract. -/
def modSum2 : Stmt :=
  .Sset _sum2 (.Ebinop .Omod (.Etempvar _sum2 tulong)
    (.Econst_int (Integers.Int.repr 65521) tuint) tulong)

/-- What runs after the loop: one conditional subtract, one modulo, the return. -/
def lt16Tail : Stmt := .Ssequence reduceAdler (.Ssequence modSum2 retPack)

/-- **The `rfl` guard.**  Everything above is exactly the generated AST; the two
    existentials are the `buf == NULL` test and the `NMAX` block loop, neither of
    which this branch reaches. -/
theorem lt16_shape : ∃ bufNullBranch rest : Stmt,
    f_adler32_z.fn_body =
      .Ssequence setSum2
        (.Ssequence setAdler
          (.Ssequence (.Sifthenelse len1Cond len1Branch .Sskip)
            (.Ssequence bufNullBranch
              (.Ssequence
                (.Sifthenelse lt16Cond (.Ssequence lt16Loop lt16Tail) .Sskip)
                rest)))) :=
  ⟨_, _, rfl⟩

/-! ## Reading `*buf` through a moving pointer

`eval_index_bytes` reads `buf[i]`; the loop reads `*p` for a pointer `p` that has
already been advanced.  This is the same lemma one binop shorter, and it takes the
offset equation rather than a computed offset. -/

theorem eval_deref_byte {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {p : Permission} {b : Block} {ofs0 ofsk : Integers.Ptrofs} {n : Nat}
    {f : Nat → Nat} {h : Heap} {k : Nat} {pid : Ident}
    (hpr : permOrder p .Readable = true)
    (harr : arrayU8 p b (Integers.Ptrofs.unsigned ofs0) n f h)
    (hag : Heap.Agrees h m) (hk : k < n) (hb : ∀ j, f j < 256)
    (hptr : le.get pid = some (.Vptr b ofsk))
    (hofs : Integers.Ptrofs.unsigned ofsk
              = Integers.Ptrofs.unsigned ofs0 + (k : _root_.Int)) :
    EvalExpr ge e le m (.Ederef (.Etempvar pid (tptr tuchar)) tuchar)
      (.Vint (Integers.Int.repr ((f k : Nat)))) := by
  refine EvalExpr.Elvalue _ b ofsk .Full _
    (EvalLvalue.Ederef _ _ _ _ (EvalExpr.Etempvar pid (tptr tuchar) _ hptr)) ?_
  refine DerefLoc.value .Mint8unsigned _ rfl ?_
  show Mem.load .Mint8unsigned m b (Integers.Ptrofs.unsigned ofsk) = _
  rw [hofs]
  exact arrayU8_load p b hpr n f k hk hb _ h m harr hag

/-! ## Small arithmetic the loop needs -/

private theorem hw64 : (2 : Nat) ^ Archi.ptrWordsize = 18446744073709551616 := by
  rw [Archi.ptrWordsize_eq]

/-- The pointer after `k` bytes.  Carried as a `repr`, never compared as a value:
    only its `toNat` is ever used, which is the discipline `TreeSep` established
    after two computed `Ptrofs` values blew the whnf limit. -/
def ofsAt (ofs0 : Integers.Ptrofs) (k : Nat) : Integers.Ptrofs :=
  Integers.Ptrofs.repr (((ofs0.toNat + k : Nat) : _root_.Int))

theorem ofsAt_toNat (ofs0 : Integers.Ptrofs) (k : Nat)
    (h : ofs0.toNat + k < 18446744073709551616) :
    (ofsAt ofs0 k).toNat = ofs0.toNat + k := by
  show (Integers.MI.repr (((ofs0.toNat + k : Nat) : _root_.Int))).toNat = _
  simp only [Integers.MI.repr, BitVec.toNat_ofInt, hw64]
  omega

theorem ofsAt_zero (ofs0 : Integers.Ptrofs) : ofsAt ofs0 0 = ofs0 := by
  apply BitVec.eq_of_toNat_eq
  rw [ofsAt_toNat ofs0 0 (by have := ptrofs_toNat_lt ofs0; omega)]
  omega

theorem ofsAt_unsigned (ofs0 : Integers.Ptrofs) (k : Nat)
    (h : ofs0.toNat + k < 18446744073709551616) :
    Integers.Ptrofs.unsigned (ofsAt ofs0 k)
      = Integers.Ptrofs.unsigned ofs0 + (k : _root_.Int) := by
  show (((ofsAt ofs0 k).toNat : _root_.Int)) = ((ofs0.toNat : _root_.Int)) + _
  rw [ofsAt_toNat ofs0 k h]
  omega

/-- **The pointer increment, normalised in the statement.**  `buf = t'2 + 1`
    produces a `byteOfs`; this says it is the next `ofsAt`, so the invariant never
    has to compare two computed offsets. -/
theorem byteOfs_ofsAt (cenv : CompositeEnv) (ofs0 : Integers.Ptrofs) (k : Nat)
    (h : ofs0.toNat + k + 1 < 18446744073709551616) :
    byteOfs cenv (ofsAt ofs0 k) (Integers.Int.repr 1) = ofsAt ofs0 (k + 1) := by
  apply BitVec.eq_of_toNat_eq
  have hk : ofs0.toNat + k < 18446744073709551616 := by omega
  have hb := byteOfs_unsigned cenv (ofsAt ofs0 k) 1 (by omega)
              (by rw [ofsAt_toNat ofs0 k hk]; omega)
  -- `byteOfs_unsigned` is stated at a `Nat` index, so its `1` is `↑(1 : Nat)`;
  -- the AST's is an `Int` literal.  Defeq, not syntactically equal, so `rw`
  -- needs them lined up.
  rw [show ((1 : Nat) : _root_.Int) = 1 from rfl] at hb
  have hlhs : ((byteOfs cenv (ofsAt ofs0 k) (Integers.Int.repr 1)).toNat
                : _root_.Int)
            = ((ofs0.toNat : _root_.Int)) + (k : _root_.Int) + 1 := by
    show Integers.Ptrofs.unsigned _ = _
    rw [hb, ofsAt_unsigned ofs0 k hk]
    show ((ofs0.toNat : _root_.Int)) + (k : _root_.Int) + ((1 : Nat) : _root_.Int) = _
    omega
  have hrhs : (ofsAt ofs0 (k + 1)).toNat = ofs0.toNat + (k + 1) :=
    ofsAt_toNat ofs0 (k + 1) (by omega)
  omega

/-- The `if (t'1)` test: a `tulong` word is truthy exactly when it is nonzero. -/
theorem boolVal_u (n : Nat) (h : n < 18446744073709551616) (m : Mem) :
    Cop.boolVal (u n) tulong m = some (decide (n ≠ 0)) := by
  show some (!Integers.Int64.eq (Integers.Int64.repr ((n : _root_.Int)))
              Integers.Int64.zero) = _
  have key : Integers.Int64.eq (Integers.Int64.repr ((n : _root_.Int)))
               Integers.Int64.zero = decide (n = 0) := by
    show (Integers.Int64.repr ((n : _root_.Int)) == Integers.Int64.zero) = _
    by_cases h0 : n = 0
    · subst h0
      simp only [show Integers.Int64.repr (((0 : Nat) : _root_.Int))
                        = Integers.Int64.zero from rfl]
      simp
    · have hne : Integers.Int64.repr ((n : _root_.Int)) ≠ Integers.Int64.zero := by
        intro he
        have ht := congrArg BitVec.toNat he
        rw [u64_toNat n h] at ht
        exact h0 ht
      simp [hne, h0]
  rw [key]
  simp

/-! ## The invariant

The whole buffer is owned throughout, so the heap fragment is *literally the same
term* at every iteration; only the four tracked temporaries change.  `k` is
`nTot - n`, so no existential is needed for it — which is what lets the body be a
chain of plain `triple_set_local` steps. -/

/-- The four live temporaries at the loop head, after `nTot - n` bytes. -/
abbrev tracked (b : Block) (ofs0 : Integers.Ptrofs) (nTot : Nat) (f : Nat → Nat)
    (s : Sums) (n : Nat) : List (Ident × Val) :=
  [(_sum2, u (s.s2 + weighted s.s1 (bytesOf f (nTot - n)))),
   (_adler, u (s.s1 + sumBytes (bytesOf f (nTot - n)))),
   (_buf, .Vptr b (ofsAt ofs0 (nTot - n))),
   (_len, u n)]

/-- The loop invariant.  `n ≤ nTot` is carried as an existential over a `Prop`, so
    `Sep.triple_exists` strips it and the measures above `nTot` — which
    `triple_loop` still demands a body proof for — are vacuous. -/
def Inv (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (nTot : Nat)
    (f : Nat → Nat) (s : Sums) (n : Nat) : Sep.Assn := fun e le hp =>
  ∃ _ : n ≤ nTot,
    LocalSt emptyEnv (tracked b ofs0 nTot f s n)
      (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f) e le hp

/-- After the body, before the (empty) increment: one byte fewer. -/
def JAssn (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (nTot : Nat)
    (f : Nat → Nat) (s : Sums) (n : Nat) : Sep.Assn := fun e le hp =>
  ∃ m, n = m + 1 ∧ Inv p b ofs0 nTot f s m e le hp

/-- The loop's exit assertion: every byte consumed, `len` no longer mentioned
    (the decrement wrapped it on the exit iteration and nothing reads it). -/
def Post (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (nTot : Nat)
    (f : Nat → Nat) (s : Sums) : Sep.Assn := fun e le hp =>
  e = emptyEnv
  ∧ TempsHold
      [(_sum2, u (s.s2 + weighted s.s1 (bytesOf f nTot))),
       (_adler, u (s.s1 + sumBytes (bytesOf f nTot))),
       (_buf, .Vptr b (ofsAt ofs0 nTot))] le
  ∧ arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f hp

/-! ## The body

Two cases, split by the measure.  At `n = 0` the test breaks and `loopWork` is
unreachable; at `n = m + 1` it falls through and the three assignments advance the
invariant by one byte. -/

/-- The bounds the branch guarantees: at most 15 bytes, all bytes are bytes, and
    the incoming checksum is reduced.  Bundled so every lemma takes one
    hypothesis rather than four.  **Explicit arguments, not section variables** —
    a `structure` in a `section` captures them in declaration order and the call
    sites then silently disagree. -/
structure Bounds (p : Permission) (ofs0 : Integers.Ptrofs) (nTot : Nat)
    (f : Nat → Nat) (s : Sums) : Prop where
  readable : permOrder p .Readable = true
  small : nTot ≤ 15
  bytes : ∀ j, f j < 256
  valid : s.Valid
  fits : ofs0.toNat + nTot < 18446744073709551616

/-- Every accumulator stays far below 2^64: `adler ≤ 65520 + 15·255` and
    `sum2 ≤ 65520 + 15·adler`.  Proved once, used at every `u`. -/
theorem acc_bounds (p : Permission) (ofs0 : Integers.Ptrofs) (nTot : Nat)
    (f : Nat → Nat) (s : Sums) (hB : Bounds p ofs0 nTot f s) (k : Nat)
    (hk : k ≤ nTot) :
    s.s1 + sumBytes (bytesOf f k) < 70000
    ∧ s.s2 + weighted s.s1 (bytesOf f k) < 1200000 := by
  have hv := hB.valid
  simp only [Sums.Valid, BASE] at hv
  have hsb : ∀ j (hj : j ≤ nTot), sumBytes (bytesOf f j) ≤ j * 255 := by
    intro j
    induction j with
    | zero => intro _; exact Nat.le_of_eq rfl
    | succ i ih =>
        intro hle
        rw [bytesOf_succ, sumBytes_append]
        have h1 := ih (by omega)
        have h2 : sumBytes [f i] ≤ 255 := by
          have := hB.bytes i
          show f i + 0 ≤ 255
          omega
        have : i * 255 + 255 = (i + 1) * 255 := by omega
        omega
  have hwt : ∀ j (hj : j ≤ nTot), weighted s.s1 (bytesOf f j) ≤ j * 70000 := by
    intro j
    induction j with
    | zero => intro _; exact Nat.le_of_eq rfl
    | succ i ih =>
        intro hle
        rw [bytesOf_succ, weighted_append]
        have h1 := ih (by omega)
        have hs := hsb i (by omega)
        have hb := hB.bytes i
        have h2 : weighted (s.s1 + sumBytes (bytesOf f i)) [f i] ≤ 70000 := by
          show (s.s1 + sumBytes (bytesOf f i)) + f i
                 + weighted ((s.s1 + sumBytes (bytesOf f i)) + f i) [] ≤ 70000
          show (s.s1 + sumBytes (bytesOf f i)) + f i + 0 ≤ 70000
          have hsmall := hB.small
          omega
        have : i * 70000 + 70000 = (i + 1) * 70000 := by omega
        omega
  have e1 := hsb k hk
  have e2 := hwt k hk
  have hsmall := hB.small
  refine ⟨by omega, by omega⟩

section
variable (ge : CGenv) (fe : EntryRel) (p : Permission) (b : Block)
  (ofs0 : Integers.Ptrofs) (nTot : Nat) (f : Nat → Nat) (s : Sums)

/-- `Int.signed (Int.repr 1) = 1`, in the form the decrement needs. -/
private theorem signed_one : Integers.Int.signed (Integers.Int.repr 1) = 1 := rfl

/-! ### Measure 0: the test breaks

`while (len--)` stashes `len`, decrements it, then breaks on the *stashed* value.
At `n = 0` the decrement wraps `len` to `2^64 - 1`; that value is named here only
so `triple_set_local` has something to be given, and nothing ever reads it. -/

/-- The wrapped `len` on the exit iteration.  Never read. -/
def lenWrapped : Val :=
  .Vlong (Integers.Int64.sub (Integers.Int64.repr (((0 : Nat) : _root_.Int)))
    (Integers.Int64.repr (Integers.Int.signed (Integers.Int.repr 1))))

/-- `while (len--)` at measure 0.

    `localst_fwd` chains the two assignments and **stops at the `if`**, which is
    exactly what it should do — the `if` is the step that needs a decision, and it
    is the only thing left in the proof text besides two `EvalExpr` goals. -/
theorem test_break (R : Sep.ExitConds) :
    Triple ge fe f_adler32_z
      (LocalSt emptyEnv (tracked b ofs0 nTot f s 0)
        (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f))
      loopTest
      { normal := Assn.no, brk := Post p b ofs0 nTot f s,
        cont := Assn.no, ret := R.ret, goto := R.goto } := by
  localst_fwd
  · -- t'1 = len
    intro le m hp hT _ _
    -- the value is PINNED here, not inferred: this chain's post is discarded by
    -- the `break`, so nothing in the goal determines it
    exact EvalExpr.Etempvar _len tulong (u 0) (hT.get (by temps_get))
  · -- len = t'1 - 1  (wraps; never read)
    intro le m hp hT _ _
    refine EvalExpr.Ebinop .Osub _ _ _ (u 0) (.Vint (Integers.Int.repr 1))
      lenWrapped
      (EvalExpr.Etempvar _t'1 tulong (u 0) (hT.get (by temps_get)))
      (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    exact semBinop_sub_ulong_int _ _ _ _
  · -- if (t'1) skip else break — t'1 is 0, so break
    refine triple_if_local ge fe f_adler32_z _ _ _ _ false _ _ _
      (fun le m hp hT _ _ => ?_) ?_
    · refine ⟨u 0, EvalExpr.Etempvar _t'1 tulong (u 0) (hT.get (by temps_get)), ?_⟩
      simp only [typeof]
      rw [boolVal_u 0 (by omega)]
      simp
    · refine triple_conseq ge fe f_adler32_z (triple_break ge fe f_adler32_z _)
        (fun e le hp x => x) (fun _ _ _ hx => hx.elim) (fun e le hp hx => ?_)
        (fun _ _ _ hx => hx.elim) (fun _ _ hx => hx.elim)
      obtain ⟨he, hT, hH⟩ := hx
      refine ⟨he, ?_, hH⟩
      intro q hq
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      obtain h | h | h := hq
      -- `Post` says `bytesOf f nTot`; `tracked … 0` says `bytesOf f (nTot - 0)`.
      -- Definitionally equal, but `temps_get` matches syntactically.
      all_goals (subst h
                 refine hT.get ?_
                 simp only [tracked, Nat.sub_zero]
                 temps_get)

/-! ### Measure `m + 1`: the test falls through, the body advances one byte -/

/-- After the test at measure `m + 1`: `len` is `m`, `t'1` still holds `m + 1`. -/
abbrev lPass (m : Nat) : List (Ident × Val) :=
  (_len, u m) ::
  [(_t'1, u (m + 1)),
   (_sum2, u (s.s2 + weighted s.s1 (bytesOf f (nTot - (m + 1))))),
   (_adler, u (s.s1 + sumBytes (bytesOf f (nTot - (m + 1))))),
   (_buf, .Vptr b (ofsAt ofs0 (nTot - (m + 1))))]

theorem test_pass (m : Nat) (hm : m + 1 ≤ nTot) (hB : Bounds p ofs0 nTot f s) :
    Triple ge fe f_adler32_z
      (LocalSt emptyEnv (tracked b ofs0 nTot f s (m + 1))
        (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f))
      loopTest
      (.only (LocalSt emptyEnv (lPass b ofs0 nTot f s m)
        (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f))) := by
  have hsm := hB.small
  localst_fwd
  · -- t'1 = len.  Value PINNED: this chain feeds an `if`, so the goal does not
    -- determine it (see the note on `localst_fwd` at the end of the file).
    intro le mm hp hT _ _
    exact EvalExpr.Etempvar _len tulong (u (m + 1)) (hT.get (by temps_get))
  · -- len = t'1 - 1
    intro le mm hp hT _ _
    refine EvalExpr.Ebinop .Osub _ _ _ (u (m + 1))
      (.Vint (Integers.Int.repr 1)) (u m)
      (EvalExpr.Etempvar _t'1 tulong (u (m + 1)) (hT.get (by temps_get)))
      (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [semBinop_sub_ulong_int, signed_one,
        show (1 : _root_.Int) = ((1 : Nat) : _root_.Int) from rfl,
        u64_sub (m + 1) 1 (by omega)]
    show some (u (m + 1 - 1)) = some (u m)
    simp
  · -- if (t'1) skip else break — t'1 is nonzero, so fall through
    refine triple_if_local ge fe f_adler32_z _ _ _ _ true _ _ _
      (fun le mm hp hT _ _ => ?_) ?_
    · refine ⟨u (m + 1),
        EvalExpr.Etempvar _t'1 tulong (u (m + 1)) (hT.get (by temps_get)), ?_⟩
      simp only [typeof]
      rw [boolVal_u (m + 1) (by omega)]
      simp
    · exact triple_skip ge fe f_adler32_z _

/-- After the body at measure `m + 1`: one more byte folded in.

    **One list, and it is the only one in this proof.**  The old version of
    `work_step` spelled out five mid-condition lists — this is what
    `localst_fwd` removed.  Note `_t'1` survives here (the old version dropped it
    by weakening); keeping it is strictly stronger and `body_triple` drops it
    later anyway. -/
abbrev lWork (m : Nat) : List (Ident × Val) :=
  [(_sum2, u (s.s2 + weighted s.s1 (bytesOf f (nTot - m)))),
   (_adler, u (s.s1 + sumBytes (bytesOf f (nTot - m)))),
   (_t'39, bt (f (nTot - (m + 1)))),
   (_buf, .Vptr b (ofsAt ofs0 (nTot - m))),
   (_t'2, .Vptr b (ofsAt ofs0 (nTot - (m + 1)))),
   (_len, u m),
   (_t'1, u (m + 1))]

/-- `adler += *buf++; sum2 += adler;`

    Five assignments, and the proof is five `EvalExpr` obligations and nothing
    else.  `localst_fwd` walks the `Ssequence` tree, computes every
    mid-condition with `setLocal`, and unifies the last one against `lWork` —
    which is what fixes the assigned values, so each `hev` goal arrives with its
    target value already in place. -/
theorem work_step (m : Nat) (hm : m + 1 ≤ nTot) (hB : Bounds p ofs0 nTot f s) :
    Triple ge fe f_adler32_z
      (LocalSt emptyEnv (lPass b ofs0 nTot f s m)
        (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f))
      loopWork
      (.only (LocalSt emptyEnv (lWork b ofs0 nTot f s m)
        (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f))) := by
  have hsm := hB.small
  have hft := hB.fits
  have hk1 : nTot - (m + 1) + 1 = nTot - m := by omega
  have hklt : nTot - (m + 1) < nTot := by omega
  have hkfit : ofs0.toNat + (nTot - (m + 1)) < 18446744073709551616 := by omega
  have hkfit1 : ofs0.toNat + (nTot - (m + 1)) + 1 < 18446744073709551616 := by omega
  obtain ⟨hsum, hwt⟩ := step_unreduced f (nTot - (m + 1)) s.s1
  rw [hk1] at hsum hwt
  have hbyte := hB.bytes (nTot - (m + 1))
  localst_fwd
  · -- t'2 = buf
    intro le mm hp hT _ _
    exact EvalExpr.Etempvar _buf (tptr tuchar) _ (hT.get (by temps_get))
  · -- buf = t'2 + 1
    intro le mm hp hT _ _
    refine EvalExpr.Ebinop .Oadd _ _ _
      (.Vptr b (ofsAt ofs0 (nTot - (m + 1)))) (.Vint (Integers.Int.repr 1)) _
      (EvalExpr.Etempvar _t'2 (tptr tuchar) _ (hT.get (by temps_get)))
      (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [semAdd_byte, byteOfs_ofsAt _ ofs0 (nTot - (m + 1)) hkfit1, hk1]
  · -- t'39 = *t'2
    intro le mm hp hT hH hag
    exact eval_deref_byte (p := p) (ofs0 := ofs0) (n := nTot) (f := f)
      (k := nTot - (m + 1)) (pid := _t'2) hB.readable hH hag hklt hB.bytes
      (hT.get (by temps_get)) (ofsAt_unsigned ofs0 _ hkfit)
  · -- adler += t'39
    intro le mm hp hT _ _
    have hnat : s.s1 + sumBytes (bytesOf f (nTot - (m + 1))) + f (nTot - (m + 1))
              = s.s1 + sumBytes (bytesOf f (nTot - m)) := by rw [hsum]; omega
    refine EvalExpr.Ebinop .Oadd _ _ _
      (u (s.s1 + sumBytes (bytesOf f (nTot - (m + 1)))))
      (bt (f (nTot - (m + 1)))) _
      (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_get)))
      (EvalExpr.Etempvar _t'39 tuchar _ (hT.get (by temps_get))) ?_
    simp only [typeof]
    rw [semBinop_add_ulong_uchar, u32_unsigned _ (by omega), u64_add, hnat]
  · -- sum2 += adler
    intro le mm hp hT _ _
    have hnat : s.s2 + weighted s.s1 (bytesOf f (nTot - (m + 1)))
                  + (s.s1 + sumBytes (bytesOf f (nTot - m)))
                = s.s2 + weighted s.s1 (bytesOf f (nTot - m)) := by
      rw [hsum, hwt]; omega
    refine EvalExpr.Ebinop .Oadd _ _ _
      (u (s.s2 + weighted s.s1 (bytesOf f (nTot - (m + 1)))))
      (u (s.s1 + sumBytes (bytesOf f (nTot - m)))) _
      (EvalExpr.Etempvar _sum2 tulong _ (hT.get (by temps_get)))
      (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_get))) ?_
    simp only [typeof]
    rw [semBinop_add_ulong_ulong, u64_add, hnat]


/-! ## Assembling the loop

`triple_loop` wants the body at *every* measure, including measures above `nTot`.
`Inv`'s `∃ _ : n ≤ nTot` makes those vacuous, which is the whole reason it is
there. -/

theorem body_triple (hB : Bounds p ofs0 nTot f s) (R : Sep.ExitConds) (n : Nat) :
    Triple ge fe f_adler32_z (Inv p b ofs0 nTot f s n)
      (.Ssequence loopTest loopWork)
      { normal := JAssn p b ofs0 nTot f s n, brk := Post p b ofs0 nTot f s,
        cont := JAssn p b ofs0 nTot f s n, ret := R.ret, goto := R.goto } := by
  refine triple_exists ge fe f_adler32_z
    (fun (_ : n ≤ nTot) => LocalSt emptyEnv (tracked b ofs0 nTot f s n)
      (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f)) _ _ (fun hn => ?_)
  match n with
  | 0 =>
      -- the test breaks; `loopWork` is unreachable
      refine triple_seq ge fe f_adler32_z _ Assn.no _ _ _ ?_ (triple_vacuous _ _ _ _ _)
      exact triple_conseq ge fe f_adler32_z
        (test_break ge fe p b ofs0 nTot f s R)
        (fun _ _ _ x => x) (fun _ _ _ x => x) (fun _ _ _ x => x)
        (fun _ _ _ hx => hx.elim) (fun _ _ x => x)
  | m + 1 =>
      refine triple_seq_fwd ge fe f_adler32_z _
        (LocalSt emptyEnv (lPass b ofs0 nTot f s m)
          (arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f)) _ _ _
        (test_pass ge fe p b ofs0 nTot f s m hn hB) ?_
      refine triple_conseq ge fe f_adler32_z
        (work_step ge fe p b ofs0 nTot f s m hn hB)
        (fun _ _ _ x => x) (fun e le hp hx => ?_)
        (fun _ _ _ hx => hx.elim) (fun _ _ _ hx => hx.elim) (fun _ _ hx => hx.elim)
      obtain ⟨he, hT, hH⟩ := hx
      exact ⟨m, rfl, Nat.le_of_succ_le hn, he, TempsHold_mono (by temps_mem) hT, hH⟩

/-- The increment is `Sskip`, so all it has to do is hand back a strictly smaller
    measure — which `JAssn` already records. -/
theorem incr_triple (R : Sep.ExitConds) (n : Nat) :
    Triple ge fe f_adler32_z (JAssn p b ofs0 nTot f s n) .Sskip
      { normal := fun e le hp => ∃ n', n' < n ∧ Inv p b ofs0 nTot f s n' e le hp,
        brk := Post p b ofs0 nTot f s, cont := Assn.no,
        ret := R.ret, goto := R.goto } := by
  refine triple_conseq ge fe f_adler32_z (triple_skip ge fe f_adler32_z _)
    (fun _ _ _ x => x) (fun e le hp hx => ?_)
    (fun _ _ _ hx => hx.elim) (fun _ _ _ hx => hx.elim) (fun _ _ hx => hx.elim)
  obtain ⟨mm, hn, hInv⟩ := hx
  exact ⟨mm, by omega, hInv⟩

/-- **The loop.**  From `nTot` bytes remaining to all of them folded in. -/
theorem loop_triple (hB : Bounds p ofs0 nTot f s) (R : Sep.ExitConds) :
    Triple ge fe f_adler32_z (Inv p b ofs0 nTot f s nTot) lt16Loop
      { normal := Post p b ofs0 nTot f s, brk := R.brk, cont := R.cont,
        ret := R.ret, goto := R.goto } :=
  triple_loop ge fe f_adler32_z _ (Inv p b ofs0 nTot f s)
    (JAssn p b ofs0 nTot f s) _ _
    (body_triple ge fe p b ofs0 nTot f s hB R)
    (incr_triple ge fe p b ofs0 nTot f s R) nTot

/-- **The loop's entry state is the natural one.**  `bytesOf f 0 = []` and
    `ofsAt ofs0 0 = ofs0`, so the invariant at measure `nTot` says exactly what
    holds after `sum2 = adler >> 16; adler &= 0xffff` — nothing consumed, `buf`
    still at byte 0.  Stated as an introduction rule, which is the form a caller
    needs. -/
theorem entry_state (le : TempEnv) (hp : Heap)
    (hT : TempsHold [(_sum2, u s.s2), (_adler, u s.s1), (_buf, .Vptr b ofs0),
                     (_len, u nTot)] le)
    (hH : arrayU8 p b (Integers.Ptrofs.unsigned ofs0) nTot f hp) :
    Inv p b ofs0 nTot f s nTot emptyEnv le hp := by
  refine ⟨Nat.le_refl nTot, rfl, ?_, hH⟩
  simpa only [tracked, Nat.sub_self, ofsAt_zero, bytesOf, sumBytes, weighted,
              Nat.add_zero] using hT

/-- **The model, recovered.**  `sums_closed` turns the loop's unreduced
    accumulators into the model's per-byte fold — which is why the closed form had
    to be proved first. -/
theorem post_is_model (hB : Bounds p ofs0 nTot f s) :
    sums s (bytesOf f nTot)
      = { s1 := (s.s1 + sumBytes (bytesOf f nTot)) % BASE,
          s2 := (s.s2 + weighted s.s1 (bytesOf f nTot)) % BASE } :=
  sums_closed (bytesOf f nTot) s hB.valid

end

/-! ## Conclusions — M0a passes, and the plan's loop estimate is confirmed

The C proved here, from `adler32_z`'s `len < 16` branch:

    while (len--) { adler += *buf++; sum2 += adler; }

Four lines.  Clean build of this file: **1.25 s**.  No `sorry`; axioms are the
allowed five.  Code lines (comments and blanks excluded) are 400 here plus 100 in
`ZAdlerMath`, and they divide sharply by reusability:

| category | lines | pays for |
|---|---|---|
| generic Clight machinery | 77 | the whole project |
| adler32 mathematics (`ZAdlerMath`) | 100 | all of adler32, and the round trip needs the catenation law anyway |
| AST transcription + `rfl` guard | 37 | this function, mechanical |
| **the loop proof itself** | **286** | **this loop** |

**So the loop costs ~71 Lean lines per line of C** (286/4), or 81 counting the AST
transcription.  The plan predicted **90–135** for loop-, struct- and goto-heavy
code against the 45 measured on the *loop-free* `len == 1` path.  The measurement
comes in **below the predicted band** — 89 as first written, 71 after
`localst_fwd` — so the ~350k–600k-line project estimate is if anything
conservative.

**Where the lines go, and what `localst_fwd` changed.**  This file was first
written against `triple_set_local`, which makes the caller supply each
mid-condition list.  It was then rewritten against `localst_fwd`
(`CCLib.Temps`), which computes them:

| piece | before | after |
|---|---|---|
| `work_step` (the three assignments) | **117** | **57** |
| `test_pass` (measure `m+1` falls through) | 41 | 33 |
| `test_break` (measure 0 breaks) | 41 | 38 |
| the two lists they used to need | 13 | 14 |
| **total** | **212** | **142** |

**A 33 % cut**, and the file went from 477 to 400 code lines.  `work_step` alone
halved, because it was almost pure bookkeeping: five chained assignments, each
with its full post-state list written out.  Now it is five `EvalExpr` obligations
and nothing else.  So the loop figure improves from ~89 to **~71 Lean lines per
line of C**, and the mechanism generalises to every assignment chain in the
project.

**The tactic's one real limitation, stated precisely.**  `localst_fwd` removes the
*lists*; it cannot always infer the *values*.  The rule is exactly:

* if the chain's post is **determined by the goal**, the values come for free —
  `work_step` states its post as `lWork` and needed no help at all;
* if the chain **feeds a branch**, nothing determines them, and each assigned
  value must be given positionally.  That is `test_break` (whose post is
  discarded by the `break`) and `test_pass` (whose chain flows into an `if`).

Pinning a value costs no extra lines — it replaces an `_` — so the limitation is
mild.  It is also not fixable in general: a `break` genuinely discards the state,
so there is nothing in the goal to unify against.  `CCLib.Tactics` documents the
same constraint for its raw-`Assn` `forward_set`.

**What this does not cover.**  `adler32_z`'s other two loops are harder in ways
this one is not: the `NMAX` block loop is *nested* (an outer `while` over 5552-byte
blocks and an inner `do…while` with `DO16` unrolled sixteen times), and it reduces
mod `BASE` once per block rather than once at the end, so its invariant carries a
reduction that this one defers entirely.  The `arrayU8`-never-split design used
here also works only because the buffer is small enough to own wholesale; the
round trip's multi-megabyte buffers will need `arrayOf_split` after all.
-/

end ZAdlerLoop
