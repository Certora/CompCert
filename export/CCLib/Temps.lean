/-
  **Local state as a tracked list of temporaries** (Phase-9 Step 10).

  ## The problem this solves

  In `IsSortedSep`/`SwapSep`/`ZAdler32` the local state was a hand-written
  conjunction, one `le.get id = some v` per tracked temporary, so every `Sset`
  proof re-established each conjunct with its own `PTree.gso` and its own named
  disequality:

      exact ⟨he, (PTree.gso _ _ _ _ hd.adler_buf).trans hbuf,
             (PTree.gso _ _ _ _ hd.adler_len).trans hlen, PTree.gss _ _ _, …⟩

  That is `O(#tracked temps)` lines *per statement*, and the Step-0 calibration
  measured it as the bulk of a real zlib function proof — `adler32_z` alone has
  40 `_t'n` temporaries from `-normalize`.

  ## The fix

  Two changes, and the second is what makes the first cheap:

  1. Structure the state as `TempsHold : List (Ident × Val) → TempEnv → Prop`.
     One frame lemma (`TempsHold_set`) then re-establishes the *whole* list
     across a `PTree.set`, so a statement costs `O(1)` proof lines instead of
     `O(N)`.  Temporaries not yet assigned are simply absent from the list —
     which also removes the `Option`-slot case splits the old style needed.

  2. `identOfString` is kernel-reducible (see `CCLib.Positive`), so the frame
     lemma's side condition — `∀ p ∈ l, p.1 ≠ id`, a single goal over a concrete
     list — is discharged by plain `decide`.  Before that change it needed
     `native_decide`, which is why the old code carried hand-listed `Distinct`
     structures instead.
-/
import CCLib.SepHoare
import CCLib.HoareArray

namespace CC.Sep
open CC.HProp

/-! ## The tracked list -/

/-- `le` binds each listed identifier to its listed value.  Deliberately
    order-insensitive (a `∀ … ∈ …`, not a nested conjunction) so that reordering
    the list is free and so that the frame lemma below needs no permutation
    reasoning. -/
def TempsHold (l : List (Ident × Val)) (le : TempEnv) : Prop :=
  ∀ p ∈ l, le.get p.1 = some p.2

@[simp] theorem TempsHold_nil (le : TempEnv) : TempsHold [] le := by
  intro p hp; simp at hp

theorem TempsHold_cons {id : Ident} {v : Val} {l : List (Ident × Val)} {le : TempEnv}
    (h1 : le.get id = some v) (h2 : TempsHold l le) : TempsHold ((id, v) :: l) le := by
  intro p hp
  rcases List.mem_cons.mp hp with h | h
  · subst h; exact h1
  · exact h2 p h

/-- Read one binding back out.  Over a concrete list the membership proof is
    `by simp`. -/
theorem TempsHold.get {l : List (Ident × Val)} {le : TempEnv} (h : TempsHold l le)
    {id : Ident} {v : Val} (hm : (id, v) ∈ l) : le.get id = some v :=
  h (id, v) hm

/-- Weakening: a sub-list is still held.  This is what makes the tracked list
    *order-insensitive and shrinkable* — needed because assigning to an already
    tracked identifier must **drop** its stale entry (two entries for one
    identifier at different values is unsatisfiable).  Over concrete lists the
    hypothesis is closed by `simp`: the entries are syntactically identical, so
    nothing has to be decided. -/
theorem TempsHold_mono {l l' : List (Ident × Val)} {le : TempEnv}
    (hsub : ∀ p ∈ l', p ∈ l) (h : TempsHold l le) : TempsHold l' le :=
  fun p hp => h p (hsub p hp)

/-- **The frame lemma for temporaries.**  Assigning to an identifier the tracked
    list does not mention leaves the whole list intact — one lemma, one side
    condition, regardless of how many temporaries are tracked. -/
theorem TempsHold_frame {l : List (Ident × Val)} {le : TempEnv} {id : Ident} {v : Val}
    (hne : ∀ p ∈ l, p.1 ≠ id) (h : TempsHold l le) : TempsHold l (le.set id v) := by
  intro p hp
  rw [PTree.gso id p.1 v le (Ne.symm (hne p hp))]
  exact h p hp

/-- …and the forward step: after the assignment the new binding heads the list. -/
theorem TempsHold_set {l : List (Ident × Val)} {le : TempEnv} {id : Ident} {v : Val}
    (hne : ∀ p ∈ l, p.1 ≠ id) (h : TempsHold l le) :
    TempsHold ((id, v) :: l) (le.set id v) :=
  TempsHold_cons (PTree.gss _ _ _) (TempsHold_frame hne h)

/-! ## The canonical assertion shape

Every Clight function proof wants the same three things: which block-scoped
environment it is in, what its live temporaries are, and what it owns. -/

/-- `LocalSt E l H`: environment `E`, tracked temporaries `l`, heap fragment
    satisfying `H`. -/
def LocalSt (E : Env) (l : List (Ident × Val)) (H : HProp) : Assn :=
  fun e le hp => e = E ∧ TempsHold l le ∧ H hp

theorem LocalSt.intro {E : Env} {l : List (Ident × Val)} {H : HProp}
    {le : TempEnv} {hp : Heap} (hT : TempsHold l le) (hH : H hp) :
    LocalSt E l H E le hp := ⟨rfl, hT, hH⟩

/-! ## Forward rules

Each takes the tracked list, produces the updated one, and leaves exactly one
interesting obligation (evaluate an expression) plus one `decide`-able one. -/

/-- `id = a;` — the whole `PTree.gso` chain collapses into `hne`.

    `l₀` is what the precondition tracks; `l` is `l₀` with `id`'s stale entry (if
    any) dropped, which `hsub` checks.  Both side conditions are one-liners over
    concrete lists: `hsub` by `simp`, `hne` by `decide`. -/
theorem triple_set_local (ge fe f) (E : Env) (l₀ l : List (Ident × Val)) (H : HProp)
    (id : Ident) (a : Expr) (v : Val)
    (hsub : ∀ p ∈ l, p ∈ l₀)
    (hne : ∀ p ∈ l, p.1 ≠ id)
    (hev : ∀ le m hp, TempsHold l₀ le → H hp → Heap.Agrees hp m →
             EvalExpr ge E le m a v) :
    Triple ge fe f (LocalSt E l₀ H) (.Sset id a)
      (.only (LocalSt E ((id, v) :: l) H)) := by
  refine triple_set ge fe f _ _ _ _ (fun e le hp m hP hag => ?_)
  obtain ⟨he, hT, hH⟩ := hP
  subst he
  exact ⟨v, hev le m hp hT hH hag, rfl,
         TempsHold_set hne (TempsHold_mono hsub hT), hH⟩

/-- `if (a) … else …` where the guard's value is *known*.  Instantiating `bb` at
    `true`/`false` reduces the `if`, so this subsumes
    `triple_if_true`/`triple_if_false` without duplicating them. -/
theorem triple_if_local (ge fe f) (E : Env) (l : List (Ident × Val)) (H : HProp)
    (a : Expr) (bb : Bool) (s1 s2 : Stmt) (R : ExitConds)
    (hev : ∀ le m hp, TempsHold l le → H hp → Heap.Agrees hp m →
             ∃ v, EvalExpr ge E le m a v ∧ Cop.boolVal v (typeof a) m = some bb)
    (h : Triple ge fe f (LocalSt E l H) (if bb then s1 else s2) R) :
    Triple ge fe f (LocalSt E l H) (.Sifthenelse a s1 s2) R := by
  cases bb with
  | true =>
      refine triple_if_true ge fe f _ R a s1 s2 (fun e le hp m hP hag => ?_) (by simpa using h)
      obtain ⟨he, hT, hH⟩ := hP
      subst he
      exact hev le m hp hT hH hag
  | false =>
      refine triple_if_false ge fe f _ R a s1 s2 (fun e le hp m hP hag => ?_) (by simpa using h)
      obtain ⟨he, hT, hH⟩ := hP
      subst he
      exact hev le m hp hT hH hag

/-- `return a;` for a function with no block-scoped variables (`fn_vars = []`),
    which is every function in the zlib round-trip set. -/
theorem triple_return_local (ge fe f) (l : List (Ident × Val)) (H : HProp)
    (a : Expr) (Ret : Val → HProp) (v v' : Val)
    (hev : ∀ le m hp, TempsHold l le → H hp → Heap.Agrees hp m →
             EvalExpr ge emptyEnv le m a v)
    (hcast : ∀ m : Mem, Cop.semCast v (typeof a) f.fn_return m = some v')
    (hret : ∀ hp, H hp → Ret v' hp) :
    Triple ge fe f (LocalSt emptyEnv l H) (.Sreturn (some a))
      { normal := Assn.no, brk := Assn.no, cont := Assn.no, ret := Ret } := by
  refine triple_return ge fe f _ _ _ (fun e le hp m hP hag => ?_)
  obtain ⟨he, hT, hH⟩ := hP
  subst he
  exact ⟨v, v', m, hp, hev le m hp hT hH hag, hcast m,
         freeList_emptyEnv _ _, hret hp hH, fun _ hd hag' => ⟨hd, hag'⟩⟩

/-! ## Chaining

`triple_seq` wants the first statement's triple to carry the *outer* exit
conditions, but every forward rule above produces `.only`.  `triple_seq_fwd`
does that weakening, so a straight-line block is a chain of `triple_seq_fwd`
with no plumbing in between. -/

theorem triple_weaken_only (ge fe f) {P Q : Assn} {s : Stmt} {R : ExitConds}
    (h : Triple ge fe f P s (.only Q)) :
    Triple ge fe f P s { R with normal := Q } :=
  triple_fallthrough ge fe f P Q s _ h (fun _ _ _ x => x)

theorem triple_seq_fwd (ge fe f) (P Q : Assn) (R : ExitConds) (s1 s2 : Stmt)
    (h1 : Triple ge fe f P s1 (.only Q)) (h2 : Triple ge fe f Q s2 R) :
    Triple ge fe f P (.Ssequence s1 s2) R :=
  triple_seq ge fe f P Q R s1 s2 (triple_weaken_only ge fe f h1) h2

/-! ## Tactics

**Usage constraint:** a named tracked list must be an `abbrev`, not a `def`.
Both tactics below work on the list's *structure* (`simp`/`decide` over the
conses), so an irreducible name blocks them.  `TempsCheck.lean` pins this. -/

/-- Discharges `∀ p ∈ l, p.1 ≠ id` for a concrete tracked list.

    `decide` cannot see the goal directly — the tracked *values* mention free
    variables and `decide` rejects goals with those — so `simp only
    [List.forall_mem_cons]` first splits the list into a closed conjunction of
    identifier disequalities, which one `decide` then settles.  That last step is
    kernel work only because `identOfString` was made reducible
    (`CCLib.Positive`); it used to need `native_decide` per pair. -/
macro "temps_ne" : tactic =>
  `(tactic| first
      | decide
      | (simp only [List.forall_mem_cons]; decide)
      | assumption)

/-- Discharges `(id, v) ∈ l` when reading a tracked temporary back out, and
    `∀ p ∈ l, p ∈ l₀` when dropping a stale entry.  Plain `simp`: the entries are
    syntactically identical, so no equality has to be *decided*. -/
macro "temps_mem" : tactic =>
  `(tactic| first
      | (intro _ hq; exact List.mem_cons_of_mem _ hq)
      | (simp; done)
      | simp
      | decide
      | assumption)

end CC.Sep
