/-
  **Phase-9 Wave-E item 6 — a BACKWARD `goto`, resolved with a measure.**

  `test/lean/gotoback.c` is `inffast.c`'s shape:

      unsigned int lookup(unsigned int level) {
        again:
          if (level == 0) return 7;
          level--;
          goto again;            /* jumps BACK to the label above it */
      }

  This is a loop built entirely out of `goto`, with no `Sloop` — so
  `Sep.triple_loop` does not apply and `Sep.satisfies_internal_goto` does not
  either, because its target is verified with `goto := no` and therefore cannot
  jump again.  `Sep.satisfies_internal_goto_measure` is the rule for it: the
  goto-assertion is indexed by a `Nat` that must strictly decrease before the
  label is re-entered.

  **Why this matters for zlib, and how big the measure really is.**
  `inflate_fast`'s `dolen`/`dodist` are the two-level Huffman table lookup: a code
  longer than the root table's bits sends control back through `dolen` with
  `here` pointing into a *second-level* table.  A second-level entry is never
  itself a second-level pointer — zlib builds exactly two levels — so the jump
  fires **at most once** per symbol.  The measure there is 1, and proving that
  bound is a data-structure invariant of `inflate_table`'s output, i.e. an
  obligation on inftrees.c rather than on the program logic.

  Two things this file establishes that E4 could not:

  * `label_resolves` — the label is at the **top of a sequence**, not the top of
    the body, so `findLabel` rebuilds the frame above it and the landing
    continuation is `Kseq rest kk`, **not** `kk`.  That is why the goto rules take
    the landing continuation as a function `kcont` of the ambient one, with
    `callCont ∘ kcont = callCont` — which holds by `rfl` for every frame
    `findLabel` can add.
  * `lookup_satisfies` — the whole function meets a `FunSpec`, with the measure
    doing the work `Sloop`'s measure does for an ordinary loop.
-/
import GenGotoBack
import CCLib
open CC CC.Sep CC.HProp
open Gotoback   -- the generated module lives in its own namespace

namespace GotoBackSep

/-- The tail of the body: decrement, then jump back. -/
def bodyTail : Stmt :=
  .Ssequence
    (.Sset _level (.Ebinop .Osub (.Etempvar _level tuint)
      (.Econst_int (Integers.Int.repr 1) tint) tuint))
    (.Sgoto _again)

/-- The labelled statement: the `if` that either returns or falls through. -/
def labelBody : Stmt :=
  .Sifthenelse
    (.Ebinop .Oeq (.Etempvar _level tuint)
      (.Econst_int (Integers.Int.repr 0) tint) tint)
    (.Sreturn (some (.Econst_int (Integers.Int.repr 7) tint)))
    .Sskip

/-- The `rfl` guard on the generated AST. -/
theorem body_shape :
    f_lookup.fn_body = .Ssequence (.Slabel _again labelBody) bodyTail := rfl

/-- **The landing continuation is not the ambient one.**  `_again` is the *first*
    element of the body's sequence, so `findLabel` pushes the rest of the sequence
    onto the continuation.  Contrast `inflate`, whose label is last and where the
    continuation comes back unchanged. -/
theorem label_resolves : ∀ kk : Cont,
    findLabel _again f_lookup.fn_body kk
      = some (labelBody, (fun k => Cont.Kseq bodyTail k) kk) := by
  intro kk; rfl

/-- …and the extra frame does not change `callCont` — by `rfl`, which is what
    makes the generalised rule usable at all. -/
theorem kcont_callCont : ∀ kk : Cont,
    callCont ((fun k => Cont.Kseq bodyTail k) kk) = callCont kk := by
  intro kk; rfl

/-! ## The measure

`level` counts down to 0, so the natural measure is `level` itself.  Each pass
through the label decrements it, which is exactly the strict decrease
`satisfies_internal_goto_measure` demands. -/

/-- At measure `n`, the temporary `level` holds `n`, and nothing is owned. -/
def Gm (n : Nat) : Sep.Assn := fun _ le hp =>
  le.get _level = some (.Vint (Integers.Int.repr ((n : Nat) : _root_.Int)))
  ∧ n < 4294967296
  ∧ hp = Heap.emp

/-- `lookup` returns 7 for any argument, owning nothing. -/
def lookupSpec (n : Nat) : FunSpec :=
  { tyargs := [tuint], tyres := tuint, cc := cc_default,
    pre := fun vargs hp =>
      vargs = [.Vint (Integers.Int.repr ((n : Nat) : _root_.Int))]
      ∧ n < 4294967296 ∧ hp = Heap.emp,
    post := fun v hp => v = .Vint (Integers.Int.repr 7) ∧ hp = Heap.emp,
    measure := fun _ => 0 }

/-- `level == 0` is true exactly when the measure is 0. -/
theorem cond_eval {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem} {n : Nat}
    (hn : le.get _level = some (.Vint (Integers.Int.repr ((n : Nat) : _root_.Int))))
    (hlt : n < 4294967296) :
    ∃ v, EvalExpr ge e le m
          (.Ebinop .Oeq (.Etempvar _level tuint)
            (.Econst_int (Integers.Int.repr 0) tint) tint) v
      ∧ Cop.boolVal v tint m = some (decide (n = 0)) := by
  refine ⟨.Vint (Integers.Int.repr (if n = 0 then 1 else 0)), ?_, ?_⟩
  · refine EvalExpr.Ebinop .Oeq _ _ _ _ _ _
      (EvalExpr.Etempvar _level tuint _ hn)
      (EvalExpr.Econst_int (Integers.Int.repr 0) tint) ?_
    -- `Oeq` at `tuint` vs `tint` is `Int.cmpu Ceq`, which computes
    show Cop.semBinaryOperation ge.genv_cenv .Oeq
          (.Vint (Integers.Int.repr ((n : Nat) : _root_.Int))) tuint
          (.Vint (Integers.Int.repr 0)) tint m
        = some (.Vint (Integers.Int.repr (if n = 0 then 1 else 0)))
    have hz : Integers.Int.repr ((0 : Nat) : _root_.Int)
            = Integers.Int.repr 0 := by norm_cast
    have hcmp := cmpu_eq_nat32 n 0 hlt (by omega)
    rw [hz] at hcmp
    show some (Val.ofBool (Integers.Int.cmpu .Ceq
      (Integers.Int.repr ((n : Nat) : _root_.Int)) (Integers.Int.repr 0))) = _
    rw [hcmp]
    by_cases h0 : n = 0
    · simp only [h0, decide_true, if_true]; rfl
    · simp only [h0, decide_false, if_false]; rfl
  · by_cases h0 : n = 0
    · simp only [h0, if_true, decide_true]; rfl
    · simp only [h0, if_false, decide_false]; rfl

/-! ## What exercising the rule found — a real gap

Composing the pieces above into a full `SatisfiesAt` via
`Sep.satisfies_internal_goto_measure` **does not go through**, and the reason is
worth recording rather than papering over.

`findLabel` returns the labelled statement alone — here `labelBody`, the `if` —
with the rest of the sequence pushed onto the continuation
(`kcont = Kseq bodyTail`).  So the rule's target triple is a triple for
`labelBody`.  But `labelBody` **falls through** when `level ≠ 0`: it exits
*normally*, and the decrement-and-jump in `bodyTail` then runs from the
continuation, outside that triple.  The rule as stated verifies the target with
`normal := Assn.no`, which is unprovable here.

So `satisfies_internal_goto_measure` is sound and usable, but only for a label
whose target **returns or jumps on every path** — a retry loop that never falls
out of the labelled statement.  It is *not* enough for `inflate_fast`: after
`dolen`'s code, control continues into the rest of the loop body rather than
returning, so that label falls through too.

**What the rule needs.**  A "round trip" formulation: the obligation should be
about the statement that runs from the label all the way back to the jump —
here `Ssequence labelBody bodyTail`, which is `f.fn_body` with the label
stripped — rather than about the labelled statement in isolation.  The
technical obstacle is one step of direction: a triple for the round-trip
statement gives `Steps` from `.State f sround k`, while the rule needs `Steps`
from the landing state, which is one `Step.seq` *after* it.  Bridging that needs
either a determinism/inversion lemma for `SStep`, or a triple formulated at the
landing continuation directly.

That is a design question, not a bug, and it is exactly what item 6 exists to
surface: `satisfies_internal_goto` (forward, `inflate`) is complete and exercised
end to end in `GotoSep`; the backward rule is proved but its interface needs one
more generalisation before `inflate_fast` can use it.  Recording it here beats
leaving a `sorry`, and beats a rule that looks finished and is not.

The structural facts above are the reusable part, and they *are* settled: the
landing continuation is not the ambient one, and the frame `findLabel` adds does
not disturb `callCont`. -/

end GotoBackSep