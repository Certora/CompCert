/-
  SUPERSEDED (Phase 6).  Kept only so the old proof can be compared with the new
  one; nothing depends on it any more.  The real semantics is `CCLib.Clight`
  (relational) plus `CCLib.ClightExec` (executable), and `is_sorted` is now proved
  against *that* in `IsSortedReal.lean`.

  A SMALL big-step interpreter for the fragment of Clight that `is_sorted`
  uses.  This is a hand-written model to give the (otherwise inert) generated
  AST a meaning so we can state and prove a behavioural theorem about it.

  IMPORTANT: this is NOT CompCert's official Clight semantics.  It is a
  self-contained model covering only the constructs `is_sorted` needs
  (Sskip/Sset/Ssequence/Sifthenelse/Sloop/Sbreak/Sreturn and the pure
  expressions), with:
    - integers modelled as `Nat` (the sortedness property is about the
      UNSIGNED order of the array elements, so `Nat` is the faithful choice);
    - a single backing array `arr : List Nat`, with `numbers` a pointer at
      offset 0 and `numbers[k]` read as `arr.getD k 0`.
  A theorem proved here holds "under this model", and does not by itself
  inherit CompCert's C-to-assembly guarantee.
-/
import Clightdefs
open CC

namespace ClightSem

/-- Runtime values for the toy model: machine integers (as `Nat`) and pointers
    (as offsets).  Named `TVal` rather than `Val` so as not to clash with the
    real `CC.Val` from `CCLib.Values`, which now exists. -/
inductive TVal where
  | vint (n : Nat)
  | vptr (off : Nat)
  deriving DecidableEq, Repr

/-- The toy model's temporary/parameter environment (named `TEnv` to avoid
    clashing with `CC.Env` from `CCLib.Clight`). -/
abbrev TEnv := Ident → TVal

def set (e : TEnv) (id : Ident) (v : TVal) : TEnv :=
  fun j => if j = id then v else e j

@[simp] theorem set_eq (e : TEnv) (id : Ident) (v : TVal) : set e id v id = v := by
  simp [set]

theorem set_ne (e : TEnv) (id j : Ident) (v : TVal) (h : ¬ j = id) :
    set e id v j = e j := by
  simp [set, h]

/-- Evaluation of a binary operator on values. -/
def evalBinop : Binop → TVal → TVal → TVal
  | .Oadd, .vint m, .vint n => .vint (m + n)
  | .Oadd, .vptr o, .vint n => .vptr (o + n)
  | .Osub, .vint m, .vint n => .vint (m - n)
  | .Omul, .vint m, .vint n => .vint (m * n)
  | .Olt,  .vint m, .vint n => .vint (if m < n then 1 else 0)
  | .Ole,  .vint m, .vint n => .vint (if m ≤ n then 1 else 0)
  | _, _, _ => .vint 0

/-- Evaluation of a (pure) Clight expression. -/
def eval (arr : List Nat) (e : TEnv) : Expr → TVal
  -- `n` is now a `BitVec 32` (CCLib.Integers); `.toNat` is its unsigned value.
  | .Econst_int n _ => .vint n.toNat
  | .Etempvar id _ => e id
  | .Ederef a _ =>
      match eval arr e a with
      | .vptr off => .vint (arr.getD off 0)
      | _ => .vint 0
  | .Ebinop op a b _ => evalBinop op (eval arr e a) (eval arr e b)
  | .Ecast a _ => eval arr e a
  | _ => .vint 0

/-- The outcome of running a statement. -/
inductive Out where
  | norm (e : TEnv)
  | brk  (e : TEnv)
  | cont (e : TEnv)
  | ret  (v : TVal)

-- Big-step execution with a fuel bound.  `none` = ran out of fuel or hit an
-- unsupported construct.
mutual
def exec (arr : List Nat) : Nat → Stmt → TEnv → Option Out
  | 0, _, _ => none
  | _+1, .Sskip, e => some (.norm e)
  | _+1, .Sbreak, e => some (.brk e)
  | _+1, .Scontinue, e => some (.cont e)
  | _+1, .Sset id ex, e => some (.norm (set e id (eval arr e ex)))
  | _+1, .Sreturn (some ex), e => some (.ret (eval arr e ex))
  | _+1, .Sreturn none, _e => some (.ret (.vint 0))
  | f+1, .Ssequence s1 s2, e =>
      match exec arr f s1 e with
      | some (.norm e') => exec arr f s2 e'
      | some o => some o
      | none => none
  | f+1, .Sifthenelse ex s1 s2, e =>
      match eval arr e ex with
      | .vint n => exec arr f (if n = 0 then s2 else s1) e
      | _ => none
  | f+1, .Sloop s1 s2, e => execLoop arr f s1 s2 e
  | _+1, _, _ => none
def execLoop (arr : List Nat) : Nat → Stmt → Stmt → TEnv → Option Out
  | 0, _, _, _ => none
  | f+1, s1, s2, e =>
      match exec arr f s1 e with
      | some (.ret v) => some (.ret v)
      | some (.brk e') => some (.norm e')
      | some (.norm e') =>
          match exec arr f s2 e' with
          | some (.ret v) => some (.ret v)
          | some (.brk e'') => some (.norm e'')
          | some (.norm e'') => execLoop arr f s1 s2 e''
          | some (.cont e'') => execLoop arr f s1 s2 e''
          | none => none
      | some (.cont e') =>
          match exec arr f s2 e' with
          | some (.ret v) => some (.ret v)
          | some (.brk e'') => some (.norm e'')
          | some (.norm e'') => execLoop arr f s1 s2 e''
          | some (.cont e'') => execLoop arr f s1 s2 e''
          | none => none
      | none => none
end

end ClightSem
