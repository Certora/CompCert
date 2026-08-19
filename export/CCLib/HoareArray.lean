/-
  Support for reasoning about `unsigned int` arrays with the Hoare logic in
  `CCLib.Hoare`: the bridge between CompCert's machine integers (`BitVec`) and
  `Z` arithmetic, and a points-to predicate for arrays of 32-bit words.
-/
import CCLib.Hoare

namespace CC

/-! ## `BitVec` ↔ `Z` bridge

Only the non-negative, in-`int`-range case is covered — that is all a loop
counter and an array index need.  Note the binders are spelled `_root_.Int`, not
`Z`: `omega` does not see through the `abbrev`. -/

-- `2147483648` (= 2^31) is spelled as a literal throughout, not as a definition:
-- `omega` has to see it.

theorem toInt_repr (i : _root_.Int) (h1 : 0 ≤ i) (h2 : i < 2147483648) :
    (Integers.Int.repr i).toInt = i := by
  show (BitVec.ofInt 32 i).toInt = i
  rw [BitVec.toInt_ofInt, Int.bmod_eq_emod_of_lt (by simp; omega)]
  simp; omega

theorem repr_add (i j : _root_.Int) :
    Integers.Int.add (Integers.Int.repr i) (Integers.Int.repr j)
      = Integers.Int.repr (i + j) := by
  show BitVec.ofInt 32 i + BitVec.ofInt 32 j = BitVec.ofInt 32 (i + j)
  rw [BitVec.ofInt_add]

theorem repr_sub (i j : _root_.Int) :
    Integers.Int.sub (Integers.Int.repr i) (Integers.Int.repr j)
      = Integers.Int.repr (i - j) := by
  show BitVec.ofInt 32 i - BitVec.ofInt 32 j = BitVec.ofInt 32 (i - j)
  rw [Int.sub_eq_add_neg, BitVec.ofInt_add, BitVec.ofInt_neg, BitVec.sub_eq_add_neg]

/-- Signed `<` on `repr` of two in-range non-negatives is `<` on `Z`. -/
theorem lt_repr (i j : _root_.Int) (hi1 : 0 ≤ i) (hi2 : i < 2147483648)
    (hj1 : 0 ≤ j) (hj2 : j < 2147483648) :
    Integers.Int.lt (Integers.Int.repr i) (Integers.Int.repr j) = decide (i < j) := by
  show BitVec.slt _ _ = _
  rw [BitVec.slt_eq_decide, toInt_repr i hi1 hi2, toInt_repr j hj1 hj2]

/-! ## `unsigned int` arrays -/

/-- The offset `Cop.sem_add` computes for `base + iv` when the element type is
    `unsigned int`.  Stated as the semantics computes it, so the load lemma below
    needs no offset arithmetic. -/
def elemOfs (cenv : CompositeEnv) (ofs0 : Integers.Ptrofs) (iv : Integers.Int) :
    Integers.Ptrofs :=
  Integers.Ptrofs.add ofs0
    (Integers.Ptrofs.mul (Integers.Ptrofs.repr (sizeof cenv tuint))
      (Cop.ptrofsOfInt .Signed iv))

theorem semAdd_elem (cenv : CompositeEnv) (m : Mem) (b : Block)
    (ofs0 : Integers.Ptrofs) (iv : Integers.Int) :
    Cop.semBinaryOperation cenv .Oadd (.Vptr b ofs0) (tptr tuint) (.Vint iv) tint m
      = some (.Vptr b (elemOfs cenv ofs0 iv)) := by
  simp [Cop.semBinaryOperation, Cop.semAdd, Cop.classifyAdd, typeconv,
        removeAttributes, tattr, tptr, tuint, tint, Cop.semAddPtrInt, elemOfs]

/-- `ArrU32 cenv m b ofs0 n arr`: the `n` `unsigned int`s at `b + ofs0` hold
    `arr 0 … arr (n-1)` in `m`, and are readable.

    This is a plain predicate, not a separating one: there is no `∗` here, so it
    says nothing about what else `m` contains.  See the header of `CCLib.Hoare`. -/
def ArrU32 (cenv : CompositeEnv) (m : Mem) (b : Block) (ofs0 : Integers.Ptrofs)
    (n : _root_.Int) (arr : _root_.Int → Integers.Int) : Prop :=
  ∀ i : _root_.Int, 0 ≤ i → i < n →
    Mem.loadv .Mint32 m (.Vptr b (elemOfs cenv ofs0 (Integers.Int.repr i)))
      = some (.Vint (arr i))

/-- Reading `base[idx]` where `base` is a temporary holding the array pointer and
    `idx` is any expression of type `int` evaluating to the index. -/
theorem eval_index (ge : CGenv) (e : Env) (le : TempEnv) (m : Mem)
    (b : Block) (ofs0 : Integers.Ptrofs) (n : _root_.Int)
    (arr : _root_.Int → Integers.Int)
    (harr : ArrU32 ge.genv_cenv m b ofs0 n arr)
    (pid : Ident) (hp : le.get pid = some (.Vptr b ofs0))
    (idx : Expr) (hty : typeof idx = tint) (i : _root_.Int)
    (hidx : EvalExpr ge e le m idx (.Vint (Integers.Int.repr i)))
    (h0 : 0 ≤ i) (hn : i < n) :
    EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd (.Etempvar pid (tptr tuint)) idx (tptr tuint)) tuint)
      (.Vint (arr i)) := by
  have hadd : Cop.semBinaryOperation ge.genv_cenv .Oadd (.Vptr b ofs0) (tptr tuint)
                (.Vint (Integers.Int.repr i)) (typeof idx) m
              = some (.Vptr b (elemOfs ge.genv_cenv ofs0 (Integers.Int.repr i))) := by
    rw [hty]; exact semAdd_elem _ _ _ _ _
  refine EvalExpr.Elvalue _ b (elemOfs ge.genv_cenv ofs0 (Integers.Int.repr i)) .Full _
    (EvalLvalue.Ederef _ _ _ _
      (EvalExpr.Ebinop .Oadd _ _ _ (.Vptr b ofs0) (.Vint (Integers.Int.repr i)) _
        (EvalExpr.Etempvar pid (tptr tuint) _ hp) hidx hadd))
    ?_
  exact DerefLoc.value .Mint32 _ rfl (harr i h0 hn)

/-! ## Computing the operator semantics at `int` / `unsigned int`

`Cop`'s functions are heavily nested `match`es on classification results.  These
lemmas do that reduction once, so the program proofs never see it. -/

@[simp] theorem castIntInt_I32 (sg : Signedness) (i : Integers.Int) :
    Cop.castIntInt .I32 sg i = i := by cases sg <;> rfl

-- The simp set that reduces a `Cop.sem_*` call at scalar int types.
attribute [local simp] Cop.semBinaryOperation Cop.semCmp Cop.classifyCmp typeconv
  removeAttributes tattr tint tuint tbool Cop.semBinarith Cop.classifyBinarith
  Cop.binarithType Cop.semCast Cop.classifyCast Archi.ptr64 Integers.Int.cmp
  Integers.Int.cmpu Integers.MI.cmp Integers.MI.cmpu Cop.semSub Cop.semAdd
  Cop.classifySub Cop.classifyAdd Cop.boolVal Cop.classifyBool

theorem semBinop_lt_int (cenv m) (x y : Integers.Int) :
    Cop.semBinaryOperation cenv .Olt (.Vint x) tint (.Vint y) tint m
      = some (Val.ofBool (Integers.Int.lt x y)) := by simp [Integers.Int.lt, Integers.Int.ltu]

theorem semBinop_le_int (cenv m) (x y : Integers.Int) :
    Cop.semBinaryOperation cenv .Ole (.Vint x) tint (.Vint y) tint m
      = some (Val.ofBool (!Integers.Int.lt y x)) := by simp [Integers.Int.lt, Integers.Int.ltu]

theorem semBinop_ltu_uint (cenv m) (x y : Integers.Int) :
    Cop.semBinaryOperation cenv .Olt (.Vint x) tuint (.Vint y) tuint m
      = some (Val.ofBool (Integers.Int.ltu x y)) := by simp [Integers.Int.lt, Integers.Int.ltu]

theorem semBinop_add_int (cenv m) (x y : Integers.Int) :
    Cop.semBinaryOperation cenv .Oadd (.Vint x) tint (.Vint y) tint m
      = some (.Vint (Integers.Int.add x y)) := by simp [Integers.Int.add, Integers.MI.add]

theorem semBinop_sub_int (cenv m) (x y : Integers.Int) :
    Cop.semBinaryOperation cenv .Osub (.Vint x) tint (.Vint y) tint m
      = some (.Vint (Integers.Int.sub x y)) := by simp [Integers.Int.sub, Integers.MI.sub]

/-- A comparison result is a usable `int` truth value. -/
theorem boolVal_ofBool_int (m) (bb : Bool) : Cop.boolVal (Val.ofBool bb) tint m = some bb := by
  cases bb <;> simp [Val.ofBool, Val.Vtrue, Val.Vfalse] <;> decide

/-- `(_Bool)1` is `1`. -/
theorem semCast_one_bool (m) :
    Cop.semCast (.Vint (Integers.Int.repr 1)) tint tbool m
      = some (.Vint (Integers.Int.repr 1)) := by simp; decide

/-- `freeList` over the environment of a function with no `fn_vars` is a no-op. -/
theorem elements_empty {A : Type} : PTree.elements (PTree.empty : PTree A) = [] := rfl

theorem freeList_emptyEnv (cenv : CompositeEnv) (m : Mem) :
    Mem.freeList m (blocksOfEnv cenv emptyEnv) = some m := by
  simp [blocksOfEnv, emptyEnv, elements_empty, Mem.freeList]

end CC
