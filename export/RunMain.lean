/- Actually EXECUTE the Clight program generated from main.c, under the Lean
   semantics, using the Phase-4 interpreter. -/
import GenMain
import CCLib
open CC
open Main   -- the generated module now lives in its own namespace

-- main() { return 0; }  -- should terminate with exit code 0
#eval match runProgram prog 10000 with
      | none => "could not build the initial state"
      | some (.done r _) => s!"terminated, exit code {Integers.Int.signed r}"
      | some (.stuck _ _) => "STUCK"
      | some (.outOfFuel _) => "out of fuel"

-- How many steps does it actually take?
#eval (List.range 40).find? (fun n =>
        match runProgram prog n with
        | some (.done _ _) => true
        | _ => false)
