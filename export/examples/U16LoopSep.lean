/-
  **Acceptance test for the Phase-2 CCLib additions.**

  `test/lean/u16loop.c` is *literally* `inflate_table`'s first loop
  (inftrees.c:116-117) with the enclosing function stripped:

      void zero16(void) {
          unsigned short count[16];
          int len;
          for (len = 0; len <= 15; len++)
              count[len] = 0;
          return;
      }

  Nothing in the logic could step over `count[len] = 0` before: the only indexed
  read/write lemma was `eval_index_array`, hardwired to `tuint`/`arrayU32`, and
  `arrayU16`'s element predicate cannot express an *undefined* cell, so the
  loop invariant "initialized prefix ∗ undefined suffix" was not even statable.

  What this file exercises:

  * `Sep.eval_index_lvalue` — `count[len]` as an l-value, at `tushort`, with the
    index's signedness a parameter (here `Signed`, since `_len` is `tint`; the
    real `inflate_table` sites index with `tuint` temporaries, which is why the
    lemma does not hardcode it);
  * `u16Ofs_unsigned` — the address, `0 + 2 * len`;
  * `undefBytes_uncons_u16` — peel the next undefined cell off the suffix;
  * `Sep.triple_assign` through the resulting `mapsto`;
  * `arrayU16_snoc` — move the cell into the initialized prefix;
  * `arrayU16_bytes` / `arrayU16_rangePerm` — the fully-written local is
    `Freeable`, which is what lets the `return` free it.
-/
import GenU16Loop
import CCLib
open CC CC.Sep CC.HProp
open U16loop   -- the generated module lives in its own namespace

set_option maxRecDepth 20000

namespace U16LoopSep

/-! ## 1. Layout and the AST guard -/

theorem count_ty : f_zero16.fn_vars = [(_count, tarray tushort 16)] := rfl

/-- 16 `unsigned short`s — 32 bytes, which is what entry hands over. -/
theorem count_sizeof :
    sizeof prog.prog_comp_env (tarray tushort 16) = 32 := by decide

theorem tushort_bycopy : accessMode tushort = .By_value .Mint16unsigned := by decide

/-- `count` is array-typed, so `Evar _count` decays to a pointer
    (`By_reference`) rather than being loaded. -/
theorem count_byref : accessMode (tarray tushort 16) = .By_reference := by decide

/-- The indexed access: `classifyAdd` sees through `typeconv`, so an *array*
    base and a `tint` index give `.pi tushort .Signed`.  This is exactly the fact
    `eval_index_lvalue` takes as a hypothesis. -/
theorem count_classify :
    Cop.classifyAdd (typeof (.Evar _count (tarray tushort 16)))
      (typeof (.Etempvar _len tint)) = .pi tushort .Signed := rfl

theorem body_shape :
    f_zero16.fn_body
      = .Ssequence
          (.Ssequence
            (.Sset _len (.Econst_int (Integers.Int.repr 0) tint))
            (.Sloop
              (.Ssequence
                (.Sifthenelse (.Ebinop .Ole (.Etempvar _len tint)
                    (.Econst_int (Integers.Int.repr 15) tint) tint)
                  .Sskip .Sbreak)
                (.Sassign
                  (.Ederef (.Ebinop .Oadd (.Evar _count (tarray tushort 16))
                    (.Etempvar _len tint) (tptr tushort)) tushort)
                  (.Econst_int (Integers.Int.repr 0) tint)))
              (.Sset _len (.Ebinop .Oadd (.Etempvar _len tint)
                (.Econst_int (Integers.Int.repr 1) tint) tint))))
          (.Sreturn none) := rfl

/-! ## 2. The state

The environment binds the one array local; the heap is "`k` zeroed cells then
`32 - 2k` undefined bytes".  That predicate is the whole point of item 2 — it
could not be written before `undefBytes_uncons_u16` existed to move the
boundary. -/

abbrev envOf (b : Block) : Env := emptyEnv.set _count (b, tarray tushort 16)

theorem envOf_count (b : Block) :
    (envOf b).get _count = some (b, tarray tushort 16) := rfl

/-- `k` cells written, the rest still undefined. -/
abbrev Hinv (b : Block) (k : Nat) : HProp :=
  arrayU16 .Freeable b 0 k (fun _ => 0)
  ∗ undefBytes .Freeable b (2 * (k : _root_.Int)) (32 - 2 * k)

/-- The base pointer: an array-typed `Evar` decays to its own address. -/
theorem eval_count_base {ge : CGenv} {le : TempEnv} {m : Mem} (b : Block) :
    EvalExpr ge (envOf b) le m (.Evar _count (tarray tushort 16))
      (.Vptr b Integers.Ptrofs.zero) :=
  EvalExpr.Elvalue _ b Integers.Ptrofs.zero .Full _
    (eval_var_local (envOf_count b)) (DerefLoc.reference (by decide))

/-! ## 3. One iteration's write — items 1b, 2a and 2b together -/

theorem write_step (ge : CGenv) (fe : EntryRel) (b : Block) (k : Nat) (hk : k < 16) :
    Triple ge fe f_zero16
      (LocalSt (envOf b) [(_len, .Vint (Integers.Int.repr ((k : _root_.Int))))]
        (Hinv b k))
      (.Sassign
        (.Ederef (.Ebinop .Oadd (.Evar _count (tarray tushort 16))
          (.Etempvar _len tint) (tptr tushort)) tushort)
        (.Econst_int (Integers.Int.repr 0) tint))
      (.only (LocalSt (envOf b)
        [(_len, .Vint (Integers.Int.repr ((k : _root_.Int))))] (Hinv b (k + 1)))) := by
  -- the address `0 + 2k`
  have haddr : Integers.Ptrofs.unsigned
      (idxOfs ge.genv_cenv tushort .Signed Integers.Ptrofs.zero
        (Integers.Int.repr ((k : _root_.Int)))) = 2 * (k : _root_.Int) := by
    -- `Ptrofs.unsigned` sits at `CC.Z`, where `omega` is blind; both bounds get
    -- re-elaborated at `_root_.Int` through `show` first
    rw [u16Ofs_unsigned ge.genv_cenv .Signed Integers.Ptrofs.zero k (by omega)
          (by rw [ptrofs_unsigned_zero]
              show (0 : _root_.Int) + 2 * (k : _root_.Int) < 18446744073709551616
              omega),
        ptrofs_unsigned_zero]
    show (0 : _root_.Int) + 2 * (k : _root_.Int) = 2 * (k : _root_.Int)
    omega
  -- the suffix has at least one cell left, so peel it off
  have hsuf : (32 - 2 * k) = 2 * ((15 - k) + 1) := by omega
  have hpeel : undefBytes .Freeable b (2 * (k : _root_.Int)) (32 - 2 * k)
      = mapsto .Mint16unsigned .Freeable b (2 * (k : _root_.Int)) .Vundef
        ∗ undefBytes .Freeable b (2 * (k : _root_.Int) + 2) (2 * (15 - k)) := by
    rw [hsuf, undefBytes_uncons_u16 .Freeable b (2 * (k : _root_.Int)) (15 - k)
          (by omega)]
  refine triple_assign ge fe f_zero16 _ _ _ _ .Mint16unsigned .Freeable b
    (idxOfs ge.genv_cenv tushort .Signed Integers.Ptrofs.zero
      (Integers.Int.repr ((k : _root_.Int))))
    (by decide) (by simpa only [typeof] using tushort_bycopy) ?_
  intro e le hp m hP _
  obtain ⟨henv, hT, hH⟩ := hP
  subst henv
  -- reassociate so the cell being written is the operated-on fragment
  rw [show Hinv b k
         = mapsto .Mint16unsigned .Freeable b (2 * (k : _root_.Int)) .Vundef
           ∗ (arrayU16 .Freeable b 0 k (fun _ => 0)
              ∗ undefBytes .Freeable b (2 * (k : _root_.Int) + 2) (2 * (15 - k)))
       from by
        show arrayU16 .Freeable b 0 k (fun _ => 0)
              ∗ undefBytes .Freeable b (2 * (k : _root_.Int)) (32 - 2 * k) = _
        rw [hpeel, sep_left_comm_eq]] at hH
  obtain ⟨h1, h2, hd12, heq, hm1, hrest⟩ := hH
  refine ⟨.Vundef, .Vint (Integers.Int.repr 0), h1, h2, hd12, heq, ?_, ?_, ?_, ?_⟩
  · rw [haddr]; exact hm1
  · -- `count[len]` as an l-value
    exact eval_index_lvalue (eval_count_base b)
      (EvalExpr.Etempvar _len tint _ (hT.get (by temps_mem))) count_classify
  · exact ⟨.Vint (Integers.Int.repr 0), EvalExpr.Econst_int _ _, rfl⟩
  · -- move the written cell into the initialized prefix
    intro h1' hm1' hd1'
    refine ⟨rfl, hT, ?_⟩
    show Hinv b (k + 1) (Heap.union h1' h2)
    have hgrow : mapsto .Mint16unsigned .Freeable b (2 * (k : _root_.Int))
                     (.Vint (Integers.Int.repr ((0 : Nat) : _root_.Int)))
                   ∗ (arrayU16 .Freeable b 0 k (fun _ => 0)
                      ∗ undefBytes .Freeable b (2 * (k : _root_.Int) + 2)
                          (2 * (15 - k)))
                 = Hinv b (k + 1) := by
      -- normalize `arrayU16_snoc`'s `0 + 2k` offset inside the lemma, not in the
      -- goal: rewriting the goal would also hit the suffix's `2k + 2`
      have hsnoc := arrayU16_snoc .Freeable b 0 k (fun _ => 0) 0
      rw [show (0 : _root_.Int) + 2 * (k : _root_.Int) = 2 * (k : _root_.Int)
            from by omega] at hsnoc
      rw [sep_left_comm_eq, ← sep_assoc_eq, hsnoc]
      show arrayU16 .Freeable b 0 (k + 1) (fun j => if j = k then 0 else 0)
            ∗ undefBytes .Freeable b (2 * (k : _root_.Int) + 2) (2 * (15 - k))
           = _
      rw [show (fun j : Nat => if j = k then (0 : Nat) else 0) = (fun _ => 0) from by
            funext j; simp,
          show 2 * (k : _root_.Int) + 2 = 2 * ((k + 1 : Nat) : _root_.Int) from by omega,
          show 2 * (15 - k) = 32 - 2 * (k + 1) from by omega]
    rw [← hgrow]
    refine ⟨h1', h2, hd1', rfl, ?_, hrest⟩
    rw [haddr] at hm1'
    exact hm1'

/-! ## 4. The loop

Measure `n` = iterations still to run, so `16 - n` cells are written.  `n ≤ 16`
rides along as an existential over a `Prop` so that the measures above 16 —
which `triple_loop` still demands a body proof for — are vacuous. -/

def Inv (b : Block) (n : Nat) : Sep.Assn := fun e le hp =>
  ∃ _ : n ≤ 16,
    LocalSt (envOf b)
      [(_len, .Vint (Integers.Int.repr (((16 - n : Nat) : _root_.Int))))]
      (Hinv b (16 - n)) e le hp

/-- Nested existentials, not a conjunction: `triple_exists` peels one binder at
    a time, and a `∧` is not an `∃`.  The `m ≤ 15` rider is what lets the
    increment rebuild `Inv b m`, which needs `m ≤ 16`. -/
def JAssn (b : Block) (n : Nat) : Sep.Assn := fun e le hp =>
  ∃ m, ∃ _ : n = m + 1, ∃ _ : m ≤ 15,
    LocalSt (envOf b)
      [(_len, .Vint (Integers.Int.repr (((15 - m : Nat) : _root_.Int))))]
      (Hinv b (16 - m)) e le hp

/-- The loop's exit state: all sixteen cells written. -/
def Post (b : Block) : Sep.Assn := fun e le hp =>
  e = envOf b ∧ Hinv b 16 hp

abbrev guardExpr : Expr :=
  .Ebinop .Ole (.Etempvar _len tint) (.Econst_int (Integers.Int.repr 15) tint) tint

/-- The guard, at any `len ≤ 16`: true exactly while `len ≤ 15`. -/
theorem guard_eval {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem} (k : Nat)
    (hk : k ≤ 16)
    (hlen : le.get _len = some (.Vint (Integers.Int.repr ((k : _root_.Int))))) :
    ∃ v, EvalExpr ge e le m guardExpr v
      ∧ Cop.boolVal v (typeof guardExpr) m = some (decide (k ≤ 15)) := by
  refine ⟨Val.ofBool (!Integers.Int.lt (Integers.Int.repr 15)
            (Integers.Int.repr ((k : _root_.Int)))), ?_, ?_⟩
  · exact EvalExpr.Ebinop .Ole _ _ _ (.Vint (Integers.Int.repr ((k : _root_.Int))))
      (.Vint (Integers.Int.repr 15)) _
      (EvalExpr.Etempvar _len tint _ hlen) (EvalExpr.Econst_int _ _)
      (semBinop_le_int _ _ _ _)
  · simp only [typeof, boolVal_ofBool_int]
    rw [show (15 : _root_.Int) = ((15 : Nat) : _root_.Int) from rfl,
        lt_repr _ _ (by omega) (by omega) (by omega) (by omega)]
    show some (!decide (((15 : Nat) : _root_.Int) < ((k : Nat) : _root_.Int)))
          = some (decide (k ≤ 15))
    by_cases h : k ≤ 15
    · simp only [h, decide_true]
      rw [show decide (((15 : Nat) : _root_.Int) < ((k : Nat) : _root_.Int)) = false
            from by simp; omega]
      rfl
    · simp only [h, decide_false]
      rw [show decide (((15 : Nat) : _root_.Int) < ((k : Nat) : _root_.Int)) = true
            from by simp; omega]
      rfl

/-- The loop body: test, then the indexed write. -/
theorem body_triple (ge : CGenv) (fe : EntryRel) (b : Block) (R : Sep.ExitConds)
    (n : Nat) :
    Triple ge fe f_zero16 (Inv b n)
      (.Ssequence (.Sifthenelse guardExpr .Sskip .Sbreak)
        (.Sassign
          (.Ederef (.Ebinop .Oadd (.Evar _count (tarray tushort 16))
            (.Etempvar _len tint) (tptr tushort)) tushort)
          (.Econst_int (Integers.Int.repr 0) tint)))
      { normal := JAssn b n, brk := Post b, cont := JAssn b n,
        ret := R.ret, goto := R.goto } := by
  refine triple_exists ge fe f_zero16 _ _ _ (fun (hn : n ≤ 16) => ?_)
  match n with
  | 0 =>
      -- `len = 16`, the guard is false, the loop leaves
      refine triple_seq ge fe f_zero16 _ Assn.no _ _ _ ?_ (triple_vacuous _ _ _ _ _)
      refine triple_if_local ge fe f_zero16 _ _ _ _ false _ _ _
        (fun le mm hp hT _ _ => ?_) ?_
      · have h := guard_eval (ge := ge) (e := envOf b) (m := mm) 16 (by omega)
          (hT.get (by temps_mem))
        simpa using h
      · refine triple_conseq ge fe f_zero16 (triple_break ge fe f_zero16 _)
          (fun _ _ _ x => x) (fun _ _ _ hx => hx.elim) (fun e le hp hx => ?_)
          (fun _ _ _ hx => hx.elim) (fun _ _ hx => hx.elim)
        exact ⟨hx.1, hx.2.2⟩
  | m + 1 =>
      -- `len = 15 - m ≤ 15`, so the guard holds and the write runs
      have hk : 15 - m < 16 := by omega
      refine triple_seq_fwd ge fe f_zero16 _
        (LocalSt (envOf b)
          [(_len, .Vint (Integers.Int.repr (((15 - m : Nat) : _root_.Int))))]
          (Hinv b (15 - m))) _ _ _ ?_ ?_
      · -- `16 - (m+1)` and `15 - m` are the same Nat but not syntactically, and
        -- `triple_skip` needs pre and post to match
        rw [show (16 : Nat) - (m + 1) = 15 - m from by omega]
        refine triple_if_local ge fe f_zero16 _ _ _ _ true _ _ _
          (fun le mm hp hT _ _ => ?_) (triple_skip ge fe f_zero16 _)
        have h := guard_eval (ge := ge) (e := envOf b) (m := mm) (15 - m) (by omega)
          (hT.get (by temps_mem))
        simpa using h
      · refine triple_conseq ge fe f_zero16
          (write_step ge fe b (15 - m) hk)
          (fun e le hp x => x) (fun e le hp hx => ?_)
          (fun _ _ _ hx => hx.elim) (fun _ _ _ hx => hx.elim) (fun _ _ hx => hx.elim)
        refine ⟨m, rfl, by omega, ?_⟩
        rw [show 15 - m + 1 = 16 - m from by omega] at hx
        exact hx

/-- The increment hands back a strictly smaller measure. -/
theorem incr_triple (ge : CGenv) (fe : EntryRel) (b : Block) (R : Sep.ExitConds)
    (n : Nat) :
    Triple ge fe f_zero16 (JAssn b n)
      (.Sset _len (.Ebinop .Oadd (.Etempvar _len tint)
        (.Econst_int (Integers.Int.repr 1) tint) tint))
      { normal := fun e le hp => ∃ n', n' < n ∧ Inv b n' e le hp,
        brk := Post b, cont := Assn.no, ret := R.ret, goto := R.goto } := by
  refine triple_exists ge fe f_zero16 _ _ _ (fun (m : Nat) => ?_)
  refine triple_exists ge fe f_zero16 _ _ _ (fun (hnm : n = m + 1) => ?_)
  refine triple_exists ge fe f_zero16 _ _ _ (fun (hm15 : m ≤ 15) => ?_)
  subst hnm
  refine triple_conseq ge fe f_zero16
    (triple_set_local ge fe f_zero16 (envOf b) _ [] _ _ _
      (.Vint (Integers.Int.repr (((16 - m : Nat) : _root_.Int))))
      (by temps_mem) (by temps_ne) (fun le mm hp hT _ _ => ?_))
    (fun _ _ _ x => x) (fun e le hp hx => ?_)
    (fun _ _ _ hx => hx.elim) (fun _ _ _ hx => hx.elim) (fun _ _ hx => hx.elim)
  · refine EvalExpr.Ebinop .Oadd _ _ _
      (.Vint (Integers.Int.repr (((15 - m : Nat) : _root_.Int))))
      (.Vint (Integers.Int.repr 1)) _
      (EvalExpr.Etempvar _len tint _ (hT.get (by temps_mem)))
      (EvalExpr.Econst_int _ _) ?_
    simp only [typeof]
    rw [semBinop_add_int]
    -- state the literal `1` as a `Nat` cast so `u32_add` matches; rewriting the
    -- bare numeral would hit the wrong occurrences
    show some (Val.Vint (Integers.Int.add
              (Integers.Int.repr (((15 - m : Nat) : _root_.Int)))
              (Integers.Int.repr (((1 : Nat) : _root_.Int))))) = _
    rw [u32_add, show 15 - m + 1 = 16 - m from by omega]
  · exact ⟨m, by omega, by omega, hx.1, hx.2.1, hx.2.2⟩

/-! ## 5. The loop, assembled -/

abbrev loopStmt : Stmt :=
  .Sloop
    (.Ssequence (.Sifthenelse guardExpr .Sskip .Sbreak)
      (.Sassign
        (.Ederef (.Ebinop .Oadd (.Evar _count (tarray tushort 16))
          (.Etempvar _len tint) (tptr tushort)) tushort)
        (.Econst_int (Integers.Int.repr 0) tint)))
    (.Sset _len (.Ebinop .Oadd (.Etempvar _len tint)
      (.Econst_int (Integers.Int.repr 1) tint) tint))

/-- **The loop.**  From nothing written to all sixteen cells zeroed. -/
theorem loop_triple (ge : CGenv) (fe : EntryRel) (b : Block) (R : Sep.ExitConds) :
    Triple ge fe f_zero16 (Inv b 16) loopStmt
      { normal := Post b, brk := R.brk, cont := R.cont, ret := R.ret,
        goto := R.goto } :=
  triple_loop ge fe f_zero16 _ (Inv b) (JAssn b) _ _
    (body_triple ge fe b _) (incr_triple ge fe b _) 16

/-- The entry state: `len` is set to 0 before the loop, and nothing is written
    yet, so the measure is a full 16. -/
theorem entry_state (b : Block) (le : TempEnv) (hp : Heap)
    (hT : TempsHold [(_len, .Vint (Integers.Int.repr 0))] le)
    (hu : undefBytes .Freeable b 0 32 hp) :
    Inv b 16 (envOf b) le hp := by
  refine ⟨Nat.le_refl 16, rfl, ?_, ?_⟩
  · simpa using hT
  · show Hinv b 0 hp
    show (arrayU16 .Freeable b 0 0 (fun _ => 0)
          ∗ undefBytes .Freeable b (2 * ((0 : Nat) : _root_.Int)) (32 - 2 * 0)) hp
    rw [show arrayU16 .Freeable b 0 0 (fun _ => 0) = emp from rfl, emp_sep_eq,
        show (2 : _root_.Int) * ((0 : Nat) : _root_.Int) = 0 from by omega]
    simpa using hu

/-! ## 6. The return — item 5's pieces

The local is no longer `undefBytes` by now: it is a fully written `arrayU16`.
`arrayU16_rangePerm` is what closes the free, and `Agrees_freeList` carries the
caller's fragment across it — the frame owns nothing in the freed block precisely
because it is `∗`-separated from the local. -/

theorem blocks_of_envOf (b : Block) :
    blocksOfEnv prog.prog_comp_env (envOf b) = [(b, 0, 32)] := by
  show (PTree.elements (PTree.set _count (b, tarray tushort 16) PTree.empty)).map
         (blockOfBinding prog.prog_comp_env) = _
  rw [show PTree.elements (PTree.set _count (b, tarray tushort 16) PTree.empty)
         = [(_count, (b, tarray tushort 16))] from rfl]
  show [blockOfBinding prog.prog_comp_env (_count, (b, tarray tushort 16))] = _
  rw [blockOfBinding, count_sizeof]

/-- `return;` — frees the local and hands back an empty fragment. -/
theorem return_step (ge : CGenv) (fe : EntryRel) (b : Block)
    (hcenv : ge.genv_cenv = prog.prog_comp_env) :
    Triple ge fe f_zero16 (Post b) (.Sreturn none)
      { normal := Assn.no, brk := Assn.no, cont := Assn.no,
        ret := fun _ hp => hp = Heap.emp } := by
  refine triple_return_none ge fe f_zero16 _ _ (fun e le hp m hP hag => ?_)
  obtain ⟨henv, hH⟩ := hP
  subst henv
  -- the local is a full `arrayU16`; the trailing zero-length suffix is `emp`
  have harr : arrayU16 .Freeable b 0 16 (fun _ => 0) hp := by
    have h := hH
    rw [show Hinv b 16 = arrayU16 .Freeable b 0 16 (fun _ => 0) from by
          show arrayU16 .Freeable b 0 16 (fun _ => 0)
                ∗ undefBytes .Freeable b (2 * ((16 : Nat) : _root_.Int)) (32 - 2 * 16)
               = _
          rw [show (32 : Nat) - 2 * 16 = 0 from by omega, undefBytes_zero,
              sep_emp_eq]] at h
    exact h
  -- the byte-level view, which is what both the free and the frame need
  have hbytes : bytesPtsTo b .Freeable 0 (u16Bytes (fun _ => 0) 16) hp := by
    rw [arrayU16_bytes .Freeable b 0 (fun _ => 0) (by omega) 16] at harr
    exact harr
  -- `ownsRange` hides the length inside its definition, so it cannot be
  -- rewritten there; the bound is supplied at the use site instead
  have hown := bytesPtsTo_ownsRange b .Freeable (u16Bytes (fun _ => 0) 16) 0 hp hbytes
  -- the free succeeds
  have hrp : Mem.rangePerm m b 0 32 .Cur .Freeable = true := by
    have h := arrayU16_rangePerm harr hag
    simpa using h
  obtain ⟨m', hfree⟩ := freeList_isSome_of_rangePerm [(b, 0, 32)] m
    (fun blk hblk => by
      rw [show blk = (b, 0, 32) from by simpa using hblk]
      exact hrp)
    (by simp)
  refine ⟨m', Heap.emp, ?_, rfl, ?_⟩
  · rw [hcenv, blocks_of_envOf]; exact hfree
  · intro hf hd hagu
    refine ⟨Heap.disjoint_emp_left hf, ?_⟩
    rw [Heap.emp_union]
    -- the frame owns nothing in the freed block, because the local owns all of it
    refine Agrees_freeList [(b, 0, 32)] m m' hfree (fun blk hblk ofs hlo hhi => ?_)
      (Heap.Agrees_union_right hd hagu)
    rw [show blk = (b, 0, 32) from by simpa using hblk] at hlo hhi ⊢
    have hlo' : (0 : _root_.Int) ≤ ofs := by simpa using hlo
    have hhi' : ofs < 32 := by simpa using hhi
    have hc := hown ofs.toNat (by rw [u16Bytes_length]; omega)
    rw [show (0 : _root_.Int) + ((ofs.toNat : Nat) : _root_.Int) = ofs from by omega] at hc
    rcases hd b ofs with h1 | h2
    · rw [h1] at hc; exact absurd hc (by simp)
    · exact h2

end U16LoopSep
