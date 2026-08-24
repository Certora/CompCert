/-
  **The Phase-7.7 milestone**: `is_sorted` re-proved with the *separation* logic.

  Same theorem as `IsSortedReal.lean`, but the array is now an owned resource
  (`arrayU32`) rather than a predicate about one fixed memory, so the frame rule
  applies: this proof says what `is_sorted` does to the part of memory it owns and
  says nothing about the rest, which is what makes it composable with a caller.

  The Clight AST, `body_eq` (the `rfl` guard that the transcription still matches
  `GenMain`), and the identifier-distinctness facts are reused from
  `IsSortedReal.lean` — the statement of the program has not changed, only the
  logic used to reason about it.

  `is_sorted` never writes memory, so the heap fragment is constant throughout.
  That keeps the port largely mechanical; a function that mutates would exercise
  `triple_assign`/`mapsto_store` here.
-/
import IsSortedReal
open CC CC.Sep CC.HProp IsSortedReal
open Main   -- the generated module now lives in its own namespace

namespace IsSortedSep

/-! ## Assertions -/

/-- Local state: no block-scoped variables, the live temporaries known, and the
    array owned at permission `p`.  `t1`/`t2` record the scratch temporaries as
    far as execution has set them. -/
def St (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L iv : Nat)
    (n : Nat) (f : Nat → Integers.Int)
    (t1 t2 : Option Integers.Int) : Sep.Assn := fun e le hp =>
  e = emptyEnv
  ∧ le.get _numbers = some (.Vptr b ofs0)
  ∧ le.get _len = some (.Vint (Integers.Int.repr L))
  ∧ le.get _i = some (.Vint (Integers.Int.repr iv))
  ∧ (match t1 with | none => True | some x => le.get _t'1 = some (.Vint x))
  ∧ (match t2 with | none => True | some x => le.get _t'2 = some (.Vint x))
  ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) n f hp

/-- Loop invariant at measure `k`: `k` iterations left, `i` in `[1, L]`. -/
def LInv (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L : Nat) (n : Nat) (f : Nat → Integers.Int) (k : Nat) : Sep.Assn :=
  fun e le hp => ∃ iv : Nat, St p b ofs0 L iv n f none none e le hp
                             ∧ 1 ≤ iv ∧ iv ≤ L ∧ L - iv = k

/-- Mid-loop: the guard passed, so `i < L`. -/
def LMid (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L : Nat) (n : Nat) (f : Nat → Integers.Int) (k : Nat) : Sep.Assn :=
  fun e le hp => ∃ iv : Nat, St p b ofs0 L iv n f none none e le hp
                             ∧ 1 ≤ iv ∧ iv < L ∧ L - iv = k

/-- Mid-body at a *named* index, with the scratch temporaries as far as set. -/
def AtIv (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L iv : Nat) (n : Nat) (f : Nat → Integers.Int) (k : Nat)
    (t1 t2 : Option Integers.Int) : Sep.Assn :=
  fun e le hp => St p b ofs0 L iv n f t1 t2 e le hp ∧ 1 ≤ iv ∧ iv < L ∧ L - iv = k

/-- After the loop: the array is handed back, nothing else is claimed. -/
def Done (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (n : Nat) (f : Nat → Integers.Int) : Sep.Assn :=
  fun e _ hp => e = emptyEnv ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) n f hp

/-- The function returns `1`, handing the array back. -/
def RetOne (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (n : Nat) (f : Nat → Integers.Int) : Val → HProp :=
  fun v hp => v = .Vint (Integers.Int.repr 1)
              ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) n f hp

def LoopR (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (n : Nat) (f : Nat → Integers.Int) : Sep.ExitConds :=
  { normal := Done p b ofs0 n f, brk := Sep.Assn.no, cont := Sep.Assn.no,
    ret := RetOne p b ofs0 n f }

def BodyR (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L n : Nat) (f : Nat → Integers.Int) (k : Nat) : Sep.ExitConds :=
  { normal := LMid p b ofs0 L n f k, brk := Done p b ofs0 n f, cont := Sep.Assn.no,
    ret := RetOne p b ofs0 n f }

/-! ## Reading an array element

The one genuinely new step: `numbers[i]` is now read out of an *owned* array via
`eval_index_array`, which needs the `elemOfs` bridge and hence a no-overflow
bound on the array's extent. -/

theorem read_elem (ge : CGenv) (e : Env) (le : TempEnv) (m : Mem)
    (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (n : Nat)
    (f : Nat → Integers.Int) (hp : Heap)
    (hpr : permOrder p .Readable = true)
    (harr : arrayU32 p b (Integers.Ptrofs.unsigned ofs0) n f hp)
    (hag : Heap.Agrees hp m)
    (hnum : le.get _numbers = some (.Vptr b ofs0))
    (idx : Expr) (hty : typeof idx = tint) (i : Nat) (hi : i < n)
    (hidx : EvalExpr ge e le m idx (.Vint (Integers.Int.repr i)))
    (hlt31 : (i : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (i : _root_.Int) < 18446744073709551616) :
    EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd (.Etempvar _numbers (tptr tuint)) idx (tptr tuint)) tuint)
      (.Vint (f i)) :=
  eval_index_array hpr harr hag hi (EvalExpr.Etempvar _numbers (tptr tuint) _ hnum)
    hidx rfl hty (elemOfs_unsigned ge.genv_cenv ofs0 i hlt31 hno)


/-! ## The proof

Structured exactly as the non-separating version in `IsSortedReal.lean`; what
changed is that every assertion now *owns* the array instead of talking about a
fixed memory. -/

-- Arithmetic side conditions over fresh `_root_.Int`/`Nat` binders.  The goals
-- themselves sit at `CC.Z` (`Ptrofs.unsigned` returns `Z`), where `omega` is
-- blind; `exact` bridges the two by definitional equality.
private theorem no_ovf_mono (A : _root_.Int) (i l : Nat) (hil : i ≤ l)
    (h : A + 4 * (l : _root_.Int) < 18446744073709551616) :
    A + 4 * (i : _root_.Int) < 18446744073709551616 := by omega

private theorem cast_sub_one (i : Nat) (h : 1 ≤ i) :
    ((i : _root_.Int)) - 1 = ((i - 1 : Nat) : _root_.Int) := by omega

section
variable (ge : CGenv) (fe : EntryRel) (p : Permission) (b : Block)
variable (ofs0 : Integers.Ptrofs) (L : Nat) (f : Nat → Integers.Int)

/-- `i < len` is true, because `k+1` iterations remain. -/
theorem guard_true (k : Nat) (hL : (L : _root_.Int) < 2147483648) :
    Sep.Triple ge fe f_is_sorted (LInv p b ofs0 L L f (k+1)) guardStmt
      (BodyR p b ofs0 L L f (k+1)) := by
  simp only [guardStmt]
  refine Sep.triple_if_true ge fe f_is_sorted _ _ _ _ _ (fun e le hp m hP _ => ?_) ?_
  · obtain ⟨iv, ⟨_, _, hlen, hi, _, _, _⟩, h1, h2, h3⟩ := hP
    refine ⟨Val.ofBool (Integers.Int.lt (Integers.Int.repr iv) (Integers.Int.repr L)), ?_, ?_⟩
    · exact EvalExpr.Ebinop .Olt _ _ _ _ _ _
        (EvalExpr.Etempvar _i tint _ hi) (EvalExpr.Etempvar _len tint _ hlen)
        (semBinop_lt_int _ _ _ _)
    · rw [lt_repr (iv : _root_.Int) (L : _root_.Int) (by omega) (by omega) (by omega) hL]
      have hlt : ((iv : _root_.Int) < (L : _root_.Int)) := by omega
      simpa [hlt, typeof] using boolVal_ofBool_int m true
  · refine Sep.triple_fallthrough ge fe f_is_sorted _ _ _ _
      (Sep.triple_skip ge fe f_is_sorted _) (fun e le hp h => ?_)
    obtain ⟨iv, hst, h1, h2, h3⟩ := h
    exact ⟨iv, hst, h1, by omega, h3⟩

/-- `i < len` is false: no iterations remain, so the loop breaks out. -/
theorem guard_false (hL : (L : _root_.Int) < 2147483648) :
    Sep.Triple ge fe f_is_sorted (LInv p b ofs0 L L f 0) guardStmt
      (BodyR p b ofs0 L L f 0) := by
  simp only [guardStmt]
  refine Sep.triple_if_false ge fe f_is_sorted _ _ _ _ _ (fun e le hp m hP _ => ?_) ?_
  · obtain ⟨iv, ⟨_, _, hlen, hi, _, _, _⟩, h1, h2, h3⟩ := hP
    refine ⟨Val.ofBool (Integers.Int.lt (Integers.Int.repr iv) (Integers.Int.repr L)), ?_, ?_⟩
    · exact EvalExpr.Ebinop .Olt _ _ _ _ _ _
        (EvalExpr.Etempvar _i tint _ hi) (EvalExpr.Etempvar _len tint _ hlen)
        (semBinop_lt_int _ _ _ _)
    · rw [lt_repr (iv : _root_.Int) (L : _root_.Int) (by omega) (by omega) (by omega) hL]
      have hge : ¬ ((iv : _root_.Int) < (L : _root_.Int)) := by omega
      simpa [hge, typeof] using boolVal_ofBool_int m false
  · refine Sep.triple_conseq ge fe f_is_sorted
      (Sep.triple_break ge fe f_is_sorted _)
      (fun _ _ _ x => x) (fun _ _ _ x => False.elim x) (fun e le hp h => ?_)
      (fun _ _ _ x => False.elim x) (fun _ _ x => False.elim x)
    obtain ⟨iv, ⟨he, _, _, _, _, _, harr⟩, _⟩ := h
    exact ⟨he, harr⟩

/-- The rest of the loop body: read both elements and, because the array is
    sorted, fall through instead of returning `0`. -/
theorem rest_ok (k : Nat) (hd : IsSortedReal.Distinct)
    (hpr : permOrder p .Readable = true)
    (hL : (L : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (L : _root_.Int) < 18446744073709551616)
    (hsorted : ∀ j : Nat, 1 ≤ j → j < L → Integers.Int.ltu (f j) (f (j-1)) = false) :
    Sep.Triple ge fe f_is_sorted (LMid p b ofs0 L L f k) restStmt
      (BodyR p b ofs0 L L f k) := by
  have key : ∀ iv : Nat,
      Sep.Triple ge fe f_is_sorted (AtIv p b ofs0 L iv L f k none none) restStmt
        (BodyR p b ofs0 L L f k) := by
    intro iv
    simp only [restStmt, cmpStmt, elemI, elemIm1]
    refine Sep.triple_seq ge fe f_is_sorted _
      (AtIv p b ofs0 L iv L f k (some (f iv)) none) _ _ _ ?_ ?_
    · -- t'1 = numbers[i]
      refine Sep.triple_fallthrough ge fe f_is_sorted _
        (AtIv p b ofs0 L iv L f k (some (f iv)) none) _ _
        (Sep.triple_set ge fe f_is_sorted _ _ _ _ (fun e le hp m hP hag => ?_))
        (fun _ _ _ x => x)
      obtain ⟨⟨he, hnum, hlen, hi, _, _, harr⟩, h1, hlt, h3⟩ := hP
      refine ⟨.Vint (f iv), ?_, ?_⟩
      · exact read_elem ge e le m p b ofs0 L f hp hpr harr hag hnum
          (.Etempvar _i tint) rfl iv hlt (EvalExpr.Etempvar _i tint _ hi)
          (by omega) (no_ovf_mono _ iv L (by omega) hno)
      · exact ⟨⟨he, (PTree.gso _ _ _ _ hd.t1_num).trans hnum,
                (PTree.gso _ _ _ _ hd.t1_len).trans hlen,
                (PTree.gso _ _ _ _ hd.t1_i).trans hi, PTree.gss _ _ _, trivial, harr⟩,
               h1, hlt, h3⟩
    refine Sep.triple_seq ge fe f_is_sorted _
      (AtIv p b ofs0 L iv L f k (some (f iv)) (some (f (iv-1)))) _ _ _ ?_ ?_
    · -- t'2 = numbers[i-1]
      refine Sep.triple_fallthrough ge fe f_is_sorted _
        (AtIv p b ofs0 L iv L f k (some (f iv)) (some (f (iv-1)))) _ _
        (Sep.triple_set ge fe f_is_sorted _ _ _ _ (fun e le hp m hP hag => ?_))
        (fun _ _ _ x => x)
      obtain ⟨⟨he, hnum, hlen, hi, ht1, _, harr⟩, h1, hlt, h3⟩ := hP
      refine ⟨.Vint (f (iv-1)), ?_, ?_⟩
      · refine read_elem ge e le m p b ofs0 L f hp hpr harr hag hnum
          (.Ebinop .Osub (.Etempvar _i tint) (.Econst_int (Integers.Int.repr 1) tint) tint)
          rfl (iv-1) (by omega) ?_ (by omega) (no_ovf_mono _ (iv-1) L (by omega) hno)
        refine EvalExpr.Ebinop .Osub _ _ _ _ _ _
          (EvalExpr.Etempvar _i tint _ hi) (EvalExpr.Econst_int _ tint) ?_
        simp only [typeof]
        rw [semBinop_sub_int, repr_sub]
        congr 2
        rw [cast_sub_one iv h1]
      · exact ⟨⟨he, (PTree.gso _ _ _ _ hd.t2_num).trans hnum,
                (PTree.gso _ _ _ _ hd.t2_len).trans hlen,
                (PTree.gso _ _ _ _ hd.t2_i).trans hi,
                (PTree.gso _ _ _ _ hd.t2_t1).trans ht1, PTree.gss _ _ _, harr⟩,
               h1, hlt, h3⟩
    -- if (numbers[i] < numbers[i-1]) return 0;  --- unreachable, the array is sorted
    refine Sep.triple_if_false ge fe f_is_sorted _ _ _ _ _ (fun e le hp m hP _ => ?_) ?_
    · obtain ⟨⟨_, _, _, _, ht1, ht2, _⟩, h1, hlt, h3⟩ := hP
      refine ⟨Val.ofBool (Integers.Int.ltu (f iv) (f (iv-1))), ?_, ?_⟩
      · exact EvalExpr.Ebinop .Olt _ _ _ _ _ _
          (EvalExpr.Etempvar _t'1 tuint _ ht1) (EvalExpr.Etempvar _t'2 tuint _ ht2)
          (semBinop_ltu_uint _ _ _ _)
      · rw [hsorted iv h1 hlt]
        simpa [typeof] using boolVal_ofBool_int m false
    · refine Sep.triple_fallthrough ge fe f_is_sorted _ _ _ _
        (Sep.triple_skip ge fe f_is_sorted _) (fun e le hp h => ?_)
      obtain ⟨⟨he, hnum, hlen, hi, _, _, harr⟩, h1, hlt, h3⟩ := h
      exact ⟨iv, ⟨he, hnum, hlen, hi, trivial, trivial, harr⟩, h1, hlt, h3⟩
  intro k' e le hp hf m hdj hag hP
  obtain ⟨iv, hrest⟩ := hP
  exact key iv k' e le hp hf m hdj hag hrest

/-- The whole loop body. -/
theorem body_triple (k : Nat) (hd : IsSortedReal.Distinct)
    (hpr : permOrder p .Readable = true) (hL : (L : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (L : _root_.Int) < 18446744073709551616)
    (hsorted : ∀ j : Nat, 1 ≤ j → j < L → Integers.Int.ltu (f j) (f (j-1)) = false) :
    Sep.Triple ge fe f_is_sorted (LInv p b ofs0 L L f k) bodyStmt
      (BodyR p b ofs0 L L f k) := by
  simp only [bodyStmt]
  refine Sep.triple_seq ge fe f_is_sorted _ (LMid p b ofs0 L L f k) _ _ _ ?_
    (rest_ok ge fe p b ofs0 L f k hd hpr hL hno hsorted)
  cases k with
  | zero => exact guard_false ge fe p b ofs0 L f hL
  | succ j => exact guard_true ge fe p b ofs0 L f j hL

/-- `i = i + 1`: the measure drops. -/
theorem incr_triple (k : Nat) (hd : IsSortedReal.Distinct) :
    Sep.Triple ge fe f_is_sorted (LMid p b ofs0 L L f k) incrStmt
      { normal := fun e le hp => ∃ k', k' < k ∧ LInv p b ofs0 L L f k' e le hp,
        brk := Done p b ofs0 L f, cont := Sep.Assn.no, ret := RetOne p b ofs0 L f } := by
  simp only [incrStmt]
  refine Sep.triple_fallthrough ge fe f_is_sorted _ _ _ _
    (Sep.triple_set ge fe f_is_sorted _ _ _ _ (fun e le hp m hP _ => ?_))
    (fun _ _ _ x => x)
  obtain ⟨iv, ⟨he, hnum, hlen, hi, _, _, harr⟩, h1, hlt, h3⟩ := hP
  refine ⟨.Vint (Integers.Int.repr ((iv : _root_.Int) + 1)), ?_, ?_⟩
  · refine EvalExpr.Ebinop .Oadd _ _ _ _ _ _
      (EvalExpr.Etempvar _i tint _ hi) (EvalExpr.Econst_int _ tint) ?_
    simp only [typeof]
    rw [semBinop_add_int, repr_add]
  · refine ⟨k - 1, by omega, iv + 1, ⟨he, (PTree.gso _ _ _ _ hd.i_num).trans hnum,
      (PTree.gso _ _ _ _ hd.i_len).trans hlen, ?_, trivial, trivial, harr⟩,
      by omega, by omega, by omega⟩
    rw [PTree.gss]
    simp

/-- The loop: terminates, and can only leave through the guard's `break`. -/
theorem loop_triple (hd : IsSortedReal.Distinct)
    (hpr : permOrder p .Readable = true) (hL : (L : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (L : _root_.Int) < 18446744073709551616)
    (hsorted : ∀ j : Nat, 1 ≤ j → j < L → Integers.Int.ltu (f j) (f (j-1)) = false)
    (k : Nat) :
    Sep.Triple ge fe f_is_sorted (LInv p b ofs0 L L f k) loopStmt
      (LoopR p b ofs0 L f) := by
  simp only [loopStmt]
  refine Sep.triple_loop ge fe f_is_sorted (LoopR p b ofs0 L f)
    (LInv p b ofs0 L L f) (LMid p b ofs0 L L f) bodyStmt incrStmt (fun k => ?_)
    (fun k => ?_) k
  · exact Sep.triple_conseq ge fe f_is_sorted
      (body_triple ge fe p b ofs0 L f k hd hpr hL hno hsorted)
      (fun _ _ _ x => x) (fun _ _ _ x => x) (fun _ _ _ x => x)
      (fun _ _ _ x => False.elim x) (fun _ _ x => x)
  · exact incr_triple ge fe p b ofs0 L f k hd

/-! ## The function body -/

def Pre (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L : Nat)
    (f : Nat → Integers.Int) : Sep.Assn := fun e le hp =>
  e = emptyEnv
  ∧ le.get _numbers = some (.Vptr b ofs0)
  ∧ le.get _len = some (.Vint (Integers.Int.repr L))
  ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) L f hp

def RetR (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L : Nat)
    (f : Nat → Integers.Int) : Sep.ExitConds :=
  { normal := Sep.Assn.no, brk := Sep.Assn.no, cont := Sep.Assn.no,
    ret := RetOne p b ofs0 L f }

/-- `return 1;` — the array is handed back to the caller. -/
theorem ret1_triple (P : Sep.Assn)
    (hP : ∀ e le hp, P e le hp →
            e = emptyEnv ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) L f hp) :
    Sep.Triple ge fe f_is_sorted P ret1 (RetR p b ofs0 L f) := by
  simp only [ret1]
  refine Sep.triple_return ge fe f_is_sorted P _ _ (fun e le hp m h _ => ?_)
  obtain ⟨he, harr⟩ := hP e le hp h
  refine ⟨.Vint (Integers.Int.repr 1), .Vint (Integers.Int.repr 1), m, hp,
    EvalExpr.Econst_int _ tint, semCast_one_bool m, ?_, ⟨rfl, harr⟩,
    fun hf hdj hag => ⟨hdj, hag⟩⟩
  rw [he]; exact freeList_emptyEnv _ _

/-- **The function body, with the separation logic.** -/
theorem is_sorted_body (hd : IsSortedReal.Distinct)
    (hpr : permOrder p .Readable = true) (hL : (L : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (L : _root_.Int) < 18446744073709551616)
    (hsorted : ∀ j : Nat, 1 ≤ j → j < L → Integers.Int.ltu (f j) (f (j-1)) = false) :
    Sep.Triple ge fe f_is_sorted (Pre p b ofs0 L f) fullBody (RetR p b ofs0 L f) := by
  simp only [fullBody]
  by_cases hsmall : L ≤ 1
  · -- len <= 1: return true at once; nothing after the `if` runs
    refine Sep.triple_seq ge fe f_is_sorted _ Sep.Assn.no _ _ _ ?_
      (Sep.triple_vacuous ge fe f_is_sorted _ _)
    refine Sep.triple_if_true ge fe f_is_sorted _ _ _ _ _ (fun e le hp m hP _ => ?_) ?_
    · obtain ⟨_, _, hlen, _⟩ := hP
      refine ⟨Val.ofBool (!Integers.Int.lt (Integers.Int.repr 1)
                (Integers.Int.repr (L : _root_.Int))), ?_, ?_⟩
      · exact EvalExpr.Ebinop .Ole _ _ _ _ _ _ (EvalExpr.Etempvar _len tint _ hlen)
          (EvalExpr.Econst_int _ tint) (semBinop_le_int _ _ _ _)
      · rw [lt_repr 1 (L : _root_.Int) (by omega) (by omega) (by omega) hL]
        have hle : ¬ ((1 : _root_.Int) < (L : _root_.Int)) := by omega
        simpa [hle, typeof] using boolVal_ofBool_int m true
    · exact ret1_triple ge fe p b ofs0 L f _ (fun _ _ _ h => ⟨h.1, h.2.2.2⟩)
  · -- len >= 2: run the loop, then return true
    have hbig : 2 ≤ L := by omega
    refine Sep.triple_seq ge fe f_is_sorted _ (Pre p b ofs0 L f) _ _ _ ?_ ?_
    · refine Sep.triple_if_false ge fe f_is_sorted _ _ _ _ _ (fun e le hp m hP _ => ?_) ?_
      · obtain ⟨_, _, hlen, _⟩ := hP
        refine ⟨Val.ofBool (!Integers.Int.lt (Integers.Int.repr 1)
                  (Integers.Int.repr (L : _root_.Int))), ?_, ?_⟩
        · exact EvalExpr.Ebinop .Ole _ _ _ _ _ _ (EvalExpr.Etempvar _len tint _ hlen)
            (EvalExpr.Econst_int _ tint) (semBinop_le_int _ _ _ _)
        · rw [lt_repr 1 (L : _root_.Int) (by omega) (by omega) (by omega) hL]
          have hgt : ((1 : _root_.Int) < (L : _root_.Int)) := by omega
          simpa [hgt, typeof] using boolVal_ofBool_int m false
      · exact Sep.triple_fallthrough ge fe f_is_sorted _ _ _ _
          (Sep.triple_skip ge fe f_is_sorted _) (fun _ _ _ x => x)
    -- last = numbers[0]
    refine Sep.triple_seq ge fe f_is_sorted _ (Pre p b ofs0 L f) _ _ _ ?_ ?_
    · refine Sep.triple_fallthrough ge fe f_is_sorted _ (Pre p b ofs0 L f) _ _
        (Sep.triple_set ge fe f_is_sorted _ _ _ _ (fun e le hp m hP hag => ?_))
        (fun _ _ _ x => x)
      obtain ⟨he, hnum, hlen, harr⟩ := hP
      refine ⟨.Vint (f 0), ?_, ?_⟩
      · exact read_elem ge e le m p b ofs0 L f hp hpr harr hag hnum
          (.Econst_int (Integers.Int.repr 0) tint) rfl 0 (by omega)
          (EvalExpr.Econst_int _ tint) (by omega) (no_ovf_mono _ 0 L (by omega) hno)
      · exact ⟨he, (PTree.gso _ _ _ _ hd.last_num).trans hnum,
               (PTree.gso _ _ _ _ hd.last_len).trans hlen, harr⟩
    -- first = (_Bool) 1
    refine Sep.triple_seq ge fe f_is_sorted _ (Pre p b ofs0 L f) _ _ _ ?_ ?_
    · refine Sep.triple_fallthrough ge fe f_is_sorted _ (Pre p b ofs0 L f) _ _
        (Sep.triple_set ge fe f_is_sorted _ _ _ _ (fun e le hp m hP _ => ?_))
        (fun _ _ _ x => x)
      obtain ⟨he, hnum, hlen, harr⟩ := hP
      exact ⟨.Vint (Integers.Int.repr 1),
        EvalExpr.Ecast _ tbool _ _ (EvalExpr.Econst_int _ tint) (semCast_one_bool m),
        ⟨he, (PTree.gso _ _ _ _ hd.first_num).trans hnum,
         (PTree.gso _ _ _ _ hd.first_len).trans hlen, harr⟩⟩
    -- (i = 1; loop) ; return 1
    refine Sep.triple_seq ge fe f_is_sorted _ (Done p b ofs0 L f) _ _ _ ?_
      (ret1_triple ge fe p b ofs0 L f _ (fun _ _ _ h => h))
    refine Sep.triple_seq ge fe f_is_sorted _ (LInv p b ofs0 L L f (L - 1)) _ _ _ ?_ ?_
    · refine Sep.triple_fallthrough ge fe f_is_sorted _ (LInv p b ofs0 L L f (L - 1)) _ _
        (Sep.triple_set ge fe f_is_sorted _ _ _ _ (fun e le hp m hP _ => ?_))
        (fun _ _ _ x => x)
      obtain ⟨he, hnum, hlen, harr⟩ := hP
      refine ⟨.Vint (Integers.Int.repr 1), EvalExpr.Econst_int _ tint, 1,
        ⟨he, (PTree.gso _ _ _ _ hd.i_num).trans hnum,
         (PTree.gso _ _ _ _ hd.i_len).trans hlen, ?_, trivial, trivial, harr⟩,
        by omega, by omega, by omega⟩
      rw [PTree.gss]; simp
    · exact loop_triple ge fe p b ofs0 L f hd hpr hL hno hsorted _

/-! ## As a specification

The strongest form: `is_sorted` *meets a separation-logic specification*, so it
can be invoked through `Sep.triple_call` — the caller lends the array and gets it
back, and keeps everything else untouched by the frame rule.  That is what the
non-separating `IsSortedReal.is_sorted_call` could not say. -/

def isSortedSpec (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs) (L : Nat)
    (f : Nat → Integers.Int) : Sep.FunSpec where
  tyargs := [tptr tuint, tint]
  tyres := tbool
  cc := cc_default
  pre := fun vargs hp =>
    vargs = [.Vptr b ofs0, .Vint (Integers.Int.repr L)]
    ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) L f hp
  post := fun v hp =>
    v = .Vint (Integers.Int.repr 1)
    ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) L f hp
  -- `is_sorted` calls nothing, so any measure will do
  measure := fun _ => 0

/-- **The Phase-7.7 milestone.**  `is_sorted` satisfies its separation-logic
    specification: given the array as an owned resource and the sortedness
    hypothesis, the call returns `true` and hands the array back, leaving any
    disjoint frame untouched. -/
theorem is_sorted_satisfies (hd : IsSortedReal.Distinct)
    (hpr : permOrder p .Readable = true) (hL : (L : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (L : _root_.Int) < 18446744073709551616)
    (hsorted : ∀ j : Nat, 1 ≤ j → j < L → Integers.Int.ltu (f j) (f (j-1)) = false) :
    Sep.SatisfiesAt ge (FunctionEntry2 ge) (.Internal f_is_sorted)
      (isSortedSpec p b ofs0 L f) [.Vptr b ofs0, .Vint (Integers.Int.repr L)] := by
  obtain ⟨hv, hpar, hdisj⟩ := IsSortedReal.entry_wf
  refine Sep.satisfies_internal_noVars ge (FunctionEntry2 ge) f_is_sorted _ _
    (Pre p b ofs0 L f) (fun m => ?_) ?_
  · refine ⟨PTree.set _len (.Vint (Integers.Int.repr L))
              (PTree.set _numbers (.Vptr b ofs0) (createUndefTemps f_is_sorted.fn_temps)),
            FunctionEntry2.intro hv hpar hdisj (AllocVariables.nil _ _) rfl,
            fun hp hpre => ?_⟩
    obtain ⟨_, harr⟩ := hpre
    exact ⟨rfl, (PTree.gso _ _ _ _ IsSortedReal.len_ne_num).trans (PTree.gss _ _ _),
           PTree.gss _ _ _, harr⟩
  · exact IsSortedReal.body_eq ▸ is_sorted_body ge (FunctionEntry2 ge) p b ofs0 L f
      hd hpr hL hno hsorted

/-- The same thing as a raw `Star Step` execution, for comparison with
    `IsSortedReal.is_sorted_call`. -/
theorem is_sorted_call_sep (hd : IsSortedReal.Distinct)
    (hpr : permOrder p .Readable = true) (hL : (L : _root_.Int) < 2147483648)
    (hno : Integers.Ptrofs.unsigned ofs0 + 4 * (L : _root_.Int) < 18446744073709551616)
    (hsorted : ∀ j : Nat, 1 ≤ j → j < L → Integers.Int.ltu (f j) (f (j-1)) = false)
    (k : Cont) (hk : isCallCont k = true) (m : Mem) (hp hf : Heap)
    (harr : arrayU32 p b (Integers.Ptrofs.unsigned ofs0) L f hp)
    (hdj : Heap.disjoint hp hf) (hag : Heap.Agrees (Heap.union hp hf) m) :
    ∃ m' hp',
      Star (Step ge (FunctionEntry2 ge))
        (.Callstate (.Internal f_is_sorted)
          [.Vptr b ofs0, .Vint (Integers.Int.repr L)] k m) E0
        (.Returnstate (.Vint (Integers.Int.repr 1)) k m')
      ∧ arrayU32 p b (Integers.Ptrofs.unsigned ofs0) L f hp'
      ∧ Heap.disjoint hp' hf ∧ Heap.Agrees (Heap.union hp' hf) m' := by
  obtain ⟨v, m', hp', hsteps, ⟨hv, harr'⟩, hdj', hag'⟩ :=
    is_sorted_satisfies ge p b ofs0 L f hd hpr hL hno hsorted k m hp hf hk
      ⟨rfl, harr⟩ hdj hag
  subst hv
  exact ⟨m', hp', Steps.toStar hsteps, harr', hdj', hag'⟩

end
end IsSortedSep
