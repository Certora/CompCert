/- Run the GENERATED `is_sorted` on concrete arrays, under the real Phase-3/4
   Clight semantics (not the toy `ClightSem` model). -/
import GenMain
import CCLib
open CC
open Main   -- the generated module now lives in its own namespace

/-- Store `vals` as 32-bit ints at the start of a fresh block, and return the
    block plus the updated memory. -/
def putArray (m : Mem) (vals : List Nat) : Option (Block × Mem) :=
  let (m1, b) := Mem.alloc m 0 (4 * vals.length)
  let rec go (m : Mem) (i : Nat) : List Nat → Option Mem
    | [] => some m
    | v :: vs =>
        match Mem.store .Mint32 m b (4 * i) (.Vint (Integers.Int.repr v)) with
        | some m' => go m' (i + 1) vs
        | none => none
  (go m1 0 vals).map (fun m' => (b, m'))

/-- Call the generated `is_sorted(arr, len)` and report its result. -/
def callIsSorted (vals : List Nat) (len : Nat) : String :=
  let ge := prog.globalenv
  match prog.initMem with
  | none => "no initial memory"
  | some m0 =>
      match putArray m0 vals with
      | none => "could not lay out the array"
      | some (b, m) =>
          let st : State :=
            .Callstate (.Internal f_is_sorted)
              [.Vptr b Integers.Ptrofs.zero, .Vint (Integers.Int.repr len)]
              .Kstop m
          match run ge st E0 100000 with
          | .done r _ => s!"returned {Integers.Int.signed r}"
          | .stuck _ _ => "STUCK"
          | .outOfFuel _ => "out of fuel"

-- sorted inputs => 1 (true)
#eval callIsSorted [1, 2, 3] 3
#eval callIsSorted [5, 5, 7] 3
#eval callIsSorted [7] 1
#eval callIsSorted [] 0
#eval callIsSorted [0, 1, 2, 3, 4, 5, 6, 7] 8
-- unsorted inputs => 0 (false)
#eval callIsSorted [1, 3, 2] 3
#eval callIsSorted [3, 1] 2
#eval callIsSorted [1, 2, 3, 4, 0] 5
-- unsigned comparison: 4294967295 is the LARGEST unsigned value, so this is sorted
#eval callIsSorted [1, 4294967295] 2
#eval callIsSorted [4294967295, 1] 2
