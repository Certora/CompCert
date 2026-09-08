/-
  `swap` — the smallest program that *writes* through pointers, proved with the
  separation logic.

  Purpose: `triple_assign` / `mapsto_store` were proved in Phase 7.4 but never
  exercised in a program proof, because `is_sorted` only reads.  Proved-but-unused
  is where latent unusability hides, and every interesting zlib routine writes
  constantly, so this is on the critical path rather than a curiosity.

  It also exercises the frame rule the way separation logic is meant to be used:
  the two cells are owned *separately*, so writing `*a` provably leaves `*b`
  alone, and vice versa.
-/
import GenSwap
import CCLib
open CC CC.Sep CC.HProp
open Swap   -- the generated module now lives in its own namespace

namespace SwapSep

/-- The identifiers `swap` writes, each distinct from the ones still live. -/
structure Distinct : Prop where
  t_a : _t ≠ _a
  t_b : _t ≠ _b
  t1_a : _t'1 ≠ _a
  t1_b : _t'1 ≠ _b
  t1_t : _t'1 ≠ _t

theorem idents_distinct : Distinct := by constructor <;> decide

section
variable (ge : CGenv) (fe : EntryRel) (p : Permission)
variable (ba bb : Block) (oa ob : Integers.Ptrofs)

/-- The two cells, owned separately. -/
def Cells (x y : Integers.Int) : HProp :=
  mapsto .Mint32 p ba (Integers.Ptrofs.unsigned oa) (.Vint x)
  ∗ mapsto .Mint32 p bb (Integers.Ptrofs.unsigned ob) (.Vint y)

/-- Local state: the two pointers known, the scratch temporaries as far as set,
    and the two cells owned. -/
def St (x y : Integers.Int) (t t1 : Option Integers.Int) : Sep.Assn := fun e le hp =>
  e = emptyEnv
  ∧ le.get _a = some (.Vptr ba oa)
  ∧ le.get _b = some (.Vptr bb ob)
  ∧ (match t with | none => True | some v => le.get _t = some (.Vint v))
  ∧ (match t1 with | none => True | some v => le.get _t'1 = some (.Vint v))
  ∧ Cells p ba bb oa ob x y hp

/-- Casting `unsigned int` to `unsigned int` is the identity. -/
theorem semCast_uint (m : Mem) (v : Integers.Int) :
    Cop.semCast (.Vint v) tuint tuint m = some (.Vint v) := by
  simp [Cop.semCast, Cop.classifyCast, tuint, Archi.ptr64]

/-- Reading `*a`, where the fragment owns the `a` cell. -/
theorem read_a (e : Env) (le : TempEnv) (m : Mem) (hp : Heap) (x y : Integers.Int)
    (hpr : permOrder p .Readable = true)
    (hSt : St p ba bb oa ob x y none none e le hp) (hag : Heap.Agrees hp m) :
    EvalExpr ge e le m (.Ederef (.Etempvar _a (tptr tuint)) tuint) (.Vint x) := by
  obtain ⟨_, hga, _, _, _, hc⟩ := hSt
  obtain ⟨h1, h2, hd, heq, hm1, _⟩ := hc
  subst heq
  have hlr : Val.loadResult .Mint32 (.Vint x) = .Vint x := by simp [Val.loadResult]
  rw [← hlr]
  exact eval_deref_mapsto (ty := tuint) (chunk := .Mint32) (p := p) rfl hpr hm1
    (Heap.Agrees_union_left hag) (EvalExpr.Etempvar _a (tptr tuint) _ hga)

/-- Reading `*b`.  The `b` cell is the *right* half of the `∗`, so this needs the
    disjointness that separating conjunction supplies. -/
theorem read_b (e : Env) (le : TempEnv) (m : Mem) (hp : Heap) (x y : Integers.Int)
    (t : Option Integers.Int)
    (hpr : permOrder p .Readable = true)
    (hSt : St p ba bb oa ob x y t none e le hp) (hag : Heap.Agrees hp m) :
    EvalExpr ge e le m (.Ederef (.Etempvar _b (tptr tuint)) tuint) (.Vint y) := by
  obtain ⟨_, _, hgb, _, _, hc⟩ := hSt
  obtain ⟨h1, h2, hd, heq, _, hm2⟩ := hc
  subst heq
  have hlr : Val.loadResult .Mint32 (.Vint y) = .Vint y := by simp [Val.loadResult]
  rw [← hlr]
  exact eval_deref_mapsto (ty := tuint) (chunk := .Mint32) (p := p) rfl hpr hm2
    (Heap.Agrees_union_right hd hag) (EvalExpr.Etempvar _b (tptr tuint) _ hgb)

/-- **`swap`'s body.**  Both writes go through `triple_assign`, i.e. through
    `mapsto_store`; the cell not being written is the frame each time. -/
theorem swap_body (hd : Distinct) (hpw : permOrder p .Writable = true)
    (hpr : permOrder p .Readable = true) (x y : Integers.Int) :
    Sep.Triple ge fe f_swap (St p ba bb oa ob x y none none) f_swap.fn_body
      (Sep.ExitConds.only (St p ba bb oa ob y x (some x) (some y))) := by
  show Sep.Triple ge fe f_swap _ (Stmt.Ssequence _ (Stmt.Ssequence (Stmt.Ssequence _ _) _)) _
  -- t = *a
  refine Sep.triple_seq_only ge fe f_swap
    (Sep.triple_set ge fe f_swap _ (St p ba bb oa ob x y (some x) none) _ _
      (fun e le hp m hSt hag => ?_)) ?_
  · exact ⟨.Vint x, read_a ge p ba bb oa ob e le m hp x y hpr hSt hag,
      ⟨hSt.1, (PTree.gso _ _ _ _ hd.t_a).trans hSt.2.1,
       (PTree.gso _ _ _ _ hd.t_b).trans hSt.2.2.1, PTree.gss _ _ _, trivial,
       hSt.2.2.2.2.2⟩⟩
  -- (t'1 = *b; *a = t'1) ; *b = t
  refine Sep.triple_seq ge fe f_swap _ (St p ba bb oa ob y y (some x) (some y)) _ _ _ ?_ ?_
  · -- t'1 = *b, then *a = t'1
    refine Sep.triple_fallthrough ge fe f_swap _ (St p ba bb oa ob y y (some x) (some y)) _ _
      (Sep.triple_seq_only ge fe f_swap
        (Sep.triple_set ge fe f_swap _ (St p ba bb oa ob x y (some x) (some y)) _ _
          (fun e le hp m hSt hag => ?_)) ?_) (fun _ _ _ z => z)
    · exact ⟨.Vint y, read_b ge p ba bb oa ob e le m hp x y (some x) hpr hSt hag,
        ⟨hSt.1, (PTree.gso _ _ _ _ hd.t1_a).trans hSt.2.1,
         (PTree.gso _ _ _ _ hd.t1_b).trans hSt.2.2.1,
         (PTree.gso _ _ _ _ hd.t1_t).trans hSt.2.2.2.1, PTree.gss _ _ _,
         hSt.2.2.2.2.2⟩⟩
    · -- *a = t'1 : the `b` cell is the frame
      refine Sep.triple_assign ge fe f_swap _ (St p ba bb oa ob y y (some x) (some y))
        _ _ .Mint32 p ba oa hpw rfl (fun e le hp m hSt hag => ?_)
      obtain ⟨he, hga, hgb, hgt, hgt1, hc⟩ := hSt
      obtain ⟨h1, h2, hdj, heq, hm1, hm2⟩ := hc
      refine ⟨.Vint x, .Vint y, h1, h2, hdj, heq, hm1,
        EvalLvalue.Ederef _ _ _ _ (EvalExpr.Etempvar _a (tptr tuint) _ hga),
        ⟨.Vint y, EvalExpr.Etempvar _t'1 tuint _ hgt1, semCast_uint m y⟩,
        fun h1' hm1' hdj' => ?_⟩
      exact ⟨he, hga, hgb, hgt, hgt1, ⟨h1', h2, hdj', rfl, hm1', hm2⟩⟩
  · -- *b = t : now the `a` cell is the frame, so the two halves swap roles
    refine Sep.triple_assign ge fe f_swap _ (St p ba bb oa ob y x (some x) (some y))
      _ _ .Mint32 p bb ob hpw rfl (fun e le hp m hSt hag => ?_)
    obtain ⟨he, hga, hgb, hgt, hgt1, hc⟩ := hSt
    obtain ⟨h1, h2, hdj, heq, hm1, hm2⟩ := hc
    refine ⟨.Vint y, .Vint x, h2, h1, Heap.disjoint_comm hdj,
      by rw [heq, Heap.union_comm hdj], hm2,
      EvalLvalue.Ederef _ _ _ _ (EvalExpr.Etempvar _b (tptr tuint) _ hgb),
      ⟨.Vint x, EvalExpr.Etempvar _t tuint _ hgt, semCast_uint m x⟩,
      fun h2' hm2' hdj' => ?_⟩
    exact ⟨he, hga, hgb, hgt, hgt1,
      ⟨h1, h2', Heap.disjoint_comm hdj', by rw [Heap.union_comm (Heap.disjoint_comm hdj')],
       hm1, hm2'⟩⟩

end
end SwapSep
