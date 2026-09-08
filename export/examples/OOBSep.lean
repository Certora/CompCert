/-
  **A negative control for the memory-safety framework.**

  Everything else in this development proves that programs *are* safe.  That
  leaves an obvious question unanswered: would the framework also "prove" an
  unsafe program safe?  A specification language can be vacuous, a lemma can
  have a hypothesis nobody notices is unsatisfiable, and a proof can succeed for
  reasons that have nothing to do with the property.  This file is the
  experiment that checks.

  `test/lean/oob.c` hands `read_oob` a nine-element array and reads element 9 —
  one past the end:

      unsigned short read_oob(unsigned short *a) {
          return a[9];        /* valid indices are 0 .. 8 */
      }

  It is deliberately the same shape as `test/lean/u16loop.c`, which *is* in
  bounds and *is* proved (`U16LoopSep`).  The only difference is the index.

  **Independent evidence first.**  CompCert's own executable interpreter, which
  is not part of this development, rejects the program outright:

      $ ccomp -interp test/lean/oob.c
      Stuck state: in function read_oob, expression <loc>
      Stuck subexpression: <loc>
      ERROR: Undefined behavior

  So the Clight semantics has *no step* for this read.  Since `Sep.Triple` is
  **total** correctness — it asserts that an execution exists — no triple for
  this body can be provable.  The rest of this file confirms that the separation
  logic actually notices, and pins down where.

  **The four results below, in order of strength:**

  1. `bound_is_refutable` — the obligation that blocks the proof is not merely
     unproven, it is *false*.
  2. `attempt_walls` — the honest attempt, recorded verbatim, with the error
     Lean actually produces.
  3. `everything_else_works` — assume the false bound and the read goes through.
     This is the control on the control: it rules out "the proof failed for some
     unrelated reason".
  4. `precondition_owns_nothing_there` — the strongest, and the one that is
     about the *specification* rather than about any lemma's hypotheses: the
     caller's ownership provably does not cover the byte being read.
-/
import GenOOB
import CCLib
open CC CC.Sep CC.HProp
open Oob   -- the generated module lives in its own namespace

set_option maxRecDepth 20000

namespace OOBSep

/-! ## The AST is the shape the framework handles

This matters: the read is *not* rejected because the framework cannot parse it.
`eval_index_u16` is exactly the lemma for this expression, and the index is a
literal, so nothing here is beyond the tooling. -/

theorem body_shape :
    f_read_oob.fn_body
      = .Ssequence
          (.Sset _t'1
            (.Ederef (.Ebinop .Oadd (.Etempvar _a (tptr tushort))
              (.Econst_int (Integers.Int.repr 9) tint) (tptr tushort)) tushort))
          (.Sreturn (some (.Etempvar _t'1 tushort))) := rfl

/-- The index expression classifies exactly as `eval_index_u16` wants. -/
theorem oob_classify :
    Cop.classifyAdd (typeof (.Etempvar _a (tptr tushort)))
      (typeof (.Econst_int (Integers.Int.repr 9) tint)) = .pi tushort .Signed := rfl

/-! ## 1. The blocking obligation is false, not just unproven

`eval_index_u16` carries `hi : i < n`.  Here `i = 9` and the precondition owns
`n = 9` elements. -/

theorem bound_is_refutable : ¬ ((9 : Nat) < 9) := by decide

/-! ## 2. The attempt, and what Lean says

The honest proof is one line — `eval_index_u16` applies, every other hypothesis
is discharged, and `hi` is handed to `decide` exactly as an in-bounds site would
do it:

```lean
example … : EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd (.Etempvar _a (tptr tushort))
        (.Econst_int (Integers.Int.repr 9) tint) (tptr tushort)) tushort)
      (.Vint (Integers.Int.repr ((f 9 : Nat)))) := by
  exact eval_index_u16 (i := 9) hpr harr hag (by decide) hb
    (EvalExpr.Etempvar _a (tptr tushort) _ hptr) (EvalExpr.Econst_int _ _) rfl haddr
```

and Lean's response is:

```
error: Tactic `decide` proved that the proposition
  9 < 9
is false
```

Note *which* error that is.  Not "failed to synthesize", not "unsolved goals",
not a timeout — the elaborator reports that the safety side condition is
**false**.  That is the difference between a proof that is merely missing and a
proof that cannot exist. -/

/-! ## 3. The control on the control

If the read failed for some reason other than the bound, the experiment would
prove nothing.  So: assume the false bound, and check that everything else goes
through untouched.  It does — the statement below is a complete proof of the
out-of-bounds read, with `hbad` the single missing ingredient. -/

theorem everything_else_works
    (hbad : (9 : Nat) < 9)          -- the false bound, assumed
    {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {p : Permission} {b : Block} {ofs0 : Integers.Ptrofs} {f : Nat → Nat}
    {h : Heap}
    (hpr : permOrder p .Readable = true)
    (harr : arrayU16 p b (Integers.Ptrofs.unsigned ofs0) 9 f h)
    (hag : Heap.Agrees h m)
    (hb : ∀ j, f j < 65536)
    (hptr : le.get _a = some (.Vptr b ofs0))
    (haddr : Integers.Ptrofs.unsigned
               (idxOfs ge.genv_cenv tushort .Signed ofs0
                 (Integers.Int.repr ((9 : Nat) : _root_.Int)))
             = Integers.Ptrofs.unsigned ofs0 + 2 * ((9 : Nat) : _root_.Int)) :
    EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd (.Etempvar _a (tptr tushort))
        (.Econst_int (Integers.Int.repr ((9 : Nat) : _root_.Int)) tint)
        (tptr tushort)) tushort)
      (.Vint (Integers.Int.repr ((f 9 : Nat)))) :=
  eval_index_u16 (i := 9) hpr harr hag hbad hb
    (EvalExpr.Etempvar _a (tptr tushort) _ hptr) (EvalExpr.Econst_int _ _)
    oob_classify haddr

/-- …and that theorem is vacuous, which is the point: its hypothesis is
    `bound_is_refutable`'s negation.  Every other ingredient was real. -/
theorem everything_else_works_is_vacuous :
    ¬ ((9 : Nat) < 9) := bound_is_refutable

/-! ### 3b. The A/B: the same proof, in bounds, succeeds

The sharpest form of the control.  `in_bounds_works` below is
`everything_else_works` with **one character changed** — index 8 instead of 9 —
and with the bound discharged by `decide` rather than assumed.  Same lemma, same
hypotheses, same tactic.  It compiles.

So the framework is not rejecting this *shape* of access, or this lemma, or
`decide`; it is discriminating on the index, which is precisely what a
memory-safety obligation is supposed to do. -/

theorem in_bounds_works
    {ge : CGenv} {e : Env} {le : TempEnv} {m : Mem}
    {p : Permission} {b : Block} {ofs0 : Integers.Ptrofs} {f : Nat → Nat}
    {h : Heap}
    (hpr : permOrder p .Readable = true)
    (harr : arrayU16 p b (Integers.Ptrofs.unsigned ofs0) 9 f h)
    (hag : Heap.Agrees h m)
    (hb : ∀ j, f j < 65536)
    (hptr : le.get _a = some (.Vptr b ofs0))
    (haddr : Integers.Ptrofs.unsigned
               (idxOfs ge.genv_cenv tushort .Signed ofs0
                 (Integers.Int.repr ((8 : Nat) : _root_.Int)))
             = Integers.Ptrofs.unsigned ofs0 + 2 * ((8 : Nat) : _root_.Int)) :
    EvalExpr ge e le m
      (.Ederef (.Ebinop .Oadd (.Etempvar _a (tptr tushort))
        (.Econst_int (Integers.Int.repr ((8 : Nat) : _root_.Int)) tint)
        (tptr tushort)) tushort)
      (.Vint (Integers.Int.repr ((f 8 : Nat)))) :=
  eval_index_u16 (i := 8) hpr harr hag (by decide) hb
    (EvalExpr.Etempvar _a (tptr tushort) _ hptr) (EvalExpr.Econst_int _ _)
    oob_classify haddr

/-! ## 4. The specification-level statement

Results 1-3 are about a *lemma's* hypothesis.  A sceptic could reasonably ask
whether some other route to the same triple exists — a different lemma, a
cleverer proof — since "my lemma has a hypothesis I cannot discharge" is not the
same as "no proof exists".

This result closes that gap, and it does not mention `eval_index_u16` at all.
`arrayU16_none` says an array fragment owns exactly its own extent.  Element 9
of a nine-element `u16` array sits at byte offset 18, and the fragment's extent
is `[ofs, ofs + 18)`.  So **the caller's ownership provably does not include the
byte being read** — for any heap satisfying the precondition. -/

theorem precondition_owns_nothing_there
    (p : Permission) (b : Block) (ofs : _root_.Int) (f : Nat → Nat) (h : Heap)
    (harr : arrayU16 p b ofs 9 f h) :
    ∀ d : _root_.Int, 0 ≤ d → d < 2 → h b (ofs + 18 + d) = none := by
  intro d hd0 hd2
  refine arrayU16_none p b ofs 9 f h harr b (ofs + 18 + d) ?_
  right; right
  show ofs + 2 * ((9 : Nat) : _root_.Int) ≤ ofs + 18 + d
  omega

/-- The consequence, spelled out.  `Heap.Agrees h m` constrains `m` *only* where
    `h` owns (that is its definition — `Heap.lean` says so in as many words), so
    a precondition that owns nothing at `ofs + 18` says nothing whatsoever about
    whether that byte is loadable.  The triple therefore cannot be proved: it
    must hold for every `m` consistent with the precondition, including the ones
    where the read is stuck — which, per `ccomp -interp` above, is what actually
    happens when the array is a real nine-element object. -/
theorem why_no_triple_exists
    (p : Permission) (b : Block) (ofs : _root_.Int) (f : Nat → Nat) (h : Heap)
    (harr : arrayU16 p b ofs 9 f h) :
    h b (ofs + 18) = none := by
  have h0 := precondition_owns_nothing_there p b ofs f h harr 0 (by omega) (by omega)
  rwa [show ofs + 18 + (0 : _root_.Int) = ofs + 18 from by omega] at h0

/-! ## Conclusion

The framework is not vacuous on this program, and it fails for the right reason.

* The obstruction is the **bounds condition** `i < n`, and Lean reports it as
  *false* rather than unproven (result 1, and the recorded error in result 2).
* Nothing else about the proof is broken: assuming the bound, the read is proved
  in full (result 3), and the *identical* proof at index 8 — bound discharged by
  `decide`, nothing assumed — compiles (result 3b).  The framework discriminates
  on the index, not on the shape.
* The obstruction is not an artefact of one lemma's interface.  The
  **precondition itself** provably owns nothing at the accessed byte (result 4),
  so no amount of cleverness produces a triple — `Agrees` says nothing about
  unowned memory, and the triple must hold for all consistent memories.
* And this agrees with an oracle outside the development: `ccomp -interp`
  reports undefined behaviour.

One honest caveat about how far this goes.  Results 1-4 show the proof *cannot
be completed* and that the specification does not cover the access.  They stop
short of exhibiting a proof of `¬ Triple …` — a refutation of the triple as a
proposition.  Doing that means inverting the `Steps` relation to show no step
exists from a concrete memory in which element 9 is genuinely invalid, and the
port has no inversion machinery for `SStep` (the same gap noted in
`GotoBackSep`).  It is provable and worth having; it is not proved here, and
this file does not claim it.
-/

end OOBSep
