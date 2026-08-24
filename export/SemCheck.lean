/- Sanity checks for the Phase-3 Clight semantics.
   `Step` is a relation, so it cannot be differentially tested the way the
   functional layers were.  Instead: (1) the executable parts (globalenv,
   init_mem) run on a real clightgen-generated program, and (2) the relation is
   shown to be inhabited by deriving actual transitions. -/
import GenMain
open CC
open Main   -- the generated module now lives in its own namespace

-- (1) executable parts, on the program generated from main.c
#eval prog.prog_defs.length                              -- global definitions
#eval (prog.globalenv.genv_genv.genv_next.toNat : Int)    -- blocks for globals
#eval prog.initMem.isSome                                -- initial memory builds
#eval (Genv.findSymbol prog.globalenv.genv_genv _main).isSome
#eval (Genv.findSymbol prog.globalenv.genv_genv _is_sorted).isSome
#eval prog.initMem.isSome && (prog.initMem.map (·.nextblock.toNat) == some 57)

-- `main` has exactly the signature `InitialState` demands, and `is_sorted`
-- takes (unsigned*, int).  Stated as propositions since `Ty` has no `BEq`.
example : typeOfFundef (.Internal f_main) = Ty.Tfunction [] type_int32s cc_default := rfl
example : typeOfParams f_is_sorted.fn_params = [tptr tuint, tint] := rfl

-- (2) the step relation is inhabited
section Inhabited
variable (ge : CGenv) (fe : Function → List Val → Mem → Env → TempEnv → Mem → Prop)
variable (f : Function) (k : Cont) (e : Env) (le : TempEnv) (m : Mem) (s : Stmt)
variable (id : Ident)

-- `skip` followed by a sequenced statement continues with that statement
example : Step ge fe (.State f .Sskip (.Kseq s k) e le m) E0 (.State f s k e le m) :=
  Step.skip_seq _ _ _ _ _ _

-- `x = 5;` writes 5 into the temporary environment
example :
    Step ge fe (.State f (.Sset id (.Econst_int (Integers.Int.repr 5) tint)) k e le m)
      E0 (.State f .Sskip k e (le.set id (.Vint (Integers.Int.repr 5))) m) :=
  Step.set _ _ _ _ _ _ _ _ (EvalExpr.Econst_int _ _)

-- `if (1) s1 else s2` takes the first branch, via Cop.boolVal
example (s1 s2 : Stmt) :
    Step ge fe (.State f (.Sifthenelse (.Econst_int Integers.Int.one tint) s1 s2) k e le m)
      E0 (.State f s1 k e le m) :=
  Step.ifthenelse f _ s1 s2 k e le m _ true (EvalExpr.Econst_int _ _) rfl

-- and two steps compose into a `Star`
example :
    Star (Step ge fe) (.State f (.Ssequence .Sskip s) k e le m) E0
      (.State f .Sskip (.Kseq s k) e le m) :=
  Star.step _ _ _ _ _ _ (Step.seq _ _ _ _ _ _ _) (Star.refl _) rfl

-- an l-value read: a global variable, then dereferenced through `Elvalue`
example (b : Block) (v : Val) (ty : Ty) (chunk : Chunk)
    (hg : e.get id = none)
    (hs : Genv.findSymbol ge.genv_genv id = some b)
    (ham : accessMode ty = .By_value chunk)
    (hl : Mem.loadv chunk m (.Vptr b Integers.Ptrofs.zero) = some v) :
    EvalExpr ge e le m (.Evar id ty) v :=
  EvalExpr.Elvalue _ _ _ _ _
    (EvalLvalue.Evar_global _ _ _ hg hs)
    (DerefLoc.value _ _ ham hl)
end Inhabited
