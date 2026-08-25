/-
  The separation logic proper — Phase 7.4.

  Same design as `CCLib/Hoare.lean`: the triple is *defined* as a statement about
  `Step`, so soundness is definitional and only the rules need proving.  What is
  new is that assertions describe a heap *fragment* (`CCLib/SepLogic.lean`) and the
  triple carries a **frame** `hf` through the execution:

      Triple ge fe f P s R  ≡  for every frame `hf` disjoint from the fragment `hp`
                               that `P` describes, and every memory realizing
                               `hp ∪ hf`, executing `s` reaches an outcome whose
                               fragment `hp'` still satisfies `R` and is still
                               disjoint from — and consistent with — the *same* `hf`

  Because `hf` is literally the same heap on both sides, and `Agrees` pins its
  permissions and contents in the before- and after-memory, the frame's footprint
  is provably untouched.  `triple_frame` then falls out of union associativity.

  This file lives in `namespace CC.Sep` alongside the old `CC` Hoare logic rather
  than replacing it, so the build stays green: Phase 7.7 migrates
  `IsSortedReal.lean` and retires the non-separating version.
-/
import CCLib.SepLogic
import CCLib.Hoare
import CCLib.HoareArray

namespace CC
namespace Sep

open HProp

/-- An assertion: constrains the local environment, the temporaries, and the heap
    fragment.  `HProp`-valued, so `∗` and the BI laws come straight from
    `CCLib/SepLogic.lean`. -/
abbrev Assn := Env → TempEnv → HProp

/-- The memory an outcome ends in. -/
def outMem : Outcome → Mem
  | .Normal _ _ m => m
  | .Break _ _ m => m
  | .Continue _ _ m => m
  | .Return _ m => m
  | .Goto _ _ _ m => m

/-- Postconditions, one per exit kind.  `ret` is heap-only: a returning function
    has no local environment left to describe. -/
structure ExitConds where
  normal : Assn
  brk : Assn
  cont : Assn
  ret : Val → HProp
  /-- **Wave E**: one assertion per label the statement may jump to.  The field
      carries a **default**, so every `ExitConds` literal written before Wave E
      still elaborates unchanged — 21 of them across this file, `Funspec`,
      `IsSortedReal`, `IsSortedSep` and `ZAdler32`.  That is what kept the
      `Outcome` extension to 14 match arms instead of a file-wide rewrite.
      (`Sep.Assn.no` is defined just below, so the default is spelled out.) -/
  goto : Ident → Assn := fun _ _ _ _ => False

def ExitConds.holds (R : ExitConds) : Outcome → Heap → Prop
  | .Normal e le _, hp => R.normal e le hp
  | .Break e le _, hp => R.brk e le hp
  | .Continue e le _, hp => R.cont e le hp
  | .Return v _, hp => R.ret v hp
  | .Goto lbl e le _, hp => R.goto lbl e le hp

/-- The unsatisfiable assertion, for exits a statement cannot take. -/
def Assn.no : Assn := fun _ _ _ => False

/-- Only-normal-exit postconditions. -/
def ExitConds.only (Q : Assn) : ExitConds :=
  { normal := Q, brk := Assn.no, cont := Assn.no, ret := fun _ _ => False }

/-! ## The triple -/

def Triple (ge : CGenv) (fe : EntryRel) (f : Function) (P : Assn) (s : Stmt)
    (R : ExitConds) : Prop :=
  ∀ k e le hp hf m,
    Heap.disjoint hp hf → Heap.Agrees (Heap.union hp hf) m → P e le hp →
    ∃ o hp',
      Steps (SStep ge fe) (.State f s k e le m) (o.state f k)
      ∧ Heap.disjoint hp' hf
      ∧ Heap.Agrees (Heap.union hp' hf) (outMem o)
      ∧ R.holds o hp'

/-! ## Structural rules

The heap-neutral rules simply hand `hp` back unchanged; only `assign` (and the
entry/exit rules) actually move resources. -/

theorem triple_skip (ge fe f) (P : Assn) : Triple ge fe f P .Sskip (.only P) := by
  intro k e le hp hf m hd hag hP
  exact ⟨.Normal e le m, hp, Steps.refl _, hd, hag, hP⟩

theorem triple_conseq (ge fe f) {P P' : Assn} {s} {R R' : ExitConds}
    (h : Triple ge fe f P s R)
    (hP : ∀ e le hp, P' e le hp → P e le hp)
    (hn : ∀ e le hp, R.normal e le hp → R'.normal e le hp)
    (hb : ∀ e le hp, R.brk e le hp → R'.brk e le hp)
    (hc : ∀ e le hp, R.cont e le hp → R'.cont e le hp)
    (hr : ∀ v hp, R.ret v hp → R'.ret v hp)
    -- Wave E: a trailing `autoParam`, so the 9 pre-existing call sites of this
    -- rule are untouched.  The default closes the two cases that actually occur:
    -- the goto conditions are the same, or the source has none.
    (hg : ∀ lbl e le hp, R.goto lbl e le hp → R'.goto lbl e le hp := by
      intro _ _ _ _ hgg; first | exact hgg | exact hgg.elim) :
    Triple ge fe f P' s R' := by
  intro k e le hp hf m hd hag hP'
  obtain ⟨o, hp', hs, hd', hag', hR⟩ := h k e le hp hf m hd hag (hP e le hp hP')
  refine ⟨o, hp', hs, hd', hag', ?_⟩
  cases o with
  | Normal _ _ _ => exact hn _ _ _ hR
  | Break _ _ _ => exact hb _ _ _ hR
  | Continue _ _ _ => exact hc _ _ _ hR
  | Goto _ _ _ _ => exact hg _ _ _ _ hR
  | Return _ _ => exact hr _ _ hR

theorem triple_exists {α : Sort u} (ge fe f) (P : α → Assn) (s : Stmt) (R : ExitConds)
    (h : ∀ x, Triple ge fe f (P x) s R) :
    Triple ge fe f (fun e le hp => ∃ x, P x e le hp) s R := by
  intro k e le hp hf m hd hag hP
  obtain ⟨x, hx⟩ := hP
  exact h x k e le hp hf m hd hag hx

theorem triple_vacuous (ge fe f) (s : Stmt) (R : ExitConds) :
    Triple ge fe f Assn.no s R := fun _ _ _ _ _ _ _ _ h => False.elim h

theorem triple_fallthrough (ge fe f) (P Q : Assn) (s : Stmt) (R : ExitConds)
    (h : Triple ge fe f P s (.only Q)) (hn : ∀ e le hp, Q e le hp → R.normal e le hp) :
    Triple ge fe f P s R :=
  triple_conseq ge fe f h (fun _ _ _ x => x) hn
    (fun _ _ _ x => False.elim x) (fun _ _ _ x => False.elim x) (fun _ _ x => False.elim x)

/-- Assignment to a temporary.  The caller gets `Agrees hp m` — the fragment is
    realized by the memory — which is what lets it discharge `EvalExpr`. -/
theorem triple_set (ge fe f) (P Q : Assn) (id : Ident) (a : Expr)
    (h : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
           ∃ v, EvalExpr ge e le m a v ∧ Q e (le.set id v) hp) :
    Triple ge fe f P (.Sset id a) (.only Q) := by
  intro k e le hp hf m hd hag hP
  obtain ⟨v, hev, hQ⟩ := h e le hp m hP (Heap.Agrees_union_left hag)
  exact ⟨.Normal e (le.set id v) m, hp,
         Steps.one (Step.set f id a k e le m v hev), hd, hag, hQ⟩

theorem triple_seq (ge fe f) (P Q : Assn) (R : ExitConds) (s1 s2 : Stmt)
    (h1 : Triple ge fe f P s1 { R with normal := Q })
    (h2 : Triple ge fe f Q s2 R) :
    Triple ge fe f P (.Ssequence s1 s2) R := by
  intro k e le hp hf m hd hag hP
  have hstart : SStep ge fe (.State f (.Ssequence s1 s2) k e le m)
                            (.State f s1 (.Kseq s2 k) e le m) := Step.seq f s1 s2 k e le m
  obtain ⟨o1, hp1, hs1, hd1, hag1, hR1⟩ := h1 (.Kseq s2 k) e le hp hf m hd hag hP
  cases o1 with
  | Goto lbl e' le' m' =>
      -- `gotoTarget` ignores the `Kseq` frame (`gotoTarget_kseq`, by `rfl`), so
      -- s1's landing site *is* the sequence's landing site
      exact ⟨.Goto lbl e' le' m', hp1, Steps.trans (Steps.one hstart) hs1,
             hd1, hag1, hR1⟩
  | Normal e' le' m' =>
      obtain ⟨o2, hp2, hs2, hd2, hag2, hR2⟩ := h2 k e' le' hp1 hf m' hd1 hag1 hR1
      refine ⟨o2, hp2, ?_, hd2, hag2, hR2⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs1 ?_)
      exact Steps.step _ _ _ (Step.skip_seq f s2 k e' le' m') hs2
  | Break e' le' m' =>
      refine ⟨.Break e' le' m', hp1, ?_, hd1, hag1, hR1⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs1 ?_)
      exact Steps.one (Step.break_seq f s2 k e' le' m')
  | Continue e' le' m' =>
      refine ⟨.Continue e' le' m', hp1, ?_, hd1, hag1, hR1⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs1 ?_)
      exact Steps.one (Step.continue_seq f s2 k e' le' m')
  | Return v m' =>
      -- `callCont (Kseq s2 k) = callCont k`, so the endpoint already matches
      exact ⟨.Return v m', hp1, Steps.trans (Steps.one hstart) hs1, hd1, hag1, hR1⟩

theorem triple_if (ge fe f) (P Pt Pf : Assn) (R : ExitConds) (a : Expr) (s1 s2 : Stmt)
    (hg : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
            ∃ v b, EvalExpr ge e le m a v ∧ Cop.boolVal v (typeof a) m = some b
                   ∧ (if b then Pt e le hp else Pf e le hp))
    (h1 : Triple ge fe f Pt s1 R) (h2 : Triple ge fe f Pf s2 R) :
    Triple ge fe f P (.Sifthenelse a s1 s2) R := by
  intro k e le hp hf m hd hag hP
  obtain ⟨v, b, hev, hbv, hbr⟩ := hg e le hp m hP (Heap.Agrees_union_left hag)
  have hstart : SStep ge fe (.State f (.Sifthenelse a s1 s2) k e le m)
                            (.State f (if b then s1 else s2) k e le m) :=
    Step.ifthenelse f a s1 s2 k e le m v b hev hbv
  cases b with
  | true =>
      obtain ⟨o, hp', hs, hd', hag', hR⟩ := h1 k e le hp hf m hd hag (by simpa using hbr)
      exact ⟨o, hp', Steps.trans (Steps.one hstart) hs, hd', hag', hR⟩
  | false =>
      obtain ⟨o, hp', hs, hd', hag', hR⟩ := h2 k e le hp hf m hd hag (by simpa using hbr)
      exact ⟨o, hp', Steps.trans (Steps.one hstart) hs, hd', hag', hR⟩

theorem triple_if_true (ge fe f) (P : Assn) (R : ExitConds) (a : Expr) (s1 s2 : Stmt)
    (hg : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
            ∃ v, EvalExpr ge e le m a v ∧ Cop.boolVal v (typeof a) m = some true)
    (h1 : Triple ge fe f P s1 R) :
    Triple ge fe f P (.Sifthenelse a s1 s2) R := by
  refine triple_if ge fe f P P Assn.no R a s1 s2 (fun e le hp m hP hagr => ?_) h1
    (triple_vacuous ge fe f _ _)
  obtain ⟨v, hev, hbv⟩ := hg e le hp m hP hagr
  exact ⟨v, true, hev, hbv, by simpa using hP⟩

theorem triple_if_false (ge fe f) (P : Assn) (R : ExitConds) (a : Expr) (s1 s2 : Stmt)
    (hg : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
            ∃ v, EvalExpr ge e le m a v ∧ Cop.boolVal v (typeof a) m = some false)
    (h2 : Triple ge fe f P s2 R) :
    Triple ge fe f P (.Sifthenelse a s1 s2) R := by
  refine triple_if ge fe f P Assn.no P R a s1 s2 (fun e le hp m hP hagr => ?_)
    (triple_vacuous ge fe f _ _) h2
  obtain ⟨v, hev, hbv⟩ := hg e le hp m hP hagr
  exact ⟨v, false, hev, hbv, by simpa using hP⟩

theorem triple_break (ge fe f) (P : Assn) :
    Triple ge fe f P .Sbreak
      { normal := Assn.no, brk := P, cont := Assn.no, ret := fun _ _ => False } := by
  intro k e le hp hf m hd hag hP
  exact ⟨.Break e le m, hp, Steps.refl _, hd, hag, hP⟩

theorem triple_continue (ge fe f) (P : Assn) :
    Triple ge fe f P .Scontinue
      { normal := Assn.no, brk := Assn.no, cont := P, ret := fun _ _ => False } := by
  intro k e le hp hf m hd hag hP
  exact ⟨.Continue e le m, hp, Steps.refl _, hd, hag, hP⟩

/-- `return e`.  The locals are freed, so the caller must supply the resulting
    memory and show the fragment still agrees with it — for a function with no
    `fn_vars` that is a no-op (`Mem.freeList` over the empty environment). -/
theorem triple_return (ge fe f) (P : Assn) (Ret : Val → HProp) (a : Expr)
    (h : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
      ∃ v v' m' hp',
        EvalExpr ge e le m a v
        ∧ Cop.semCast v (typeof a) f.fn_return m = some v'
        ∧ Mem.freeList m (blocksOfEnv ge.genv_cenv e) = some m'
        ∧ Ret v' hp'
        ∧ (∀ hf, Heap.disjoint hp hf → Heap.Agrees (Heap.union hp hf) m →
              Heap.disjoint hp' hf ∧ Heap.Agrees (Heap.union hp' hf) m')) :
    Triple ge fe f P (.Sreturn (some a))
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := Ret } := by
  intro k e le hp hf m hd hag hP
  obtain ⟨v, v', m', hp', hev, hcast, hfree, hRet, hframe⟩ :=
    h e le hp m hP (Heap.Agrees_union_left hag)
  obtain ⟨hd', hag'⟩ := hframe hf hd hag
  exact ⟨.Return v' m', hp',
         Steps.one (Step.return_1 f a k e le m v v' m' hev hcast hfree), hd', hag', hRet⟩

/-- **`return;`** — the void return.  `triple_return` above covers
    `Sreturn (some a)` only, so before this there was no rule for a `void`
    function's exit.  `put` in `test/lean/structcopy.c` needs it, and so does
    every `void` function on the zlib path.

    Found while building the acceptance test for `triple_assign_copy`: the brief
    for that rule assumed the test's `FunSpec` would go through, and this is one
    of the two reasons it does not. -/
theorem triple_return_none (ge fe f) (P : Assn) (Ret : Val → HProp)
    (h : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
      ∃ m' hp',
        Mem.freeList m (blocksOfEnv ge.genv_cenv e) = some m'
        ∧ Ret .Vundef hp'
        ∧ (∀ hf, Heap.disjoint hp hf → Heap.Agrees (Heap.union hp hf) m →
              Heap.disjoint hp' hf ∧ Heap.Agrees (Heap.union hp' hf) m')) :
    Triple ge fe f P (.Sreturn none)
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := Ret } := by
  intro k e le hp hf m hd hag hP
  obtain ⟨m', hp', hfree, hRet, hframe⟩ :=
    h e le hp m hP (Heap.Agrees_union_left hag)
  obtain ⟨hd', hag'⟩ := hframe hf hd hag
  exact ⟨.Return .Vundef m', hp',
         Steps.one (Step.return_0 f k e le m m' hfree), hd', hag', hRet⟩

/-! ## `switch`

`Sswitch` selects a labelled-statement suffix, runs it under `Kswitch`, and there
`break` means "leave the switch" (`step_skip_break_switch` maps both `Sskip` and
`Sbreak` to normal exit) while `continue` passes straight through to the enclosing
loop.  So the selected body is verified with `brk` and `normal` *merged*, which is
exactly C's fall-through-or-break behaviour.

`inflate`'s state machine is one large `switch`, so this is on the zlib path. -/

theorem triple_switch (ge fe f) (P : Assn) (R : ExitConds) (a : Expr) (sl : LStmts)
    (hbody : ∀ n : Z, Triple ge fe f P (seqOfLabeledStatement (selectSwitch n sl))
      { normal := R.normal, brk := R.normal, cont := R.cont, ret := R.ret,
        goto := R.goto })
    (hsel : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
            ∃ v n, EvalExpr ge e le m a v ∧ Cop.semSwitchArg v (typeof a) = some n) :
    Triple ge fe f P (.Sswitch a sl) R := by
  intro k e le hp hf m hd hag hP
  obtain ⟨v, n, hev, hsw⟩ := hsel e le hp m hP (Heap.Agrees_union_left hag)
  have hstart : SStep ge fe (.State f (.Sswitch a sl) k e le m)
                            (.State f (seqOfLabeledStatement (selectSwitch n sl))
                              (.Kswitch k) e le m) :=
    Step.switch f a sl k e le m v n hev hsw
  obtain ⟨o, hp', hs, hd', hag', hR⟩ :=
    hbody n (.Kswitch k) e le hp hf m hd hag hP
  cases o with
  | Goto lbl e' le' m' =>
      -- `gotoTarget` ignores the `Kswitch` frame, so the landing site is unchanged
      exact ⟨.Goto lbl e' le' m', hp', Steps.trans (Steps.one hstart) hs,
             hd', hag', hR⟩
  | Normal e' le' m' =>
      -- `Sskip` under `Kswitch` leaves the switch
      refine ⟨.Normal e' le' m', hp', ?_, hd', hag', hR⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs ?_)
      exact Steps.one (Step.skip_break_switch f .Sskip k e' le' m' (.inl rfl))
  | Break e' le' m' =>
      -- so does `Sbreak`, and it lands in the *normal* postcondition
      refine ⟨.Normal e' le' m', hp', ?_, hd', hag', hR⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs ?_)
      exact Steps.one (Step.skip_break_switch f .Sbreak k e' le' m' (.inr rfl))
  | Continue e' le' m' =>
      -- `continue` passes through to the enclosing loop
      refine ⟨.Continue e' le' m', hp', ?_, hd', hag', hR⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs ?_)
      exact Steps.one (Step.continue_switch f k e' le' m')
  | Return v' m' =>
      -- `callCont (Kswitch k) = callCont k`, so the endpoint already matches
      exact ⟨.Return v' m', hp', Steps.trans (Steps.one hstart) hs, hd', hag', hR⟩

/-- **`switch` with the scrutinee pinned.**

    `triple_switch` above demands the body at *every* scrutinee value.  When the
    precondition already fixes the scrutinee — as `inflate_table`'s does, because
    the spec cases on `type ∈ {CODES, LENS, DISTS}` before reaching the switch —
    that would leave triples owed for the two unreachable arms against the same
    postcondition, provable only by weakening `R` into a disjunction over all
    three arms' effects, which then pollutes every later step.

    This is `triple_switch`'s proof with `n := n₀`; the `∀ n` there is consumed
    exactly once, at the selected value, so nothing else changes.  It is a copy
    rather than a derivation because `triple_switch`'s `hsel` produces its `n`
    per-state, so it cannot be instantiated at a single `n₀` up front. -/
theorem triple_switch_const (ge fe f) (P : Assn) (R : ExitConds) (a : Expr)
    (sl : LStmts) (n₀ : Z)
    (hbody : Triple ge fe f P (seqOfLabeledStatement (selectSwitch n₀ sl))
      { normal := R.normal, brk := R.normal, cont := R.cont, ret := R.ret,
        goto := R.goto })
    (hsel : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
            ∃ v, EvalExpr ge e le m a v
                 ∧ Cop.semSwitchArg v (typeof a) = some n₀) :
    Triple ge fe f P (.Sswitch a sl) R := by
  intro k e le hp hf m hd hag hP
  obtain ⟨v, hev, hsw⟩ := hsel e le hp m hP (Heap.Agrees_union_left hag)
  have hstart : SStep ge fe (.State f (.Sswitch a sl) k e le m)
                            (.State f (seqOfLabeledStatement (selectSwitch n₀ sl))
                              (.Kswitch k) e le m) :=
    Step.switch f a sl k e le m v n₀ hev hsw
  obtain ⟨o, hp', hs, hd', hag', hR⟩ :=
    hbody (.Kswitch k) e le hp hf m hd hag hP
  cases o with
  | Goto lbl e' le' m' =>
      exact ⟨.Goto lbl e' le' m', hp', Steps.trans (Steps.one hstart) hs,
             hd', hag', hR⟩
  | Normal e' le' m' =>
      refine ⟨.Normal e' le' m', hp', ?_, hd', hag', hR⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs ?_)
      exact Steps.one (Step.skip_break_switch f .Sskip k e' le' m' (.inl rfl))
  | Break e' le' m' =>
      refine ⟨.Normal e' le' m', hp', ?_, hd', hag', hR⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs ?_)
      exact Steps.one (Step.skip_break_switch f .Sbreak k e' le' m' (.inr rfl))
  | Continue e' le' m' =>
      refine ⟨.Continue e' le' m', hp', ?_, hd', hag', hR⟩
      refine Steps.trans (Steps.one hstart) (Steps.trans hs ?_)
      exact Steps.one (Step.continue_switch f k e' le' m')
  | Return v' m' =>
      exact ⟨.Return v' m', hp', Steps.trans (Steps.one hstart) hs, hd', hag', hR⟩

/-! ## The loop rule

Unchanged in shape from the non-separating version: a `Nat` measure that must
strictly decrease each trip, so termination comes with the invariant.  The heap
threads through exactly as in `triple_seq`. -/

theorem triple_loop (ge fe f) (R : ExitConds) (I J : Nat → Assn) (s1 s2 : Stmt)
    (hbody : ∀ n, Triple ge fe f (I n) s1
      { normal := J n, brk := R.normal, cont := J n, ret := R.ret,
        goto := R.goto })
    (hincr : ∀ n, Triple ge fe f (J n) s2
      { normal := fun e le hp => ∃ n', n' < n ∧ I n' e le hp,
        brk := R.normal, cont := Assn.no, ret := R.ret, goto := R.goto }) :
    ∀ n, Triple ge fe f (I n) (.Sloop s1 s2) R := by
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
    intro k e le hp hf m hd hag hI
    have hstart : SStep ge fe (.State f (.Sloop s1 s2) k e le m)
                              (.State f s1 (.Kloop1 s1 s2 k) e le m) := Step.loop f s1 s2 k e le m
    obtain ⟨o1, hp1, hs1, hd1, hag1, hR1⟩ :=
      hbody n (.Kloop1 s1 s2 k) e le hp hf m hd hag hI
    -- s1 falls through or continues (run s2), breaks (leave), or returns
    have hbodyCase : ∀ (x : Stmt) (e1 : Env) (le1 : TempEnv) (m1 : Mem) (hpm : Heap),
        (x = Stmt.Sskip ∨ x = Stmt.Scontinue) →
        Heap.disjoint hpm hf → Heap.Agrees (Heap.union hpm hf) m1 → J n e1 le1 hpm →
        Steps (SStep ge fe) (.State f s1 (.Kloop1 s1 s2 k) e le m)
              (.State f x (.Kloop1 s1 s2 k) e1 le1 m1) →
        ∃ o hp', Steps (SStep ge fe) (.State f (.Sloop s1 s2) k e le m) (o.state f k)
               ∧ Heap.disjoint hp' hf ∧ Heap.Agrees (Heap.union hp' hf) (outMem o)
               ∧ R.holds o hp' := by
      intro x e1 le1 m1 hpm hx hdm hagm hJ hreach
      have hto2 : SStep ge fe (.State f x (.Kloop1 s1 s2 k) e1 le1 m1)
                              (.State f s2 (.Kloop2 s1 s2 k) e1 le1 m1) :=
        Step.skip_or_continue_loop1 f s1 s2 k e1 le1 m1 x hx
      obtain ⟨o2, hp2, hs2, hd2, hag2, hR2⟩ :=
        hincr n (.Kloop2 s1 s2 k) e1 le1 hpm hf m1 hdm hagm hJ
      cases o2 with
      | Goto lbl e2 le2 m2 =>
          -- `gotoTarget` ignores `Kloop2`
          exact ⟨.Goto lbl e2 le2 m2, hp2,
                 Steps.trans (Steps.one hstart)
                   (Steps.trans hreach (Steps.step _ _ _ hto2 hs2)),
                 hd2, hag2, hR2⟩
      | Normal e2 le2 m2 =>
          obtain ⟨n', hlt, hI'⟩ := hR2
          obtain ⟨o, hp3, hs3, hd3, hag3, hR3⟩ := ih n' hlt k e2 le2 hp2 hf m2 hd2 hag2 hI'
          refine ⟨o, hp3, ?_, hd3, hag3, hR3⟩
          refine Steps.trans (Steps.one hstart) (Steps.trans hreach ?_)
          refine Steps.step _ _ _ hto2 (Steps.trans hs2 ?_)
          exact Steps.step _ _ _ (Step.skip_loop2 f s1 s2 k e2 le2 m2) hs3
      | Break e2 le2 m2 =>
          refine ⟨.Normal e2 le2 m2, hp2, ?_, hd2, hag2, hR2⟩
          refine Steps.trans (Steps.one hstart) (Steps.trans hreach ?_)
          refine Steps.step _ _ _ hto2 (Steps.trans hs2 ?_)
          exact Steps.one (Step.break_loop2 f s1 s2 k e2 le2 m2)
      | Continue _ _ _ => exact False.elim hR2
      | Return v m2 =>
          refine ⟨.Return v m2, hp2, ?_, hd2, hag2, hR2⟩
          refine Steps.trans (Steps.one hstart) (Steps.trans hreach ?_)
          exact Steps.step _ _ _ hto2 hs2
    cases o1 with
    | Normal e1 le1 m1 => exact hbodyCase .Sskip e1 le1 m1 hp1 (.inl rfl) hd1 hag1 hR1 hs1
    | Continue e1 le1 m1 => exact hbodyCase .Scontinue e1 le1 m1 hp1 (.inr rfl) hd1 hag1 hR1 hs1
    | Break e1 le1 m1 =>
        refine ⟨.Normal e1 le1 m1, hp1, ?_, hd1, hag1, hR1⟩
        refine Steps.trans (Steps.one hstart) (Steps.trans hs1 ?_)
        exact Steps.one (Step.break_loop1 f s1 s2 k e1 le1 m1)
    | Return v m1 =>
        exact ⟨.Return v m1, hp1, Steps.trans (Steps.one hstart) hs1, hd1, hag1, hR1⟩
    | Goto lbl e1 le1 m1 =>
        -- `gotoTarget` ignores `Kloop1`
        exact ⟨.Goto lbl e1 le1 m1, hp1, Steps.trans (Steps.one hstart) hs1,
               hd1, hag1, hR1⟩

/-! ## `goto` and `label` — Phase 9 Wave E

`Step.label` just unwraps.  `Sgoto` is the interesting one: because the jump is
folded into the outcome's state (see `CC.gotoTarget`), `triple_goto` *is* the
single `Step.goto`, and the label is resolved later by `triple_body_goto`. -/

/-- A label is transparent: `Step.label` steps straight into its body. -/
theorem triple_label (ge fe f) (P : Assn) (lbl : Ident) (s : Stmt) (R : ExitConds)
    (h : Triple ge fe f P s R) : Triple ge fe f P (.Slabel lbl s) R := by
  intro k e le hp hf m hd hag hP
  obtain ⟨o, hp', hs, hd', hag', hR⟩ := h k e le hp hf m hd hag hP
  exact ⟨o, hp', Steps.step _ _ _ (Step.label f lbl s k e le m) hs, hd', hag', hR⟩

/-- **`goto lbl`.**  Exits with the `Goto` outcome, whose state is already the
    post-jump state — so the single `Step.goto` *is* the whole proof.

    `hres` says the label exists.  It is not red tape: a `goto` to a label not in
    the function has no rule, which is right, because C rejects such a program.
    Note the hypothesis is over an arbitrary continuation, which is sound because
    `findLabel`'s *success* depends only on `f.fn_body` — the continuation is
    merely threaded through. -/
theorem triple_goto (ge fe f) (P : Assn) (lbl : Ident)
    (hres : ∀ kk : Cont, ∃ s' k', findLabel lbl f.fn_body kk = some (s', k')) :
    Triple ge fe f P (.Sgoto lbl)
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := fun _ _ => False,
        goto := fun l => if l = lbl then P else Assn.no } := by
  intro k e le hp hf m hd hag hP
  refine ⟨.Goto lbl e le m, hp, ?_, hd, hag, ?_⟩
  · show Steps (SStep ge fe) (.State f (.Sgoto lbl) k e le m)
           (gotoTarget f k lbl e le m)
    obtain ⟨s', k', hfl⟩ := hres (callCont k)
    rw [show gotoTarget f k lbl e le m = .State f s' k' e le m from by
          unfold gotoTarget; rw [hfl]]
    exact Steps.one (Step.goto f lbl k e le m s' k' hfl)
  · show (if lbl = lbl then P else Assn.no) e le hp
    rw [if_pos rfl]
    exact hP

/-! ### Where a `goto` gets resolved — and why not here

`Step.goto` resolves the label with `findLabel lbl f.fn_body (callCont k)`, so the
landing continuation is `callCont k`, not `k`.  A `Triple` quantifies over **all**
`k`, and for a general `k` those differ — so **no `Triple`-shaped rule can
discharge a jump.**  (This was worth finding out by trying: the first draft of a
`triple_body_goto` fails on exactly that mismatch.)

The resolution therefore lives one level up, in `CCLib/Funspec.lean`, as
`Sep.satisfies_internal_goto`: `SatisfiesAt` carries `isCallCont k`, hence
`callCont k = k`, which is precisely the missing fact.  That is also the right
level *semantically* — `findLabel` searches `f.fn_body`, so a label is a property
of the function, not of a statement. -/

/-! ## The frame rule

The payoff of Phase 7.2-7.3.  It holds because the triple already carries an
arbitrary frame: reassociating the union is the whole proof. -/

/-- Conjoin a heap-only assertion to every exit condition. -/
def ExitConds.frame (R : ExitConds) (Q : HProp) : ExitConds :=
  { normal := fun e le => R.normal e le ∗ Q
    brk := fun e le => R.brk e le ∗ Q
    cont := fun e le => R.cont e le ∗ Q
    ret := fun v => R.ret v ∗ Q
    goto := fun lbl e le => R.goto lbl e le ∗ Q }

/-- **The frame rule.**  Stated for a heap-only `Q`: a general `Assn` frame would
    need VST's modified-variables side condition, since `Sset` changes the
    temporaries. -/
theorem triple_frame (ge fe f) (P : Assn) (s : Stmt) (R : ExitConds) (Q : HProp)
    (h : Triple ge fe f P s R) :
    Triple ge fe f (fun e le => P e le ∗ Q) s (R.frame Q) := by
  intro k e le hp hf m hd hag hPQ
  obtain ⟨h1, h2, hd12, heq, hP, hQ⟩ := hPQ
  subst heq
  rw [Heap.disjoint_union_left] at hd
  -- run the original triple with `h2` folded into the frame
  have hd1 : Heap.disjoint h1 (Heap.union h2 hf) := by
    rw [Heap.disjoint_union_right]; exact ⟨hd12, hd.1⟩
  have hag1 : Heap.Agrees (Heap.union h1 (Heap.union h2 hf)) m := by
    rw [← Heap.union_assoc]; exact hag
  obtain ⟨o, h1', hs, hd1', hag1', hR⟩ := h k e le h1 (Heap.union h2 hf) m hd1 hag1 hP
  rw [Heap.disjoint_union_right] at hd1'
  refine ⟨o, Heap.union h1' h2, hs, ?_, ?_, ?_⟩
  · rw [Heap.disjoint_union_left]; exact ⟨hd1'.2, hd.2⟩
  · rw [Heap.union_assoc]; exact hag1'
  · -- the postcondition regains `Q`
    have hsep : ∀ (S : HProp), S h1' → (S ∗ Q) (Heap.union h1' h2) :=
      fun S hS => ⟨h1', h2, hd1'.1, rfl, hS, hQ⟩
    cases o with
    | Normal _ _ _ => exact hsep _ hR
    | Break _ _ _ => exact hsep _ hR
    | Continue _ _ _ => exact hsep _ hR
    | Return _ _ => exact hsep _ hR
    | Goto _ _ _ _ => exact hsep _ hR

/-! ## Reading through a fragment

Expression evaluation is not a statement rule, so what the program logic needs is
a way to discharge `EvalExpr` for a dereference whose pointee the fragment owns.
These are the separating replacements for `eval_index` in `CCLib/HoareArray.lean`,
which took the whole (non-separating) array as a hypothesis. -/

/-- Evaluating `*a` when the fragment owns the pointee. -/
theorem eval_deref_mapsto {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem} {a : Expr}
    {ty : Ty} {chunk : Chunk} {p : Permission} {b : Block} {ofs : Integers.Ptrofs}
    {v : Val} {h : Heap}
    (hacc : accessMode ty = .By_value chunk)
    (hpr : permOrder p .Readable = true)
    (hm : mapsto chunk p b (Integers.Ptrofs.unsigned ofs) v h)
    (hag : Heap.Agrees h m)
    (hptr : EvalExpr ge e le m a (.Vptr b ofs)) :
    EvalExpr ge e le m (.Ederef a ty) (Val.loadResult chunk v) := by
  refine EvalExpr.Elvalue _ b ofs .Full _ (EvalLvalue.Ederef a ty b ofs hptr) ?_
  refine DerefLoc.value chunk _ hacc ?_
  show Mem.load chunk m b (Integers.Ptrofs.unsigned ofs) = _
  exact mapsto_load hpr hm hag

/-- Evaluating `base[idx]` for an `unsigned int` array the fragment owns. -/
theorem eval_index_array {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {p : Permission} {b : Block} {ofs0 : Integers.Ptrofs} {n : Nat}
    {f : Nat → Integers.Int} {h : Heap} {base idx : Expr} {i : Nat}
    (hpr : permOrder p .Readable = true)
    (harr : arrayU32 p b (Integers.Ptrofs.unsigned ofs0) n f h)
    (hag : Heap.Agrees h m) (hi : i < n)
    (hptr : EvalExpr ge e le m base (.Vptr b ofs0))
    (hidx : EvalExpr ge e le m idx (.Vint (Integers.Int.repr i)))
    (htyb : typeof base = tptr tuint) (hty : typeof idx = tint)
    (haddr : Integers.Ptrofs.unsigned
               (elemOfs ge.genv_cenv ofs0 (Integers.Int.repr i))
             = Integers.Ptrofs.unsigned ofs0 + 4 * (i : _root_.Int)) :
    EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd base idx (tptr tuint)) tuint) (.Vint (f i)) := by
  have hadd : Cop.semBinaryOperation ge.genv_cenv .Oadd (.Vptr b ofs0) (typeof base)
                (.Vint (Integers.Int.repr i)) (typeof idx) m
              = some (.Vptr b (elemOfs ge.genv_cenv ofs0 (Integers.Int.repr i))) := by
    rw [hty, htyb]; exact semAdd_elem _ _ _ _ _
  refine EvalExpr.Elvalue _ b (elemOfs ge.genv_cenv ofs0 (Integers.Int.repr i)) .Full _
    (EvalLvalue.Ederef _ _ _ _
      (EvalExpr.Ebinop .Oadd _ _ _ (.Vptr b ofs0) (.Vint (Integers.Int.repr i)) _
        hptr hidx hadd)) ?_
  refine DerefLoc.value .Mint32 _ rfl ?_
  show Mem.load .Mint32 m b
        (Integers.Ptrofs.unsigned (elemOfs ge.genv_cenv ofs0 (Integers.Int.repr i))) = _
  rw [haddr]
  exact arrayU32_load p b hpr n f i hi (Integers.Ptrofs.unsigned ofs0) h m harr hag

/-! ## Struct fields

A scalar struct field is just a `mapsto` at the field's byte offset — the content
is in the *lemmas* that let `Efield` read and write it, since those have to
discharge the composite-env lookup and `field_offset` computation that
`EvalLvalue.Efield_struct` demands.

This is the `data_at` analogue for scalars.  Aggregate fields (nested structs,
arrays of structs) build on `arrayU32`/`fieldAt` the same way, and unions use
`unionFieldOffset` in place of `fieldOffset`. -/

/-- The scalar field at byte offset `delta` within an object at `b + ofs`. -/
def fieldAt (chunk : Chunk) (p : Permission) (b : Block) (ofs delta : Z)
    (v : Val) : HProp :=
  mapsto chunk p b (ofs + delta) v

/-- Reading a scalar struct field the fragment owns.

    The `haddr` hypothesis is the same no-overflow obligation `eval_index_array`
    carries: `Efield` computes the address in `Ptrofs`, the predicate indexes over
    `Z`. -/
theorem eval_field_scalar {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {a : Expr} {fld : Ident} {ty : Ty} {sid : Ident} {att : Attr} {co : Composite}
    {chunk : Chunk} {pm : Permission} {b : Block} {ofs : Integers.Ptrofs}
    {delta : Z} {v : Val} {h : Heap}
    (hacc : accessMode ty = .By_value chunk)
    (hpr : permOrder pm .Readable = true)
    (hstruct : typeof a = .Tstruct sid att)
    (hco : ge.genv_cenv.get sid = some co)
    (hfld : fieldOffset ge.genv_cenv fld co.co_members = .OK (delta, .Full))
    (hm : fieldAt chunk pm b (Integers.Ptrofs.unsigned ofs) delta v h)
    (hag : Heap.Agrees h m)
    (hptr : EvalExpr ge e le m a (.Vptr b ofs))
    (haddr : Integers.Ptrofs.unsigned
               (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr delta))
             = Integers.Ptrofs.unsigned ofs + delta) :
    EvalExpr ge e le m (.Efield a fld ty) (Val.loadResult chunk v) := by
  refine EvalExpr.Elvalue _ b (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr delta)) .Full _
    (EvalLvalue.Efield_struct a fld ty b ofs sid co att delta .Full
      hptr hstruct hco hfld) ?_
  refine DerefLoc.value chunk _ hacc ?_
  show Mem.load chunk m b
        (Integers.Ptrofs.unsigned (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr delta))) = _
  rw [haddr]
  exact mapsto_load hpr hm hag

/-! ### Whole structs — the field-predicate layer (Phase 9, Wave B)

Writing out a 52-field `∗`-chain by hand at every use is unworkable, so a struct
is described by a *list* of named field predicates and the chain is generated.
Each field's content is an arbitrary `Z → HProp` receiving the field's
**absolute** byte offset: a scalar field is `scalarField` (a `mapsto`), an array
field an `arrayOf`, a by-value struct field a nested `fieldsAt`, a union field a
`unionAt`.  This generalises the scalar-only `FieldVal` of Phase 8; `fieldsAt`
now covers all 61 fields of zlib's `deflate_state`, not 52.

`fieldsAt_split` is now an **equality** (it always was one — the old entailment
statement just didn't say so), so extraction and re-assembly after a write are
the same lemma.  `fieldsAt_split_name` is the form proofs should use: keyed by
the field's *name*, with `find?`/`eraseP` computing away at a concrete list. -/

/-- A field of a struct: its name, paired with its content predicate, which
    receives the field's ABSOLUTE byte offset. -/
abbrev FieldPred := Ident × (Z → HProp)

/-- The scalar field instance — what the old `FieldVal` expressed. -/
def scalarField (name : Ident) (chunk : Chunk) (pm : Permission) (b : Block)
    (v : Val) : FieldPred :=
  (name, fun off => mapsto chunk pm b off v)

/-- One field, at the offset `field_offset` gives it.  An unknown field or a
    bitfield yields `⌜False⌝` — such a description is simply unsatisfiable. -/
def oneField (cenv : CompositeEnv) (ms : List Member) (ofs : Z)
    (fp : FieldPred) : HProp :=
  match fieldOffset cenv fp.1 ms with
  | .OK (delta, .Full) => fp.2 (ofs + delta)
  | _ => ⌜False⌝

/-- Unfold `oneField` at a use site, given the offset fact — which should come
    from the struct's **batched offset table** (one `decide` per struct, see
    `DeflateMeasure`), never from a per-site `decide`. -/
theorem oneField_eq {cenv : CompositeEnv} {ms : List Member} {delta : Z}
    {fp : FieldPred} (ofs : Z)
    (hoff : fieldOffset cenv fp.1 ms = .OK (delta, .Full)) :
    oneField cenv ms ofs fp = fp.2 (ofs + delta) := by
  unfold oneField
  rw [hoff]

/-- The `∗` of all the listed fields. -/
def fieldsAt (cenv : CompositeEnv) (ms : List Member) (ofs : Z) :
    List FieldPred → HProp
  | [] => emp
  | fp :: fps => oneField cenv ms ofs fp ∗ fieldsAt cenv ms ofs fps

/-- A struct at `b + ofs`, described field by field. -/
def structAt (cenv : CompositeEnv) (sid : Ident) (ofs : Z)
    (fps : List FieldPred) : HProp :=
  match cenv.get sid with
  | some co => fieldsAt cenv co.co_members ofs fps
  | none => ⌜False⌝

/-- Unfold `structAt` at a use site, given the composite lookup. -/
theorem structAt_eq {cenv : CompositeEnv} {sid : Ident} {co : Composite}
    (ofs : Z) (fps : List FieldPred) (hco : cenv.get sid = some co) :
    structAt cenv sid ofs fps = fieldsAt cenv co.co_members ofs fps := by
  unfold structAt
  rw [hco]

/-- **Extract one field from a struct, by index.**  An equality: the rest of the
    struct comes out as the frame, and read right-to-left the same lemma puts a
    (possibly rewritten) field back. -/
theorem fieldsAt_split (cenv : CompositeEnv) (ms : List Member) (ofs : Z) :
    ∀ (fps : List FieldPred) (i : Nat), i < fps.length →
      fieldsAt cenv ms ofs fps
        = oneField cenv ms ofs fps[i]! ∗ fieldsAt cenv ms ofs (fps.eraseIdx i) := by
  intro fps
  induction fps with
  | nil => intro i hi; simp at hi
  | cons fp fps' ih =>
      intro i hi
      cases i with
      | zero => rfl
      | succ j =>
          have hj : j < fps'.length := by simp only [List.length_cons] at hi; omega
          show fieldsAt cenv ms ofs (fp :: fps') = _
          simp only [fieldsAt, List.eraseIdx_cons_succ, List.getElem!_cons_succ]
          rw [ih j hj, sep_left_comm_eq]

/-- **Extract one field from a struct, by name** — the form proofs should carry
    (`_dyn_ltree`, not `37`).  `find?` and `eraseP` compute away by `simp` when
    the list is concrete. -/
theorem fieldsAt_split_name (cenv : CompositeEnv) (ms : List Member) (ofs : Z)
    (fld : Ident) :
    ∀ (fps : List FieldPred) (fp : FieldPred),
      fps.find? (fun p => p.1 == fld) = some fp →
      fieldsAt cenv ms ofs fps
        = oneField cenv ms ofs fp
          ∗ fieldsAt cenv ms ofs (fps.eraseP (fun p => p.1 == fld)) := by
  intro fps
  induction fps with
  | nil => intro fp hf; simp [List.find?] at hf
  | cons q fps' ih =>
      intro fp hf
      by_cases hq : (q.1 == fld) = true
      · have hfind : (q :: fps').find? (fun p => p.1 == fld) = some q := by
          simp [List.find?, hq]
        rw [hfind] at hf
        injection hf with hf
        subst hf
        have herase : (q :: fps').eraseP (fun p => p.1 == fld) = fps' := by
          simp [List.eraseP, hq]
        rw [herase]
        rfl
      · have hqf : (q.1 == fld) = false := by simpa using hq
        have hfind : (q :: fps').find? (fun p => p.1 == fld)
            = fps'.find? (fun p => p.1 == fld) := by
          simp [List.find?, hqf]
        rw [hfind] at hf
        have herase : (q :: fps').eraseP (fun p => p.1 == fld)
            = q :: fps'.eraseP (fun p => p.1 == fld) := by
          simp [List.eraseP, hqf]
        rw [herase]
        show oneField cenv ms ofs q ∗ fieldsAt cenv ms ofs fps' = _
        rw [ih fp hf, sep_left_comm_eq]
        rfl

/-! ### Aggregate fields as l-values — Phase 9 Wave B, item 4

An array-typed field (`accessMode = By_reference`) and a struct- or union-typed
field (`By_copy`) both evaluate, *as expressions*, to their own address — via
different `DerefLoc` constructors, so these are two lemmas, not one.  Neither
touches memory or the heap: an aggregate l-value is pure address arithmetic. -/

/-- Reading an **array-typed** struct field as an expression yields its address
    (`By_reference`). -/
theorem eval_field_array {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {a : Expr} {fld : Ident} {ty : Ty} {sid : Ident} {att : Attr} {co : Composite}
    {b : Block} {ofs : Integers.Ptrofs} {delta : Z}
    (hacc : accessMode ty = .By_reference)
    (hstruct : typeof a = .Tstruct sid att)
    (hco : ge.genv_cenv.get sid = some co)
    (hfld : fieldOffset ge.genv_cenv fld co.co_members = .OK (delta, .Full))
    (hptr : EvalExpr ge e le m a (.Vptr b ofs)) :
    EvalExpr ge e le m (.Efield a fld ty)
      (.Vptr b (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr delta))) :=
  EvalExpr.Elvalue _ _ _ .Full _
    (EvalLvalue.Efield_struct a fld ty b ofs sid co att delta .Full
      hptr hstruct hco hfld)
    (DerefLoc.reference hacc)

/-- Reading a **struct- or union-typed** struct field as an expression yields its
    address (`By_copy`). -/
theorem eval_field_copy {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {a : Expr} {fld : Ident} {ty : Ty} {sid : Ident} {att : Attr} {co : Composite}
    {b : Block} {ofs : Integers.Ptrofs} {delta : Z}
    (hacc : accessMode ty = .By_copy)
    (hstruct : typeof a = .Tstruct sid att)
    (hco : ge.genv_cenv.get sid = some co)
    (hfld : fieldOffset ge.genv_cenv fld co.co_members = .OK (delta, .Full))
    (hptr : EvalExpr ge e le m a (.Vptr b ofs)) :
    EvalExpr ge e le m (.Efield a fld ty)
      (.Vptr b (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr delta))) :=
  EvalExpr.Elvalue _ _ _ .Full _
    (EvalLvalue.Efield_struct a fld ty b ofs sid co att delta .Full
      hptr hstruct hco hfld)
    (DerefLoc.copy hacc)

/-- `Ptrofs.unsigned 0 = 0`.  Trivial, but every client that owns an object at
    offset 0 of its own block needs it, and it was being reproved inline. -/
theorem ptrofs_unsigned_zero : Integers.Ptrofs.unsigned Integers.Ptrofs.zero = 0 := by
  simp [Integers.Ptrofs.unsigned, Integers.Ptrofs.zero, Integers.MI.unsigned,
        Integers.MI.zero]

/-- Adding zero to a pointer offset — union member offsets are always 0. -/
theorem ptrofs_add_zero (x : Integers.Ptrofs) :
    Integers.Ptrofs.add x (Integers.Ptrofs.repr 0) = x := by
  apply BitVec.eq_of_toNat_eq
  have hlt := x.isLt
  have hw : (2 : Nat) ^ Archi.ptrWordsize = 18446744073709551616 := by
    rw [Archi.ptrWordsize_eq]
  simp only [Integers.Ptrofs.add, Integers.Ptrofs.repr, Integers.MI.add,
             Integers.MI.repr, BitVec.toNat_add, BitVec.toNat_ofInt, hw]
  rw [hw] at hlt
  omega

/-- Reading a scalar member of a **union** the fragment owns.  A plain union
    member always sits at offset 0 (`unionFieldOffset`), so the address is the
    union's own. -/
theorem eval_field_union {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {a : Expr} {fld : Ident} {ty : Ty} {uid : Ident} {att : Attr} {co : Composite}
    {chunk : Chunk} {pm : Permission} {b : Block} {ofs : Integers.Ptrofs}
    {v : Val} {h : Heap}
    (hacc : accessMode ty = .By_value chunk)
    (hpr : permOrder pm .Readable = true)
    (hunion : typeof a = .Tunion uid att)
    (hco : ge.genv_cenv.get uid = some co)
    (hfld : unionFieldOffset ge.genv_cenv fld co.co_members = .OK (0, .Full))
    (hm : mapsto chunk pm b (Integers.Ptrofs.unsigned ofs) v h)
    (hag : Heap.Agrees h m)
    (hptr : EvalExpr ge e le m a (.Vptr b ofs)) :
    EvalExpr ge e le m (.Efield a fld ty) (Val.loadResult chunk v) := by
  refine EvalExpr.Elvalue _ b (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr 0)) .Full _
    (EvalLvalue.Efield_union a fld ty b ofs uid co att 0 .Full
      hptr hunion hco hfld) ?_
  refine DerefLoc.value chunk _ hacc ?_
  show Mem.load chunk m b
        (Integers.Ptrofs.unsigned (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr 0))) = _
  rw [ptrofs_add_zero ofs]
  exact mapsto_load hpr hm hag

/-- The **union l-value** itself, for the write path: `Sassign`'s target
    evaluates through `EvalLvalue`, and a union member's l-value is the union's
    address. -/
theorem eval_lvalue_union {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {a : Expr} {fld : Ident} {ty : Ty} {uid : Ident} {att : Attr} {co : Composite}
    {b : Block} {ofs : Integers.Ptrofs}
    (hunion : typeof a = .Tunion uid att)
    (hco : ge.genv_cenv.get uid = some co)
    (hfld : unionFieldOffset ge.genv_cenv fld co.co_members = .OK (0, .Full))
    (hptr : EvalExpr ge e le m a (.Vptr b ofs)) :
    EvalLvalue ge e le m (.Efield a fld ty) b
      (Integers.Ptrofs.add ofs (Integers.Ptrofs.repr 0)) .Full :=
  EvalLvalue.Efield_union a fld ty b ofs uid co att 0 .Full hptr hunion hco hfld

/-- `sem_add` at any pointer-plus-int classification: the stride is the element
    type's `sizeof`.  Generalises `semAdd_elem` (`tuint`) and `semAdd_byte`
    (`tuchar`); at a use site `hcls` is `rfl` — including when the pointer
    operand is an array-typed l-value, since `typeconv` turns `Tarray` into
    `Tpointer`.  This is the `s->dyn_ltree + k` step of zlib's commonest access
    shape. -/
theorem semAdd_ptr_int (cenv : CompositeEnv) (m : Mem) (b : Block)
    (ofs0 : Integers.Ptrofs) (iv : Integers.Int) {t1 t2 : Ty} {ty : Ty}
    {si : Signedness}
    (hcls : Cop.classifyAdd t1 t2 = .pi ty si) :
    Cop.semBinaryOperation cenv .Oadd (.Vptr b ofs0) t1 (.Vint iv) t2 m
      = some (.Vptr b (Integers.Ptrofs.add ofs0
          (Integers.Ptrofs.mul (Integers.Ptrofs.repr (sizeof cenv ty))
            (Cop.ptrofsOfInt si iv)))) := by
  show Cop.semAdd cenv (.Vptr b ofs0) t1 (.Vint iv) t2 m = _
  unfold Cop.semAdd
  rw [hcls]
  rfl

/-! ## Indexing at an arbitrary element type

`eval_index_array` above is fixed at `tuint`/`arrayU32`/`Mint32`, and its index
must be `tint`.  Neither fits `inflate_table`, whose arrays are all
`unsigned short` and whose indices are `tuint` temporaries.  The pieces below
generalize on both axes, and split the *address* derivation out of the *load* —
which is what lets a write site (`count[len] = 0`) reuse it without dragging in
a heap it does not need. -/

/-- The address of `base[i]` for element type `ty` and index signedness `si` —
    the general form `semAdd_ptr_int` produces.  `elemOfs` (u32, `HoareArray`)
    and `byteOfs` (u8, `HoareLong`) are the two instances that already existed. -/
def idxOfs (cenv : CompositeEnv) (ty : Ty) (si : Signedness)
    (ofs0 : Integers.Ptrofs) (iv : Integers.Int) : Integers.Ptrofs :=
  Integers.Ptrofs.add ofs0
    (Integers.Ptrofs.mul (Integers.Ptrofs.repr (sizeof cenv ty))
      (Cop.ptrofsOfInt si iv))

/-- **Signedness collapses on a nonnegative index.**  `ptrofsOfInt` picks
    `of_ints` or `of_intu`, and on `Int.repr i` with `i < 2^31` they agree — so a
    lemma parametrized over `si` needs only one proof, and a client indexing with
    a `tuint` temporary pays nothing extra over a `tint` one. -/
theorem ptrofsOfInt_repr (si : Signedness) (i : Nat)
    (hi : (i : _root_.Int) < 2147483648) :
    Cop.ptrofsOfInt si (Integers.Int.repr ((i : _root_.Int)))
      = Integers.Ptrofs.repr ((i : _root_.Int)) := by
  cases si with
  | Signed =>
      show Integers.Ptrofs.of_ints _ = _
      show Integers.MI.repr (Integers.MI.signed (Integers.Int.repr ((i : _root_.Int)))) = _
      rw [show Integers.MI.signed (Integers.Int.repr ((i : _root_.Int)))
             = (i : _root_.Int) from toInt_repr _ (by omega) hi]
      rfl
  | Unsigned =>
      -- `of_intu` is a zero-EXTEND of the 32-bit word, not a `repr` of its
      -- unsigned value, so this one goes through `toNat` rather than a rewrite
      show Integers.Ptrofs.of_intu (Integers.Int.repr ((i : _root_.Int))) = _
      apply BitVec.eq_of_toNat_eq
      simp only [Integers.Ptrofs.of_intu, Integers.Ptrofs.of_int,
                 Integers.Ptrofs.repr, Integers.Int.repr, Integers.MI.repr,
                 BitVec.toNat_setWidth, BitVec.toNat_ofInt, Archi.ptrWordsize_eq]
      omega

private theorem idx_arith (A sz i : Nat)
    (hno : (A : _root_.Int) + (sz : _root_.Int) * (i : _root_.Int)
             < 18446744073709551616) :
    (((A + sz * i % 18446744073709551616) % 18446744073709551616 : Nat) : _root_.Int)
      = (A : _root_.Int) + (sz : _root_.Int) * (i : _root_.Int) := by
  omega

/-- The address arithmetic, once, for any element size.  `hsz` is supplied by the
    client as a `decide` against its own composite environment (`sizeof cenv
    tushort = 2`), which keeps this lemma environment-generic.

    `sizeof` nonnegativity is not provable in this port, which is why the size
    arrives as a `Nat` through `hsz` rather than being reasoned about in place. -/
theorem idxOfs_unsigned (cenv : CompositeEnv) (ty : Ty) (si : Signedness)
    (ofs0 : Integers.Ptrofs) (i sz : Nat)
    (hsz : sizeof cenv ty = (sz : _root_.Int))
    (hszlt : sz < 18446744073709551616)
    (hi : (i : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + (sz : _root_.Int) * (i : _root_.Int)
             < 18446744073709551616) :
    Integers.Ptrofs.unsigned (idxOfs cenv ty si ofs0 (Integers.Int.repr ((i : _root_.Int))))
      = Integers.Ptrofs.unsigned ofs0 + (sz : _root_.Int) * (i : _root_.Int) := by
  have hw : (2 : Nat) ^ Archi.ptrWordsize = 18446744073709551616 := by
    rw [Archi.ptrWordsize_eq]
  rw [idxOfs, ptrofsOfInt_repr si i hi, hsz]
  simp only [Integers.Ptrofs.add, Integers.Ptrofs.mul, Integers.Ptrofs.unsigned,
             Integers.Ptrofs.repr, Integers.MI.add, Integers.MI.mul,
             Integers.MI.repr, Integers.MI.unsigned,
             BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofInt, hw] at hno ⊢
  have hs : (((sz : Nat) : _root_.Int) % ((18446744073709551616 : Nat) : _root_.Int)).toNat
              = sz := by omega
  have hii : (((i : Nat) : _root_.Int) % ((18446744073709551616 : Nat) : _root_.Int)).toNat
              = i := by omega
  rw [hs, hii]
  exact idx_arith _ _ _ hno

/-- **`base[idx]` as an l-value, at any element type.**

    Pure address arithmetic — no heap, no permission, no array predicate.  This is
    what `triple_assign`'s and `triple_assign_copy`'s `hsplit` consume at a write
    site (`count[len] = 0`, `work[…] = sym`, `*(*table)++ = here`), and factoring
    it out keeps the read path from duplicating the derivation.

    `hcls` is `rfl` at every concrete site; it is a hypothesis only so that the
    index's signedness is not baked in. -/
theorem eval_index_lvalue {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {b : Block} {ofs0 : Integers.Ptrofs} {base idx : Expr} {iv : Integers.Int}
    {ty : Ty} {si : Signedness}
    (hptr : EvalExpr ge e le m base (.Vptr b ofs0))
    (hidx : EvalExpr ge e le m idx (.Vint iv))
    (hcls : Cop.classifyAdd (typeof base) (typeof idx) = .pi ty si) :
    EvalLvalue ge e le m (.Ederef (.Ebinop .Oadd base idx (tptr ty)) ty)
      b (idxOfs ge.genv_cenv ty si ofs0 iv) .Full :=
  EvalLvalue.Ederef _ _ _ _
    (EvalExpr.Ebinop .Oadd _ _ _ (.Vptr b ofs0) (.Vint iv) _ hptr hidx
      (semAdd_ptr_int _ _ _ _ _ hcls))

/-! ## `Evar`, packaged

Both cases were being rebuilt inline at every use site (`LocalVarSep` does it
twice).  They are one-liners; the point of naming them is that a client reading
`Evar _count` / `Evar _lbase` should not have to remember which constructor and
which side conditions each needs. -/

/-- A block-scoped variable: its address is the environment's binding, at
    offset 0. -/
theorem eval_var_local {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {id : Ident} {ty : Ty} {b : Block} (h : e.get id = some (b, ty)) :
    EvalLvalue ge e le m (.Evar id ty) b Integers.Ptrofs.zero .Full :=
  EvalLvalue.Evar_local id b ty h

/-- A global: the *absence* of a local binding plus the symbol table.  The `hno`
    side condition is the one clients forget — see `allocVariables_env_other` in
    `CCLib.Locals` for turning "not one of the `fn_vars`" into it. -/
theorem eval_var_global {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {id : Ident} {ty : Ty} {b : Block}
    (hno : e.get id = none)
    (hsym : Genv.findSymbol ge.genv_genv id = some b) :
    EvalLvalue ge e le m (.Evar id ty) b Integers.Ptrofs.zero .Full :=
  EvalLvalue.Evar_global id b ty hno hsym

/-! ## Assignment

The *small-footprint* rule: the precondition must own everything the two
expressions read, and everything else is added afterwards with `triple_frame`.
That split is the point of separation logic — the rule itself mentions only the
`mapsto` being written. -/

theorem triple_assign (ge fe f) (P Q : Assn) (a1 a2 : Expr) (chunk : Chunk)
    (p : Permission) (b : Block) (ofs : Integers.Ptrofs)
    (hpw : permOrder p .Writable = true)
    (hacc : accessMode (typeof a1) = .By_value chunk)
    (hsplit : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
        ∃ vold vnew h1 h2,
          Heap.disjoint h1 h2 ∧ hp = Heap.union h1 h2
          ∧ mapsto chunk p b (Integers.Ptrofs.unsigned ofs) vold h1
          ∧ EvalLvalue ge e le m a1 b ofs .Full
          ∧ (∃ v2, EvalExpr ge e le m a2 v2
                   ∧ Cop.semCast v2 (typeof a2) (typeof a1) m = some vnew)
          ∧ (∀ h1', mapsto chunk p b (Integers.Ptrofs.unsigned ofs) vnew h1' →
                Heap.disjoint h1' h2 → Q e le (Heap.union h1' h2))) :
    Triple ge fe f P (.Sassign a1 a2) (.only Q) := by
  intro k e le hp hf m hd hag hP
  obtain ⟨vold, vnew, h1, h2, hd12, heq, hm1, hlv, ⟨v2, hev2, hcast⟩, hQ⟩ :=
    hsplit e le hp m hP (Heap.Agrees_union_left hag)
  subst heq
  rw [Heap.disjoint_union_left] at hd
  -- the tail of the precondition and the outer frame together form the frame
  have hd1 : Heap.disjoint h1 (Heap.union h2 hf) := by
    rw [Heap.disjoint_union_right]; exact ⟨hd12, hd.1⟩
  have hag1 : Heap.Agrees (Heap.union h1 (Heap.union h2 hf)) m := by
    rw [← Heap.union_assoc]; exact hag
  obtain ⟨m', h1', hstore, hm1', hd1', hag1'⟩ :=
    mapsto_store (v' := vnew) hpw hm1 hd1 hag1
  rw [Heap.disjoint_union_right] at hd1'
  refine ⟨.Normal e le m', Heap.union h1' h2, ?_, ?_, ?_, ?_⟩
  · exact Steps.one (Step.assign f a1 a2 k e le m b ofs .Full v2 vnew m' hlv hev2 hcast
      (AssignLoc.value vnew chunk m' hacc (by
        show Mem.store chunk m b (Integers.Ptrofs.unsigned ofs) vnew = some m'
        exact hstore)))
  · rw [Heap.disjoint_union_left]; exact ⟨hd1'.2, hd.2⟩
  · show Heap.Agrees (Heap.union (Heap.union h1' h2) hf) m'
    rw [Heap.union_assoc]; exact hag1'
  · exact hQ h1' hm1' hd1'.1

/-! ## Aggregate assignment (`accessMode = By_copy`)

`triple_assign` above is hardwired to `AssignLoc.value` — a chunked `Mem.store`.
A C **struct assignment** (`*p = here;`) has `accessMode (Tstruct …) = .By_copy`
and goes through `AssignLoc.copy` instead: a raw `loadbytes`/`storebytes` block
copy.  zlib's `inflate_table` writes its whole decoding table that way
(`*(*table)++ = here;`, inftrees.c:130-131, 243, 304), so without this rule no
proof can step over those statements at all.

The proof is `memcpy_satisfies` (`CCLib.Funspec`) with a different step taken:
the ingredients — `bytesPtsTo_loadbytes`, `bytesPtsTo_storebytes`, and
`Heap.disjoint_ranges_nonoverlap` for the non-overlap disjunction — are the same. -/

/-- **Small-footprint rule for aggregate assignment.**  `a1 = a2` where both sides
    have struct or union type: the source is read as raw bytes and the
    destination window is overwritten with them.

    **Non-overlap is not a hypothesis.**  `AssignLoc.copy` demands that the two
    windows be disjoint (or identical), and the `∗` between the source and
    destination fragments already proves it —
    `Heap.disjoint_ranges_nonoverlap` reads it straight off the ownership.  Only
    the two `alignofBlockcopy` conditions and the size bookkeeping are
    hypotheses; at a use site both alignments are `decide` against the concrete
    composite environment.

    The aliased case that `AssignLoc.copy` also permits (`ofs' = ofs`, a
    self-assignment) is deliberately **not** covered: the precondition's `∗`
    rules it out, and zlib never self-assigns.

    The split is `hDst ∗ (hSrc ∗ hRest)` with the destination outermost, because
    the destination is the fragment operated on and that ordering is what
    `bytesPtsTo_storebytes` wants — the same rearrangement `memcpy_satisfies`
    performs by hand. -/
theorem triple_assign_copy (ge fe f) (P Q : Assn) (a1 a2 : Expr)
    (psrc pdst : Permission)
    (bsrc : Block) (osrc : Integers.Ptrofs)
    (bdst : Block) (odst : Integers.Ptrofs)
    (srcBytes oldBytes : List MemVal)
    (hpr : permOrder psrc .Readable = true)
    (hpw : permOrder pdst .Writable = true)
    (hacc : accessMode (typeof a1) = .By_copy)
    (hsz : ((srcBytes.length : Nat) : _root_.Int) = sizeof ge.genv_cenv (typeof a1))
    (hlen : oldBytes.length = srcBytes.length)
    (halsrc : sizeof ge.genv_cenv (typeof a1) > 0 →
        Integers.Ptrofs.unsigned osrc % alignofBlockcopy ge.genv_cenv (typeof a1) = 0)
    (haldst : sizeof ge.genv_cenv (typeof a1) > 0 →
        Integers.Ptrofs.unsigned odst % alignofBlockcopy ge.genv_cenv (typeof a1) = 0)
    (hsplit : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
        ∃ hSrc hDst hRest,
          Heap.disjoint hSrc hRest
          ∧ Heap.disjoint hDst (Heap.union hSrc hRest)
          ∧ hp = Heap.union hDst (Heap.union hSrc hRest)
          ∧ bytesPtsTo bsrc psrc (Integers.Ptrofs.unsigned osrc) srcBytes hSrc
          ∧ bytesPtsTo bdst pdst (Integers.Ptrofs.unsigned odst) oldBytes hDst
          ∧ EvalLvalue ge e le m a1 bdst odst .Full
          ∧ EvalExpr ge e le m a2 (.Vptr bsrc osrc)
          ∧ Cop.semCast (.Vptr bsrc osrc) (typeof a2) (typeof a1) m
              = some (.Vptr bsrc osrc)
          ∧ (∀ hDst', bytesPtsTo bdst pdst (Integers.Ptrofs.unsigned odst)
                        srcBytes hDst' →
                Heap.disjoint hDst' (Heap.union hSrc hRest) →
                Q e le (Heap.union hDst' (Heap.union hSrc hRest)))) :
    Triple ge fe f P (.Sassign a1 a2) (.only Q) := by
  intro k e le hp hf m hdo hag hP
  obtain ⟨hSrc, hDst, hRest, hdsr, hddr, heq, hsm, hdm, hlv, hev, hcast, hQ⟩ :=
    hsplit e le hp m hP (Heap.Agrees_union_left hag)
  subst heq
  -- ── rearrange: the destination is operated on, everything else is frame ───
  rw [Heap.disjoint_union_left] at hdo
  have hdf : Heap.disjoint hDst (Heap.union (Heap.union hSrc hRest) hf) := by
    rw [Heap.disjoint_union_right]; exact ⟨hddr, hdo.1⟩
  have hagd : Heap.Agrees
      (Heap.union hDst (Heap.union (Heap.union hSrc hRest) hf)) m := by
    rw [← Heap.union_assoc]; exact hag
  -- the source only has to be *readable*, and it is: it is part of `hp`
  have hags : Heap.Agrees hSrc m :=
    Heap.Agrees_union_left
      (Heap.Agrees_union_right hddr (Heap.Agrees_union_left hag))
  -- ── the load, at the length `AssignLoc.copy` asks for ────────────────────
  have hload : Mem.loadbytes m bsrc (Integers.Ptrofs.unsigned osrc)
                 (sizeof ge.genv_cenv (typeof a1)) = some srcBytes := by
    rw [← hsz]; exact bytesPtsTo_loadbytes hpr hsm hags
  -- ── the store ─────────────────────────────────────────────────────────────
  obtain ⟨m', hDst', hstore, hdm', hd'f, hag'⟩ :=
    bytesPtsTo_storebytes hpw hlen.symm hdm hdf hagd
  -- ── non-overlap, read off the `∗` rather than assumed ─────────────────────
  have hno : bsrc ≠ bdst
             ∨ Integers.Ptrofs.unsigned osrc = Integers.Ptrofs.unsigned odst
             ∨ Integers.Ptrofs.unsigned osrc + sizeof ge.genv_cenv (typeof a1)
                 ≤ Integers.Ptrofs.unsigned odst
             ∨ Integers.Ptrofs.unsigned odst + sizeof ge.genv_cenv (typeof a1)
                 ≤ Integers.Ptrofs.unsigned osrc := by
    by_cases hb : bsrc = bdst
    · subst hb
      rw [← hsz]
      have hdsd : Heap.disjoint hSrc hDst := by
        have h := hddr
        rw [Heap.disjoint_union_right] at h
        exact Heap.disjoint_comm h.1
      rcases Heap.disjoint_ranges_nonoverlap hdsd rfl hlen
          (bytesPtsTo_ownsRange _ psrc srcBytes _ hSrc hsm)
          (bytesPtsTo_ownsRange _ pdst oldBytes _ hDst hdm) with hx | hx
      · exact Or.inr (Or.inr (Or.inl hx))
      · exact Or.inr (Or.inr (Or.inr hx))
    · exact Or.inl hb
  -- ── the step, and reassembly ──────────────────────────────────────────────
  rw [Heap.disjoint_union_right] at hd'f
  refine ⟨.Normal e le m', Heap.union hDst' (Heap.union hSrc hRest), ?_, ?_, ?_, ?_⟩
  · exact Steps.one (Step.assign f a1 a2 k e le m bdst odst .Full
      (.Vptr bsrc osrc) (.Vptr bsrc osrc) m' hlv hev hcast
      (AssignLoc.copy bsrc osrc srcBytes m' hacc halsrc haldst hno hload hstore))
  · rw [Heap.disjoint_union_left]; exact ⟨hd'f.2, hdo.2⟩
  · show Heap.Agrees
      (Heap.union (Heap.union hDst' (Heap.union hSrc hRest)) hf) m'
    rw [Heap.union_assoc]; exact hag'
  · exact hQ hDst' hdm' hd'f.1

/-- The cast in a struct-to-same-struct assignment is the identity.  `semCast`
    on `.struct id id` returns the pointer unchanged (`Cop.lean:232`), so this
    discharges `triple_assign_copy`'s `hcast` whenever both sides have literally
    the same struct type — which is every one of zlib's four sites. -/
theorem semCast_struct_same (b : Block) (o : Integers.Ptrofs) (id : Ident)
    (at1 at2 : Attr) (m : Mem) :
    Cop.semCast (.Vptr b o) (Ty.Tstruct id at1) (Ty.Tstruct id at2) m
      = some (.Vptr b o) := by
  show (if id = id then some (Val.Vptr b o) else none) = _
  simp

/-- …and for unions, which `inflate_table` does not use but the rule covers. -/
theorem semCast_union_same (b : Block) (o : Integers.Ptrofs) (id : Ident)
    (at1 at2 : Attr) (m : Mem) :
    Cop.semCast (.Vptr b o) (Ty.Tunion id at1) (Ty.Tunion id at2) m
      = some (.Vptr b o) := by
  show (if id = id then some (Val.Vptr b o) else none) = _
  simp

/-! ## Function entry and exit

What a caller needs from these is *frame preservation*: allocating a callee's
locals, and freeing them again, must leave the caller's fragment intact.  Both
directions of resource *transfer* (turning a fresh block into `mapsto_` cells at
entry, and consuming them at exit) are only needed to verify a function that
actually has `fn_vars`; `is_sorted` has none, and neither does any function in the
test corpus, so that is deferred to whenever a local-variable example appears. -/

/-- Allocating a callee's locals preserves any existing fragment. -/
theorem Agrees_allocVariables {h : Heap} {ce : CompositeEnv} :
    ∀ {vars : List (Ident × Ty)} {e e' : Env} {m m' : Mem},
      AllocVariables ce e m vars e' m' → Heap.Agrees h m → Heap.Agrees h m' := by
  intro vars e e' m m' hav
  induction hav with
  | nil _ _ => exact fun hag => hag
  | cons e0 m0 id ty vars0 m1 b1 m2 e2 halloc hrest ih =>
      intro hag
      refine ih ?_
      have : m1 = (Mem.alloc m0 0 (sizeof ce ty)).1 := by rw [halloc]
      rw [this]
      exact Heap.Agrees_alloc hag

/-- Freeing a list of blocks the fragment does not own preserves it. -/
theorem Agrees_freeList {h : Heap} :
    ∀ (l : List (Block × Z × Z)) (m m' : Mem), Mem.freeList m l = some m' →
      (∀ blk ∈ l, ∀ ofs : _root_.Int, blk.2.1 ≤ ofs → ofs < blk.2.2 → h blk.1 ofs = none) →
      Heap.Agrees h m → Heap.Agrees h m' := by
  intro l
  induction l with
  | nil => intro m m' hfl _ hag; injection hfl with hfl; rw [← hfl]; exact hag
  | cons blk l' ih =>
      intro m m' hfl hno hag
      obtain ⟨b, lo, hi⟩ := blk
      rw [Mem.freeList] at hfl
      cases hfree : Mem.free m b lo hi with
      | none => rw [hfree] at hfl; exact absurd hfl (by simp)
      | some m1 =>
          rw [hfree] at hfl
          refine ih m1 m' hfl (fun blk' hb' => hno blk' (List.mem_cons_of_mem _ hb')) ?_
          rw [Mem.free_result hfree]
          exact Heap.Agrees_free_frame hag
            (fun ofs h1 h2 => hno (b, lo, hi) List.mem_cons_self ofs h1 h2)

/-- The common case: a function with no `fn_vars` frees nothing, so any fragment
    survives its return unchanged. -/
theorem Agrees_freeList_emptyEnv {h : Heap} {ce : CompositeEnv} {m : Mem}
    (hag : Heap.Agrees h m) :
    Heap.Agrees h ((Mem.freeList m (blocksOfEnv ce emptyEnv)).get
      (by rw [freeList_emptyEnv]; simp)) := by
  have hfl : Mem.freeList m (blocksOfEnv ce emptyEnv) = some m := freeList_emptyEnv ce m
  simp only [hfl]
  exact hag

end Sep
end CC
