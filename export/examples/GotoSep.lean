/-
  **Phase-9 Wave-E item 4 — the forward-`goto` rules, exercised end to end.**

  `test/lean/gotoleave.c` is `inflate`'s control shape:

      unsigned int leave_loop(unsigned int n) {
          unsigned int acc = 0;
          while (1) {
              if (n == 0) goto done;
              acc += n;
              n--;
          }
        done:
          return acc;
      }

  A loop whose only exit is a jump to one cleanup label at the **top level of the
  function body**, after the loop.  That is exactly how `inflate` leaves: 19
  `goto inf_leave` in the C source (37 in Clight, the `NEEDBITS`/`PULLBYTE` macros
  each carrying one), one label at `inflate.c:1131`.

  Proved here, on the `n = 0` path (one concrete path end to end, so the
  arithmetic stays out of the way of the control flow):

  * `label_resolves` — the label resolves at **any** continuation, by `rfl`.  This
    is `satisfies_internal_goto`'s `hfind`, and the fact that it is `rfl` is what
    makes top-level labels cheap.
  * `goto_escapes_loop` — a `Sgoto` nested inside `if` inside `Sloop` inside
    `Ssequence` surfaces as a body-level `Goto` outcome.  This is the one thing
    the `Outcome` refactor had to get right: every structural rule passes a `Goto`
    through untouched, because `gotoTarget` ignores the `Kseq`/`Kloop1`/`Kloop2`/
    `Kswitch` frames those rules push.
  * `leave_loop_satisfies` — the whole function meets a `FunSpec`, via
    `Sep.satisfies_internal_goto`.  So a jump-carrying function is callable
    through `Sep.triple_call` like any other.
-/
import GenGotoLeave
import CCLib
open CC CC.Sep CC.HProp
open Gotoleave   -- the generated module lives in its own namespace

namespace GotoSep

/-! ## The AST, and the label -/

/-- The `rfl` guard: the generated body is the shape the proof assumes. -/
theorem body_shape :
    f_leave_loop.fn_body
      = .Ssequence
          (.Sset _acc (.Econst_int (Integers.Int.repr 0) tint))
          (.Ssequence
            (.Sloop
              (.Ssequence .Sskip
                (.Ssequence
                  (.Sifthenelse
                    (.Ebinop .Oeq (.Etempvar _n tuint)
                      (.Econst_int (Integers.Int.repr 0) tint) tint)
                    (.Sgoto _done) .Sskip)
                  (.Ssequence
                    (.Sset _acc (.Ebinop .Oadd (.Etempvar _acc tuint)
                      (.Etempvar _n tuint) tuint))
                    (.Sset _n (.Ebinop .Osub (.Etempvar _n tuint)
                      (.Econst_int (Integers.Int.repr 1) tint) tuint)))))
              .Sskip)
            (.Slabel _done (.Sreturn (some (.Etempvar _acc tuint))))) := rfl

/-- **The label resolves at any continuation, by `rfl`.**  `_done` sits at the
    top level of the body, so `findLabel` returns the tail with the continuation
    *unchanged* — which is precisely the `hfind` shape
    `Sep.satisfies_internal_goto` asks for, and why a top-level cleanup label
    costs nothing to resolve. -/
theorem label_resolves : ∀ kk : Cont,
    findLabel _done f_leave_loop.fn_body kk
      = some (.Sreturn (some (.Etempvar _acc tuint)), id kk) := by
  intro kk; rfl

/-! ## The `n = 0` path

`n == 0` is true on the first iteration, so the body immediately jumps.  Nothing
here touches memory, so every assertion is heap-`emp`. -/

/-- Right after entry: the parameter `n` is bound, but `acc` is still undefined —
    the body's first statement is what sets it. -/
def Pre0 : Sep.Assn := fun e le hp =>
  e = emptyEnv
  ∧ le.get _n = some (.Vint (Integers.Int.repr 0)) ∧ hp = Heap.emp

/-- The state before the loop: `acc = 0`, `n = 0`. -/
def Pre : Sep.Assn := fun e le hp =>
  e = emptyEnv
  ∧ le.get _n = some (.Vint (Integers.Int.repr 0))
  ∧ le.get _acc = some (.Vint (Integers.Int.repr 0))
  ∧ hp = Heap.emp

/-- `n == 0` evaluates to true when `n` holds 0. -/
theorem cond_true {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    (hn : le.get _n = some (.Vint (Integers.Int.repr 0))) :
    ∃ v, EvalExpr ge e le m
          (.Ebinop .Oeq (.Etempvar _n tuint)
            (.Econst_int (Integers.Int.repr 0) tint) tint) v
      ∧ Cop.boolVal v tint m = some true := by
  refine ⟨.Vint (Integers.Int.repr 1), ?_, rfl⟩
  exact EvalExpr.Ebinop .Oeq _ _ _ _ _ _
    (EvalExpr.Etempvar _n tuint _ hn)
    (EvalExpr.Econst_int (Integers.Int.repr 0) tint)
    rfl

/-- **The jump escapes the loop.**  A `Sgoto` under `if` under `Sloop` under
    `Ssequence` reaches the body level as a `Goto _done` outcome, carrying the
    temporaries — the composition the `Outcome` refactor exists to make work. -/
theorem goto_escapes_loop (ge : CGenv) (fe : EntryRel) (Ret : Val → HProp) :
    Triple ge fe f_leave_loop Pre
      (.Sloop
        (.Ssequence .Sskip
          (.Ssequence
            (.Sifthenelse
              (.Ebinop .Oeq (.Etempvar _n tuint)
                (.Econst_int (Integers.Int.repr 0) tint) tint)
              (.Sgoto _done) .Sskip)
            (.Ssequence
              (.Sset _acc (.Ebinop .Oadd (.Etempvar _acc tuint)
                (.Etempvar _n tuint) tuint))
              (.Sset _n (.Ebinop .Osub (.Etempvar _n tuint)
                (.Econst_int (Integers.Int.repr 1) tint) tuint)))))
        .Sskip)
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := Ret,
        goto := fun l => if l = _done then Pre else Assn.no } := by
  -- one iteration suffices: the measure never has to decrease, because the body
  -- exits by jumping rather than by falling through
  refine triple_loop ge fe f_leave_loop
    { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := Ret,
      goto := fun l => if l = _done then Pre else Assn.no }
    (fun _ => Pre) (fun _ => Assn.no) _ _ ?_ ?_ 0
  · -- the body: skip, then the `if` that jumps
    intro _
    refine triple_seq ge fe f_leave_loop Pre Pre _ _ _ ?_ ?_
    · exact triple_conseq ge fe f_leave_loop (triple_skip ge fe f_leave_loop Pre)
        (fun _ _ _ h => h) (fun _ _ _ h => h) (fun _ _ _ h => h.elim)
        (fun _ _ _ h => h.elim) (fun _ _ h => h.elim)
    · refine triple_seq ge fe f_leave_loop Pre Assn.no _ _ _ ?_ ?_
      · -- the `if` takes the true branch and jumps
        refine triple_if_true ge fe f_leave_loop Pre _ _ _ _ ?_ ?_
        · intro e le hp m hP _
          exact cond_true hP.2.1
        · -- `goto _done`
          refine triple_conseq ge fe f_leave_loop
            (triple_goto ge fe f_leave_loop Pre _done
              (fun kk => ⟨_, kk, label_resolves kk⟩))
            (fun _ _ _ h => h) (fun _ _ _ h => h.elim) (fun _ _ _ h => h.elim)
            (fun _ _ _ h => h.elim) (fun _ _ h => h.elim) ?_
          intro lbl e le hp h
          exact h
      · exact triple_vacuous ge fe f_leave_loop _ _
  · -- the increment `Sskip` is never reached, since the body never falls through
    intro _
    exact triple_vacuous ge fe f_leave_loop _ _

/-! ## The whole function meets a spec -/

/-- `leave_loop 0` returns 0, owning nothing. -/
def leaveSpec : FunSpec :=
  { tyargs := [tuint], tyres := tuint, cc := cc_default,
    pre := fun vargs hp =>
      vargs = [.Vint (Integers.Int.repr 0)] ∧ hp = Heap.emp,
    post := fun v hp => v = .Vint (Integers.Int.repr 0) ∧ hp = Heap.emp,
    measure := fun _ => 0 }

/-- The body, from the post-entry state: set `acc := 0`, then the loop that
    jumps out, then the (unreachable) fall-through past it. -/
theorem body_triple (ge : CGenv) :
    Triple ge (FunctionEntry2 ge) f_leave_loop Pre0 f_leave_loop.fn_body
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := leaveSpec.post,
        goto := fun l => if l = _done then Pre else Assn.no } := by
  rw [body_shape]
  refine triple_seq ge (FunctionEntry2 ge) f_leave_loop Pre0 Pre _ _ _ ?_ ?_
  · -- `acc = 0`
    refine triple_conseq ge (FunctionEntry2 ge) f_leave_loop
      (P := Pre0) (P' := Pre0)
      (triple_set ge (FunctionEntry2 ge) f_leave_loop Pre0 Pre _acc _ ?_)
      (fun _ _ _ h => h) (fun _ _ _ h => h) (fun _ _ _ h => h.elim)
      (fun _ _ _ h => h.elim) (fun _ _ h => h.elim)
    intro e le hp m hP _
    refine ⟨.Vint (Integers.Int.repr 0), EvalExpr.Econst_int _ _, ?_, ?_, ?_, ?_⟩
    · exact hP.1
    · rw [PTree.gso _ _ _ _ (by decide)]; exact hP.2.1
    · exact PTree.gss _ _ _
    · exact hP.2.2
  · -- the loop that jumps, then the unreachable tail
    refine triple_seq ge (FunctionEntry2 ge) f_leave_loop Pre Assn.no _ _ _ ?_ ?_
    · exact goto_escapes_loop ge (FunctionEntry2 ge) leaveSpec.post
    · exact triple_vacuous ge (FunctionEntry2 ge) f_leave_loop _ _

/-- The jump target: `return acc`, with `acc = 0`.  No `fn_vars`, so the return
    frees nothing. -/
theorem target_triple (ge : CGenv) :
    Triple ge (FunctionEntry2 ge) f_leave_loop Pre
      (.Sreturn (some (.Etempvar _acc tuint)))
      { normal := Assn.no, brk := Assn.no, cont := Assn.no,
        ret := leaveSpec.post } := by
  refine triple_return ge (FunctionEntry2 ge) f_leave_loop Pre _ _ ?_
  intro e le hp m hP _
  refine ⟨.Vint (Integers.Int.repr 0), .Vint (Integers.Int.repr 0), m, hp,
          EvalExpr.Etempvar _acc tuint _ hP.2.2.1, rfl, ?_, ⟨rfl, hP.2.2.2⟩,
          fun hfr hdd hagg => ⟨hdd, hagg⟩⟩
  rw [hP.1]
  exact freeList_emptyEnv ge.genv_cenv m

/-- **The milestone**: a function whose body leaves through a `goto` meets a
    `FunSpec`, so it is callable through `Sep.triple_call` and the frame rule
    applies to it — via `Sep.satisfies_internal_goto`, the rule that resolves the
    label at the level where `callCont k = k`. -/
theorem leave_loop_satisfies (ge : CGenv) :
    SatisfiesAt ge (FunctionEntry2 ge) (.Internal f_leave_loop) leaveSpec
      [.Vint (Integers.Int.repr 0)] := by
  refine satisfies_internal_goto ge (FunctionEntry2 ge) f_leave_loop leaveSpec
    [.Vint (Integers.Int.repr 0)] Pre0 Pre _done
    (.Sreturn (some (.Etempvar _acc tuint))) id ?_ (body_triple ge) label_resolves
    (fun _ => rfl) (target_triple ge)
  -- entry: no `fn_vars`, so memory and fragment are unchanged
  intro m hp hf hpre hd hag
  refine ⟨emptyEnv,
          (createUndefTemps f_leave_loop.fn_temps).set _n (.Vint (Integers.Int.repr 0)),
          m, Heap.emp, ?_, ?_, ?_, ?_⟩
  · exact FunctionEntry2.intro (by decide) (by decide) (by decide)
      (AllocVariables.nil _ _) rfl
  · rw [Heap.union_emp]; exact hd
  · rw [Heap.union_emp]; exact hag
  · exact ⟨rfl, PTree.gss _ _ _, by rw [Heap.union_emp]; exact hpre.2⟩

end GotoSep
