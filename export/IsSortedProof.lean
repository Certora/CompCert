/-
  SUPERSEDED (Phase 6) by `IsSortedReal.lean`, which proves the same statement
  against CompCert's *real* Clight semantics (`CC.Step`) via the Hoare logic in
  `CCLib.Hoare`.  This file is kept for comparison: it is what the theorem looked
  like when the only available meaning for the exported AST was a hand-written toy
  interpreter.

  A proof that the GENERATED Clight AST of `is_sorted` (from main.c, in GenMain)
  returns `1` (true) whenever the input array is sorted — under the small
  big-step model in `ClightSem` (NOT CompCert's official semantics).
-/
import GenMain
import ClightSem
open CC ClightSem
open Main   -- the generated module now lives in its own namespace

namespace IsSortedProof

/-- The initial environment: `numbers` is a pointer at offset 0, `len` is the
    given length; everything else defaults to 0. -/
def initEnv (len : Nat) : TEnv :=
  set (set (fun _ => TVal.vint 0) _numbers (.vptr 0)) _len (.vint len)

/-- The loop body of `is_sorted` (copied verbatim from the generated AST). -/
def loopBody : Stmt :=
  Stmt.Ssequence
    (Stmt.Sifthenelse
      (Expr.Ebinop Binop.Olt (Expr.Etempvar _i tint) (Expr.Etempvar _len tint) tint)
      Stmt.Sskip Stmt.Sbreak)
    (Stmt.Ssequence
      (Stmt.Sset _t'1
        (Expr.Ederef
          (Expr.Ebinop Binop.Oadd (Expr.Etempvar _numbers (tptr tuint))
            (Expr.Etempvar _i tint) (tptr tuint)) tuint))
      (Stmt.Ssequence
        (Stmt.Sset _t'2
          (Expr.Ederef
            (Expr.Ebinop Binop.Oadd (Expr.Etempvar _numbers (tptr tuint))
              (Expr.Ebinop Binop.Osub (Expr.Etempvar _i tint)
                (Expr.Econst_int (Integers.Int.repr 1) tint) tint)
              (tptr tuint)) tuint))
        (Stmt.Sifthenelse
          (Expr.Ebinop Binop.Olt (Expr.Etempvar _t'1 tuint)
            (Expr.Etempvar _t'2 tuint) tint)
          (Stmt.Sreturn (some (Expr.Econst_int (Integers.Int.repr 0) tint)))
          Stmt.Sskip)))

/-- The loop increment `i = i + 1` (copied verbatim from the generated AST). -/
def loopIncr : Stmt :=
  Stmt.Sset _i
    (Expr.Ebinop Binop.Oadd (Expr.Etempvar _i tint)
      (Expr.Econst_int (Integers.Int.repr 1) tint) tint)

-- Integer literals.  `Integers.Int` is now `BitVec 32` (CCLib), and `eval`
-- reads a constant as its unsigned value, so these two rewrites replace the
-- old "unfold `Int.repr`" step — much better than exposing BitVec internals.
@[simp] theorem repr_toNat_zero : (Integers.Int.repr 0).toNat = 0 := by decide
@[simp] theorem repr_toNat_one : (Integers.Int.repr 1).toNat = 1 := by decide

-- Ident distinctness facts we need for environment reasoning, in the
-- `(a = b) = False` form so `simp` can discharge `set_ne` side conditions.
@[simp] theorem num_t1 : (_numbers = _t'1) = False := by decide
@[simp] theorem num_t2 : (_numbers = _t'2) = False := by decide
@[simp] theorem num_i  : (_numbers = _i) = False := by decide
@[simp] theorem num_len : (_numbers = _len) = False := by decide
@[simp] theorem num_last : (_numbers = _last) = False := by decide
@[simp] theorem num_first : (_numbers = _first) = False := by decide
@[simp] theorem len_t1 : (_len = _t'1) = False := by decide
@[simp] theorem len_t2 : (_len = _t'2) = False := by decide
@[simp] theorem len_i  : (_len = _i) = False := by decide
@[simp] theorem len_last : (_len = _last) = False := by decide
@[simp] theorem len_first : (_len = _first) = False := by decide
@[simp] theorem i_t1  : (_i = _t'1) = False := by decide
@[simp] theorem i_t2  : (_i = _t'2) = False := by decide
@[simp] theorem t1_t2 : (_t'1 = _t'2) = False := by decide

/-- One "good" loop iteration (index `i` in range, order holds at `i`):
    the body runs to `norm`, setting the two scratch temporaries. -/
theorem body_lt (arr : List Nat) (len i : Nat) (e : TEnv) (g : Nat)
    (hi : e _i = .vint i) (hnum : e _numbers = .vptr 0) (hlen : e _len = .vint len)
    (hlt : i < len)
    (hsort : arr.getD (i - 1) 0 ≤ arr.getD i 0) :
    exec arr (g + 8) loopBody e
      = some (.norm (set (set e _t'1 (.vint (arr.getD i 0)))
                         _t'2 (.vint (arr.getD (i - 1) 0)))) := by
  have hs : arr[i - 1]?.getD 0 ≤ arr[i]?.getD 0 := hsort
  simp [loopBody, exec, eval, evalBinop, set_eq, set_ne, hi, hnum, hlen,
    hlt, hs]

/-- The exit iteration (index `i` has reached `len`): the guard is false, so the
    body breaks out of the loop. -/
theorem body_ge (arr : List Nat) (len i : Nat) (e : TEnv) (g : Nat)
    (hi : e _i = .vint i) (hlen : e _len = .vint len) (hge : ¬ i < len) :
    exec arr (g + 4) loopBody e = some (.brk e) := by
  simp [loopBody, exec, eval, evalBinop, set_eq, set_ne, hi, hlen,
    hge]

/-- The loop increment `i = i + 1`. -/
theorem incr_ok (arr : List Nat) (i : Nat) (e : TEnv) (g : Nat)
    (hi : e _i = .vint i) :
    exec arr (g + 2) loopIncr e = some (.norm (set e _i (.vint (i + 1)))) := by
  simp [loopIncr, exec, eval, evalBinop, set_eq, hi]

/-- One-step unfolding of `execLoop` at successor fuel (definitional). -/
theorem execLoop_succ (arr : List Nat) (f : Nat) (s1 s2 : Stmt) (e : TEnv) :
    execLoop arr (f + 1) s1 s2 e =
      (match exec arr f s1 e with
       | some (.ret v) => some (.ret v)
       | some (.brk e') => some (.norm e')
       | some (.norm e') =>
           (match exec arr f s2 e' with
            | some (.ret v) => some (.ret v)
            | some (.brk e'') => some (.norm e'')
            | some (.norm e'') => execLoop arr f s1 s2 e''
            | some (.cont e'') => execLoop arr f s1 s2 e''
            | none => none)
       | some (.cont e') =>
           (match exec arr f s2 e' with
            | some (.ret v) => some (.ret v)
            | some (.brk e'') => some (.norm e'')
            | some (.norm e'') => execLoop arr f s1 s2 e''
            | some (.cont e'') => execLoop arr f s1 s2 e''
            | none => none)
       | none => none) := by
  rfl

/-- The loop invariant: starting from index `i` with `n = len - i` iterations
    remaining, and the array sorted, the loop runs to `norm` (never returns
    early).  Fuel `extra + n + 8` (any `extra`) suffices. -/
theorem loop_ok (arr : List Nat) (len : Nat)
    (hsort : ∀ j, 1 ≤ j → j < len → arr.getD (j - 1) 0 ≤ arr.getD j 0) :
    ∀ (n i : Nat) (e : TEnv) (extra : Nat),
      i + n = len → 1 ≤ i →
      e _i = .vint i → e _numbers = .vptr 0 → e _len = .vint len →
      ∃ e', execLoop arr (extra + n + 8) loopBody loopIncr e = some (.norm e') := by
  intro n
  induction n with
  | zero =>
    intro i e extra hin _ hi _ hlen
    have hge : ¬ i < len := by omega
    refine ⟨e, ?_⟩
    rw [show extra + 0 + 8 = (extra + 3 + 4) + 1 from by omega, execLoop_succ,
        body_ge arr len i e (extra + 3) hi hlen hge]
  | succ n ih =>
    intro i e extra hin hile hi hnum hlen
    have hlt : i < len := by omega
    have hsij := hsort i hile hlt
    have hi2 : (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
                  (TVal.vint (arr.getD (i - 1) 0))) _i = TVal.vint i := by
      simp [set_ne, hi]
    have hbody : exec arr (extra + n + 8) loopBody e
        = some (.norm (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
            (TVal.vint (arr.getD (i - 1) 0)))) :=
      body_lt arr len i e (extra + n) hi hnum hlen hlt hsij
    have hincr : exec arr (extra + n + 8) loopIncr
        (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
          (TVal.vint (arr.getD (i - 1) 0)))
        = some (.norm (set (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
            (TVal.vint (arr.getD (i - 1) 0))) _i (TVal.vint (i + 1)))) :=
      incr_ok arr i _ (extra + n + 6) hi2
    have hi3 : (set (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
                  (TVal.vint (arr.getD (i - 1) 0))) _i (TVal.vint (i + 1))) _i
                = TVal.vint (i + 1) := by simp [set_eq]
    have hnum3 : (set (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
                  (TVal.vint (arr.getD (i - 1) 0))) _i (TVal.vint (i + 1))) _numbers
                = TVal.vptr 0 := by simp [set_ne, hnum]
    have hlen3 : (set (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
                  (TVal.vint (arr.getD (i - 1) 0))) _i (TVal.vint (i + 1))) _len
                = TVal.vint len := by simp [set_ne, hlen]
    obtain ⟨e', he'⟩ := ih (i + 1)
      (set (set (set e _t'1 (TVal.vint (arr.getD i 0))) _t'2
        (TVal.vint (arr.getD (i - 1) 0))) _i (TVal.vint (i + 1)))
      extra (by omega) (by omega) hi3 hnum3 hlen3
    refine ⟨e', ?_⟩
    rw [show extra + (n + 1) + 8 = (extra + n + 8) + 1 from by omega, execLoop_succ]
    simp only [hbody, hincr, he']

/-- **Main theorem.**  If the input array is sorted (nondecreasing on the first
    `len` unsigned elements), then the generated `is_sorted` returns `1` (true),
    under the `ClightSem` model. -/
theorem is_sorted_correct (arr : List Nat) (len : Nat)
    (hsort : ∀ j, 1 ≤ j → j < len → arr.getD (j - 1) 0 ≤ arr.getD j 0) :
    ∃ fuel, exec arr fuel f_is_sorted.fn_body (initEnv len)
              = some (.ret (.vint 1)) := by
  rcases Nat.lt_or_ge len 2 with h | h
  · -- len ≤ 1: the first guard returns 1 immediately.
    have hle : len ≤ 1 := by omega
    refine ⟨10, ?_⟩
    simp [f_is_sorted, exec, eval, evalBinop, initEnv, set_eq, set_ne,
      hle]
  · -- len ≥ 2: run the prefix, then the loop (via loop_ok), then return 1.
    refine ⟨len + 30, ?_⟩
    have hlen1 : ¬ len ≤ 1 := by omega
    obtain ⟨e', he'⟩ := loop_ok arr len hsort (len - 1) 1
      (set (set (set (set (set (fun _ => TVal.vint 0) _numbers (TVal.vptr 0))
        _len (TVal.vint len)) _last (TVal.vint (arr.getD 0 0))) _first (TVal.vint 1))
        _i (TVal.vint 1))
      17 (by omega) (by omega) (by simp [set_eq]) (by simp [set_ne]) (by simp [set_ne])
    simp only [loopBody, loopIncr] at he'
    simp [f_is_sorted, exec, eval, evalBinop, initEnv, set_eq, set_ne,
      hlen1, -List.getD_eq_getElem?_getD]
    rw [show len + 24 = 17 + (len - 1) + 8 from by omega, he']

end IsSortedProof
