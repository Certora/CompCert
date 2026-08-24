/-
  **Phase-9 Wave-B item 6 — the exercise that proves the stack composes.**

  `test/lean/treesep.c` is compiled against zlib's REAL `deflate.h`, so the
  composite environment here is `deflate_state`'s own layout (dyn_ltree at
  offset 212, `ct_data` stride 4, union members at 0).  The two functions are
  the four-layer access shape trees.c uses constantly:

      ush  get_freq(deflate_state *s, int k) { return s->dyn_ltree[k].Freq; }
      void set_freq(deflate_state *s, int k, ush v) { s->dyn_ltree[k].Freq = v; }

  (`Freq` is zlib's macro for `fc.freq`.)  What is proved, end to end:

  * `eval_freq` — the READ: the full generated expression
    `Efield (Efield (Ederef (Ebinop Oadd (Efield … dyn_ltree) k)) fc) freq`
    evaluates to `fq i`, from ownership of the table alone.  Exercises
    `eval_field_array` + `semAdd_ptr_int` + `eval_field_copy` +
    `eval_field_union` + `arrayOf_split`, in one derivation.
  * `set_freq_triple` — the WRITE: a `Sep.Triple` for `f_set_freq`'s whole body,
    turning `arrayOf … fq …` into `arrayOf … (fq[i ↦ v]) …`.  This is the thing
    that was impossible before Wave B: no array element could be written.
  * `freq_table_satisfiable` — non-vacuity of the table predicate.

  Address arithmetic follows the `byteOfs_unsigned` pattern: one bridge lemma
  (`elem_addr_unsigned`) with all offsets over fresh `Nat`/`_root_.Int` binders,
  so no `omega` ever sees a `CC.Z`-elaborated operator.
-/
import GenTreeSep
import CCLib
open CC CC.Sep CC.HProp
open Treesep   -- the generated module now lives in its own namespace

set_option maxRecDepth 20000

namespace TreeSep

/-! ## Composite facts, against THIS program's environment

Layout facts are `decide`d once here (treesep.c has few fields per struct, so a
full batched table is not worth it — for `deflate_state` proper, project from
`DeflateMeasure.offTable_ok`). -/

/-- The generated composite for `struct internal_state`. -/
def stateCo : Composite :=
  match prog.prog_comp_env.get _internal_state with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

/-- The generated composite for `struct ct_data_s`. -/
def ctCo : Composite :=
  match prog.prog_comp_env.get _ct_data_s with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

/-- The generated composite for the `fc` union (`union { ush freq; ush code; }`). -/
def fcCo : Composite :=
  match prog.prog_comp_env.get __1354 with
  | some co => co
  | none => { co_su := .Union, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

theorem hco_state : prog.prog_comp_env.get _internal_state = some stateCo := rfl
theorem hco_ct : prog.prog_comp_env.get _ct_data_s = some ctCo := rfl
theorem hco_fc : prog.prog_comp_env.get __1354 = some fcCo := rfl

/-- The layout is zlib's own: `dyn_ltree` at 212, exactly as in deflate.c. -/
theorem hoff_ltree :
    fieldOffset prog.prog_comp_env _dyn_ltree stateCo.co_members
      = .OK (212, .Full) := by decide

theorem hoff_fc :
    fieldOffset prog.prog_comp_env _fc ctCo.co_members = .OK (0, .Full) := by
  decide

theorem hoff_freq :
    unionFieldOffset prog.prog_comp_env _freq fcCo.co_members
      = .OK (0, .Full) := by decide

theorem hsizeof_ct :
    sizeof prog.prog_comp_env (Ty.Tstruct _ct_data_s noattr) = 4 := by decide

/-! ## The table predicate -/

/-- One `ct_data` element: `.fc.freq` at offset 0, `.dl` at offset 2. -/
def ctDataAt (pm : Permission) (b : Block) (fq dl : Nat → Nat) :
    Nat → _root_.Int → HProp :=
  fun i off =>
    mapsto .Mint16unsigned pm b off (.Vint (Integers.Int.repr ((fq i : Nat))))
      ∗ mapsto .Mint16unsigned pm b (off + 2) (.Vint (Integers.Int.repr ((dl i : Nat))))

/-- The `dyn_ltree` table of a `deflate_state` at `b + ofs0`: 573 `ct_data`
    entries starting at byte offset 212. -/
def freqTable (pm : Permission) (b : Block) (ofs0 : Integers.Ptrofs)
    (fq dl : Nat → Nat) : HProp :=
  arrayOf (ctDataAt pm b fq dl) 4 (((ofs0.toNat : Nat) : _root_.Int) + 212) 573


/-! ## The address bridge

`sem_add` computes the element address in `Ptrofs`; the predicate indexes over
`_root_.Int`.  One lemma, `byteOfs_unsigned`-style, connects them — all bounds
over fresh `Nat` binders. -/

/-- The packed `Ptrofs` address of `s->dyn_ltree[i]`, exactly as the semantics
    computes it (after `sizeof` reduces to the stride 4). -/
def elemAddr (ofs0 : Integers.Ptrofs) (i : Nat) : Integers.Ptrofs :=
  Integers.Ptrofs.add (Integers.Ptrofs.add ofs0 (Integers.Ptrofs.repr 212))
    (Integers.Ptrofs.mul (Integers.Ptrofs.repr 4)
      (Cop.ptrofsOfInt .Signed (Integers.Int.repr ((i : Nat) : _root_.Int))))

theorem elem_addr_unsigned (ofs0 : Integers.Ptrofs) (i : Nat) (hi : i < 573)
    (hno : ofs0.toNat + 5968 < 18446744073709551616) :
    Integers.Ptrofs.unsigned (elemAddr ofs0 i)
      = ((ofs0.toNat : Nat) : _root_.Int) + 212 + 4 * ((i : Nat) : _root_.Int) := by
  have hw : (2 : Nat) ^ Archi.ptrWordsize = 18446744073709551616 := by
    rw [Archi.ptrWordsize_eq]
  simp only [elemAddr, Cop.ptrofsOfInt, Integers.Ptrofs.of_ints,
             Integers.Ptrofs.add, Integers.Ptrofs.mul, Integers.Ptrofs.unsigned,
             Integers.Ptrofs.repr, Integers.MI.add, Integers.MI.mul,
             Integers.MI.repr, Integers.MI.unsigned, Integers.MI.signed,
             BitVec.toNat_add, BitVec.toNat_mul, BitVec.toNat_ofInt, hw]
  rw [toInt_repr (i : _root_.Int) (by omega) (by omega)]
  -- eliminate the nested `Int.toNat (_ % 2^64)` terms, then the three `Nat` mods
  have h212 : ((212 : _root_.Int) % ((18446744073709551616 : Nat) : _root_.Int)).toNat
      = 212 := by omega
  have h4 : ((4 : _root_.Int) % ((18446744073709551616 : Nat) : _root_.Int)).toNat
      = 4 := by omega
  have hii : (((i : Nat) : _root_.Int) % ((18446744073709551616 : Nat) : _root_.Int)).toNat
      = i := by omega
  rw [h212, h4, hii,
      Nat.mod_eq_of_lt (show BitVec.toNat ofs0 + 212 < 18446744073709551616 from by omega),
      Nat.mod_eq_of_lt (show 4 * i < 18446744073709551616 from by omega),
      Nat.mod_eq_of_lt (show (BitVec.toNat ofs0 + 212) + 4 * i < 18446744073709551616 from by
        omega)]
  -- the remaining goal is a cast identity, but elaborated at `CC.Z` where `omega`
  -- is blind; `show` re-elaborates it at `_root_.Int`.
  show ((BitVec.toNat ofs0 + 212 + 4 * i : Nat) : _root_.Int)
      = ((BitVec.toNat ofs0 : Nat) : _root_.Int) + 212 + 4 * ((i : Nat) : _root_.Int)
  omega

/-! ## The READ: `s->dyn_ltree[k].fc.freq` evaluates to `fq k` -/

/-- The l-value `s->dyn_ltree[k].fc.freq`, exactly as `clightgen -normalize`
    emits it (see `get_body`/`set_body` below — the `rfl`s pin this). -/
def freqLval : Expr :=
  .Efield
    (.Efield
      (.Ederef
        (.Ebinop .Oadd
          (.Efield
            (.Ederef (.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr))
            _dyn_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 573))
          (.Etempvar _k tint) (tptr (Ty.Tstruct _ct_data_s noattr)))
        (Ty.Tstruct _ct_data_s noattr))
      _fc (Ty.Tunion __1354 noattr))
    _freq tushort

/-- The generated bodies are what we think they are. -/
theorem get_body :
    f_get_freq.fn_body
      = .Ssequence (.Sset _t'1 freqLval)
          (.Sreturn (some (.Etempvar _t'1 tushort))) := rfl

theorem set_body :
    f_set_freq.fn_body = .Sassign freqLval (.Etempvar _v tushort) := rfl

/-- **Layers 1–5**: `&(s->dyn_ltree[i].fc)` — the union's address.  Every step
    on the way is `By_copy` or `By_reference`, so nothing is loaded and no
    ownership is needed: an aggregate l-value is pure address arithmetic. -/
theorem eval_fc_addr {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {b : Block} {ofs0 : Integers.Ptrofs} {i : Nat}
    (hcenv : ge.genv_cenv = prog.prog_comp_env)
    (hs : le.get _s = some (.Vptr b ofs0))
    (hk : le.get _k = some (.Vint (Integers.Int.repr ((i : Nat) : _root_.Int)))) :
    EvalExpr ge e le m
      (.Efield (.Ederef (.Ebinop .Oadd
            (.Efield (.Ederef (.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
                (Ty.Tstruct _internal_state noattr))
              _dyn_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 573))
            (.Etempvar _k tint) (tptr (Ty.Tstruct _ct_data_s noattr)))
          (Ty.Tstruct _ct_data_s noattr))
        _fc (Ty.Tunion __1354 noattr))
      (.Vptr b (elemAddr ofs0 i)) := by
  -- layer 1: `*s`, a struct l-value (`By_copy` ⇒ the pointer itself)
  have h2 : EvalExpr ge e le m
      (.Ederef (.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
        (Ty.Tstruct _internal_state noattr)) (.Vptr b ofs0) :=
    EvalExpr.Elvalue _ b ofs0 .Full _
      (EvalLvalue.Ederef _ _ _ _ (EvalExpr.Etempvar _ _ _ hs))
      (DerefLoc.copy (by decide))
  -- layer 2: `.dyn_ltree`, an array field (`By_reference` ⇒ its address)
  have h3 := eval_field_array (ty := tarray (Ty.Tstruct _ct_data_s noattr) 573)
    (fld := _dyn_ltree) (by decide) rfl (hcenv ▸ hco_state) (hcenv ▸ hoff_ltree) h2
  -- layer 3: `+ k`, pointer arithmetic at stride `sizeof ct_data = 4`
  have hsz : sizeof ge.genv_cenv (Ty.Tstruct _ct_data_s noattr) = 4 := by
    rw [hcenv]; exact hsizeof_ct
  have hadd := semAdd_ptr_int (t1 := tarray (Ty.Tstruct _ct_data_s noattr) 573)
    (t2 := tint) ge.genv_cenv m b
    (Integers.Ptrofs.add ofs0 (Integers.Ptrofs.repr 212))
    (Integers.Int.repr ((i : Nat) : _root_.Int)) rfl
  rw [hsz] at hadd
  have h4 : EvalExpr ge e le m
      (.Ebinop .Oadd
        (.Efield (.Ederef (.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
            (Ty.Tstruct _internal_state noattr))
          _dyn_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 573))
        (.Etempvar _k tint) (tptr (Ty.Tstruct _ct_data_s noattr)))
      (.Vptr b (elemAddr ofs0 i)) :=
    EvalExpr.Ebinop .Oadd _ _ _ _ _ _ h3 (EvalExpr.Etempvar _ _ _ hk) hadd
  -- layer 4: `*(…)`, a struct l-value again
  have h5 : EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd
          (.Efield (.Ederef (.Etempvar _s (tptr (Ty.Tstruct _internal_state noattr)))
              (Ty.Tstruct _internal_state noattr))
            _dyn_ltree (tarray (Ty.Tstruct _ct_data_s noattr) 573))
          (.Etempvar _k tint) (tptr (Ty.Tstruct _ct_data_s noattr)))
        (Ty.Tstruct _ct_data_s noattr))
      (.Vptr b (elemAddr ofs0 i)) :=
    EvalExpr.Elvalue _ b (elemAddr ofs0 i) .Full _
      (EvalLvalue.Ederef _ _ _ _ h4) (DerefLoc.copy (by decide))
  -- layer 5: `.fc`, a union-typed field of the struct (`By_copy`, offset 0)
  have h6 := eval_field_copy (ty := Ty.Tunion __1354 noattr) (fld := _fc)
    (by decide) rfl (hcenv ▸ hco_ct) (hcenv ▸ hoff_fc) h5
  rwa [ptrofs_add_zero] at h6

/-- **Layer 6, the l-value**: `s->dyn_ltree[i].fc.freq` is the location
    `(b, elemAddr ofs0 i)` — what `Sassign` writes through. -/
theorem eval_freq_lvalue {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {b : Block} {ofs0 : Integers.Ptrofs} {i : Nat}
    (hcenv : ge.genv_cenv = prog.prog_comp_env)
    (hs : le.get _s = some (.Vptr b ofs0))
    (hk : le.get _k = some (.Vint (Integers.Int.repr ((i : Nat) : _root_.Int)))) :
    EvalLvalue ge e le m freqLval b (elemAddr ofs0 i) .Full := by
  -- the union member's offset is 0, so the address is the element's own; reducing
  -- it *in the statement* keeps use sites from comparing two `Ptrofs`
  -- computations by `whnf` (which times out).
  have h := eval_lvalue_union (e := e) (le := le) (m := m) (fld := _freq)
    (ty := tushort) rfl (hcenv ▸ hco_fc) (hcenv ▸ hoff_freq)
    (eval_fc_addr (e := e) (le := le) (m := m) hcenv hs hk)
  rwa [ptrofs_add_zero] at h

/-- **The READ, end to end**: owning the table is enough for the whole generated
    expression to evaluate to element `i`'s `freq`. -/
theorem eval_freq {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {pm : Permission} {b : Block} {ofs0 : Integers.Ptrofs} {i : Nat}
    {fq dl : Nat → Nat} {h : Heap}
    (hcenv : ge.genv_cenv = prog.prog_comp_env)
    (hpr : permOrder pm .Readable = true)
    (hs : le.get _s = some (.Vptr b ofs0))
    (hk : le.get _k = some (.Vint (Integers.Int.repr ((i : Nat) : _root_.Int))))
    (hi : i < 573) (hfq16 : ∀ j, fq j < 65536)
    (hno : ofs0.toNat + 5968 < 18446744073709551616)
    (harr : freqTable pm b ofs0 fq dl h)
    (hag : Heap.Agrees h m) :
    EvalExpr ge e le m freqLval (.Vint (Integers.Int.repr ((fq i : Nat)))) := by
  -- split element `i` out of the table, then its freq half out of the element
  rw [freqTable, arrayOf_split (ctDataAt pm b fq dl) 4 _ 573 i hi] at harr
  obtain ⟨hel, hrest, _, heq, helm, _⟩ := harr
  obtain ⟨hfqh, hdlh, _, heqel, hfqm, _⟩ := helm
  subst heq
  subst heqel
  rw [← elem_addr_unsigned ofs0 i hi hno] at hfqm
  have hagfq : Heap.Agrees hfqh m :=
    Heap.Agrees_union_left (Heap.Agrees_union_left hag)
  have hres := eval_field_union (e := e) (le := le) (fld := _freq) (ty := tushort)
    rfl hpr rfl (hcenv ▸ hco_fc) (hcenv ▸ hoff_freq) hfqm hagfq
    (eval_fc_addr hcenv hs hk)
  unfold freqLval
  simpa [Val.loadResult, zero_ext16_repr (fq i) (hfq16 i)] using hres

/-! ## The WRITE: a `Sep.Triple` for `f_set_freq`'s whole body -/

/-- **The WRITE, end to end** — the theorem that was impossible before Wave B.
    Running `s->dyn_ltree[k].fc.freq = v;` (the entire body of `set_freq`, as
    generated) turns the table `fq` into `fq[i ↦ v]`.  Everything else — the
    other 572 entries, the `dl` half of entry `i`, and any outer frame — is
    untouched, by the frame discipline. -/
theorem set_freq_triple (ge : CGenv) (fe : EntryRel) (pm : Permission)
    (b : Block) (ofs0 : Integers.Ptrofs) (i vv : Nat) (fq dl : Nat → Nat)
    (hcenv : ge.genv_cenv = prog.prog_comp_env)
    (hpw : permOrder pm .Writable = true)
    (hi : i < 573) (hvv : vv < 65536)
    (hno : ofs0.toNat + 5968 < 18446744073709551616) :
    Sep.Triple ge fe f_set_freq
      (fun _ le hp =>
        le.get _s = some (.Vptr b ofs0)
        ∧ le.get _k = some (.Vint (Integers.Int.repr ((i : Nat) : _root_.Int)))
        ∧ le.get _v = some (.Vint (Integers.Int.repr ((vv : Nat) : _root_.Int)))
        ∧ freqTable pm b ofs0 fq dl hp)
      f_set_freq.fn_body
      (.only (fun _ _ hp =>
        freqTable pm b ofs0 (fun j => if j = i then vv else fq j) dl hp)) := by
  rw [set_body]
  refine Sep.triple_assign ge fe f_set_freq _ _ freqLval (.Etempvar _v tushort)
    .Mint16unsigned pm b (elemAddr ofs0 i) hpw rfl ?_
  intro e le hp m hP hagm
  obtain ⟨hs, hk, hv, harr⟩ := hP
  rw [freqTable, arrayOf_split (ctDataAt pm b fq dl) 4 _ 573 i hi] at harr
  obtain ⟨hel, hrest, hdER, heq, helm, hrestm⟩ := harr
  obtain ⟨hfqh, hdlh, hdFD, heqel, hfqm, hdlm⟩ := helm
  subst heq heqel
  have hdER' := Heap.disjoint_union_left.mp hdER
  refine ⟨.Vint (Integers.Int.repr ((fq i : Nat))),
          .Vint (Integers.Int.repr ((vv : Nat))),
          hfqh, Heap.union hdlh hrest, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · -- the freq cell is disjoint from everything else
    exact Heap.disjoint_union_right.mpr ⟨hdFD, hdER'.1⟩
  · -- the precondition heap reassociates around the cell
    exact Heap.union_assoc hfqh hdlh hrest
  · -- the old value sits at the packed address
    rw [elem_addr_unsigned ofs0 i hi hno]
    exact hfqm
  · -- the l-value chain
    exact eval_freq_lvalue (m := m) hcenv hs hk
  · -- the right-hand side, cast `tushort → tushort` (zero-extension collapses)
    refine ⟨.Vint (Integers.Int.repr ((vv : Nat) : _root_.Int)),
            EvalExpr.Etempvar _ _ _ hv, ?_⟩
    show Cop.semCast _ tushort tushort m = _
    rw [show Cop.semCast (Val.Vint (Integers.Int.repr ((vv : Nat) : _root_.Int)))
          tushort tushort m
        = some (.Vint (Integers.Int.zero_ext 16
            (Integers.Int.repr ((vv : Nat) : _root_.Int)))) from rfl,
        zero_ext16_repr vv hvv]
  · -- rebuild: updated cell + old rest = the table at the updated function
    intro h1' hm1' hd1'
    show freqTable pm b ofs0 (fun j => if j = i then vv else fq j) dl
      (Heap.union h1' (Heap.union hdlh hrest))
    rw [freqTable,
        arrayOf_update (ctDataAt pm b fq dl)
          (ctDataAt pm b (fun j => if j = i then vv else fq j) dl) 4 _ 573 i hi
          (fun j _ hne => by funext off; simp [ctDataAt, hne])]
    have hd1'' := Heap.disjoint_union_right.mp hd1'
    refine ⟨Heap.union h1' hdlh, hrest, ?_, ?_, ?_, hrestm⟩
    · exact Heap.disjoint_union_left.mpr ⟨hd1''.2, hdER'.2⟩
    · exact (Heap.union_assoc h1' hdlh hrest).symm
    · -- the updated element: new freq ∗ old dl
      refine ⟨h1', hdlh, hd1''.1, rfl, ?_, ?_⟩
      · rw [← elem_addr_unsigned ofs0 i hi hno]
        simpa using hm1'
      · simpa using hdlm

/-! ## Non-vacuity -/

/-- The table predicate is satisfiable (at an even base — `ushort` alignment). -/
theorem freq_table_satisfiable (pm : Permission) (b : Block)
    (ofs0 : Integers.Ptrofs) (fq dl : Nat → Nat)
    (halign : ofs0.toNat % 2 = 0) :
    ∃ h, freqTable pm b ofs0 fq dl h := by
  rw [freqTable]
  refine arrayOf_satisfiable (b := b) (esz := 4) (ctDataAt pm b fq dl) 4 _ 573
    ?_ (by omega) (by omega) ?_
  · -- footprint: each element owns exactly its 4 bytes
    intro j off h' hel b' o' hout
    obtain ⟨h1, h2, _, heq, hm1, hm2⟩ := hel
    subst heq
    have e1 : h1 b' o' = none := by
      refine mapsto_none hm1 b' o' ?_
      rcases hout with hb | hlt | hge
      · exact Or.inl hb
      · exact Or.inr (Or.inl hlt)
      · refine Or.inr (Or.inr ?_)
        have hsz : ((sizeChunkNat .Mint16unsigned : Nat) : _root_.Int) = 2 := rfl
        omega
    have e2 : h2 b' o' = none := by
      refine mapsto_none hm2 b' o' ?_
      rcases hout with hb | hlt | hge
      · exact Or.inl hb
      · exact Or.inr (Or.inl (by omega))
      · refine Or.inr (Or.inr ?_)
        have hsz : ((sizeChunkNat .Mint16unsigned : Nat) : _root_.Int) = 2 := rfl
        omega
    simp [Heap.union, e1, e2]
  · -- satisfiability: the two halves live in adjacent 2-byte windows
    intro j
    obtain ⟨h1, hh1⟩ := mapsto_exists .Mint16unsigned pm b
      ((((ofs0.toNat : Nat) : _root_.Int) + 212) + 4 * ((j : Nat) : _root_.Int))
      (.Vint (Integers.Int.repr ((fq j : Nat)))) (by
        have ha : alignChunk .Mint16unsigned = 2 := rfl
        rw [ha]; omega)
    obtain ⟨h2, hh2⟩ := mapsto_exists .Mint16unsigned pm b
      (((((ofs0.toNat : Nat) : _root_.Int) + 212) + 4 * ((j : Nat) : _root_.Int)) + 2)
      (.Vint (Integers.Int.repr ((dl j : Nat)))) (by
        have ha : alignChunk .Mint16unsigned = 2 := rfl
        rw [ha]; omega)
    refine ⟨Heap.union h1 h2, h1, h2, ?_, rfl, hh1, hh2⟩
    intro b' o'
    by_cases hcase : h1 b' o' = none
    · exact Or.inl hcase
    · refine Or.inr (mapsto_none hh2 b' o' ?_)
      refine Or.inr (Or.inl ?_)
      by_cases hx : o' < ((((ofs0.toNat : Nat) : _root_.Int) + 212)
          + 4 * ((j : Nat) : _root_.Int)) + 2
      · exact hx
      · refine absurd (mapsto_none hh1 b' o' (Or.inr (Or.inr ?_))) hcase
        show ((((ofs0.toNat : Nat) : _root_.Int) + 212)
              + 4 * ((j : Nat) : _root_.Int))
            + ((sizeChunkNat .Mint16unsigned : Nat) : _root_.Int) ≤ o'
        have hsz : ((sizeChunkNat .Mint16unsigned : Nat) : _root_.Int) = 2 := rfl
        rw [hsz]
        exact Int.not_lt.mp hx

end TreeSep
