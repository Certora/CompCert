/-
  Usability check for the Phase-9 Step-10 temporary-state layer
  (`CCLib.Temps`).

  The claim being tested is not "the proofs got shorter" (they did, by ~19 % on
  `ZAdler32`) but the *asymptotic* one: a statement's proof obligation is now
  **O(1) in the number of tracked temporaries** instead of O(N).  So the check is
  a `Sset` step over a deliberately long tracked list, discharged by exactly the
  same two one-liners as a step over a two-entry list.  If the cost were still
  per-temporary, this file would grow with the list; it does not.

  It also pins the thing that made it possible: `temps_ne` is kernel `decide`,
  which works only because `identOfString` reduces (see `CCLib.Positive`).  If
  that regresses, this file fails rather than silently falling back.
-/
import GenAdler32
import CCLib
open CC CC.Sep CC.HProp
open Adler32   -- the generated module now lives in its own namespace

namespace TempsCheck

/-- Twenty tracked temporaries — more than any single point of `adler32_z`
    tracks, and in the range `inflate`/`deflate` will need.

    `abbrev`, not `def`: the tactics work on the list's *structure*, so a named
    tracked list has to be reducible (noted in `CCLib.Temps`). -/
abbrev wide (b : Block) (ofs0 : Integers.Ptrofs) : List (Ident × Val) :=
  [(_buf, .Vptr b ofs0), (_len, .Vlong 0), (_n, .Vint 0),
   (_t'1, .Vlong 0), (_t'2, .Vptr b ofs0), (_t'3, .Vint 0), (_t'4, .Vlong 0),
   (_t'5, .Vptr b ofs0), (_t'6, .Vint 0), (_t'7, .Vint 0), (_t'8, .Vint 0),
   (_t'9, .Vint 0), (_t'10, .Vint 0), (_t'11, .Vint 0), (_t'12, .Vint 0),
   (_t'13, .Vint 0), (_t'14, .Vint 0), (_t'15, .Vint 0), (_t'16, .Vint 0),
   (_t'17, .Vint 0)]

/-- The side conditions of `triple_set_local` at twenty tracked temporaries:
    two one-liners, exactly as at two. -/
example (b : Block) (ofs0 : Integers.Ptrofs) :
    (∀ q ∈ wide b ofs0, q ∈ wide b ofs0) ∧ (∀ q ∈ wide b ofs0, q.1 ≠ _sum2) :=
  ⟨by temps_mem, by temps_ne⟩

/-- A whole `Sset` step at twenty tracked temporaries.  Compare the body with
    any `tr_*` step in `ZAdler32`: identical shape, and it would be identical at
    a hundred temporaries. -/
example (ge : CGenv) (fe : EntryRel) (f : Function) (b : Block)
    (ofs0 : Integers.Ptrofs) (H : HProp) (v : Integers.Int64) :
    Sep.Triple ge fe f (Sep.LocalSt emptyEnv (wide b ofs0) H)
      (.Sset _sum2 (.Econst_long v tulong))
      (.only (Sep.LocalSt emptyEnv ((_sum2, .Vlong v) :: wide b ofs0) H)) := by
  refine Sep.triple_set_local ge fe f _ _ _ _ _ _ (.Vlong v)
    (by temps_mem) (by temps_ne) (fun le m hp hT _ _ => ?_)
  exact EvalExpr.Econst_long _ _

/-- Reading a temporary back out of a long list is also one line, and picks the
    right entry without any distinctness bookkeeping. -/
example (b : Block) (ofs0 : Integers.Ptrofs) (le : TempEnv)
    (hT : Sep.TempsHold (wide b ofs0) le) : le.get _t'13 = some (.Vint 0) :=
  hT.get (by temps_mem)

/-- Dropping a stale entry (what an *update* to an already-tracked temporary
    needs) is the same one-liner. -/
example (b : Block) (ofs0 : Integers.Ptrofs) :
    ∀ q ∈ [(_buf, Val.Vptr b ofs0), (_n, Val.Vint 0)],
      q ∈ (_len, Val.Vlong 0) :: [(_buf, Val.Vptr b ofs0), (_n, Val.Vint 0)] := by
  temps_mem

/-- The load-bearing fact: identifier disequality is *kernel* decidable.  This
    is what removed `native_decide` (and its axiom) from every milestone
    theorem. -/
example : _adler ≠ _sum2 := by decide
example : _t'17 ≠ _t'7 := by decide

end TempsCheck
