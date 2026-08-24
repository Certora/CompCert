/-
  **M0b — the scale probe.**  The first of the round-trip plan's three kill-tests,
  and the one most likely to end the project: *death by elaboration, not
  mathematics.*

  `inflate` is the worst case in the whole zlib round trip:

  * `struct inflate_state` is **35 fields, 7160 bytes** — and `codes` alone is an
    array of 1444 four-byte `code` structs (5776 bytes), with `lens[320]` and
    `work[288]` beside it;
  * `f_inflate` declares **404 temporaries**, 3 stack locals, 1 label and 37
    `goto`s to it.

  `DeflateMeasure` reported ~320 ms for a *single* field-offset `decide` and
  needed `maxRecDepth 20000`.  If one proof step inside `inflate` costs seconds,
  the artifact becomes unbuildable long before it becomes mathematically
  incomplete — so the question is measured here, before any of it is built.

  **What this file measures, in order:**

  1. the composite facts (35 fields, 7160 bytes) — `decide` at this size;
  2. all 35 field offsets in ONE batched `decide` (`offTable_ok`);
  3. elaboration of the FULL 35-field predicate, arrays included;
  4. name-keyed extraction of a field from the middle of it, and of the
     5776-byte `codes` array;
  5. **the probe proper** — one `triple_set_local` step on a statement from
     `inflate`'s own body, carrying the full predicate, against the same step
     carrying `emp`.  The *ratio* is the answer.

  The conclusions are recorded at the bottom of the file.
-/
import GenZInflate
import CCLib
open CC CC.Sep CC.HProp
open Inflate

set_option maxRecDepth 20000
set_option profiler true
set_option profiler.threshold 50

namespace InflateMeasure

/-! ## 1. The composite -/

/-- The generated composite for `struct inflate_state`. -/
def stateCo : Composite :=
  match prog.prog_comp_env.get _inflate_state with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

theorem fields_count : stateCo.co_members.length = 35 := by decide

/-- 7160 bytes — bigger than `internal_state`'s 5968, and the plan's "~6 KB"
    figure was low. -/
theorem state_sizeof : stateCo.co_sizeof = 7160 := by decide

/-- `struct code` — clightgen names the anonymous struct `__1353`.  Four bytes:
    `op`/`bits` as `uchar`, `val` as `ushort`. -/
def codeCo : Composite :=
  match prog.prog_comp_env.get __1353 with
  | some co => co
  | none => { co_su := .Struct, co_members := [], co_attr := noattr,
              co_sizeof := 0, co_alignof := 1, co_rank := 0 }

theorem code_sizeof : codeCo.co_sizeof = 4 := by decide

/-! ## 2. Every field offset, batched

`DeflateMeasure` established the shape: one `decide` over a table of pairs, not
one `decide` per field.  Here it is at 35 fields; the offsets were read out of
`fieldOffset` itself rather than computed by hand. -/

/-- Every field offset of `inflate_state`, in member order. -/
def offTable : List (Ident × CC.Z) :=
  [(_strm, 0), (_mode, 8), (_last, 12), (_wrap, 16), (_havedict, 20),
   (_flags, 24), (_dmax, 28), (_check, 32), (_total, 40), (_head, 48),
   (_wbits, 56), (_wsize, 60), (_whave, 64), (_wnext, 68), (_window, 72),
   (_hold, 80), (_bits, 88), (_length, 92), (_offset, 96), (_extra, 100),
   (_lencode, 104), (_distcode, 112), (_lenbits, 120), (_distbits, 124),
   (_ncode, 128), (_nlen, 132), (_ndist, 136), (_have, 140), (_next, 144),
   (_lens, 152), (_work, 792), (_codes, 1368), (_sane, 7144), (_back, 7148),
   (_was, 7152)]

/-- **All 35 offsets in one `decide`.** -/
theorem offTable_ok : ∀ p ∈ offTable,
    fieldOffset prog.prog_comp_env p.1 stateCo.co_members = .OK (p.2, .Full) := by
  decide

/-- A projection — the form every use site should take.  `codes` is the
    interesting one: it is where `inflate_table` writes and where the LEN/DIST
    decode reads. -/
theorem codes_offset :
    fieldOffset prog.prog_comp_env _codes stateCo.co_members = .OK (1368, .Full) :=
  offTable_ok (_codes, 1368) (by decide)

/-! ## 3. The full predicate

Three of the 35 fields are aggregates.  Each is ONE `HProp` — `arrayOf` is
index-function-based, so `codes` costs the same to elaborate at 1444 elements as
at 1 — which is the property this file is really testing. -/

/-- One `struct code`: `op`, `bits`, `val`. -/
def codeElt (pm : Permission) (b : Block) (f : Nat → Nat × Nat × Nat) :
    Nat → _root_.Int → HProp :=
  fun i off =>
    mapsto .Mint8unsigned pm b off (.Vint (Integers.Int.repr ((f i).1 : _root_.Int)))
    ∗ mapsto .Mint8unsigned pm b (off + 1)
        (.Vint (Integers.Int.repr ((f i).2.1 : _root_.Int)))
    ∗ mapsto .Mint16unsigned pm b (off + 2)
        (.Vint (Integers.Int.repr ((f i).2.2 : _root_.Int)))

/-- The values the predicate is parameterised by: 32 scalars supplied by a
    function, and one function per aggregate. -/
structure StateVals where
  sc : Nat → Val                  -- the 32 scalar fields
  lens : Nat → Nat                -- `lens[320]`
  work : Nat → Nat                -- `work[288]`
  codes : Nat → Nat × Nat × Nat   -- `codes[1444]`

/-- **All 35 fields of `inflate_state`.**  32 scalars plus three aggregates. -/
def stateFieldsFull (pm : Permission) (b : Block) (sv : StateVals) :
    List FieldPred :=
  [ scalarField _strm Mptr pm b (sv.sc 0),
    scalarField _mode .Mint32 pm b (sv.sc 1),
    scalarField _last .Mint32 pm b (sv.sc 2),
    scalarField _wrap .Mint32 pm b (sv.sc 3),
    scalarField _havedict .Mint32 pm b (sv.sc 4),
    scalarField _flags .Mint32 pm b (sv.sc 5),
    scalarField _dmax .Mint32 pm b (sv.sc 6),
    scalarField _check .Mint64 pm b (sv.sc 7),
    scalarField _total .Mint64 pm b (sv.sc 8),
    scalarField _head Mptr pm b (sv.sc 9),
    scalarField _wbits .Mint32 pm b (sv.sc 10),
    scalarField _wsize .Mint32 pm b (sv.sc 11),
    scalarField _whave .Mint32 pm b (sv.sc 12),
    scalarField _wnext .Mint32 pm b (sv.sc 13),
    scalarField _window Mptr pm b (sv.sc 14),
    scalarField _hold .Mint64 pm b (sv.sc 15),
    scalarField _bits .Mint32 pm b (sv.sc 16),
    scalarField _length .Mint32 pm b (sv.sc 17),
    scalarField _offset .Mint32 pm b (sv.sc 18),
    scalarField _extra .Mint32 pm b (sv.sc 19),
    scalarField _lencode Mptr pm b (sv.sc 20),
    scalarField _distcode Mptr pm b (sv.sc 21),
    scalarField _lenbits .Mint32 pm b (sv.sc 22),
    scalarField _distbits .Mint32 pm b (sv.sc 23),
    scalarField _ncode .Mint32 pm b (sv.sc 24),
    scalarField _nlen .Mint32 pm b (sv.sc 25),
    scalarField _ndist .Mint32 pm b (sv.sc 26),
    scalarField _have .Mint32 pm b (sv.sc 27),
    scalarField _next Mptr pm b (sv.sc 28),
    -- the three aggregates, each a single `HProp`
    (_lens, fun off => arrayU16 pm b off 320 sv.lens),
    (_work, fun off => arrayU16 pm b off 288 sv.work),
    (_codes, fun off => arrayOf (codeElt pm b sv.codes) 4 off 1444),
    scalarField _sane .Mint32 pm b (sv.sc 29),
    scalarField _back .Mint32 pm b (sv.sc 30),
    scalarField _was .Mint32 pm b (sv.sc 31) ]

theorem stateFieldsFull_length (pm : Permission) (b : Block) (sv : StateVals) :
    (stateFieldsFull pm b sv).length = 35 := rfl

/-- The whole 7160-byte struct, as one `HProp`. -/
def stateAtFull (pm : Permission) (b : Block) (ofs : CC.Z) (sv : StateVals) :
    HProp :=
  fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFieldsFull pm b sv)

/-! ## 4. Extraction from the middle

`fieldsAt_split_name` peels a named field out as an equality, so it joins as well
as splits.  The two interesting cases are a scalar deep in the list and the
5776-byte array. -/

/-- `hold` — field 15 of 35, the bit accumulator every decode step touches. -/
theorem split_hold (pm : Permission) (b : Block) (ofs : CC.Z) (sv : StateVals) :
    fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFieldsFull pm b sv)
      = oneField prog.prog_comp_env stateCo.co_members ofs
          (scalarField _hold .Mint64 pm b (sv.sc 15))
        ∗ fieldsAt prog.prog_comp_env stateCo.co_members ofs
            ((stateFieldsFull pm b sv).eraseP (fun p => p.1 == _hold)) :=
  fieldsAt_split_name _ _ _ _ _ _ (by rfl)

/-- `codes` — the 1444-element table.  Extracting it is the same work as
    extracting a scalar: the array's size never enters. -/
theorem split_codes (pm : Permission) (b : Block) (ofs : CC.Z) (sv : StateVals) :
    fieldsAt prog.prog_comp_env stateCo.co_members ofs (stateFieldsFull pm b sv)
      = oneField prog.prog_comp_env stateCo.co_members ofs
          (_codes, fun off => arrayOf (codeElt pm b sv.codes) 4 off 1444)
        ∗ fieldsAt prog.prog_comp_env stateCo.co_members ofs
            ((stateFieldsFull pm b sv).eraseP (fun p => p.1 == _codes)) :=
  fieldsAt_split_name _ _ _ _ _ _ (by rfl)

/-! ## 5. The probe

`inflate`'s body opens with a call to `inflateStateCheck` and then this
assignment, inside the argument-validation cascade:

    Sset _t'2 (Econst_int 1 tint)

`triple_set_local` is the rule for it.  The measurement is the same step twice —
once with the full 7160-byte predicate as the heap fragment, once with `emp` —
against a tracked-temporary list of `inflate`'s own live locals. -/

/-- Ten of `inflate`'s 404 temporaries: the ones live across the whole body.
    `abbrev`, not `def` — `temps_ne`/`temps_mem` work on the list's structure, so
    a named tracked list has to be reducible (`CCLib.Temps` notes this). -/
abbrev tracked (vs : Nat → Val) : List (Ident × Val) :=
  [(_strm, vs 0), (_state, vs 1), (_next, vs 2), (_put, vs 3), (_have, vs 4),
   (_left, vs 5), (_hold, vs 6), (_bits, vs 7), (_in, vs 8), (_out, vs 9)]

/-- **The probe.**  One `Sset` step, carrying all 35 fields. -/
theorem probe_full (ge : CGenv) (fe : EntryRel) (E : Env) (pm : Permission)
    (b : Block) (ofs : CC.Z) (sv : StateVals) (vs : Nat → Val) :
    Triple ge fe f_inflate
      (LocalSt E (tracked vs) (stateAtFull pm b ofs sv))
      (.Sset _t'2 (.Econst_int (Integers.Int.repr 1) tint))
      (.only (LocalSt E ((_t'2, .Vint (Integers.Int.repr 1)) :: tracked vs)
                (stateAtFull pm b ofs sv))) := by
  refine triple_set_local ge fe f_inflate E (tracked vs) (tracked vs) _ _ _ _
    (by temps_mem) (by temps_ne) (fun le m hp _ _ _ => ?_)
  exact EvalExpr.Econst_int _ _

/-- **The control.**  The identical step with an empty heap fragment.  Any gap
    between this and `probe_full` is the price of the big predicate. -/
theorem probe_emp (ge : CGenv) (fe : EntryRel) (E : Env) (vs : Nat → Val) :
    Triple ge fe f_inflate
      (LocalSt E (tracked vs) emp)
      (.Sset _t'2 (.Econst_int (Integers.Int.repr 1) tint))
      (.only (LocalSt E ((_t'2, .Vint (Integers.Int.repr 1)) :: tracked vs)
                emp)) := by
  refine triple_set_local ge fe f_inflate E (tracked vs) (tracked vs) _ _ _ _
    (by temps_mem) (by temps_ne) (fun le m hp _ _ _ => ?_)
  exact EvalExpr.Econst_int _ _

/-- Forty tracked temporaries instead of ten, to separate the two candidate cost
    drivers: predicate size and live-temp count. -/
abbrev tracked40 (vs : Nat → Val) : List (Ident × Val) :=
  [(_strm, vs 0), (_state, vs 1), (_next, vs 2), (_put, vs 3), (_have, vs 4),
   (_left, vs 5), (_hold, vs 6), (_bits, vs 7), (_in, vs 8), (_out, vs 9),
   (_copy, vs 10), (_from, vs 11), (_len, vs 12), (_ret, vs 13),
   (_t'109, vs 14), (_t'108, vs 15), (_t'107, vs 16), (_t'106, vs 17),
   (_t'105, vs 18), (_t'104, vs 19), (_t'103, vs 20), (_t'102, vs 21),
   (_t'101, vs 22), (_t'100, vs 23), (_t'99, vs 24), (_t'98, vs 25),
   (_t'97, vs 26), (_t'96, vs 27), (_t'95, vs 28), (_t'94, vs 29),
   (_t'93, vs 30), (_t'92, vs 31), (_t'91, vs 32), (_t'90, vs 33),
   (_t'89, vs 34), (_t'88, vs 35), (_t'87, vs 36), (_t'86, vs 37),
   (_t'85, vs 38), (_t'84, vs 39)]

/-- The same step at 40 live temporaries AND the full predicate. -/
theorem probe_full_40 (ge : CGenv) (fe : EntryRel) (E : Env) (pm : Permission)
    (b : Block) (ofs : CC.Z) (sv : StateVals) (vs : Nat → Val) :
    Triple ge fe f_inflate
      (LocalSt E (tracked40 vs) (stateAtFull pm b ofs sv))
      (.Sset _t'2 (.Econst_int (Integers.Int.repr 1) tint))
      (.only (LocalSt E ((_t'2, .Vint (Integers.Int.repr 1)) :: tracked40 vs)
                (stateAtFull pm b ofs sv))) := by
  refine triple_set_local ge fe f_inflate E (tracked40 vs) (tracked40 vs) _ _ _ _
    (by temps_mem) (by temps_ne) (fun le m hp _ _ _ => ?_)
  exact EvalExpr.Econst_int _ _

/-- **Two steps composed**, to check that `triple_seq` does not unfold the
    predicate when threading it through a mid-condition — the one place the plan
    worried the size might bite. -/
theorem probe_seq (ge : CGenv) (fe : EntryRel) (E : Env) (pm : Permission)
    (b : Block) (ofs : CC.Z) (sv : StateVals) (vs : Nat → Val) :
    Triple ge fe f_inflate
      (LocalSt E (tracked vs) (stateAtFull pm b ofs sv))
      (.Ssequence (.Sset _t'2 (.Econst_int (Integers.Int.repr 1) tint))
                  (.Sset _t'3 (.Econst_int (Integers.Int.repr 1) tint)))
      (.only (LocalSt E ((_t'3, .Vint (Integers.Int.repr 1))
                          :: (_t'2, .Vint (Integers.Int.repr 1)) :: tracked vs)
                (stateAtFull pm b ofs sv))) := by
  refine triple_seq ge fe f_inflate _ _ _ _ _ (probe_full ge fe E pm b ofs sv vs) ?_
  refine triple_set_local ge fe f_inflate E _ _ _ _ _ _
    (by temps_mem) (by temps_ne) (fun le m hp _ _ _ => ?_)
  exact EvalExpr.Econst_int _ _

/-! ## Conclusions — M0b passes, and the plan's #1 failure mode is refuted

Measured on this file, clean rebuild in **1.67 s** total including the replay of
`GenZInflate`'s 935 KB.  `set_option profiler.threshold 50`, so anything unlisted
is under 50 ms.

**The decisive comparison.**  One `Sset` step from `inflate`'s own body:

| probe | heap fragment | live temps | tactic |
|---|---|---|---|
| `probe_emp`     | `emp`                    | 10 | **92.8 ms** |
| `probe_full`    | 35 fields / 7160 bytes   | 10 | **85.9 ms** |
| `probe_full_40` | 35 fields / 7160 bytes   | 40 | **97.5 ms** |

**The full 7160-byte predicate costs nothing** — `probe_full` is if anything
marginally *faster* than `probe_emp`, i.e. the difference is noise.  Quadrupling
the live-temp count costs ~13 %.

The reason is structural, not luck: `Sep.triple_set_local` takes `H : HProp` as a
**parameter**, so a step threads the predicate through as an opaque term and never
unfolds it.  `triple_seq` behaves the same way (`probe_seq`), which was the one
place the plan suspected the mid-condition might force an unfold.  It does not.

**Where the cost actually lives** — all of it either one-time or per-*extraction*,
never per-step:

* `offTable_ok`, all 35 offsets in one `decide`: 467 ms + 352 ms type checking.
  One-time.  `DeflateMeasure` needed 3.2 s for 61 fields, so this is sub-linear in
  field count, and the Wave-A conclusion (batch them, never one `decide` per
  field) is confirmed at a second struct.
* elaborating `stateFieldsFull` itself: 940 ms.  One-time.
* `fieldsAt_split_name` by `rfl`: 70 ms for a scalar 15 deep, **129 ms + 72 ms for
  `codes`** — the 1444-element, 5776-byte array.  Extracting the big array is
  ~2× extracting a scalar, *not* 1444×, because `arrayOf` is index-function-based.
  This is the real recurring cost and it is the number to watch.
* ordinary `decide`s on the composite: 60–110 ms each.

**So the per-step budget is ~90–130 ms, dominated by extraction rather than by
predicate size.**  Death by elaboration was the single most likely way this
project ends, and at this granularity it does not happen: even 50,000 proof steps
is under two hours of build.

**What this does NOT clear.**  Three things remain unmeasured and two of them are
now the leading risks in their own right:

1. *Loops.*  `triple_loop` carries a measure and an invariant; nothing here
   touches it.  That is M0a, and `adler32`'s closed form is the calibration.
2. *`decide` on the big finite tables.*  `codes` as a *predicate* is free, but
   M0d asks whether a 512-entry `_dist_code` fact is decidable at all.  Untested.
3. *Goal-size growth over a long proof.*  Each step here starts from a clean
   goal.  A 600-step function accumulates context, and nothing here bounds that.
-/

end InflateMeasure
