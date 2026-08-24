/-
  Function specifications, the call rule, and the whole-program closure theorem —
  Phase 7.5.

  ## Why a measure, and not step-indexing

  VST proves its `semax_func` by step-indexing, which works because `semax` is a
  *safety* property: "does not go wrong within `n` steps" composes without ever
  producing an execution.  The triple here is **total correctness** — it asserts a
  terminating execution exists — so `∀ n, Satisfies_n f S` yields nothing, and the
  step-indexed induction does not close.

  The adaptation: every spec carries a well-founded **measure on its arguments**,
  the call rule may only invoke a callee whose measure at the *actual* arguments is
  strictly smaller, and `closure` is induction on that measure.  Mutual recursion
  works because the measure is global rather than per-function, and the discipline
  matches the loop rule, which already carries a `Nat` measure.

  ## Scope

  No function pointers: the callee is resolved through `Genv.findFunct` at a
  pointer with offset zero, which is what `EvalLvalue.Evar_global` produces.
  `Sbuiltin` and external calls are out of scope — `externalCall` is an axiom (as
  it is in Rocq's `Events.v`), so `malloc`/`free`/`memcpy` would need axiomatized
  specs of their own.
-/
import CCLib.SepHoare

namespace CC
namespace Sep

open HProp

/-- On a *call* continuation, `callCont` is the identity.  This is what makes one
    `SatisfiesAt` serve internal callees (whose body returns to `callCont k`) and
    external ones (where `step_external_function` returns to `k`) alike. -/
theorem callCont_of_isCallCont {k : Cont} (h : isCallCont k = true) : callCont k = k := by
  cases k <;> simp_all [isCallCont, callCont]

/-- A function specification.  `pre`/`post` are heap-only: a callee cannot mention
    its caller's environment or temporaries. -/
structure FunSpec where
  tyargs : List Ty
  tyres : Ty
  cc : CallConv
  pre : List Val → HProp
  post : Val → HProp
  /-- Termination measure on the arguments; see the header. -/
  measure : List Val → Nat

/-- A specification for (some of) the program's functions, keyed by block. -/
abbrev SpecTable := Block → Option FunSpec

/-- `fd` meets `S` at *these* arguments: from a state whose fragment satisfies the
    precondition, the call runs to a `Returnstate` whose fragment satisfies the
    postcondition, with any disjoint frame carried through untouched. -/
def SatisfiesAt (ge : CGenv) (fe : EntryRel) (fd : FunDef) (S : FunSpec)
    (vargs : List Val) : Prop :=
  ∀ k m hp hf, isCallCont k = true → S.pre vargs hp → Heap.disjoint hp hf →
    Heap.Agrees (Heap.union hp hf) m →
    ∃ v m' hp',
      Steps (SStep ge fe) (.Callstate fd vargs k m) (.Returnstate v k m')
      ∧ S.post v hp' ∧ Heap.disjoint hp' hf ∧ Heap.Agrees (Heap.union hp' hf) m'

/-- `fd` meets `S` at every argument list. -/
def Satisfies (ge : CGenv) (fe : EntryRel) (fd : FunDef) (S : FunSpec) : Prop :=
  ∀ vargs, SatisfiesAt ge fe fd S vargs

/-! ## The call rule

Derived from the same frame discipline as everything else: the callee's
`SatisfiesAt` takes an arbitrary frame, so the caller's *other* resources (`h2`)
pass through untouched.  That is the whole reason a call rule is worth having in a
separation logic and not in a plain Hoare logic. -/

theorem triple_call (ge fe f) (S : FunSpec) (optid : Option Ident)
    (a : Expr) (al : List Expr) (P Q : Assn) (b : Block) (fd : FunDef)
    (hspec : ∀ vargs, SatisfiesAt ge fe fd S vargs)
    (hfind : Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd)
    (hty : typeOfFundef fd = .Tfunction S.tyargs S.tyres S.cc)
    (hclass : Cop.classifyFun (typeof a) = .f S.tyargs S.tyres S.cc)
    (hsplit : ∀ e le hp m, P e le hp → Heap.Agrees hp m →
        ∃ vargs h1 h2,
          Heap.disjoint h1 h2 ∧ hp = Heap.union h1 h2
          ∧ EvalExpr ge e le m a (.Vptr b Integers.Ptrofs.zero)
          ∧ EvalExprlist ge e le m al S.tyargs vargs
          ∧ S.pre vargs h1
          ∧ (∀ v h1', S.post v h1' → Heap.disjoint h1' h2 →
                Q e (setOpttemp optid v le) (Heap.union h1' h2))) :
    Triple ge fe f P (.Scall optid a al) (.only Q) := by
  intro k e le hp hf m hd hag hP
  obtain ⟨vargs, h1, h2, hd12, heq, hevf, hevl, hpre, hQ⟩ :=
    hsplit e le hp m hP (Heap.Agrees_union_left hag)
  subst heq
  rw [Heap.disjoint_union_left] at hd
  -- the caller's other resources join the frame for the duration of the call
  have hd1 : Heap.disjoint h1 (Heap.union h2 hf) := by
    rw [Heap.disjoint_union_right]; exact ⟨hd12, hd.1⟩
  have hag1 : Heap.Agrees (Heap.union h1 (Heap.union h2 hf)) m := by
    rw [← Heap.union_assoc]; exact hag
  obtain ⟨v, m', h1', hcall, hpost, hd1', hag1'⟩ :=
    hspec vargs (.Kcall optid f e le k) m h1 (Heap.union h2 hf) rfl hpre hd1 hag1
  rw [Heap.disjoint_union_right] at hd1'
  refine ⟨.Normal e (setOpttemp optid v le) m', Heap.union h1' h2, ?_, ?_, ?_, ?_⟩
  · -- enter the call, run it, then pop the `Kcall` frame
    refine Steps.step _ _ _
      (Step.call f optid a al k e le m S.tyargs S.tyres S.cc _ vargs fd
        hclass hevf hevl hfind hty) ?_
    -- the callee lands exactly where `step_returnstate` expects it
    exact Steps.trans hcall
      (Steps.one (Step.returnstate v optid f e le k m'))
  · rw [Heap.disjoint_union_left]; exact ⟨hd1'.2, hd.2⟩
  · show Heap.Agrees (Heap.union (Heap.union h1' h2) hf) m'
    rw [Heap.union_assoc]; exact hag1'
  · exact hQ v h1' hpost hd1'.1

/-! ## From a body triple to a specification -/

/-- Deriving `SatisfiesAt` from a triple for the body, for a function with no
    block-scoped variables — so `function_entry` leaves memory alone.  This is the
    pattern `is_sorted_call` follows by hand in `IsSortedReal.lean`, generalized.

    For a function *with* `fn_vars` the entry allocates, and the fresh block has
    to be turned into owned cells; that is the resource-transfer step deferred in
    Phase 7.4. -/
theorem satisfies_internal_noVars (ge fe f) (S : FunSpec) (vargs : List Val)
    (Pbody : Assn)
    (hentry : ∀ m : Mem, ∃ le : TempEnv, fe f vargs m emptyEnv le m
                ∧ ∀ hp, S.pre vargs hp → Pbody emptyEnv le hp)
    (body : Triple ge fe f Pbody f.fn_body
        { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := S.post }) :
    SatisfiesAt ge fe (.Internal f) S vargs := by
  intro k m hp hf hk hpre hd hag
  obtain ⟨le, hent, himp⟩ := hentry m
  obtain ⟨o, hp', hs, hd', hag', hR⟩ := body k emptyEnv le hp hf m hd hag (himp hp hpre)
  cases o with
  | Normal _ _ _ => exact False.elim hR
  | Break _ _ _ => exact False.elim hR
  | Continue _ _ _ => exact False.elim hR
  -- an unresolved jump out of a function body: the body triple's `goto`
  -- condition is `no`, so this cannot happen.  A body that *does* jump must have
  -- had its labels resolved by `Sep.triple_body_goto` first.
  | Goto _ _ _ _ => exact False.elim hR
  | Return v m' =>
      refine ⟨v, m', hp', ?_, hR, hd', hag'⟩
      -- the body returns to `callCont k`; on a call continuation that *is* `k`
      have hs' : Steps (SStep ge fe) (.State f f.fn_body k emptyEnv le m)
                   (.Returnstate v (callCont k) m') := hs
      rw [callCont_of_isCallCont hk] at hs'
      exact Steps.step _ _ _
        (Step.internal_function f vargs k m emptyEnv le m hent) hs'

/-- **D5 — a function *with* block-scoped locals meets its spec.**  The
    generalisation of `satisfies_internal_noVars`, and what
    `compress2`/`uncompress2` need: both hold a `z_stream` on the stack.

    `hentry` is the entry step packaged as an obligation: running
    `function_entry` yields an environment, temporaries, a memory, **and a
    fragment `hl` for the freshly allocated locals**, with the body's
    precondition holding of the caller's resources *plus* the locals.
    `CC.allocVariables_resources` is what discharges it.

    The body's `ret` condition is `S.post` alone — no locals — because the
    `return` step frees them: `Sep.triple_return` already carries
    `Mem.freeList … = some m'` as a hypothesis, discharged at the use site by
    `CC.freeList_isSome_of_rangePerm` and `CC.undefBytes_rangePerm`.  So the
    locals are *consumed* by the return, and this theorem needs to say nothing
    more about them. -/
theorem satisfies_internal (ge fe f) (S : FunSpec) (vargs : List Val)
    (Pbody : Assn)
    (hentry : ∀ (m : Mem) (hp hf : Heap), S.pre vargs hp → Heap.disjoint hp hf →
        Heap.Agrees (Heap.union hp hf) m →
        ∃ (e : Env) (le : TempEnv) (m1 : Mem) (hl : Heap),
          fe f vargs m e le m1
          ∧ Heap.disjoint (Heap.union hp hl) hf
          ∧ Heap.Agrees (Heap.union (Heap.union hp hl) hf) m1
          ∧ Pbody e le (Heap.union hp hl))
    (body : Triple ge fe f Pbody f.fn_body
        { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := S.post }) :
    SatisfiesAt ge fe (.Internal f) S vargs := by
  intro k m hp hf hk hpre hd hag
  obtain ⟨e, le, m1, hl, hent, hd1, hag1, hPb⟩ := hentry m hp hf hpre hd hag
  obtain ⟨o, hp', hs, hd', hag', hR⟩ :=
    body k e le (Heap.union hp hl) hf m1 hd1 hag1 hPb
  cases o with
  | Normal _ _ _ => exact False.elim hR
  | Break _ _ _ => exact False.elim hR
  | Continue _ _ _ => exact False.elim hR
  -- an unresolved jump out of a function body: the body triple's `goto`
  -- condition is `no`, so this cannot happen.  A body that *does* jump must have
  -- had its labels resolved by `Sep.triple_body_goto` first.
  | Goto _ _ _ _ => exact False.elim hR
  | Return v m' =>
      refine ⟨v, m', hp', ?_, hR, hd', hag'⟩
      have hs' : Steps (SStep ge fe) (.State f f.fn_body k e le m1)
                   (.Returnstate v (callCont k) m') := hs
      rw [callCont_of_isCallCont hk] at hs'
      exact Steps.step _ _ _
        (Step.internal_function f vargs k m e le m1 hent) hs'

/-- **Resolving a forward `goto`: a function whose body jumps to a label.**

    This is `satisfies_internal` plus label resolution, and it must live at this
    level rather than as a `Triple` rule: `Step.goto` lands at `callCont k`, a
    `Triple` quantifies over *all* `k`, and only here — where `SatisfiesAt`
    supplies `isCallCont k` — are the two the same continuation.

    `hfind` gives the label's landing site as a function `kcont` of the ambient
    continuation.  For a label at the **top level** of the body — `inflate`'s
    `inf_leave:` — `kcont` is the identity.  For a label *inside* a sequence or
    loop, `findLabel` rebuilds the frames above it, so `kcont` adds them; `hkc`
    then says those frames do not change `callCont`, which holds by `rfl` for
    every frame `findLabel` can add (`Kseq`, `Kloop1`, `Kloop2`, `Kswitch`).
    Both facts compute on a concrete body.

    The target is verified with `goto := no`, so it cannot jump again — that is
    what makes this the *forward* rule, and it is the restriction a backward jump
    (`inflate_fast`'s `dolen`/`dodist`) has to lift with a measure. -/
theorem satisfies_internal_goto (ge fe f) (S : FunSpec) (vargs : List Val)
    (Pbody G : Assn) (lbl : Ident) (starget : Stmt) (kcont : Cont → Cont)
    (hentry : ∀ (m : Mem) (hp hf : Heap), S.pre vargs hp → Heap.disjoint hp hf →
        Heap.Agrees (Heap.union hp hf) m →
        ∃ (e : Env) (le : TempEnv) (m1 : Mem) (hl : Heap),
          fe f vargs m e le m1
          ∧ Heap.disjoint (Heap.union hp hl) hf
          ∧ Heap.Agrees (Heap.union (Heap.union hp hl) hf) m1
          ∧ Pbody e le (Heap.union hp hl))
    (hbody : Triple ge fe f Pbody f.fn_body
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := S.post,
        goto := fun l => if l = lbl then G else Assn.no })
    (hfind : ∀ kk : Cont, findLabel lbl f.fn_body kk = some (starget, kcont kk))
    (hkc : ∀ kk : Cont, callCont (kcont kk) = callCont kk)
    (htarget : Triple ge fe f G starget
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := S.post }) :
    SatisfiesAt ge fe (.Internal f) S vargs := by
  intro k m hp hf hk hpre hd hag
  have hck : callCont k = k := callCont_of_isCallCont hk
  obtain ⟨e, le, m1, hl, hent, hd1, hag1, hPb⟩ := hentry m hp hf hpre hd hag
  obtain ⟨o, hp', hs, hd', hag', hR⟩ :=
    hbody k e le (Heap.union hp hl) hf m1 hd1 hag1 hPb
  -- the body either returns, or jumps to `lbl` and the target returns
  cases o with
  | Normal _ _ _ => exact False.elim hR
  | Break _ _ _ => exact False.elim hR
  | Continue _ _ _ => exact False.elim hR
  | Return v m' =>
      refine ⟨v, m', hp', ?_, hR, hd', hag'⟩
      have hs' : Steps (SStep ge fe) (.State f f.fn_body k e le m1)
                   (.Returnstate v (callCont k) m') := hs
      rw [hck] at hs'
      exact Steps.step _ _ _ (Step.internal_function f vargs k m e le m1 hent) hs'
  | Goto lbl' e' le' m' =>
      by_cases hl' : lbl' = lbl
      · subst hl'
        have hG : G e' le' hp' := by
          have hx : (if lbl' = lbl' then G else Assn.no) e' le' hp' := hR
          rwa [if_pos rfl] at hx
        -- the landing site: `callCont k = k`, so the jump stays under `kcont k`
        have hst : gotoTarget f k lbl' e' le' m'
            = .State f starget (kcont k) e' le' m' := by
          unfold gotoTarget
          rw [hck, hfind k]
        obtain ⟨o2, hp2, hs2, hd2, hag2, hR2⟩ :=
          htarget (kcont k) e' le' hp' hf m' hd' hag' hG
        cases o2 with
        | Normal _ _ _ => exact False.elim hR2
        | Break _ _ _ => exact False.elim hR2
        | Continue _ _ _ => exact False.elim hR2
        | Goto _ _ _ _ => exact False.elim hR2
        | Return v m'' =>
            refine ⟨v, m'', hp2, ?_, hR2, hd2, hag2⟩
            have hs2' : Steps (SStep ge fe) (.State f starget (kcont k) e' le' m')
                          (.Returnstate v (callCont (kcont k)) m'') := hs2
            rw [hkc k, hck] at hs2'
            refine Steps.step _ _ _
              (Step.internal_function f vargs k m e le m1 hent) ?_
            exact Steps.trans (hst ▸ hs) hs2'
      · -- a jump to any other label is unsatisfiable: the body's condition is `no`
        have hx : (if lbl' = lbl then G else Assn.no) e' le' hp' := hR
        rw [if_neg hl'] at hx
        exact False.elim hx

/-- **Resolving a `goto` that jumps BACKWARD, with a measure.**

    `inflate_fast`'s `dolen`/`dodist` jump *back* to a label above them, so the
    label's target can jump again and `satisfies_internal_goto` — whose target is
    verified with `goto := no` — does not apply.

    The fix is the discipline `Sep.triple_loop` and `Sep.closure` already use: the
    goto-assertion is **indexed by a `Nat` that must strictly decrease** before the
    label is re-entered.  Well-founded induction on it closes the loop.

    **How big is the measure in practice?  One.**  `dolen`/`dodist` are the
    two-level Huffman table lookup: a code longer than the root table's bits sends
    control back through `dolen` with `here` pointing into a *second-level* table,
    and a second-level entry is never itself a second-level pointer, because zlib
    builds exactly two levels.  So the jump fires at most once per symbol.

    That is worth stating plainly, because it relocates the difficulty: the
    *control-flow* rule below is cheap, while the *termination* argument is a
    data-structure invariant of `inflate_table`'s output — an obligation on
    inftrees.c that any refinement proof of `inflate_fast` needs anyway.  The
    measure is where that invariant gets cashed in. -/
theorem satisfies_internal_goto_measure (ge fe f) (S : FunSpec) (vargs : List Val)
    (Pbody : Assn) (Gm : Nat → Assn) (lbl : Ident) (starget : Stmt)
    (kcont : Cont → Cont)
    (hentry : ∀ (m : Mem) (hp hf : Heap), S.pre vargs hp → Heap.disjoint hp hf →
        Heap.Agrees (Heap.union hp hf) m →
        ∃ (e : Env) (le : TempEnv) (m1 : Mem) (hl : Heap),
          fe f vargs m e le m1
          ∧ Heap.disjoint (Heap.union hp hl) hf
          ∧ Heap.Agrees (Heap.union (Heap.union hp hl) hf) m1
          ∧ Pbody e le (Heap.union hp hl))
    -- the body may jump to `lbl` at any measure
    (hbody : Triple ge fe f Pbody f.fn_body
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := S.post,
        goto := fun l => if l = lbl then (fun e le hp => ∃ n, Gm n e le hp)
                         else Assn.no })
    (hfind : ∀ kk : Cont, findLabel lbl f.fn_body kk = some (starget, kcont kk))
    (hkc : ∀ kk : Cont, callCont (kcont kk) = callCont kk)
    -- …and the target, at measure `n`, either returns or jumps again at a
    -- **strictly smaller** measure
    (htarget : ∀ n : Nat, Triple ge fe f (Gm n) starget
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := S.post,
        goto := fun l => if l = lbl then (fun e le hp => ∃ n', n' < n ∧ Gm n' e le hp)
                         else Assn.no }) :
    SatisfiesAt ge fe (.Internal f) S vargs := by
  intro k m hp hf hk hpre hd hag
  have hck : callCont k = k := callCont_of_isCallCont hk
  -- the target, re-entered at a decreasing measure, always reaches a Returnstate
  have key : ∀ (n : Nat) (e : Env) (le : TempEnv) (hp' : Heap) (m' : Mem),
      Gm n e le hp' → Heap.disjoint hp' hf →
      Heap.Agrees (Heap.union hp' hf) m' →
      ∃ v m'' hp'',
        Steps (SStep ge fe) (.State f starget (kcont k) e le m')
          (.Returnstate v k m'')
        ∧ S.post v hp'' ∧ Heap.disjoint hp'' hf
        ∧ Heap.Agrees (Heap.union hp'' hf) m'' := by
    intro n
    induction n using Nat.strongRecOn with
    | _ n ih =>
      intro e le hp' m' hG hd' hag'
      obtain ⟨o, hp2, hs, hd2, hag2, hR⟩ :=
        htarget n (kcont k) e le hp' hf m' hd' hag' hG
      cases o with
      | Normal _ _ _ => exact False.elim hR
      | Break _ _ _ => exact False.elim hR
      | Continue _ _ _ => exact False.elim hR
      | Return v m'' =>
          refine ⟨v, m'', hp2, ?_, hR, hd2, hag2⟩
          have hs' : Steps (SStep ge fe) (.State f starget (kcont k) e le m')
                       (.Returnstate v (callCont (kcont k)) m'') := hs
          rwa [hkc k, hck] at hs'
      | Goto lbl' e2 le2 m2 =>
          by_cases hl' : lbl' = lbl
          · subst hl'
            obtain ⟨n', hlt, hG'⟩ : ∃ n', n' < n ∧ Gm n' e2 le2 hp2 := by
              have hx : (if lbl' = lbl' then
                          (fun e le hp => ∃ n', n' < n ∧ Gm n' e le hp) else Assn.no)
                        e2 le2 hp2 := hR
              rwa [if_pos rfl] at hx
            -- re-enter the label at the smaller measure
            obtain ⟨v, m'', hp3, hs3, hpost, hd3, hag3⟩ := ih n' hlt e2 le2 hp2 m2 hG' hd2 hag2
            refine ⟨v, m'', hp3, ?_, hpost, hd3, hag3⟩
            have hst : gotoTarget f (kcont k) lbl' e2 le2 m2
                = .State f starget (kcont k) e2 le2 m2 := by
              unfold gotoTarget; rw [hkc k, hck, hfind k]
            exact Steps.trans (hst ▸ hs) hs3
          · have hx : (if lbl' = lbl then
                        (fun e le hp => ∃ n', n' < n ∧ Gm n' e le hp) else Assn.no)
                      e2 le2 hp2 := hR
            rw [if_neg hl'] at hx
            exact False.elim hx
  -- now the body: it returns, or jumps to `lbl` at some measure
  obtain ⟨e, le, m1, hl, hent, hd1, hag1, hPb⟩ := hentry m hp hf hpre hd hag
  obtain ⟨o, hp', hs, hd', hag', hR⟩ :=
    hbody k e le (Heap.union hp hl) hf m1 hd1 hag1 hPb
  cases o with
  | Normal _ _ _ => exact False.elim hR
  | Break _ _ _ => exact False.elim hR
  | Continue _ _ _ => exact False.elim hR
  | Return v m' =>
      refine ⟨v, m', hp', ?_, hR, hd', hag'⟩
      have hs' : Steps (SStep ge fe) (.State f f.fn_body k e le m1)
                   (.Returnstate v (callCont k) m') := hs
      rw [hck] at hs'
      exact Steps.step _ _ _ (Step.internal_function f vargs k m e le m1 hent) hs'
  | Goto lbl' e' le' m' =>
      by_cases hl' : lbl' = lbl
      · subst hl'
        obtain ⟨n, hG⟩ : ∃ n, Gm n e' le' hp' := by
          have hx : (if lbl' = lbl' then (fun e le hp => ∃ n, Gm n e le hp)
                     else Assn.no) e' le' hp' := hR
          rwa [if_pos rfl] at hx
        obtain ⟨v, m'', hp2, hs2, hpost, hd2, hag2⟩ := key n e' le' hp' m' hG hd' hag'
        refine ⟨v, m'', hp2, ?_, hpost, hd2, hag2⟩
        have hst : gotoTarget f k lbl' e' le' m'
            = .State f starget (kcont k) e' le' m' := by
          unfold gotoTarget; rw [hck, hfind k]
        refine Steps.step _ _ _ (Step.internal_function f vargs k m e le m1 hent) ?_
        exact Steps.trans (hst ▸ hs) hs2
      · have hx : (if lbl' = lbl then (fun e le hp => ∃ n, Gm n e le hp)
                   else Assn.no) e' le' hp' := hR
        rw [if_neg hl'] at hx
        exact False.elim hx

/-- The specifications a body may *use*: everything in the table whose measure at
    the actual arguments is strictly below `n`. -/
def Avail (ge : CGenv) (fe : EntryRel) (Δ : SpecTable) (n : Nat) : Prop :=
  ∀ (b : Block) (S : FunSpec) (fd : FunDef) (vargs : List Val),
    Δ b = some S →
    Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd →
    S.measure vargs < n →
    SatisfiesAt ge fe fd S vargs

/-- The per-function obligation: at every argument list, the body meets its spec
    *given* the smaller-measure callees. -/
def BodyOk (ge : CGenv) (fe : EntryRel) (Δ : SpecTable) (f : Function)
    (S : FunSpec) : Prop :=
  ∀ vargs, Avail ge fe Δ (S.measure vargs) → SatisfiesAt ge fe (.Internal f) S vargs

/-- **The closure theorem.**  If every function in the table meets its spec on the
    assumption that smaller-measure callees meet theirs, then all of them meet
    their specs outright.

    Mutual recursion is covered: the measure is global, so `iseven`/`isodd` both
    decrease it and neither needs the other to be "already done". -/
theorem closure (ge : CGenv) (fe : EntryRel) (Δ : SpecTable)
    (hbodies : ∀ (b : Block) (S : FunSpec) (fd : FunDef),
        Δ b = some S →
        Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd →
        ∃ fn, fd = .Internal fn ∧ BodyOk ge fe Δ fn S) :
    ∀ (b : Block) (S : FunSpec) (fd : FunDef) (vargs : List Val),
      Δ b = some S →
      Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd →
      SatisfiesAt ge fe fd S vargs := by
  suffices H : ∀ n b S fd vargs, Δ b = some S →
      Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd →
      S.measure vargs = n → SatisfiesAt ge fe fd S vargs by
    intro b S fd vargs h1 h2; exact H _ b S fd vargs h1 h2 rfl
  intro n
  induction n using Nat.strongRecOn with
  | _ n ih =>
    intro b S fd vargs h1 h2 hmeas
    obtain ⟨fn, hfd, hbody⟩ := hbodies b S fd h1 h2
    subst hfd
    refine hbody vargs (fun b' S' fd' vargs' h1' h2' hlt => ?_)
    exact ih (S'.measure vargs') (by omega) b' S' fd' vargs' h1' h2' rfl

/-- Corollary in the `Satisfies` (all-arguments) form. -/
theorem closure_satisfies (ge : CGenv) (fe : EntryRel) (Δ : SpecTable)
    (hbodies : ∀ (b : Block) (S : FunSpec) (fd : FunDef),
        Δ b = some S →
        Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd →
        ∃ fn, fd = .Internal fn ∧ BodyOk ge fe Δ fn S) :
    ∀ (b : Block) (S : FunSpec) (fd : FunDef),
      Δ b = some S →
      Genv.findFunct ge.genv_genv (.Vptr b Integers.Ptrofs.zero) = some fd →
      Satisfies ge fe fd S :=
  fun b S fd h1 h2 vargs => closure ge fe Δ hbodies b S fd vargs h1 h2

/-! ## `malloc` and `free`

These are **not** axiomatized: `Events.extcall_malloc_sem` / `extcall_free_sem`
are real inductive relations in `CCLib/Events.lean`, ported from CompCert, and
both produce the empty trace.  So the rules below are proved, and calls to
`malloc`/`free` go through the ordinary `triple_call` — no bespoke call rule.

`malloc(sz)` allocates `[-sizeof(Mptr), sz)` and stashes `sz` just below the
returned pointer, which is how `free` recovers the size.  The caller therefore
receives *two* resources: the payload, and a **token** for the header.  The token
is what `free` consumes — exactly VST's `malloc_token`. -/

/-- The header cell `malloc` writes below the returned pointer.  Holding it is
    what entitles a caller to `free` the block. -/
def mallocToken (b : Block) (sz : Integers.Ptrofs) : HProp :=
  mapsto Mptr .Freeable b (- sizeChunk Mptr) (Val.Vptrofs sz)

/-- The payload: `sz` bytes of uninitialised, freeable memory at `b + 0`. -/
def mallocPayload (b : Block) (sz : Integers.Ptrofs) : HProp :=
  bytesPtsTo b .Freeable 0
    (List.replicate (Integers.Ptrofs.unsigned sz).toNat MemVal.Undef)

/-- `malloc`'s specification: consumes nothing, produces the token and payload. -/
def mallocSpec (sz : Integers.Ptrofs) : FunSpec where
  tyargs := [Ty.Tlong .Unsigned noattr]
  tyres := tvoid
  cc := cc_default
  pre := fun vargs => ⌜vargs = [Val.Vptrofs sz]⌝
  post := fun v => hexists (fun b : Block =>
    ⌜v = .Vptr b Integers.Ptrofs.zero⌝ ∗ (mallocToken b sz ∗ mallocPayload b sz))
  measure := fun _ => 0

/-! ### The three facts a `malloc` rule needs about its post-state

Stated and proved here; assembling them into `SatisfiesAt (.External .EF_malloc)`
is the remaining step (it must build the post-fragment from `bytesPtsTo_exists`
and re-establish `Agrees`, following the pattern of `mapsto_store`). -/

-- The header store always succeeds on a freshly allocated block.
theorem malloc_store_ok (m : Mem) (sz : Integers.Ptrofs) :
    ∃ m'', Mem.store Mptr (Mem.alloc m (- sizeChunk Mptr)
             (Integers.Ptrofs.unsigned sz)).1
             (Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz)).2
             (- sizeChunk Mptr) (Val.Vptrofs sz) = some m'' := by
  have hva : Mem.validAccess (Mem.alloc m (- sizeChunk Mptr)
      (Integers.Ptrofs.unsigned sz)).1 Mptr
      (Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz)).2
      (- sizeChunk Mptr) .Writable = true := by
    simp only [Mem.validAccess, Bool.and_eq_true]
    refine ⟨?_, by simp [Mptr, Archi.ptr64, sizeChunk, alignChunk]⟩
    refine Mem.rangePerm_intro _ _ _ _ _ _ (fun ofs h1 h2 => ?_)
    rw [Mem.alloc_result]
    refine Mem.perm_implies (p := .Freeable) ?_ (by decide)
    refine Mem.perm_alloc_same m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz) ofs .Cur h1 ?_
    have hnn : (0 : _root_.Int) ≤ Integers.Ptrofs.unsigned sz := by
      show (0 : _root_.Int) ≤ ((_ : Nat) : _root_.Int); omega
    have hs8 : sizeChunk Mptr = 8 := by simp [Mptr, Archi.ptr64, sizeChunk]
    rw [hs8] at h2
    omega
  unfold Mem.store
  rw [hva]
  exact ⟨_, rfl⟩

-- Step 2: what the post-state holds.

/-- The header bytes read back as what was stored. -/
theorem malloc_header_contents (m' m'' : Mem) (sz : Integers.Ptrofs) (b : Block)
    (hstore : Mem.store Mptr m' b (- sizeChunk Mptr) (Val.Vptrofs sz) = some m'')
    (i : Nat) (hi : i < (encodeVal Mptr (Val.Vptrofs sz)).length) :
    ZMap.get ((- sizeChunk Mptr) + (i : _root_.Int)) (PMap.get b m''.contents)
      = (encodeVal Mptr (Val.Vptrofs sz))[i]! := by
  rw [Mem.store_contents hstore, PMap.gss]
  exact Mem.setN_inside _ _ _ i hi

/-- The payload reads back as `Undef`: `alloc` initialises it, and the header
    store is disjoint from it. -/
theorem malloc_payload_contents (m m' m'' : Mem) (sz : Integers.Ptrofs) (b : Block)
    (halloc : Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz) = (m', b))
    (hstore : Mem.store Mptr m' b (- sizeChunk Mptr) (Val.Vptrofs sz) = some m'')
    (j : _root_.Int) (h0 : 0 ≤ j) :
    ZMap.get j (PMap.get b m''.contents) = MemVal.Undef := by
  have hs8 : sizeChunk Mptr = 8 := by simp [Mptr, Archi.ptr64, sizeChunk]
  have hout : j < (- sizeChunk Mptr) ∨
      (- sizeChunk Mptr) + ((encodeVal Mptr (Val.Vptrofs sz)).length : _root_.Int) ≤ j := by
    right
    rw [length_encodeVal]
    -- fresh `_root_.Int` binders: the goal sits at `CC.Z`, where omega is blind
    have hj : (-(8 : _root_.Int)) + (8 : _root_.Int) ≤ j := by omega
    exact hj
  rw [Mem.store_contents hstore, PMap.gss, Mem.setN_outside _ _ _ _ hout]
  have hm' : m' = (Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz)).1 := by
    rw [halloc]
  have hb : b = m.nextblock := by
    rw [← Mem.alloc_result m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz), halloc]
  rw [hm', hb, Mem.alloc_contents, PMap.gss, ZMap.gi]

-- All the offset arithmetic of the `malloc` rule, over fresh binders.  The goals
-- themselves sit at `CC.Z` (`sizeChunk`, `Ptrofs.unsigned`), where `omega` is
-- blind; `exact`/`apply` bridge by definitional equality.
private theorem hdr_lo (i : Nat) : (-8 : _root_.Int) ≤ (-8) + (i : _root_.Int) := by omega
private theorem hdr_hi (S : _root_.Int) (hS : 0 ≤ S) (i : Nat) (hi : i < 8) :
    (-8 : _root_.Int) + (i : _root_.Int) < S := by omega
private theorem hdr_neg (i : Nat) (hi : i < 8) :
    (-8 : _root_.Int) + (i : _root_.Int) < 0 := by omega
private theorem pay_lo (i : Nat) : (-8 : _root_.Int) ≤ (0 : _root_.Int) + (i : _root_.Int) := by
  omega
private theorem pay_nn (i : Nat) : (0 : _root_.Int) ≤ (0 : _root_.Int) + (i : _root_.Int) := by
  omega
private theorem pay_hi (S : _root_.Int) (i : Nat) (hi : (i : _root_.Int) < S) :
    (0 : _root_.Int) + (i : _root_.Int) < S := by omega
private theorem pay_ge8 (i : Nat) :
    (-8 : _root_.Int) + (8 : _root_.Int) ≤ (0 : _root_.Int) + (i : _root_.Int) := by omega
private theorem toNat_lt (S : _root_.Int) (hS : 0 ≤ S) (i : Nat) (hi : i < S.toNat) :
    (i : _root_.Int) < S := by omega

/-- The whole allocated range — header *and* payload — is `Freeable` afterwards. -/
theorem malloc_access (m m' m'' : Mem) (sz : Integers.Ptrofs) (b : Block)
    (halloc : Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz) = (m', b))
    (hstore : Mem.store Mptr m' b (- sizeChunk Mptr) (Val.Vptrofs sz) = some m'')
    (ofs : _root_.Int) (kk : PermKind)
    (h1 : - sizeChunk Mptr ≤ ofs) (h2 : ofs < Integers.Ptrofs.unsigned sz) :
    PMap.get b m''.access ofs kk = some .Freeable := by
  rw [Mem.store_access hstore]
  have hb : b = m.nextblock := by
    rw [← Mem.alloc_result m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz), halloc]
  have hm' : m' = (Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz)).1 := by
    rw [halloc]
  rw [hm', hb, Mem.alloc_access, PMap.gss]
  simp [h1, h2]

/-- **`malloc` meets its specification.**  Proved from CompCert's own
    `extcall_malloc_sem`, so this costs no axioms.  The caller hands over nothing
    and receives the token and the payload; any frame `hf` is carried through,
    which is sound because the block is *fresh* and therefore owned by nobody. -/
theorem malloc_satisfies (ge : CGenv) (fe : EntryRel) (sz : Integers.Ptrofs)
    (targs : List Ty) (tres : Ty) (cc : CallConv) :
    SatisfiesAt ge fe (.External .EF_malloc targs tres cc) (mallocSpec sz)
      [Val.Vptrofs sz] := by
  intro k m hp hf hk hpre hd hag
  -- the precondition is pure, so the caller's fragment is empty
  obtain ⟨-, hemp⟩ := hpre
  subst hemp
  rw [Heap.emp_union] at hag
  obtain ⟨m', b, halloc⟩ :
      ∃ m' b, Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz) = (m', b) :=
    ⟨_, _, rfl⟩
  obtain ⟨m'', hstore⟩ := malloc_store_ok m sz
  rw [halloc] at hstore
  have hbfresh : b = m.nextblock := by
    rw [← Mem.alloc_result m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz), halloc]
  have hsznn : (0 : _root_.Int) ≤ Integers.Ptrofs.unsigned sz := by
    show (0 : _root_.Int) ≤ ((_ : Nat) : _root_.Int); omega
  have hs8 : sizeChunk Mptr = 8 := by simp [Mptr, Archi.ptr64, sizeChunk]
  -- the two produced fragments
  obtain ⟨hH, hHm⟩ :=
    bytesPtsTo_exists b .Freeable (encodeVal Mptr (Val.Vptrofs sz)) (- sizeChunk Mptr)
  obtain ⟨hP, hPm⟩ :=
    bytesPtsTo_exists b .Freeable
      (List.replicate (Integers.Ptrofs.unsigned sz).toNat MemVal.Undef) 0
  have hownH := bytesPtsTo_ownsRange b .Freeable _ _ hH hHm
  have hownP := bytesPtsTo_ownsRange b .Freeable _ _ hP hPm
  have hlenH : (encodeVal Mptr (Val.Vptrofs sz)).length = 8 := by
    rw [length_encodeVal]; simp [sizeChunkNat, hs8]
  have hlenP : (List.replicate (Integers.Ptrofs.unsigned sz).toNat MemVal.Undef).length
             = (Integers.Ptrofs.unsigned sz).toNat := by simp
  -- `hf` owns nothing in the fresh block
  have hfnone : ∀ o : _root_.Int, hf b o = none := by
    intro o; rw [hbfresh]; exact Heap.Agrees_fresh_none hag o
  -- each fragment agrees with the post-state
  have hagH : Heap.Agrees hH m'' := by
    intro bb oo c hc
    by_cases hb : bb = b
    · rw [hb] at hc ⊢
      rcases window_split (- sizeChunk Mptr) oo 8 with ⟨i, hi, hoo⟩ | hout
      · subst hoo
        rw [hownH i (by rw [hlenH]; exact hi)] at hc
        injection hc with hc; subst hc
        exact ⟨malloc_access m m' m'' sz b halloc hstore _ _ (hdr_lo i)
                 (hdr_hi _ hsznn i hi),
               malloc_access m m' m'' sz b halloc hstore _ _ (hdr_lo i)
                 (hdr_hi _ hsznn i hi),
               malloc_header_contents m' m'' sz b hstore i (by rw [hlenH]; exact hi)⟩
      · rw [bytesPtsTo_none b .Freeable _ _ hH hHm b oo
              (by rw [hlenH]; exact Or.inr hout)] at hc
        exact absurd hc (by simp)
    · rw [bytesPtsTo_none b .Freeable _ _ hH hHm bb oo (Or.inl hb)] at hc
      exact absurd hc (by simp)
  have hagP : Heap.Agrees hP m'' := by
    intro bb oo c hc
    by_cases hb : bb = b
    · rw [hb] at hc ⊢
      rcases window_split 0 oo (Integers.Ptrofs.unsigned sz).toNat with ⟨i, hi, hoo⟩ | hout
      · subst hoo
        rw [hownP i (by rw [hlenP]; exact hi)] at hc
        injection hc with hc; subst hc
        have hiS : ((i : Nat) : _root_.Int) < Integers.Ptrofs.unsigned sz :=
          toNat_lt _ hsznn i hi
        refine ⟨malloc_access m m' m'' sz b halloc hstore _ _ (pay_lo i) (pay_hi _ i hiS),
                malloc_access m m' m'' sz b halloc hstore _ _ (pay_lo i) (pay_hi _ i hiS), ?_⟩
        rw [malloc_payload_contents m m' m'' sz b halloc hstore _ (pay_nn i)]
        simp [List.getElem?_replicate, hi]
      · rw [bytesPtsTo_none b .Freeable _ _ hP hPm b oo
              (by rw [hlenP]; exact Or.inr hout)] at hc
        exact absurd hc (by simp)
    · rw [bytesPtsTo_none b .Freeable _ _ hP hPm bb oo (Or.inl hb)] at hc
      exact absurd hc (by simp)
  -- header and payload are disjoint from each other, and both from `hf`
  have hdHP : Heap.disjoint hH hP := by
    intro bb oo
    by_cases hb : bb = b
    · rw [hb]
      rcases window_split (- sizeChunk Mptr) oo 8 with ⟨i, hi, hoo⟩ | hout
      · subst hoo
        refine Or.inr (bytesPtsTo_none b .Freeable _ _ hP hPm b _ ?_)
        exact Or.inr (Or.inl (hdr_neg i hi))
      · exact Or.inl (bytesPtsTo_none b .Freeable _ _ hH hHm b oo
          (by rw [hlenH]; exact Or.inr hout))
    · exact Or.inl (bytesPtsTo_none b .Freeable _ _ hH hHm bb oo (Or.inl hb))
  have hdUf : Heap.disjoint (Heap.union hH hP) hf := by
    rw [Heap.disjoint_union_left]
    constructor
    · intro bb oo
      by_cases hb : bb = b
      · exact Or.inr (by rw [hb]; exact hfnone oo)
      · exact Or.inl (bytesPtsTo_none b .Freeable _ _ hH hHm bb oo (Or.inl hb))
    · intro bb oo
      by_cases hb : bb = b
      · exact Or.inr (by rw [hb]; exact hfnone oo)
      · exact Or.inl (bytesPtsTo_none b .Freeable _ _ hP hPm bb oo (Or.inl hb))
  -- `hf` survives the allocation and the header store
  have hagf : Heap.Agrees hf m'' := by
    refine Heap.Agrees_store_frame hstore ?_ (fun i _ => hfnone _)
    have : m' = (Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz)).1 := by
      rw [halloc]
    rw [this]; exact Heap.Agrees_alloc hag
  refine ⟨.Vptr b Integers.Ptrofs.zero, m'', Heap.union hH hP, ?_, ?_, hdUf, ?_⟩
  · exact Steps.one (Step.external_function .EF_malloc targs tres cc
      [Val.Vptrofs sz] k m (.Vptr b Integers.Ptrofs.zero) E0 m''
      (ExtcallMallocSem.intro _ sz m m' b m'' halloc hstore))
  · exact ⟨b, pure_sep_intro rfl ⟨hH, hP, hdHP, rfl,
      pure_sep_intro (by simp [Mptr, Archi.ptr64, sizeChunk, alignChunk]) hHm, hPm⟩⟩
  · exact Heap.Agrees_union (Heap.Agrees_union hagH hagP) hagf

/-! ### `free`

The interesting direction: `free` *consumes* the token and the payload.  Holding
the token is what proves the header is there, which is what lets `free` recover
the size — so the token is not bookkeeping, it is the precondition that makes the
call safe. -/

def freeSpec (b : Block) (sz : Integers.Ptrofs) : FunSpec where
  tyargs := [tptr tvoid]
  tyres := tvoid
  cc := cc_default
  pre := fun vargs => ⌜vargs = [Val.Vptr b Integers.Ptrofs.zero]⌝
                      ∗ (mallocToken b sz ∗ mallocPayload b sz)
  post := fun v => ⌜v = Val.Vundef⌝
  measure := fun _ => 0

/-- **`free` meets its specification.**  It *consumes* the token and the payload.
    Holding the token is what proves the header is present, which is what lets
    `free` recover the size — so the token is not bookkeeping, it is the
    precondition that makes the call safe.

    Written `Nat`-first: `Ptrofs.unsigned` returns `CC.Z`, so naming the size as a
    `Nat` before stating any bound is what keeps every bound below `Int`-typed and
    therefore visible to `omega`. -/
theorem free_satisfies (ge : CGenv) (fe : EntryRel) (b : Block) (sz : Integers.Ptrofs)
    (targs : List Ty) (tres : Ty) (cc : CallConv) :
    SatisfiesAt ge fe (.External .EF_free targs tres cc) (freeSpec b sz)
      [Val.Vptr b Integers.Ptrofs.zero] := by
  intro k m hp hf hk hpre hd hag
  obtain ⟨-, hres⟩ := pure_sep_elim hpre
  obtain ⟨hH, hP, hdHP, heq, hHm, hPm⟩ := hres
  subst heq
  -- ── everything numeric gets an `Int`-typed name up front ──────────────────
  obtain ⟨szN, hszN⟩ : ∃ n : Nat, Integers.Ptrofs.unsigned sz = (n : _root_.Int) :=
    ⟨sz.toNat, rfl⟩
  have hs8 : sizeChunk Mptr = 8 := by simp [Mptr, Archi.ptr64, sizeChunk]
  have hz0 : Integers.Ptrofs.unsigned Integers.Ptrofs.zero = 0 := by
    simp [Integers.Ptrofs.unsigned, Integers.Ptrofs.zero, Integers.MI.unsigned,
          Integers.MI.zero]
  have hlo : Integers.Ptrofs.unsigned Integers.Ptrofs.zero - sizeChunk Mptr
           = (-8 : _root_.Int) := by rw [hz0, hs8]; decide
  have hhi : Integers.Ptrofs.unsigned Integers.Ptrofs.zero + Integers.Ptrofs.unsigned sz
           = (szN : _root_.Int) := by rw [hz0, hszN]; simp
  -- ── the two owned ranges, in index form over `Int` ────────────────────────
  have hagHP : Heap.Agrees (Heap.union hH hP) m := Heap.Agrees_union_left hag
  have hagH : Heap.Agrees hH m := Heap.Agrees_union_left hagHP
  have hagP : Heap.Agrees hP m := Heap.Agrees_union_right hdHP hagHP
  have hownH : ∀ i : Nat, i < 8 →
      hH b ((-8 : _root_.Int) + (i : _root_.Int))
        = some ⟨.Freeable, (encodeVal Mptr (Val.Vptrofs sz))[i]!⟩ := by
    intro i hi
    have h := bytesPtsTo_ownsRange b .Freeable _ _ hH (pure_sep_elim hHm).2 i
      (by rw [length_encodeVal]; simp only [sizeChunkNat, hs8]; omega)
    rwa [hs8] at h
  -- rewrite `Ptrofs.unsigned sz` *out* of the payload predicate: carrying the
  -- bridge fact does not help, because that fact is itself `Z`-typed
  simp only [mallocPayload] at hPm
  rw [hszN] at hPm
  simp at hPm
  have hownP : ∀ i : Nat, i < szN →
      hP b ((0 : _root_.Int) + (i : _root_.Int)) = some ⟨.Freeable, MemVal.Undef⟩ := by
    intro i hi
    have h := bytesPtsTo_ownsRange b .Freeable _ _ hP hPm i (by simp; omega)
    simpa [hi] using h
  -- ── the whole block is Freeable: header range ∪ payload range ─────────────
  have hrpH : Mem.rangePerm m b (-8 : _root_.Int) 0 .Cur .Freeable = true := by
    refine Mem.rangePerm_intro _ _ _ _ _ _ (fun ofs g1 g2 => ?_)
    obtain ⟨i, hi, hoo⟩ : ∃ i : Nat, i < 8 ∧ ofs = (-8 : _root_.Int) + (i : _root_.Int) :=
      ⟨(ofs + 8).toNat, by omega, by omega⟩
    rw [hoo]
    exact Heap.Agrees_perm hagH (hownH i hi) .Cur
  have hrpP : Mem.rangePerm m b (0 : _root_.Int) (szN : _root_.Int) .Cur .Freeable = true := by
    refine Mem.rangePerm_intro _ _ _ _ _ _ (fun ofs g1 g2 => ?_)
    obtain ⟨i, hi, hoo⟩ : ∃ i : Nat, i < szN ∧ ofs = (0 : _root_.Int) + (i : _root_.Int) :=
      ⟨ofs.toNat, by omega, by omega⟩
    rw [hoo]
    exact Heap.Agrees_perm hagP (hownP i hi) .Cur
  have hrp : Mem.rangePerm m b (-8 : _root_.Int) (szN : _root_.Int) .Cur .Freeable = true :=
    Mem.rangePerm_append hrpH hrpP
  -- ── the header load and the free both succeed ─────────────────────────────
  have hload : Mem.load Mptr m b
      (Integers.Ptrofs.unsigned Integers.Ptrofs.zero - sizeChunk Mptr)
      = some (Val.Vptrofs sz) := by
    rw [hlo]
    have hl := mapsto_load (p := .Freeable) (by decide) hHm hagH
    rw [hs8] at hl
    rwa [show Val.loadResult Mptr (Val.Vptrofs sz) = Val.Vptrofs sz from by
          simp [Mptr, Archi.ptr64, Val.Vptrofs, Val.loadResult]] at hl
  have hfree : Mem.free m b
      (Integers.Ptrofs.unsigned Integers.Ptrofs.zero - sizeChunk Mptr)
      (Integers.Ptrofs.unsigned Integers.Ptrofs.zero + Integers.Ptrofs.unsigned sz)
      = some (Mem.uncheckedFree m b
        (Integers.Ptrofs.unsigned Integers.Ptrofs.zero - sizeChunk Mptr)
        (Integers.Ptrofs.unsigned Integers.Ptrofs.zero + Integers.Ptrofs.unsigned sz)) := by
    refine Mem.free_isSome ?_
    rw [hlo, hhi]; exact hrp
  -- ── the frame owns nothing in the freed range ─────────────────────────────
  have hfnone : ∀ ofs : _root_.Int, (-8 : _root_.Int) ≤ ofs → ofs < (szN : _root_.Int) →
      hf b ofs = none := by
    intro ofs g1 g2
    rcases Heap.disjoint_union_left.mp hd with ⟨hdH, hdP⟩
    by_cases hneg : ofs < 0
    · rcases hdH b ofs with hn | hn
      · obtain ⟨i, hi, hoo⟩ : ∃ i : Nat, i < 8 ∧ ofs = (-8 : _root_.Int) + (i : _root_.Int) :=
          ⟨(ofs + 8).toNat, by omega, by omega⟩
        rw [hoo, hownH i hi] at hn
        exact absurd hn (by simp)
      · exact hn
    · rcases hdP b ofs with hn | hn
      · obtain ⟨i, hi, hoo⟩ : ∃ i : Nat, i < szN ∧ ofs = (0 : _root_.Int) + (i : _root_.Int) :=
          ⟨ofs.toNat, by omega, by omega⟩
        rw [hoo, hownP i hi] at hn
        exact absurd hn (by simp)
      · exact hn
  refine ⟨.Vundef, Mem.uncheckedFree m b
      (Integers.Ptrofs.unsigned Integers.Ptrofs.zero - sizeChunk Mptr)
      (Integers.Ptrofs.unsigned Integers.Ptrofs.zero + Integers.Ptrofs.unsigned sz),
    Heap.emp, ?_, ⟨rfl, rfl⟩, Heap.disjoint_emp_left hf, ?_⟩
  · exact Steps.one (Step.external_function .EF_free targs tres cc
      [Val.Vptr b Integers.Ptrofs.zero] k m .Vundef E0 _
      (ExtcallFreeSem.ptr ge.genv_genv.toSenv b Integers.Ptrofs.zero sz m _ hload hfree))
  · rw [Heap.emp_union, Mem.free_result hfree]
    refine Heap.Agrees_free_frame (Heap.Agrees_union_right hd hag) (fun ofs g1 g2 => ?_)
    · rw [hlo] at g1
      rw [hhi] at g2
      exact hfnone ofs g1 g2

/-! ## `memcpy`

The one library external zlib actually calls (`Sbuiltin` is 0 in the whole
round-trip set, so `memcpy` arrives as an ordinary `Scall` to
`EF_memcpy sz al`).  `Events.ExtcallMemcpySem` is a *real* inductive relation, so
this needs no new axiom — the same situation as `malloc`/`free`.

The pleasant part: `ExtcallMemcpySem` demands that source and destination be
non-overlapping, and a precondition that owns them *separately* already says so.
`Heap.disjoint_ranges_nonoverlap` extracts it, so the caller never proves
non-overlap by hand.  Alignment is *not* implied by ownership and stays a
hypothesis. -/

-- fresh-binder bridges: `ExtcallMemcpySem`'s numeric premises sit at `CC.Z`,
-- where `omega` is blind (the standing hazard)
private theorem cast_nonneg (n : Nat) : (0 : _root_.Int) ≤ ((n : Nat) : _root_.Int) := by omega
private theorem pos_of_cast_pos (n : Nat) (h : (0 : _root_.Int) < ((n : Nat) : _root_.Int)) :
    0 < n := by omega

/-- `memcpy`'s specification: the source is read, the destination is overwritten
    with it, and both are handed back.  `old` is whatever the destination held
    before — its *length* is what the caller must match.

    Note the alignment parameter `al` is deliberately **absent**: it constrains
    the call, not the resource, so it lives in the call site's `EF_memcpy sz al`
    and in `memcpy_satisfies`'s hypotheses. -/
def memcpySpec (bsrc : Block) (osrc : Integers.Ptrofs) (psrc : Permission)
    (bdst : Block) (odst : Integers.Ptrofs) (pdst : Permission)
    (src old : List MemVal) : FunSpec where
  tyargs := [tptr tvoid, tptr tvoid]
  tyres := tvoid
  cc := cc_default
  pre := fun vargs =>
    ⌜vargs = [Val.Vptr bdst odst, Val.Vptr bsrc osrc]⌝
    ∗ (bytesPtsTo bsrc psrc (Integers.Ptrofs.unsigned osrc) src
        ∗ bytesPtsTo bdst pdst (Integers.Ptrofs.unsigned odst) old)
  post := fun v =>
    ⌜v = Val.Vundef⌝
    ∗ (bytesPtsTo bsrc psrc (Integers.Ptrofs.unsigned osrc) src
        ∗ bytesPtsTo bdst pdst (Integers.Ptrofs.unsigned odst) src)
  measure := fun _ => 0

/-- **`memcpy` meets its specification.**  Non-overlap comes from the `∗` in the
    precondition; only the alignment conditions are hypotheses, because ownership
    says nothing about alignment. -/
theorem memcpy_satisfies (ge : CGenv) (fe : EntryRel) (al : Z)
    (bsrc : Block) (osrc : Integers.Ptrofs) (psrc : Permission)
    (bdst : Block) (odst : Integers.Ptrofs) (pdst : Permission)
    (src old : List MemVal)
    (targs : List Ty) (tres : Ty) (cc : CallConv)
    (hpr : permOrder psrc .Readable = true)
    (hpw : permOrder pdst .Writable = true)
    (hlen : old.length = src.length)
    (hal : al = 1 ∨ al = 2 ∨ al = 4 ∨ al = 8)
    (hszal : ((src.length : Nat) : _root_.Int) % al = 0)
    (halsrc : 0 < src.length → Integers.Ptrofs.unsigned osrc % al = 0)
    (haldst : 0 < src.length → Integers.Ptrofs.unsigned odst % al = 0) :
    SatisfiesAt ge fe
      (.External (.EF_memcpy ((src.length : Nat) : _root_.Int) al) targs tres cc)
      (memcpySpec bsrc osrc psrc bdst odst pdst src old)
      [Val.Vptr bdst odst, Val.Vptr bsrc osrc] := by
  intro k m hp hf hk hpre hd hag
  obtain ⟨-, hres⟩ := pure_sep_elim hpre
  obtain ⟨h1, h2, hd12, heq, hsrcm, hdstm⟩ := hres
  subst heq
  -- ── rearrange so the *destination* is the operated-on fragment ────────────
  rw [Heap.disjoint_union_left] at hd
  have hd2f : Heap.disjoint h2 (Heap.union h1 hf) := by
    rw [Heap.disjoint_union_right]; exact ⟨Heap.disjoint_comm hd12, hd.2⟩
  have hag2 : Heap.Agrees (Heap.union h2 (Heap.union h1 hf)) m := by
    rw [← Heap.union_left_comm hd12, ← Heap.union_assoc]; exact hag
  have hag1 : Heap.Agrees h1 m := Heap.Agrees_union_left (Heap.Agrees_union_left hag)
  -- ── the load, the store, and non-overlap ─────────────────────────────────
  have hload := bytesPtsTo_loadbytes hpr hsrcm hag1
  obtain ⟨m', h2', hstore, h2'm, hd2'f, hag2'⟩ :=
    bytesPtsTo_storebytes hpw hlen.symm hdstm hd2f hag2
  -- non-overlap is *not* a hypothesis: the `∗` in the precondition already
  -- separated the two windows, and `disjoint_ranges_nonoverlap` reads it off
  have hno : bsrc ≠ bdst
             ∨ Integers.Ptrofs.unsigned osrc = Integers.Ptrofs.unsigned odst
             ∨ Integers.Ptrofs.unsigned osrc + ((src.length : Nat) : _root_.Int)
                 ≤ Integers.Ptrofs.unsigned odst
             ∨ Integers.Ptrofs.unsigned odst + ((src.length : Nat) : _root_.Int)
                 ≤ Integers.Ptrofs.unsigned osrc := by
    by_cases hb : bsrc = bdst
    · subst hb
      rcases Heap.disjoint_ranges_nonoverlap hd12 rfl hlen
          (bytesPtsTo_ownsRange _ psrc src _ h1 hsrcm)
          (bytesPtsTo_ownsRange _ pdst old _ h2 hdstm) with hx | hx
      · exact Or.inr (Or.inr (Or.inl hx))
      · exact Or.inr (Or.inr (Or.inr hx))
    · exact Or.inl hb
  -- ── put the two fragments back together ──────────────────────────────────
  rw [Heap.disjoint_union_right] at hd2'f
  have hd12' : Heap.disjoint h1 h2' := Heap.disjoint_comm hd2'f.1
  refine ⟨Val.Vundef, m', Heap.union h1 h2', ?_,
          pure_sep_intro rfl ⟨h1, h2', hd12', rfl, hsrcm, h2'm⟩,
          ?_, ?_⟩
  · refine Steps.one (Step.external_function
      (.EF_memcpy ((src.length : Nat) : _root_.Int) al) targs tres cc
      [Val.Vptr bdst odst, Val.Vptr bsrc osrc] k m .Vundef E0 m' ?_)
    exact ExtcallMemcpySem.intro ge.genv_genv.toSenv bdst odst bsrc osrc m src m'
      hal (cast_nonneg _) hszal
      (fun h => halsrc (pos_of_cast_pos _ h)) (fun h => haldst (pos_of_cast_pos _ h))
      hno hload hstore
  · rw [Heap.disjoint_union_left]; exact ⟨hd.1, hd2'f.2⟩
  · rw [Heap.union_assoc, Heap.union_left_comm hd12']
    exact hag2'

end Sep
end CC
