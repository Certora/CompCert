/-
  **Phase-9 Step 0 — the calibration spike.**

  `adler32.c` from zlib-1.3.2, exported by `clightgen -lean` into `GenAdler32`.
  164 lines of C, no structs, no `goto`, no function pointers, no `memcpy` — it
  needs *none* of the nine features Phase 9 is about.  The point of proving
  something about it is therefore not the theorem: it is to measure what a line
  of real zlib costs, on the existing Phase-7 foundation, before committing to
  the expensive items.

  This file contains:

  * a **Lean model of Adler-32** (`sums`, `pack`, `adler32Model`) and its
    validity invariant;
  * the **`len == 1` fast path of `adler32_z`, proved** against the real Clight
    semantics via the separation logic — i.e. `adler32_z` meets a `FunSpec`, so
    it is callable through `Sep.triple_call` and the frame rule applies.

  ## A real finding, up front

  zlib's `len == 1` fast path does **not** compute the true modular sums for an
  arbitrary incoming `adler`.  It replaces `%` with a single conditional
  subtract, which is only correct when the *previous* Adler-32 value was itself
  reduced: with `s2 = 0xffff` and `s1 = 65520` the value `s2 + s1 = 131055`
  exceeds `2 * BASE = 131042`, so one subtraction leaves it above `BASE`.  The
  specification below therefore carries `s1 < BASE ∧ s2 < BASE` as an explicit
  precondition (`Valid`).  That is not a defect in zlib — `adler32` is
  documented to be seeded with `adler32(0, Z_NULL, 0) = 1` and fed its own
  output — but it *is* exactly the kind of hypothesis a round-trip proof has to
  discharge rather than assume, and it was found by trying to prove the theorem.
-/
import GenAdler32
import CCLib
open CC CC.Sep CC.HProp
open Adler32   -- the generated module now lives in its own namespace

namespace ZAdler32

/-! ## The model -/

/-- `BASE` from adler32.c: the largest prime below 2^16. -/
def BASE : Nat := 65521

/-- The two running sums, kept separate as the C does. -/
structure Sums where
  s1 : Nat
  s2 : Nat
deriving DecidableEq, Repr

/-- Both halves reduced.  `adler32` maintains this; the `len == 1` path *needs*
    it (see the header). -/
def Sums.Valid (s : Sums) : Prop := s.s1 < BASE ∧ s.s2 < BASE

/-- One byte of the checksum. -/
def stepByte (s : Sums) (c : Nat) : Sums :=
  let a := (s.s1 + c) % BASE
  { s1 := a, s2 := (s.s2 + a) % BASE }

/-- Fold a byte string. -/
def sums : Sums → List Nat → Sums
  | s, [] => s
  | s, c :: cs => sums (stepByte s c) cs

/-- The packed 32-bit result, `s1 | (s2 << 16)`.  Both halves are below 2^16, so
    the `|` of the C is an ordinary sum. -/
def pack (s : Sums) : Nat := s.s1 + s.s2 * 65536

/-- Split a packed value back into halves, as the first two statements of
    `adler32_z` do. -/
def unpack (adler : Nat) : Sums :=
  { s1 := adler % 65536, s2 := adler / 65536 % 65536 }

/-- The checksum of `bs`, continuing from `adler`. -/
def adler32Model (adler : Nat) (bs : List Nat) : Nat := pack (sums (unpack adler) bs)

/-! ### Model lemmas -/

theorem stepByte_valid {s : Sums} (c : Nat) : (stepByte s c).Valid := by
  refine ⟨Nat.mod_lt _ (by simp [BASE]), Nat.mod_lt _ (by simp [BASE])⟩

theorem sums_valid : ∀ (bs : List Nat) (s : Sums), s.Valid → (sums s bs).Valid
  | [], _, h => h
  | c :: cs, s, _ => sums_valid cs _ (stepByte_valid (s := s) c)

theorem pack_lt {s : Sums} (h : s.Valid) : pack s < 4294967296 := by
  obtain ⟨h1, h2⟩ := h
  simp only [pack, BASE] at *
  omega

theorem unpack_pack {s : Sums} (h : s.Valid) : unpack (pack s) = s := by
  obtain ⟨h1, h2⟩ := h
  obtain ⟨a, b⟩ := s
  simp only [BASE] at h1 h2
  have e1 : (a + b * 65536) % 65536 = a := by omega
  have e2 : (a + b * 65536) / 65536 % 65536 = b := by omega
  simp only [unpack, pack, e1, e2]

/-! ## The generated program

Only the *prefix* of `adler32_z`'s body that the `len == 1` path executes is
transcribed here; `body_shape` checks by `rfl` that the transcription matches
`GenAdler32` exactly, with the untouched remainder left as an existential.  That
keeps the `rfl` guard (a change to adler32.c or to the exporter breaks the build)
without re-typing 900 lines of AST that this proof never reaches. -/

/-- `sum2 = (adler >> 16) & 0xffff;` -/
def setSum2 : Stmt :=
  .Sset _sum2
    (.Ebinop .Oand
      (.Ebinop .Oshr (.Etempvar _adler tulong) (.Econst_int (Integers.Int.repr 16) tint) tulong)
      (.Econst_int (Integers.Int.repr 65535) tint) tulong)

/-- `adler &= 0xffff;` -/
def setAdler : Stmt :=
  .Sset _adler
    (.Ebinop .Oand (.Etempvar _adler tulong)
      (.Econst_int (Integers.Int.repr 65535) tint) tulong)

/-- `len == 1` -/
def len1Cond : Expr :=
  .Ebinop .Oeq (.Etempvar _len tulong) (.Econst_int (Integers.Int.repr 1) tint) tint

/-- `t'40 = buf[0]; adler += t'40;` -/
def loadByte : Stmt :=
  .Ssequence
    (.Sset _t'40
      (.Ederef
        (.Ebinop .Oadd (.Etempvar _buf (tptr tuchar))
          (.Econst_int (Integers.Int.repr 0) tint) (tptr tuchar)) tuchar))
    (.Sset _adler
      (.Ebinop .Oadd (.Etempvar _adler tulong) (.Etempvar _t'40 tuchar) tulong))

/-- `if (adler >= BASE) adler -= BASE;` -/
def reduceAdler : Stmt :=
  .Sifthenelse
    (.Ebinop .Oge (.Etempvar _adler tulong)
      (.Econst_int (Integers.Int.repr 65521) tuint) tint)
    (.Sset _adler
      (.Ebinop .Osub (.Etempvar _adler tulong)
        (.Econst_int (Integers.Int.repr 65521) tuint) tulong))
    .Sskip

/-- `sum2 += adler;` -/
def addSum2 : Stmt :=
  .Sset _sum2
    (.Ebinop .Oadd (.Etempvar _sum2 tulong) (.Etempvar _adler tulong) tulong)

/-- `if (sum2 >= BASE) sum2 -= BASE;` -/
def reduceSum2 : Stmt :=
  .Sifthenelse
    (.Ebinop .Oge (.Etempvar _sum2 tulong)
      (.Econst_int (Integers.Int.repr 65521) tuint) tint)
    (.Sset _sum2
      (.Ebinop .Osub (.Etempvar _sum2 tulong)
        (.Econst_int (Integers.Int.repr 65521) tuint) tulong))
    .Sskip

/-- `return adler | (sum2 << 16);` -/
def retPack : Stmt :=
  .Sreturn (some
    (.Ebinop .Oor (.Etempvar _adler tulong)
      (.Ebinop .Oshl (.Etempvar _sum2 tulong)
        (.Econst_int (Integers.Int.repr 16) tint) tulong) tulong))

/-- The whole `len == 1` branch. -/
def len1Branch : Stmt :=
  .Ssequence loadByte
    (.Ssequence reduceAdler (.Ssequence addSum2 (.Ssequence reduceSum2 retPack)))

/-- The transcription above is exactly the generated AST — `rest` is the part of
    the body the `len == 1` path never reaches. -/
theorem body_shape : ∃ rest : Stmt,
    f_adler32_z.fn_body =
      .Ssequence setSum2
        (.Ssequence setAdler
          (.Ssequence (.Sifthenelse len1Cond len1Branch .Sskip) rest)) :=
  ⟨_, rfl⟩

/-! ## Specialised arithmetic

The general bridge lives in `CCLib.HoareLong`; these are its instances at the
three constants adler32.c uses. -/

theorem and65535 (y : Nat) :
    Integers.Int64.and (Integers.Int64.repr ((y : _root_.Int)))
        (Integers.Int64.repr (65535 : _root_.Int))
      = Integers.Int64.repr (((y % 65536 : Nat) : _root_.Int)) := by
  have h := CC.u64_and_mask y 16 (by omega); simpa using h

theorem shru16 (y : Nat) (hy : y < 18446744073709551616) :
    Integers.Int64.shru (Integers.Int64.repr ((y : _root_.Int)))
        (Integers.Int64.repr (16 : _root_.Int))
      = Integers.Int64.repr (((y / 65536 : Nat) : _root_.Int)) := by
  have h := CC.u64_shru y 16 hy (by omega); simpa using h

theorem shl16 (y : Nat) :
    Integers.Int64.shl (Integers.Int64.repr ((y : _root_.Int)))
        (Integers.Int64.repr (16 : _root_.Int))
      = Integers.Int64.repr (((y * 65536 : Nat) : _root_.Int)) := by
  have h := CC.u64_shl y 16 (by omega); simpa using h

/-- The conditional subtract that adler32.c uses in place of `%`. -/
def condSub (v : Nat) : Nat := if BASE ≤ v then v - BASE else v

/-- …and it *is* `%`, but only below `2 * BASE`.  This is the inequality the
    `Valid` precondition exists to supply. -/
theorem condSub_eq_mod (v : Nat) (h : v < 2 * BASE) : condSub v = v % BASE := by
  simp only [condSub, BASE] at *; split <;> omega

/-! ## Local state

`u v` is a 64-bit word given by a `Nat`; `bt c` is a byte.  The state is the
canonical `Sep.LocalSt`: no block-scoped variables, a *tracked list* of
temporaries, and the one owned byte.  Compared with the hand-written conjunction
this replaces, note what is absent: no `Option` slots for not-yet-assigned
temporaries (they are simply not in the list) and no `Distinct` structure (the
side conditions are `decide`d). -/

/-- A `tulong` value carrying the natural number `v`. -/
abbrev u (v : Nat) : Val := .Vlong (Integers.Int64.repr ((v : _root_.Int)))
/-- A `tuchar` value carrying the byte `c`. -/
abbrev bt (c : Nat) : Val := .Vint (Integers.Int.repr ((c : _root_.Int)))

/-- The one byte the function is lent. -/
abbrev Buf (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (c : Nat) : HProp :=
  arrayU8 p b (Integers.Ptrofs.unsigned ofs0) 1 (fun _ => c)

/-- The three parameters, which never change on this path.  `abbrev`, not `def`:
    `temps_ne`/`temps_mem` work by `decide`/`simp` on the *list structure*, which
    means the list has to be reducible. -/
abbrev params (b : Block) (ofs0 : Integers.Ptrofs) : List (Ident × Val) :=
  [(_buf, .Vptr b ofs0), (_len, u 1)]

section
variable (ge : CGenv) (fe : EntryRel) (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs)

/-! ## The steps

One theorem per statement, each in forward form.  Every `Sset` is a single
`triple_set_local` application: `temps_mem` drops the stale entry, `temps_ne`
discharges the disequalities, and the only real work left is evaluating the
expression. -/

/-- `sum2 = (adler >> 16) & 0xffff;` -/
theorem tr_setSum2 (c A : Nat) (hA : A < 18446744073709551616) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_adler, u A) :: params b ofs0) (Buf p b ofs0 c))
      setSum2
      (.only (Sep.LocalSt emptyEnv
        ((_sum2, u (A / 65536 % 65536)) :: (_adler, u A) :: params b ofs0)
        (Buf p b ofs0 c))) := by
  refine Sep.triple_set_local ge fe f_adler32_z _ _ _ _ _ _ (u (A / 65536 % 65536))
    (by temps_mem) (by temps_ne) (fun le m hp hT _ _ => ?_)
  refine EvalExpr.Ebinop .Oand _ _ _ (u (A / 65536)) (Val.Vint (Integers.Int.repr 65535)) _ ?_
    (EvalExpr.Econst_int _ _) ?_
  · refine EvalExpr.Ebinop .Oshr _ _ _ (u A) (Val.Vint (Integers.Int.repr 16)) _
      (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_mem)))
      (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [CC.semBinop_shr_ulong_int,
        if_pos (by decide : Integers.Int.ltu (Integers.Int.repr 16) (Integers.Int.repr 64) = true),
        show Integers.Int.unsigned (Integers.Int.repr 16) = (16 : _root_.Int) from by decide,
        shru16 A hA]
  · simp only [typeof]
    rw [CC.semBinop_and_ulong_int,
        show Integers.Int.signed (Integers.Int.repr 65535) = (65535 : _root_.Int) from by decide,
        and65535]

/-- `adler &= 0xffff;` — note the stale `(_adler, u A)` entry is dropped by
    `temps_mem`, which is the whole reason the tracked list is a sub-list
    parameter rather than a cons. -/
theorem tr_setAdler (c A S : Nat) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_sum2, u S) :: (_adler, u A) :: params b ofs0)
        (Buf p b ofs0 c))
      setAdler
      (.only (Sep.LocalSt emptyEnv
        ((_adler, u (A % 65536)) :: (_sum2, u S) :: params b ofs0) (Buf p b ofs0 c))) := by
  refine Sep.triple_set_local ge fe f_adler32_z _ _ _ _ _ _ (u (A % 65536))
    (by temps_mem) (by temps_ne) (fun le m hp hT _ _ => ?_)
  refine EvalExpr.Ebinop .Oand _ _ _ (u A) (Val.Vint (Integers.Int.repr 65535)) _
    (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_mem)))
    (EvalExpr.Econst_int _ _) ?_
  simp only [typeof]
  rw [CC.semBinop_and_ulong_int,
      show Integers.Int.signed (Integers.Int.repr 65535) = (65535 : _root_.Int) from by decide,
      and65535]

/-- `t'40 = buf[0];` -/
theorem tr_loadT40 (hpr : permOrder p .Readable = true) (c A S : Nat) (hc : c < 256) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_adler, u A) :: (_sum2, u S) :: params b ofs0)
        (Buf p b ofs0 c))
      (.Sset _t'40
        (.Ederef
          (.Ebinop .Oadd (.Etempvar _buf (tptr tuchar))
            (.Econst_int (Integers.Int.repr 0) tint) (tptr tuchar)) tuchar))
      (.only (Sep.LocalSt emptyEnv
        ((_t'40, bt c) :: (_adler, u A) :: (_sum2, u S) :: params b ofs0)
        (Buf p b ofs0 c))) := by
  refine Sep.triple_set_local ge fe f_adler32_z _ _ _ _ _ _ (bt c)
    (by temps_mem) (by temps_ne) (fun le m hp hT hH hag => ?_)
  have hev := CC.eval_index_bytes (ge := ge) (e := emptyEnv) (le := le) (m := m)
    (i := 0) hpr hH hag (by omega) (fun _ => hc)
    (hT.get (by temps_mem : (_buf, Val.Vptr b ofs0) ∈ _))
    (EvalExpr.Econst_int (Integers.Int.repr ((0 : Nat) : _root_.Int)) tint) rfl (by omega)
    (by have := CC.ptrofs_toNat_lt ofs0; omega)
  simpa using hev

/-- `adler += t'40;` -/
theorem tr_addByte (c A S : Nat) (hc : c < 256) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv
        ((_t'40, bt c) :: (_adler, u A) :: (_sum2, u S) :: params b ofs0)
        (Buf p b ofs0 c))
      (.Sset _adler
        (.Ebinop .Oadd (.Etempvar _adler tulong) (.Etempvar _t'40 tuchar) tulong))
      (.only (Sep.LocalSt emptyEnv
        ((_adler, u (A + c)) :: (_t'40, bt c) :: (_sum2, u S) :: params b ofs0)
        (Buf p b ofs0 c))) := by
  refine Sep.triple_set_local ge fe f_adler32_z _ _ _ _ _ _ (u (A + c))
    (by temps_mem) (by temps_ne) (fun le m hp hT _ _ => ?_)
  refine EvalExpr.Ebinop .Oadd _ _ _ (u A) (bt c) _
    (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_mem)))
    (EvalExpr.Etempvar _t'40 tuchar _ (hT.get (by temps_mem))) ?_
  simp only [typeof]
  rw [CC.semBinop_add_ulong_uchar, CC.u32_unsigned c (by omega), CC.u64_add]

/-! ### The two conditional subtracts

`triple_if_local` takes the guard's *value*, so `bb` is instantiated at a literal
and the `if` in its conclusion reduces.  One theorem covers both arms because the
guard determines which. -/

/-- `if (x >= BASE) x -= BASE;` for a tracked `tulong` temporary `x`.  Stated once
    and used for both `adler` and `sum2`. -/
theorem tr_condSub (idx : Ident) (l : List (Ident × Val)) (H : HProp) (V : Nat)
    (hne : ∀ q ∈ l, q.1 ≠ idx) (hV : V < 18446744073709551616) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((idx, u V) :: l) H)
      (.Sifthenelse
        (.Ebinop .Oge (.Etempvar idx tulong)
          (.Econst_int (Integers.Int.repr 65521) tuint) tint)
        (.Sset idx
          (.Ebinop .Osub (.Etempvar idx tulong)
            (.Econst_int (Integers.Int.repr 65521) tuint) tulong))
        .Sskip)
      (.only (Sep.LocalSt emptyEnv ((idx, u (condSub V)) :: l) H)) := by
  have hev : ∀ (le : TempEnv) (m : Mem) (hp : Heap),
      Sep.TempsHold ((idx, u V) :: l) le → H hp → Heap.Agrees hp m →
      ∃ v, EvalExpr ge emptyEnv le m
             (.Ebinop .Oge (.Etempvar idx tulong)
               (.Econst_int (Integers.Int.repr 65521) tuint) tint) v
           ∧ Cop.boolVal v tint m = some (decide (BASE ≤ V)) := by
    intro le m hp hT _ _
    refine ⟨Val.ofBool (decide (BASE ≤ V)), ?_, CC.boolVal_ofBool_int m _⟩
    refine EvalExpr.Ebinop .Oge _ _ _ (u V) (Val.Vint (Integers.Int.repr 65521)) _
      (EvalExpr.Etempvar idx tulong _ (hT.get (by temps_mem))) (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [CC.semBinop_ge_ulong_uint,
        show Integers.Int.unsigned (Integers.Int.repr 65521) = (65521 : _root_.Int) from by decide,
        show ((65521 : _root_.Int)) = (((65521 : Nat)) : _root_.Int) from rfl,
        CC.cmpu_ge_nat V 65521 hV (by omega)]
    rfl
  by_cases h : BASE ≤ V
  · have hcs : condSub V = V - 65521 := by
      simp only [condSub, BASE] at h ⊢; split <;> omega
    refine Sep.triple_if_local ge fe f_adler32_z _ _ _ _ true _ _ _
      (fun le m hp hT hH hag => ?_) ?_
    · obtain ⟨v, hv, hb⟩ := hev le m hp hT hH hag
      rw [decide_eq_true h] at hb
      exact ⟨v, hv, hb⟩
    simp only [if_true]
    rw [hcs]
    refine Sep.triple_set_local ge fe f_adler32_z _ _ _ _ _ _ (u (V - 65521))
      (by temps_mem) hne (fun le m hp hT _ _ => ?_)
    refine EvalExpr.Ebinop .Osub _ _ _ (u V) (Val.Vint (Integers.Int.repr 65521)) _
      (EvalExpr.Etempvar idx tulong _ (hT.get (by temps_mem))) (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [CC.semBinop_sub_ulong_uint,
        show Integers.Int.unsigned (Integers.Int.repr 65521) = (65521 : _root_.Int) from by decide,
        show ((65521 : _root_.Int)) = (((65521 : Nat)) : _root_.Int) from rfl,
        CC.u64_sub V 65521 (by simp only [BASE] at h; omega)]
  · have hcs : condSub V = V := by simp only [condSub, BASE] at h ⊢; split <;> omega
    refine Sep.triple_if_local ge fe f_adler32_z _ _ _ _ false _ _ _
      (fun le m hp hT hH hag => ?_) ?_
    · obtain ⟨v, hv, hb⟩ := hev le m hp hT hH hag
      rw [decide_eq_false h] at hb
      exact ⟨v, hv, hb⟩
    rw [hcs]
    exact Sep.triple_skip _ _ _ _

/-- `return adler | (sum2 << 16);` -/
theorem tr_retPack (c A S : Nat) (T : List (Ident × Val))
    (hA16 : A < 65536) (hno : A + S * 65536 < 18446744073709551616) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_sum2, u S) :: (_adler, u A) :: T) (Buf p b ofs0 c))
      retPack
      { normal := Sep.Assn.no, brk := Sep.Assn.no, cont := Sep.Assn.no,
        ret := fun v hp => v = u (A + S * 65536) ∧ Buf p b ofs0 c hp } := by
  refine Sep.triple_return_local ge fe f_adler32_z _ _ _ _
    (u (A + S * 65536)) (u (A + S * 65536)) (fun le m hp hT _ _ => ?_) (fun _ => rfl)
    (fun hp hH => ⟨rfl, hH⟩)
  refine EvalExpr.Ebinop .Oor _ _ _ (u A) (u (S * 65536)) _
    (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_mem))) ?_ ?_
  · refine EvalExpr.Ebinop .Oshl _ _ _ (u S) (Val.Vint (Integers.Int.repr 16)) _
      (EvalExpr.Etempvar _sum2 tulong _ (hT.get (by temps_mem)))
      (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [CC.semBinop_shl_ulong_int,
        if_pos (by decide : Integers.Int.ltu (Integers.Int.repr 16) (Integers.Int.repr 64) = true),
        show Integers.Int.unsigned (Integers.Int.repr 16) = (16 : _root_.Int) from by decide,
        shl16]
  · simp only [typeof]
    rw [CC.semBinop_or_ulong, CC.u64_or_pack A S 16 (by omega) (by simpa using hno)]

/-! ## The `len == 1` branch, end to end -/

theorem tr_len1Branch (hpr : permOrder p .Readable = true) (c A S : Nat)
    (hc : c < 256) (hA : A < BASE) (hS : S < BASE) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_adler, u A) :: (_sum2, u S) :: params b ofs0)
        (Buf p b ofs0 c))
      len1Branch
      { normal := Sep.Assn.no, brk := Sep.Assn.no, cont := Sep.Assn.no,
        ret := fun v hp => v = u (pack (stepByte ⟨A, S⟩ c)) ∧ Buf p b ofs0 c hp } := by
  -- the two conditional subtracts really are `%`, because both halves came in reduced
  have ha : (A + c) % BASE < BASE := Nat.mod_lt _ (by simp [BASE])
  have hred1 : condSub (A + c) = (A + c) % BASE :=
    condSub_eq_mod _ (by simp only [BASE] at hA ⊢; omega)
  have hred2 : condSub (S + (A + c) % BASE) = (S + (A + c) % BASE) % BASE :=
    condSub_eq_mod _ (by simp only [BASE] at hS ha ⊢; omega)
  have hpk : pack (stepByte ⟨A, S⟩ c)
      = (A + c) % BASE + ((S + (A + c) % BASE) % BASE) * 65536 := rfl
  rw [hpk]
  refine Sep.triple_seq_fwd ge fe f_adler32_z _ _ _ _ _
    (Sep.triple_seq_fwd ge fe f_adler32_z _ _ _ _ _
      (tr_loadT40 ge fe p b ofs0 hpr c A S hc) (tr_addByte ge fe p b ofs0 c A S hc)) ?_
  refine Sep.triple_seq_fwd ge fe f_adler32_z _ _ _ _ _
    (hred1 ▸ tr_condSub ge fe _adler _ _ (A + c) (by temps_ne)
      (by simp only [BASE] at hA ⊢; omega)) ?_
  refine Sep.triple_seq_fwd ge fe f_adler32_z _
    (Sep.LocalSt emptyEnv
      ((_sum2, u (S + (A + c) % BASE)) :: (_adler, u ((A + c) % BASE)) ::
        (_t'40, bt c) :: params b ofs0) (Buf p b ofs0 c)) _ _ _ ?_ ?_
  · -- `sum2 += adler;`
    refine Sep.triple_set_local ge fe f_adler32_z _ _ _ _ _ _ (u (S + (A + c) % BASE))
      (by temps_mem) (by temps_ne) (fun le m hp hT _ _ => ?_)
    refine EvalExpr.Ebinop .Oadd _ _ _ (u S) (u ((A + c) % BASE)) _
      (EvalExpr.Etempvar _sum2 tulong _ (hT.get (by temps_mem)))
      (EvalExpr.Etempvar _adler tulong _ (hT.get (by temps_mem))) ?_
    simp only [typeof]
    rw [CC.semBinop_add_ulong_ulong, CC.u64_add]
  refine Sep.triple_seq_fwd ge fe f_adler32_z _ _ _ _ _
    (hred2 ▸ tr_condSub ge fe _sum2 _ _ (S + (A + c) % BASE) (by temps_ne)
      (by simp only [BASE] at hS ha ⊢; omega)) ?_
  refine tr_retPack ge fe p b ofs0 c _ _ _ (by simp only [BASE]; omega) ?_
  have h2 : (S + (A + c) % 65521) % 65521 < 65521 := Nat.mod_lt _ (by omega)
  simp only [BASE]
  omega

/-- `len == 1` — true, because the specification fixes `len = 1`. -/
theorem tr_guard (hpr : permOrder p .Readable = true) (c A S : Nat)
    (hc : c < 256) (hA : A < BASE) (hS : S < BASE) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_adler, u A) :: (_sum2, u S) :: params b ofs0)
        (Buf p b ofs0 c))
      (.Sifthenelse len1Cond len1Branch .Sskip)
      { normal := Sep.Assn.no, brk := Sep.Assn.no, cont := Sep.Assn.no,
        ret := fun v hp => v = u (pack (stepByte ⟨A, S⟩ c)) ∧ Buf p b ofs0 c hp } := by
  refine Sep.triple_if_local ge fe f_adler32_z _ _ _ _ true _ _ _
    (fun le m hp hT _ _ => ?_) (by simpa using tr_len1Branch ge fe p b ofs0 hpr c A S hc hA hS)
  refine ⟨Val.ofBool true, ?_, CC.boolVal_ofBool_int m _⟩
  refine EvalExpr.Ebinop .Oeq _ _ _ (u 1) (Val.Vint (Integers.Int.repr 1)) _
    (EvalExpr.Etempvar _len tulong _ (hT.get (by temps_mem))) (EvalExpr.Econst_int _ _) ?_
  simp only [typeof]
  rw [CC.semBinop_eq_ulong_int,
      show Integers.Int.signed (Integers.Int.repr 1) = (1 : _root_.Int) from by decide,
      show ((1 : _root_.Int)) = (((1 : Nat)) : _root_.Int) from rfl,
      CC.cmpu_eq_nat 1 1 (by omega) (by omega)]
  rfl

/-- The whole path: the two half-word extractions, then the `len == 1` branch.
    `rest` is the part of the body this path never reaches. -/
theorem tr_path (hpr : permOrder p .Readable = true) (c : Nat) (s : Sums)
    (hc : c < 256) (hv : s.Valid) (rest : Stmt) :
    Sep.Triple ge fe f_adler32_z
      (Sep.LocalSt emptyEnv ((_adler, u (pack s)) :: params b ofs0) (Buf p b ofs0 c))
      (.Ssequence setSum2
        (.Ssequence setAdler
          (.Ssequence (.Sifthenelse len1Cond len1Branch .Sskip) rest)))
      { normal := Sep.Assn.no, brk := Sep.Assn.no, cont := Sep.Assn.no,
        ret := fun v hp => v = u (pack (stepByte s c)) ∧ Buf p b ofs0 c hp } := by
  obtain ⟨h1, h2⟩ := hv
  have hpk : pack s < 18446744073709551616 := by
    have := pack_lt (s := s) ⟨h1, h2⟩; omega
  -- the two extractions recover `s.s2` and `s.s1` from the packed argument
  have hs2 : pack s / 65536 % 65536 = s.s2 := by
    obtain ⟨a, bb⟩ := s; simp only [pack, BASE] at h1 h2 ⊢; omega
  have hs1 : pack s % 65536 = s.s1 := by
    obtain ⟨a, bb⟩ := s; simp only [pack, BASE] at h1 h2 ⊢; omega
  refine Sep.triple_seq_fwd ge fe f_adler32_z _ _ _ _ _
    (hs2 ▸ tr_setSum2 ge fe p b ofs0 c (pack s) hpk) ?_
  refine Sep.triple_seq_fwd ge fe f_adler32_z _ _ _ _ _
    (hs1 ▸ tr_setAdler ge fe p b ofs0 c (pack s) s.s2) ?_
  -- the guard exits by `return`, not by falling through, so this last step is the
  -- plain `triple_seq` (its normal exit is `Assn.no`), not `triple_seq_fwd`
  refine Sep.triple_seq ge fe f_adler32_z _ Sep.Assn.no _ _ _
    (tr_guard ge fe p b ofs0 hpr c s.s1 s.s2 hc h1 h2)
    (Sep.triple_vacuous ge fe f_adler32_z rest _)

end

/-! ## The specification

`adler32_z` meets a `FunSpec`, so it is callable through `Sep.triple_call` and
the frame rule applies: the proof says what the function does to the one byte it
was lent and says nothing about the rest of the heap. -/

theorem entry_wf :
    listNorepet (varNames f_adler32_z.fn_vars)
    ∧ listNorepet (varNames f_adler32_z.fn_params)
    ∧ listDisjoint (varNames f_adler32_z.fn_params) (varNames f_adler32_z.fn_temps) := by
  refine ⟨?_, ?_, ?_⟩ <;> decide

/-- The model of the one-byte step, in the form the postcondition wants. -/
theorem model_one_byte (s : Sums) (c : Nat) (hv : s.Valid) :
    adler32Model (pack s) [c] = pack (stepByte s c) := by
  simp only [adler32Model, unpack_pack hv, sums]

/-- The `len == 1` fast path of `adler32_z`, as a separation-logic function
    specification.

    `s.Valid` is load-bearing, not decorative: see the header. -/
def adler32zSpec (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs)
    (c : Nat) (s : Sums) : Sep.FunSpec where
  tyargs := [tulong, tptr tuchar, tulong]
  tyres := tulong
  cc := cc_default
  pre := fun vargs hp =>
    vargs = [u (pack s), .Vptr b ofs0, u 1] ∧ Buf p b ofs0 c hp
  post := fun v hp => v = u (adler32Model (pack s) [c]) ∧ Buf p b ofs0 c hp
  -- calls nothing, so any measure will do
  measure := fun _ => 0

/-- **The Step-0 result.**  `adler32_z(adler, buf, 1)` computes one step of
    Adler-32 on the byte it owns, for any *valid* incoming checksum, and returns
    the buffer untouched. -/
theorem adler32_z_len1_satisfies (ge : CGenv) (p : Permission) (b : Block)
    (ofs0 : Integers.Ptrofs) (hpr : permOrder p .Readable = true)
    (c : Nat) (s : Sums) (hc : c < 256) (hv : s.Valid) :
    Sep.SatisfiesAt ge (FunctionEntry2 ge) (.Internal f_adler32_z)
      (adler32zSpec p b ofs0 c s) [u (pack s), .Vptr b ofs0, u 1] := by
  obtain ⟨hnv, hnp, hdisj⟩ := entry_wf
  obtain ⟨rest, hbody⟩ := body_shape
  refine Sep.satisfies_internal_noVars ge (FunctionEntry2 ge) f_adler32_z _ _
    (Sep.LocalSt emptyEnv ((_adler, u (pack s)) :: params b ofs0) (Buf p b ofs0 c))
    (fun m => ?_) ?_
  · refine ⟨PTree.set _len (u 1) (PTree.set _buf (.Vptr b ofs0)
              (PTree.set _adler (u (pack s)) (createUndefTemps f_adler32_z.fn_temps))),
            FunctionEntry2.intro hnv hnp hdisj (AllocVariables.nil _ _) rfl,
            fun hp hpre => ?_⟩
    obtain ⟨-, hbuf⟩ := hpre
    refine ⟨rfl, ?_, hbuf⟩
    refine Sep.TempsHold_cons ?_ (Sep.TempsHold_cons ?_
      (Sep.TempsHold_cons ?_ (Sep.TempsHold_nil _)))
    · exact (PTree.gso _ _ _ _ (by decide)).trans
        ((PTree.gso _ _ _ _ (by decide)).trans (PTree.gss _ _ _))
    · exact (PTree.gso _ _ _ _ (by decide)).trans (PTree.gss _ _ _)
    · exact PTree.gss _ _ _
  · rw [hbody]
    refine Sep.triple_conseq ge (FunctionEntry2 ge) f_adler32_z
      (tr_path ge (FunctionEntry2 ge) p b ofs0 hpr c s hc hv rest)
      (fun _ _ _ x => x) (fun _ _ _ x => x) (fun _ _ _ x => x) (fun _ _ _ x => x) ?_
    intro v hp hR
    obtain ⟨hveq, hbuf⟩ := hR
    exact ⟨by rw [hveq, model_one_byte s c hv], hbuf⟩

end ZAdler32
