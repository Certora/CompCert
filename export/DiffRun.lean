/- Fixed runner used by test/lean/diff_exec.sh.

   The harness copies each `clightgen -lean` output to `DiffProg.lean`, then runs
   this file.  It prints one line: the value `main` returned, or a token saying
   why the run did not finish. -/
import DiffProg
import CCLib
open CC

def main : IO Unit :=
  match runProgram prog 20000000 with
  | none => IO.println "NOINIT"
  | some (.done r _) => IO.println (toString (Integers.Int.signed r))
  | some (.stuck _ _) => IO.println "STUCK"
  | some (.outOfFuel _) => IO.println "FUEL"
