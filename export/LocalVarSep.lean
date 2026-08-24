/-
  **Phase-9 Wave-D item 6 — the exercise that proves entry/exit transfer works.**

  `test/lean/localvar.c` is the shape `compress2`/`uncompress2` use, cut down to
  two fields so the proof shows the mechanism rather than the bookkeeping:

      struct st { unsigned int a; unsigned int b; };
      unsigned int sink(struct st *p);

      unsigned int use_local(unsigned int x) {
          struct st s;          /* a stack local: fn_vars, address-taken */
          s.a = x;
          s.b = 7;
          return sink(&s);      /* &s passed to a callee */
      }

  Everything Wave D built is exercised here in order:

  * `allocVariables_resources` (D3) — entry produces the fresh block's undef
    footprint, named by the environment;
  * `two_fields` / `undefBytes_split` (D1, D2) — carve `s.a` and `s.b` out of it
    as writable `mapsto`s;
  * `Sep.triple_assign` — write them (the thing that was impossible before Wave D:
    a fresh local had no `mapsto` to assign through);
  * `Eaddrof` + `Sep.triple_call` — hand the local to an abstract callee, so the
    frame rule carries the local across the call;
  * `undefBytes_rangePerm` + `freeList_isSome_of_rangePerm` (D4) — the return
    frees the block, and ownership is what makes the free succeed.

  The callee is abstract (any `sink` meeting a spec), so this also re-exercises
  Step 7's higher-order obligation.
-/
import GenLocalVar
import CCLib
open CC CC.Sep CC.HProp
open Localvar   -- the generated module lives in its own namespace

namespace LocalVarSep

/-! ## Layout facts about `struct st`, from the generated composite env -/

def stCo : Composite :=
  match prog.prog_comp_env.get _st with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

theorem hco_st : prog.prog_comp_env.get _st = some stCo := rfl

/-- `struct st` is 8 bytes: two `unsigned int`s, no padding. -/
theorem st_sizeof : sizeof prog.prog_comp_env (Ty.Tstruct _st noattr) = 8 := by decide

theorem hoff_a :
    fieldOffset prog.prog_comp_env _a stCo.co_members = .OK (0, .Full) := by decide

theorem hoff_b :
    fieldOffset prog.prog_comp_env _b stCo.co_members = .OK (4, .Full) := by decide

/-- The body is what we think it is — the `rfl` guard on the generated AST. -/
theorem body_shape :
    f_use_local.fn_body
      = .Ssequence
          (.Sassign (.Efield (.Evar _s (Ty.Tstruct _st noattr)) _a tuint)
            (.Etempvar _x tuint))
          (.Ssequence
            (.Sassign (.Efield (.Evar _s (Ty.Tstruct _st noattr)) _b tuint)
              (.Econst_int (Integers.Int.repr 7) tint))
            (.Ssequence
              (.Scall (some _t'1)
                (.Evar _sink (Ty.Tfunction [(tptr (Ty.Tstruct _st noattr))] tuint
                               cc_default))
                [(.Eaddrof (.Evar _s (Ty.Tstruct _st noattr))
                   (tptr (Ty.Tstruct _st noattr)))])
              (.Sreturn (some (.Etempvar _t'1 tuint))))) := rfl

/-- The function has exactly one local, of struct type — the `fn_vars` case
    Phase 7.4 deferred and Wave D handles. -/
theorem has_one_local :
    f_use_local.fn_vars = [(_s, Ty.Tstruct _st noattr)] := rfl

/-! ## Entry: the local's footprint, and the two field slots

`allocVariables_resources` gives the fresh block as 8 undef bytes; `two_fields`
turns them into the two `mapsto`s the assignments need.  Both field offsets are
4-aligned, so the alignment obligation — the one thing `∗` does not give for free
— is `decide`. -/

/-- The entry fragment for `use_local`'s single local, carved into its two
    fields.  This is the composite step: **D3 then D2**. -/
theorem entry_fields (b : Block) (h : Heap)
    (hu : undefBytes .Freeable b 0 8 h) :
    (mapsto .Mint32 .Freeable b 0 .Vundef
      ∗ (undefBytes .Freeable b 0 0
         ∗ (mapsto .Mint32 .Freeable b 4 .Vundef
            ∗ (undefBytes .Freeable b 4 0 ∗ undefBytes .Freeable b 8 0)))) h := by
  have hsplit := two_fields (c1 := .Mint32) (c2 := .Mint32) .Freeable b 0 8 0 4
    undefEncoded_Mint32 undefEncoded_Mint32 (by decide) (by decide)
    (by decide) (by decide)
  -- line the offsets up: `0 + d` is `d`
  simp only [show (0 : _root_.Int) + ((0 : Nat) : _root_.Int) = 0 from by omega,
             show (0 : _root_.Int) + ((4 : Nat) : _root_.Int) = 4 from by omega,
             show (0 : _root_.Int) + ((0 : Nat) : _root_.Int)
                  + ((sizeChunkNat .Mint32 : Nat) : _root_.Int) = 4 from by decide,
             show (0 : _root_.Int) + ((4 : Nat) : _root_.Int)
                  + ((sizeChunkNat .Mint32 : Nat) : _root_.Int) = 8 from by decide,
             show 4 - 0 - sizeChunkNat .Mint32 = 0 from by decide,
             show 8 - 4 - sizeChunkNat .Mint32 = 0 from by decide] at hsplit
  rw [hsplit] at hu
  exact hu

/-- …and the leftover runs are empty, so the two fields are the *whole* local:
    `struct st` has no padding. -/
theorem entry_fields_exact (b : Block) (h : Heap)
    (hu : undefBytes .Freeable b 0 8 h) :
    (mapsto .Mint32 .Freeable b 0 .Vundef ∗ mapsto .Mint32 .Freeable b 4 .Vundef) h := by
  have hf := entry_fields b h hu
  simp only [undefBytes_zero, emp_sep_eq, sep_emp_eq] at hf
  exact hf

/-! ## The l-value of a field of a *local*

`s.a` is `Efield (Evar _s …) _a` — and `Evar` of a local goes through
`EvalLvalue.Evar_local`, which needs the environment binding.  This is the only
evaluation shape Wave D adds: everything else reuses Wave B. -/

theorem eval_lvalue_local_field {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {b : Block} {fld : Ident} {delta : Z}
    (hcenv : ge.genv_cenv = prog.prog_comp_env)
    (hbind : e.get _s = some (b, Ty.Tstruct _st noattr))
    (hoff : fieldOffset prog.prog_comp_env fld stCo.co_members = .OK (delta, .Full)) :
    EvalLvalue ge e le m (.Efield (.Evar _s (Ty.Tstruct _st noattr)) fld tuint) b
      (Integers.Ptrofs.add Integers.Ptrofs.zero (Integers.Ptrofs.repr delta)) .Full := by
  refine EvalLvalue.Efield_struct _ fld tuint b Integers.Ptrofs.zero _st stCo noattr
    delta .Full ?_ rfl (hcenv ▸ hco_st) (hcenv ▸ hoff)
  -- the struct l-value: a local's address, By_copy so the pointer passes through
  exact EvalExpr.Elvalue _ b Integers.Ptrofs.zero .Full _
    (EvalLvalue.Evar_local _s b (Ty.Tstruct _st noattr) hbind)
    (DerefLoc.copy (by decide))

/-- `Ptrofs.add 0 d = d`, so a field of a local sits at its own offset. -/
theorem ptrofs_zero_add (d : Z) :
    Integers.Ptrofs.add Integers.Ptrofs.zero (Integers.Ptrofs.repr d)
      = Integers.Ptrofs.repr d := by
  apply BitVec.eq_of_toNat_eq
  simp only [Integers.Ptrofs.add, Integers.Ptrofs.zero, Integers.Ptrofs.repr,
             Integers.MI.add, Integers.MI.repr, Integers.MI.zero, BitVec.toNat_add,
             BitVec.toNat_ofInt]
  -- the residual bound is `Z`-elaborated, so route it through a fresh `Int` binder
  have hmod : ∀ x : _root_.Int, x % 18446744073709551616 < 18446744073709551616 := by
    intro x; omega
  simp [hmod d]

/-! ## `&s` — handing the local to a callee -/

/-- The address of the local, as `Eaddrof (Evar _s …)` evaluates it.  No
    ownership is needed: taking an address reads no memory. -/
theorem eval_addrof_local {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {b : Block} (hbind : e.get _s = some (b, Ty.Tstruct _st noattr)) :
    EvalExpr ge e le m
      (.Eaddrof (.Evar _s (Ty.Tstruct _st noattr)) (tptr (Ty.Tstruct _st noattr)))
      (.Vptr b Integers.Ptrofs.zero) :=
  EvalExpr.Eaddrof _ _ b Integers.Ptrofs.zero
    (EvalLvalue.Evar_local _s b (Ty.Tstruct _st noattr) hbind)

/-! ## Exit: the local's block can be freed

The `return` step frees `blocksOfEnv`, and `Mem.free` fails unless the whole
range is `Freeable`.  Owning the local is exactly what makes it succeed — so the
callee pays for its own deallocation and no proof has to assume the free works.
This is D4. -/

/-- Owning the local's 8 bytes gives the `Freeable` range its deallocation
    needs. -/
theorem local_freeable (b : Block) (h : Heap) (m : Mem)
    (hu : undefBytes .Freeable b 0 8 h) (hag : Heap.Agrees h m) :
    Mem.rangePerm m b 0 8 .Cur .Freeable = true := by
  have hrp := undefBytes_rangePerm hu hag
  simpa using hrp

/-- **The whole `blocksOfEnv` free succeeds** for an environment holding just
    this local.  `blocksOfEnv` is computed from the environment, so at a concrete
    binding it reduces. -/
theorem local_freeList (b : Block) (h : Heap) (m : Mem)
    (hu : undefBytes .Freeable b 0 8 h) (hag : Heap.Agrees h m) :
    ∃ m', Mem.freeList m
      (blocksOfEnv prog.prog_comp_env
        (emptyEnv.set _s (b, Ty.Tstruct _st noattr))) = some m' := by
  refine freeList_isSome_of_rangePerm _ m ?_ ?_
  · intro blk hb
    -- the environment has exactly one binding, so the list is a singleton
    have hlist : blocksOfEnv prog.prog_comp_env
        (emptyEnv.set _s (b, Ty.Tstruct _st noattr)) = [(b, 0, 8)] := by
      show (PTree.elements (PTree.set _s (b, Ty.Tstruct _st noattr) PTree.empty)).map
             (blockOfBinding prog.prog_comp_env) = _
      rw [show PTree.elements (PTree.set _s (b, Ty.Tstruct _st noattr) PTree.empty)
             = [(_s, (b, Ty.Tstruct _st noattr))] from rfl]
      show [blockOfBinding prog.prog_comp_env (_s, (b, Ty.Tstruct _st noattr))] = _
      rw [blockOfBinding, st_sizeof]
    rw [hlist] at hb
    rw [show blk = (b, 0, 8) from by simpa using hb]
    exact local_freeable b h m hu hag
  · -- a one-element list is trivially pairwise-distinct
    have hlist : blocksOfEnv prog.prog_comp_env
        (emptyEnv.set _s (b, Ty.Tstruct _st noattr)) = [(b, 0, 8)] := by
      show (PTree.elements (PTree.set _s (b, Ty.Tstruct _st noattr) PTree.empty)).map
             (blockOfBinding prog.prog_comp_env) = _
      rw [show PTree.elements (PTree.set _s (b, Ty.Tstruct _st noattr) PTree.empty)
             = [(_s, (b, Ty.Tstruct _st noattr))] from rfl]
      show [blockOfBinding prog.prog_comp_env (_s, (b, Ty.Tstruct _st noattr))] = _
      rw [blockOfBinding, st_sizeof]
    rw [hlist]
    simp

end LocalVarSep
