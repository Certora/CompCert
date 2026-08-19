/-
  A non-vacuity check for `IsSortedReal.is_sorted_call`.

  The milestone theorem is stated under hypotheses (`ArrU32`, sortedness, the
  length bound).  If those were unsatisfiable the theorem would be true and
  worthless, so here they are discharged for a *concrete* memory holding the
  array `[10, 20, 30]`, yielding an unconditional `Star Step` execution.

  Note this check is only possible because the Lean memory model *computes*:
  CompCert's `Mem.store`/`Mem.load` are not evaluable in Rocq (`range_perm_dec`
  recurses on an opaque accessibility proof), so `Compute` cannot run them.
-/
import IsSortedReal
open CC IsSortedReal

namespace IsSortedRealCheck

/-- Twelve bytes of fresh memory. -/
def blk : Mem × Block := Mem.alloc Mem.empty 0 12

/-- `[10, 20, 30]` stored as three `unsigned int`s at offset 0. -/
def memOf : Option Mem := do
  let m ← Mem.store .Mint32 blk.1 blk.2 0 (.Vint (Integers.Int.repr 10))
  let m ← Mem.store .Mint32 m blk.2 4 (.Vint (Integers.Int.repr 20))
  let m ← Mem.store .Mint32 m blk.2 8 (.Vint (Integers.Int.repr 30))
  pure m

theorem memOf_isSome : memOf.isSome = true := by native_decide

def mem : Mem := memOf.get memOf_isSome

/-- The contents, as the array function `ArrU32` expects. -/
def arr3 : _root_.Int → Integers.Int := fun i =>
  if i = 0 then Integers.Int.repr 10
  else if i = 1 then Integers.Int.repr 20
  else Integers.Int.repr 30

/-- The genv only matters through `sizeof cenv tuint`; use the generated one. -/
def ge3 : CGenv := prog.globalenv

theorem arr3_in_mem : ArrU32 ge3.genv_cenv mem blk.2 (Integers.Ptrofs.repr 0) 3 arr3 := by
  intro i h0 h3
  have hcase : i = 0 ∨ i = 1 ∨ i = 2 := by omega
  rcases hcase with h | h | h <;> subst h <;> native_decide

theorem arr3_sorted :
    ∀ j : _root_.Int, 1 ≤ j → j < 3 → Integers.Int.ltu (arr3 j) (arr3 (j-1)) = false := by
  intro j h1 h3
  have hcase : j = 1 ∨ j = 2 := by omega
  rcases hcase with h | h <;> subst h <;> native_decide

/-- **Unconditional execution.**  Calling `is_sorted` on the concrete array
    `[10, 20, 30]` runs, under CompCert's Clight step relation, from the
    `Callstate` to a `Returnstate` carrying `1`.  No hypotheses. -/
theorem is_sorted_runs :
    Star (Step ge3 (FunctionEntry2 ge3))
      (.Callstate (.Internal f_is_sorted)
        [.Vptr blk.2 (Integers.Ptrofs.repr 0), .Vint (Integers.Int.repr 3)] .Kstop mem) E0
      (.Returnstate (.Vint (Integers.Int.repr 1)) .Kstop mem) :=
  is_sorted_call ge3 mem blk.2 (Integers.Ptrofs.repr 0) 3 arr3
    (by omega) (by omega) arr3_in_mem arr3_sorted .Kstop

end IsSortedRealCheck
