/-
  **Phase-9 Wave-A measurement, upgraded by Wave B to the full predicate.**

  Wave A built the 52-scalar-field `deflate_state` predicate and measured it
  (extraction ~7 ms and index-flat; `fieldOffset` ~320 ms per fact but 3.2 s for
  all 61 batched).  Those measurements set Wave B's design:

  * one **batched offset table** per struct (`offTable_ok` below), projected at
    use sites — never a per-site `decide`;
  * keep the `∗`-chain — the name-keyed finite map stays cancelled.

  Wave B (the `FieldPred` generalisation + `arrayOf`) makes the missing 9 fields
  expressible, so this file now carries the **full 61-field predicate**
  (`stateAtFull`): 6 arrays (`dyn_ltree[573]`, `dyn_dtree[61]`, `bl_tree[39]`,
  `bl_count[16]`, `heap[573]`, `depth[573]`), 3 by-value structs
  (`l_desc`/`d_desc`/`bl_desc`, nested `fieldsAt`), and the 52 scalars.
  The aggregates span offsets 212–5888 — 95 % of `deflate_state` by size.

  Historical corrections kept on record: `internal_state` has **61** members,
  not the survey's 109 (`fields_count`); 52 of them were already expressible in
  Wave A (`stateFields_length`).
-/
import GenDeflate
import CCLib
open CC CC.Sep CC.HProp
open Deflate   -- the generated module now lives in its own namespace

-- the composite has 61 members; `decide` on it walks the whole list
set_option maxRecDepth 20000

namespace DeflateMeasure

/-- The generated composite for `struct internal_state`. -/
def stateCo : Composite :=
  match prog.prog_comp_env.get _internal_state with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

theorem fields_count : stateCo.co_members.length = 61 := by decide

theorem state_sizeof : stateCo.co_sizeof = 5968 := by decide

/-- The generated composite for `struct tree_desc_s` (24 bytes: two pointers and
    an `int`, used by value for `l_desc`/`d_desc`/`bl_desc`). -/
def descCo : Composite :=
  match prog.prog_comp_env.get _tree_desc_s with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

theorem desc_sizeof : descCo.co_sizeof = 24 := by decide

/-! ## The batched offset table — the Wave-B pattern

One `decide` proves every field offset of the struct; use sites *project* from
it.  Never `decide` an offset at a use site: that costs ~320 ms each (the
kernel re-evaluates `identOfString` at every member comparison), versus ~3 s
once here. -/

/-- Every field offset of `internal_state`, as (name, offset) pairs in member
    order. -/
def offTable : List (Ident × CC.Z) :=
  [(_strm, 0), (_status, 8), (_pending_buf, 16), (_pending_buf_size, 24),
   (_pending_out, 32), (_pending, 40), (_wrap, 48), (_gzhead, 56),
   (_gzindex, 64), (_method, 72), (_last_flush, 76), (_w_size, 80),
   (_w_bits, 84), (_w_mask, 88), (_window, 96), (_window_size, 104),
   (_prev, 112), (_head, 120), (_ins_h, 128), (_hash_size, 132),
   (_hash_bits, 136), (_hash_mask, 140), (_hash_shift, 144),
   (_block_start, 152), (_match_length, 160), (_prev_match, 164),
   (_match_available, 168), (_strstart, 172), (_match_start, 176),
   (_lookahead, 180), (_prev_length, 184), (_max_chain_length, 188),
   (_max_lazy_match, 192), (_level, 196), (_strategy, 200), (_good_match, 204),
   (_nice_match, 208), (_dyn_ltree, 212), (_dyn_dtree, 2504), (_bl_tree, 2748),
   (_l_desc, 2904), (_d_desc, 2928), (_bl_desc, 2952), (_bl_count, 2976),
   (_heap, 3008), (_heap_len, 5300), (_heap_max, 5304), (_depth, 5308),
   (_sym_buf, 5888), (_lit_bufsize, 5896), (_sym_next, 5900), (_sym_end, 5904),
   (_opt_len, 5912), (_static_len, 5920), (_matches, 5928), (_insert, 5932),
   (_bi_buf, 5936), (_bi_valid, 5940), (_bi_used, 5944), (_high_water, 5952),
   (_slid, 5960)]

/-- **The batched table, proved in one `decide`.**  Directly projectable:
    `offTable_ok _ (by decide)` is a field-offset fact. -/
theorem offTable_ok : ∀ p ∈ offTable,
    fieldOffset prog.prog_comp_env p.1 stateCo.co_members = .OK (p.2, .Full) := by
  decide

/-- A projection — the form every use site should take. -/
theorem dyn_ltree_offset :
    fieldOffset prog.prog_comp_env _dyn_ltree stateCo.co_members
      = .OK (212, .Full) :=
  offTable_ok (_dyn_ltree, 212) (by decide)

/-! ## The Wave-A scalar layer (kept: it measures the 52-field baseline) -/

/-- The 52 scalar fields of `internal_state`, as `scalarField`s.  Values are
    supplied by a function rather than 52 binders, so the predicate is still
    fully general. -/
def stateFields (pm : Permission) (b : Block) (vals : Nat → Val) : List FieldPred :=
 [ scalarField _strm Mptr pm b (vals 0),
   scalarField _status .Mint32 pm b (vals 1),
   scalarField _pending_buf Mptr pm b (vals 2),
   scalarField _pending_buf_size .Mint64 pm b (vals 3),
   scalarField _pending_out Mptr pm b (vals 4),
   scalarField _pending .Mint64 pm b (vals 5),
   scalarField _wrap .Mint32 pm b (vals 6),
   scalarField _gzhead Mptr pm b (vals 7),
   scalarField _gzindex .Mint64 pm b (vals 8),
   scalarField _method .Mint8unsigned pm b (vals 9),
   scalarField _last_flush .Mint32 pm b (vals 10),
   scalarField _w_size .Mint32 pm b (vals 11),
   scalarField _w_bits .Mint32 pm b (vals 12),
   scalarField _w_mask .Mint32 pm b (vals 13),
   scalarField _window Mptr pm b (vals 14),
   scalarField _window_size .Mint64 pm b (vals 15),
   scalarField _prev Mptr pm b (vals 16),
   scalarField _head Mptr pm b (vals 17),
   scalarField _ins_h .Mint32 pm b (vals 18),
   scalarField _hash_size .Mint32 pm b (vals 19),
   scalarField _hash_bits .Mint32 pm b (vals 20),
   scalarField _hash_mask .Mint32 pm b (vals 21),
   scalarField _hash_shift .Mint32 pm b (vals 22),
   scalarField _block_start .Mint64 pm b (vals 23),
   scalarField _match_length .Mint32 pm b (vals 24),
   scalarField _prev_match .Mint32 pm b (vals 25),
   scalarField _match_available .Mint32 pm b (vals 26),
   scalarField _strstart .Mint32 pm b (vals 27),
   scalarField _match_start .Mint32 pm b (vals 28),
   scalarField _lookahead .Mint32 pm b (vals 29),
   scalarField _prev_length .Mint32 pm b (vals 30),
   scalarField _max_chain_length .Mint32 pm b (vals 31),
   scalarField _max_lazy_match .Mint32 pm b (vals 32),
   scalarField _level .Mint32 pm b (vals 33),
   scalarField _strategy .Mint32 pm b (vals 34),
   scalarField _good_match .Mint32 pm b (vals 35),
   scalarField _nice_match .Mint32 pm b (vals 36),
   scalarField _heap_len .Mint32 pm b (vals 37),
   scalarField _heap_max .Mint32 pm b (vals 38),
   scalarField _sym_buf Mptr pm b (vals 39),
   scalarField _lit_bufsize .Mint32 pm b (vals 40),
   scalarField _sym_next .Mint32 pm b (vals 41),
   scalarField _sym_end .Mint32 pm b (vals 42),
   scalarField _opt_len .Mint64 pm b (vals 43),
   scalarField _static_len .Mint64 pm b (vals 44),
   scalarField _matches .Mint32 pm b (vals 45),
   scalarField _insert .Mint32 pm b (vals 46),
   scalarField _bi_buf .Mint16unsigned pm b (vals 47),
   scalarField _bi_valid .Mint32 pm b (vals 48),
   scalarField _bi_used .Mint32 pm b (vals 49),
   scalarField _high_water .Mint64 pm b (vals 50),
   scalarField _slid .Mint32 pm b (vals 51)]

theorem stateFields_length (pm : Permission) (b : Block) (vals : Nat → Val) :
    (stateFields pm b vals).length = 52 := by
  simp [stateFields]

/-- The Wave-A 52-field predicate (kept as the measured baseline). -/
def stateAt (pm : Permission) (b : Block) (ofs : CC.Z) (vals : Nat → Val) : HProp :=
  structAt prog.prog_comp_env _internal_state ofs (stateFields pm b vals)

section Extract
variable (pm : Permission) (b : Block) (ofs : CC.Z) (vals : Nat → Val)

/-- Extract the **first** field from the 52-way chain. -/
theorem split_first :
    fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFields pm b vals)
      = oneField prog.prog_comp_env stateCo.co_members ofs (stateFields pm b vals)[0]!
        ∗ fieldsAt prog.prog_comp_env stateCo.co_members ofs
            ((stateFields pm b vals).eraseIdx 0) :=
  fieldsAt_split _ _ _ _ 0 (by simp [stateFields])

/-- Extract a **middle** field. -/
theorem split_middle :
    fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFields pm b vals)
      = oneField prog.prog_comp_env stateCo.co_members ofs (stateFields pm b vals)[25]!
        ∗ fieldsAt prog.prog_comp_env stateCo.co_members ofs
            ((stateFields pm b vals).eraseIdx 25) :=
  fieldsAt_split _ _ _ _ 25 (by simp [stateFields])

/-- Extract the **last** field — the worst case for the `∗`-reassociation. -/
theorem split_last :
    fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFields pm b vals)
      = oneField prog.prog_comp_env stateCo.co_members ofs (stateFields pm b vals)[51]!
        ∗ fieldsAt prog.prog_comp_env stateCo.co_members ofs
            ((stateFields pm b vals).eraseIdx 51) :=
  fieldsAt_split _ _ _ _ 51 (by simp [stateFields])

end Extract

/-! ## Wave B: the full 61-field predicate

The 9 aggregate fields, expressible now that a field's content is an arbitrary
`Z → HProp`.  A `ct_data` is two `ushort`s with no padding (measured in Wave A:
size 4, align 2, unions of size 2), so a Huffman-table element is two 16-bit
`mapsto`s at stride 4. -/

/-- One `ct_data` element: `.fc.freq` at offset 0, `.dl.dad` at offset 2 (the
    union members share their slots; `fq`/`dl` are the active values). -/
def ctDataAt (pm : Permission) (b : Block) (fq dl : Nat → Nat) :
    Nat → _root_.Int → HProp :=
  fun i off =>
    mapsto .Mint16unsigned pm b off (.Vint (Integers.Int.repr ((fq i : Nat))))
      ∗ mapsto .Mint16unsigned pm b (off + 2) (.Vint (Integers.Int.repr ((dl i : Nat))))

/-- A by-value `tree_desc_s`: a nested `fieldsAt` at the field's own offset. -/
def treeDescAt (pm : Permission) (b : Block) (v3 : Val × Val × Val) :
    CC.Z → HProp :=
  fun off => fieldsAt prog.prog_comp_env descCo.co_members off
    [scalarField _dyn_tree Mptr pm b v3.1,
     scalarField _max_code .Mint32 pm b v3.2.1,
     scalarField _stat_desc Mptr pm b v3.2.2]

/-- All the values a full `deflate_state` carries, bundled. -/
structure StateVals where
  vals : Nat → Val                 -- the 52 scalars, in `stateFields` order
  ltF : Nat → Nat                  -- dyn_ltree[573] freq
  ltD : Nat → Nat                  -- dyn_ltree[573] dl
  dtF : Nat → Nat                  -- dyn_dtree[61] freq
  dtD : Nat → Nat                  -- dyn_dtree[61] dl
  blF : Nat → Nat                  -- bl_tree[39] freq
  blD : Nat → Nat                  -- bl_tree[39] dl
  blCount : Nat → Nat              -- bl_count[16] (ushort)
  heapA : Nat → Integers.Int       -- heap[573] (int)
  depthA : Nat → Nat               -- depth[573] (uchar)
  lDesc : Val × Val × Val
  dDesc : Val × Val × Val
  blDesc : Val × Val × Val

/-- **All 61 fields of `deflate_state`**, in member order. -/
def stateFieldsFull (pm : Permission) (b : Block) (sv : StateVals) :
    List FieldPred :=
 [ scalarField _strm Mptr pm b (sv.vals 0),
   scalarField _status .Mint32 pm b (sv.vals 1),
   scalarField _pending_buf Mptr pm b (sv.vals 2),
   scalarField _pending_buf_size .Mint64 pm b (sv.vals 3),
   scalarField _pending_out Mptr pm b (sv.vals 4),
   scalarField _pending .Mint64 pm b (sv.vals 5),
   scalarField _wrap .Mint32 pm b (sv.vals 6),
   scalarField _gzhead Mptr pm b (sv.vals 7),
   scalarField _gzindex .Mint64 pm b (sv.vals 8),
   scalarField _method .Mint8unsigned pm b (sv.vals 9),
   scalarField _last_flush .Mint32 pm b (sv.vals 10),
   scalarField _w_size .Mint32 pm b (sv.vals 11),
   scalarField _w_bits .Mint32 pm b (sv.vals 12),
   scalarField _w_mask .Mint32 pm b (sv.vals 13),
   scalarField _window Mptr pm b (sv.vals 14),
   scalarField _window_size .Mint64 pm b (sv.vals 15),
   scalarField _prev Mptr pm b (sv.vals 16),
   scalarField _head Mptr pm b (sv.vals 17),
   scalarField _ins_h .Mint32 pm b (sv.vals 18),
   scalarField _hash_size .Mint32 pm b (sv.vals 19),
   scalarField _hash_bits .Mint32 pm b (sv.vals 20),
   scalarField _hash_mask .Mint32 pm b (sv.vals 21),
   scalarField _hash_shift .Mint32 pm b (sv.vals 22),
   scalarField _block_start .Mint64 pm b (sv.vals 23),
   scalarField _match_length .Mint32 pm b (sv.vals 24),
   scalarField _prev_match .Mint32 pm b (sv.vals 25),
   scalarField _match_available .Mint32 pm b (sv.vals 26),
   scalarField _strstart .Mint32 pm b (sv.vals 27),
   scalarField _match_start .Mint32 pm b (sv.vals 28),
   scalarField _lookahead .Mint32 pm b (sv.vals 29),
   scalarField _prev_length .Mint32 pm b (sv.vals 30),
   scalarField _max_chain_length .Mint32 pm b (sv.vals 31),
   scalarField _max_lazy_match .Mint32 pm b (sv.vals 32),
   scalarField _level .Mint32 pm b (sv.vals 33),
   scalarField _strategy .Mint32 pm b (sv.vals 34),
   scalarField _good_match .Mint32 pm b (sv.vals 35),
   scalarField _nice_match .Mint32 pm b (sv.vals 36),
   (_dyn_ltree, fun off => arrayOf (ctDataAt pm b sv.ltF sv.ltD) 4 off 573),
   (_dyn_dtree, fun off => arrayOf (ctDataAt pm b sv.dtF sv.dtD) 4 off 61),
   (_bl_tree,   fun off => arrayOf (ctDataAt pm b sv.blF sv.blD) 4 off 39),
   (_l_desc,  treeDescAt pm b sv.lDesc),
   (_d_desc,  treeDescAt pm b sv.dDesc),
   (_bl_desc, treeDescAt pm b sv.blDesc),
   (_bl_count, fun off => arrayU16 pm b off 16 sv.blCount),
   (_heap,     fun off => arrayU32 pm b off 573 sv.heapA),
   scalarField _heap_len .Mint32 pm b (sv.vals 37),
   scalarField _heap_max .Mint32 pm b (sv.vals 38),
   (_depth,    fun off => arrayU8 pm b off 573 sv.depthA),
   scalarField _sym_buf Mptr pm b (sv.vals 39),
   scalarField _lit_bufsize .Mint32 pm b (sv.vals 40),
   scalarField _sym_next .Mint32 pm b (sv.vals 41),
   scalarField _sym_end .Mint32 pm b (sv.vals 42),
   scalarField _opt_len .Mint64 pm b (sv.vals 43),
   scalarField _static_len .Mint64 pm b (sv.vals 44),
   scalarField _matches .Mint32 pm b (sv.vals 45),
   scalarField _insert .Mint32 pm b (sv.vals 46),
   scalarField _bi_buf .Mint16unsigned pm b (sv.vals 47),
   scalarField _bi_valid .Mint32 pm b (sv.vals 48),
   scalarField _bi_used .Mint32 pm b (sv.vals 49),
   scalarField _high_water .Mint64 pm b (sv.vals 50),
   scalarField _slid .Mint32 pm b (sv.vals 51)]

theorem stateFieldsFull_length (pm : Permission) (b : Block) (sv : StateVals) :
    (stateFieldsFull pm b sv).length = 61 := by
  simp [stateFieldsFull]

/-- **The full `deflate_state` predicate** — every byte of the struct except
    internal padding is described. -/
def stateAtFull (pm : Permission) (b : Block) (ofs : CC.Z) (sv : StateVals) : HProp :=
  structAt prog.prog_comp_env _internal_state ofs (stateFieldsFull pm b sv)

section ExtractFull
variable (pm : Permission) (b : Block) (ofs : CC.Z) (sv : StateVals)

/-- **Name-keyed extraction of `dyn_ltree` from the full 61-field chain** — the
    Wave-B use-site shape: `fieldsAt_split_name` finds the field by name
    (`find?`/`eraseP` reduce by `rfl` on the concrete list), `oneField_eq` +
    the batched offset table then place the array at `ofs + 212`. -/
theorem split_dyn_ltree_name :
    fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFieldsFull pm b sv)
      = oneField prog.prog_comp_env stateCo.co_members ofs
          (_dyn_ltree, fun off => arrayOf (ctDataAt pm b sv.ltF sv.ltD) 4 off 573)
        ∗ fieldsAt prog.prog_comp_env stateCo.co_members ofs
            ((stateFieldsFull pm b sv).eraseP (fun p => p.1 == _dyn_ltree)) :=
  fieldsAt_split_name _ _ _ _ _ _ (by rfl)

/-- …and the extracted field is a concrete `arrayOf` at absolute offset
    `ofs + 212`, by projection from the batched table. -/
theorem dyn_ltree_field_eq :
    oneField prog.prog_comp_env stateCo.co_members ofs
      (_dyn_ltree, fun off => arrayOf (ctDataAt pm b sv.ltF sv.ltD) 4 off 573)
      = arrayOf (ctDataAt pm b sv.ltF sv.ltD) 4 (ofs + 212) 573 :=
  oneField_eq ofs dyn_ltree_offset

end ExtractFull

/-! ## Results

Wave-A measurements (kept for the record):

| what | cost |
|---|---|
| the 52-field predicate (`stateAt`) + composite facts | **0.59 s** |
| + three `fieldsAt_split` extractions (first / middle / last) | **0.61 s** → ~**7 ms each** |
| + three `fieldOffset … = .OK …` by `decide` | **1.56 s** → ~**320 ms each** |
| all **61** offsets, one `decide` each | **17.5 s** |
| all **61** offsets, **one batched `decide`** (`offTable_ok`) | **~3 s** |

**Decision 1 — keep the `∗`-chain; do NOT build a name-keyed finite map.**
**Decision 2 — one batched offset table per struct, projected at use sites.**

Wave-B additions measured here: the full 61-field predicate elaborates, and
name-keyed extraction over it (`split_dyn_ltree_name`, `find?` by `rfl` over
61 identifier comparisons) is cheap.  See the build log for current wall
clock. -/

/-- Offset of the **first** field (Wave-A measurement artifact). -/
theorem offset_first : fieldOffset prog.prog_comp_env _strm stateCo.co_members
    = .OK (0, .Full) := by decide

/-- Offset of the **last** field — member 61 of 61 (Wave-A measurement
    artifact; kernel `decide`, needed `native_decide` before Step 10). -/
theorem offset_last : fieldOffset prog.prog_comp_env _slid stateCo.co_members
    = .OK (5960, .Full) := by decide

end DeflateMeasure
