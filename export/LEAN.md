# C → Lean 4: a Clight semantics and program logic, in Lean

This document explains a body of work grown inside CompCert 3.17: a `-lean`
backend for `clightgen`, a Lean 4 port of Clight's operational semantics, an
executable interpreter proved sound against it, and a Hoare logic on top —
ending in a machine-checked theorem about a real C function.

The headline result, from `IsSortedRealCheck.lean`:

```lean
theorem is_sorted_runs :
    Star (Step ge3 (FunctionEntry2 ge3))
      (.Callstate (.Internal f_is_sorted)
        [.Vptr blk.2 (Integers.Ptrofs.repr 0), .Vint (Integers.Int.repr 3)] .Kstop mem) E0
      (.Returnstate (.Vint (Integers.Int.repr 1)) .Kstop mem)
```

Read: calling `is_sorted` — the function compiled from `main.c` by CompCert's own
frontend — on a sorted array runs, under CompCert's Clight step relation, from
the call state to a return state carrying `true`. No hypotheses, no `sorry`.

---

## 1. Why

CompCert's `clightgen` exports a C program's Clight abstract syntax as a Rocq
(Coq) file, which you then reason about using CompCert's own `Clight.v` semantics
— usually through VST. That path is excellent and ends in a guarantee about
machine code. It is also Rocq-only.

The question that started this was whether the same pipeline could target **Lean
4**. Exporting syntax is easy. The hard part is that exported syntax is *inert*:
a Lean value describing a program means nothing until something gives it
meaning. So the work split into two halves — get the AST out, then build it a
semantics worth trusting.

## 2. What was built

| Layer | Where | Lines | What it is |
|---|---|---|---|
| Exporter | `ExportLean{Base,Ctypes,Clight}.ml`, `ExportDriver.ml` | 619 | `-lean` flag for `clightgen` |
| AST mirror | `Clightdefs.lean` | 41 | thin shim; the types now live in `CCLib` |
| Semantics | `CCLib/` (14 modules) | 4,886 | port of the Rocq semantic stack |
| Interpreter | `CCLib/ClightExec.lean` + `ClightExecSound.lean` | 1,064 | executable `doStep`, proved sound |
| Program logic | `CCLib/Hoare.lean` + `HoareArray.lean` | 524 | 15 Hoare rules + array support |
| The proof | `IsSortedReal.lean`, `IsSortedRealCheck.lean` | 555 | the milestone, and its non-vacuity check |
| Validation | `test/lean/` | — | 4-level differential suite + whole-program harness |

No `sorry` anywhere.

## 3. How: the exporter

`-lean` makes `clightgen` print Lean instead of Rocq:

```
clightgen -lean -normalize -include stdbool.h -o GenMain.lean main.c
```

The three printers mirror `ExportBase.ml` / `ExportCtypes.ml` /
`ExportClight.ml` **function for function**, changing only the emitted surface
syntax. That was deliberate: it makes the diff against the Rocq printers
reviewable, which is the only real defence against a transcription bug in a
piece of code no proof covers.

The emitted names were also chosen once and then frozen — `Integers.Int.repr`,
`Floats.Float.ofBits`, `Positive.ofNat`, `identOfString`, `mkprogram`. As a
result, generated files never had to change across all six phases of work below,
even as everything underneath them was rewritten.

## 4. How: the semantics port

The Rocq files a Clight semantics transitively needs come to **33,681 lines**
(`Maps`, `Integers`, `Zbits`, `Floats`, `Values`, `Memdata`, `Memory`, `Memtype`,
`Ctypes`, `Cop`, `Globalenvs`, `Events`, `Smallstep`, `Behaviors`, `Clight`,
`ClightBigstep`, `Cexec`), on top of **31,416 lines** of Flocq. Most of that is
proof rather than definition — measuring the definitional core put the real
transcription job at ~7,000 lines — but porting it verbatim was still never
viable. Three substitutions carried the project, and each is a claim that had to
be checked rather than assumed.

**Machine integers → `BitVec`.** CompCert defines `int` as a dependent record
`{ intval : Z // -1 < intval < modulus }` inside a module functor, and then
proves ~3,900 lines of bit algebra about it. Lean's `BitVec w` *is* "a `Z` modulo
2^w" with the invariant built in. The correspondence is exact on the cases that
matter: `Int.divs` is `BitVec.sdiv` (truncation toward zero, `Z.quot`),
`Int.mods` is `BitVec.srem` (sign of the dividend, `Z.rem`), `Int.lt`/`Int.ltu`
are `slt`/`ult`, and `sdiv min_int (-1) = min_int` wraps identically. Rocq's
`lib/Integers.v` + `lib/Zbits.v` (6,196 lines) collapse to 415.

**Floats → native IEEE.** CompCert computes floating point with Flocq. Here
floats are represented by their **bit pattern** (so equality is structural and
NaN payloads are distinguishable) with operations delegated to the host's
IEEE-754 hardware. This avoids ~34,000 lines and is the one place the port
*trusts* rather than proves. It is also the substitution with the best
end-to-end evidence — see §7.

**Proof-carrying records stay proof-carrying.** `Mem.mem` keeps CompCert's three
invariants, and `Ctypes.composite`, `Genv.t`, `Ctypes.program` keep their shape.
Lean's *definitional* proof irrelevance is a quiet win here: `Mem.ext` needs no
axiom, where Rocq requires `proof_irr` from `lib/Axioms.v`.

Beyond that the port is deliberately faithful. `Clight.v` itself is the easy part
— 757 lines, almost all definitions — and its `step` relation is parameterized
over `function_entry`, so `step1` and `step2` share one relation here too.
External calls are left **opaque**, which is not a cheat: they are `Parameter`s
in Rocq's `Events.v` as well.

## 5. How: the interpreter

The relation says what *may* happen; it cannot run a program. So
`CCLib/ClightExec.lean` adds `doStep : CGenv → State → Option (Trace × State)`
and a fuel-bounded runner.

Worth knowing: **CompCert has no executable Clight semantics.** `Cexec.v` is
built on CompCert *C* (`Csyntax`/`Csem`), not Clight. So this had no Rocq
original to transliterate — but it was also easier than `Cexec`, because Clight
expressions are deterministic and effect-free, and `Cexec`'s 211-line
`step_expr` reduct machinery collapses to a plain recursive
`eval : Expr → Option Val`.

`ClightExecSound.lean` then proves the interpreter agrees with the relation:

```lean
theorem doStep_sound : doStep ge s = some (t, s') → Step ge fe s t s'
```

across all ~20 step cases, via soundness lemmas for `derefLoc`, `assignLoc`,
expression evaluation, `allocVariables`, `bindParameters`, and `functionEntry2`.
This is the internal consistency check: it catches transcription bugs *between*
the two Lean artifacts. (Completeness is **not** proved, and as stated is false
for the external-call rules.)

## 6. How: the program logic

`CCLib/Hoare.lean` is a Hoare logic for Clight. Two design decisions define it.

**Hand-rolled, not Iris.** This project has no external dependencies at all — no
Mathlib, which means `set`, `by_contra`, `interval_cases` and `norm_num` are
unavailable. That pushed toward hand-rolling, and the second decision made
hand-rolling cheap.

**Soundness is definitional.** VST defines `semax` as an inductive relation and
then proves a substantial soundness theorem connecting it to `step`. Here the
triple is *defined* as a statement about `Step`:

```lean
def Triple (ge : CGenv) (fe : EntryRel) (f : Function) (P : Assn) (s : Stmt)
    (R : ExitConds) : Prop :=
  ∀ k e le m, P e le m →
    ∃ o, Steps (SStep ge fe) (.State f s k e le m) (o.state f k) ∧ R.holds o
```

*"From any state satisfying `P`, under **any** continuation, executing `s`
reaches an outcome satisfying `R`."* There is then nothing left to prove about
soundness — it holds by construction — and the work becomes proving the 15
individual **rules**: `skip`, `set`, `assign`, `seq`, `if` (plus `if_true` /
`if_false` for a guard the precondition already decides), `break`, `continue`,
`return`, `loop`, `conseq`, `exists`, `fallthrough`, `vacuous`.

Three details that make it work:

- **Quantifying over the continuation** is what makes `seq` compose — the same
  device as VST's continuation-agnostic `semax`. It also makes `return` fall out
  for free, because `callCont (Kseq s₂ k) = callCont k`.
- **Four outcomes, not one.** A Clight statement can fall through, `break`,
  `continue`, or `return`, so postconditions are a record of four assertions
  (`ExitConds`) — VST's `ret_assert`, cut down.
- **The loop rule carries a `Nat` measure** that must strictly decrease on every
  trip, so it proves *termination* as well as the invariant. There is no
  `continue` rule for a loop's second statement, matching the fact that
  `Kloop2` has no continue transition in `Clight.v`.

`Steps.toStar` converts any proof back into `Star (Step ge fe)`, so a theorem
proved with the logic is a theorem about CompCert's own relation.

## 7. How we know it is right

Nothing above is covered by CompCert's correctness theorem, so the port is
validated by four independent nets.

**(a) Operation-level differential testing — 71,222 agreeing observations.**
`test/lean/diff_all.sh` compares the Lean definitions against CompCert's *own
Rocq code* (and, where Rocq cannot compute, against its OCaml extraction):

| Level | Oracle | Observations |
|---|---|---|
| Integers | Rocq `Compute` on `lib/Integers.v` | 24,880 |
| Values + Memdata | Rocq `Compute` | 37,729 |
| Ctypes + Cop | Rocq `Compute` | 8,503 |
| Memory | OCaml extraction | 110 |

The Memory level uses extraction for a specific reason: CompCert's
`Mem.store`/`load`/`free` **cannot be evaluated by Rocq's `Compute`** —
`range_perm_dec` recurses over an opaque accessibility proof. This asymmetry
recurs in §8.

This net caught three real bugs: `sign_ext 0` must be `0`, not `x` (because
`Zsign_ext 0 x = Z.lor (Zzero_ext (-1) x) 0`); `Val.notbool` on a pointer is
`Vfalse`, not `Vundef`; and `Val.cmpu_bool` takes *one* validity predicate and
derives the weak variant.

**(b) Whole-program differential testing — 16/16 and 500/500.**
`test/lean/diff_exec.sh` runs whole C programs two ways and compares what `main`
returns: oracle = `ccomp -interp`, subject = `clightgen -lean` plus the Lean
interpreter. The corpus is 16 hand-written programs (one theme each: signed and
unsigned arithmetic, division corners, shifts, conversions, loops with
`break`/`continue`, `switch` fallthrough and `goto`, pointers, structs by value,
unions, arrays of structs, 2-D arrays, linked lists, recursion, globals, 64-bit
arithmetic, floating point, bitfield read and read-modify-write) plus
`gen_random_c.py`, a Csmith-in-miniature generating programs that are UB-free
*by construction* (unsigned-only arithmetic, divisors forced nonzero with `| 1u`,
shift amounts masked with `& 31`, everything initialized, constant trip counts).

All 526 programs agree, every one under `ccomp -interp` — the native-compiler
fallback was never needed. **The floating-point program is the one to single
out**: it does double and float arithmetic, conversions, comparisons and a
20-term harmonic sum — repeated rounding — and agrees *exactly*. CompCert
computes that with Flocq; the port uses hardware IEEE. That is end-to-end
evidence for the substitution in §4 that skipped 34,000 lines.

Scope caveat: `ccomp -interp` executes CompCert **C**, not Clight, so this
compares whole-program observable behaviour, not step-by-step Clight behaviour,
and only for programs without undefined behaviour. Step counts are deliberately
not compared.

**(c) The soundness theorem** (§5) ties the two Lean artifacts together.

**(d) A non-vacuity check.** The milestone theorem is stated under hypotheses
(the array points-to, sortedness, a length bound). If those were unsatisfiable
the theorem would be true and worthless. `IsSortedRealCheck.lean` discharges all
of them for a concrete memory holding `[10, 20, 30]`, producing the
unconditional execution quoted at the top of this document. **That check is only
possible in Lean**: as noted in (a), Rocq cannot evaluate `Mem.store`/`load`, so
the same sanity check cannot be run against CompCert's own memory model.

## 8. The milestone, and what came before it

`main.c` contains an ordinary function:

```c
bool is_sorted(const unsigned int *numbers, int len) {
    if (len <= 1) return true;
    for (int i = 1; i < len; i++)
        if (numbers[i] < numbers[i-1]) return false;
    return true;
}
```

An earlier version of this work proved `is_sorted` correct against a **toy**
big-step interpreter written by hand (`ClightSem.lean`, `IsSortedProof.lean`) —
because at that point the exported AST had no other meaning available. Both
files are kept, marked `SUPERSEDED`, precisely so the two theorems can be
compared: the old one is about a model invented to suit the proof, the new one is
about CompCert's semantics.

`IsSortedReal.lean` proves the real thing. Its structure:

- `body_eq : f_is_sorted.fn_body = fullBody := rfl` — the statement of the
  program is re-typed for readability, and `rfl` checks it against `GenMain`. If
  `main.c` or the exporter changes, this fails rather than the proof silently
  drifting.
- `ArrU32` is the array points-to predicate, stated in terms of the address
  `Cop.sem_add` actually computes, so the load lemma needs no offset arithmetic.
- The loop invariant is indexed by a `Nat` measure `L - i`, so the loop rule's
  termination obligation is discharged by `omega`.
- The `return 0` branch is proved **unreachable** from the sortedness hypothesis.
- `is_sorted_call` composes it with one `internal_function` step and
  `FunctionEntry2` — the calling convention `clightgen` output is used with — to
  give the full call-to-return execution.

**Axioms.** `#print axioms is_sorted_star` reports Lean's standard three
(`propext`, `Classical.choice`, `Quot.sound`) plus `externalFunctionsSem` and
`inlineAssemblySem` — the two uninterpreted-external axioms CompCert itself
declares. The float axioms do not appear, since this program has no floats.
`native_decide` is confined to two facts: that the seven identifiers involved are
pairwise distinct, and the AST well-formedness side conditions of
`function_entry2`. It is needed because `identOfString` folds over a `String`,
which the kernel will not reduce. Every other theorem takes distinctness as an
explicit hypothesis and is therefore axiom-free.

## 9. What this does **not** give you

Stated plainly, because it is the most important section.

- **No link to CompCert's compiler-correctness theorem.** That theorem lives in
  Rocq and cannot transfer to a hand port. A Lean proof here says nothing
  *formally* about the generated machine code. The Rocq + VST path remains the
  one that ends at assembly.
- **Trusted base**: the `clightgen` frontend (shared with the Rocq path), the
  transcription fidelity of the port (mitigated, not eliminated, by §7), the
  float substitution, and Lean itself.
- **This is a Hoare logic, not separation logic.** Assertions are plain
  predicates on the state; there is no `∗` and no frame rule. Separating
  conjunction needs a way to split CompCert's memory (permissions and contents
  together) — VST's "juicy memory" layer, and the single largest piece of that
  project. Deliberately out of scope.
- Also absent: `forward`-style tactics, a function-call rule, volatile accesses
  (executions in the logic are silent, `E0`), and anything about diverging code
  (the logic is total-correctness).
- Interpreter **completeness** is unproved. NaN payload propagation is untested.
  `-csyntax` Lean output is not implemented.
- Documented deviations from Rocq: `PTree` is a non-canonical 3-constructor trie;
  `Composite` and `Genv` drop their `Prop` invariants; `Program` stores a
  *computed* `prog_comp_env` rather than the equality proof.

## 10. Reproducing it

**Build `clightgen`.** Use the dedicated opam switch — system Rocq 9.2 breaks
the vendored Flocq (`Zmod` was removed):

```
eval $(opam env --switch=compcert-4.14)     # OCaml 4.14.2 + Rocq 9.1.0
./configure -clightgen aarch64-macos
make -j proof && make extraction && make clightgen
make ccomp                                  # needed for the §7(b) oracle
```

**Build and check the Lean side** (Lean 4.32.1, pinned in `lean-toolchain`):

```
cd export && lake build                     # 41 jobs, no sorry
```

**Run the validation suites** (all need the opam switch active):

```
bash test/lean/check.sh          # end-to-end: clightgen -lean, then typecheck
bash test/lean/diff_all.sh       # the four operation levels — 71,222 checks
bash test/lean/diff_exec.sh      # whole programs vs ccomp -interp
```

## 11. File map

```
export/
  ExportLean{Base,Ctypes,Clight}.ml   the -lean printers
  ExportDriver.ml                     -lean flag dispatch
  Clightdefs.lean                     shim; generated files import this
  CCLib/
    Archi Positive Integers Floats Maps AST      foundations
    Values Memdata Memory                        the memory model
    Ctypes Cop                                   types and operators
    Globalenvs Events Clight                     the step relation
    ClightExec ClightExecSound                   interpreter + soundness
    Hoare HoareArray                             the program logic
  GenMain.lean, Demo.lean             generated (main.c; every construct)
  IsSortedReal.lean                   THE MILESTONE
  IsSortedRealCheck.lean              its non-vacuity check
  ClightSem.lean, IsSortedProof.lean  SUPERSEDED toy model + proof
  SemCheck RunMain RunIsSorted        sanity runners
test/lean/
  check.sh diff_all.sh diff_exec.sh   the three harnesses
  gen_*.py mem_oracle.ml *Diff.lean   oracles and generators
  corpus/                             16 hand-written C programs
```

## 12. Findings worth keeping

Things that cost real time and would cost it again.

- **A test-harness race that imitated a semantic regression.** Two programs that
  had passed began failing. Cause: a foreground and a background run shared one
  generated module under `export/`, so each reported the other's results — the
  "wrong" values were literally another program's output. `gcc` confirmed the
  originals were right. Each run now gets its own working directory.
- **A bitfield mis-diagnosis.** I first concluded `ccomp -interp` cannot execute
  bitfield stores, and wrote that into the docs. Wrong. A bitfield store first
  *reads the whole carrier* to splice the field in, so storing into an
  *uninitialized* carrier reads `Undef` — undefined behaviour in CompCert's
  model, which is why *both* interpreters correctly got stuck. The interpreter was
  right; the test program had the UB.
- **`ccomp -interp` exits with the program's status**, so parse `exit code = N`
  from stdout; never trust its exit status.
- **`LEAN_PATH` order matters**: the Lake build dir must come *first*
  (`.lake/build/lib/lean:.`), or Lean resolves `CCLib` to `./CCLib.olean` and
  fails instead of searching on.
- **Lean specifics**: `omega` does not see through `abbrev Z := Int` (spell
  binders `_root_.Int`, and use the literal `2147483648`, not a `def`);
  `induction` fails on `Star` because `E0` is a fixed index (hence the silent-step
  closure plus a `toStar` bridge); `deriving DecidableEq` cannot traverse
  `Tfunction`'s `List Ty`, so `Ty` equality is hand-written and mutual;
  `Nat.strong_induction_on` does not exist (it is `Nat.strongRecOn`); doc comments
  cannot precede `attribute`; `public` is a reserved keyword in 4.32.
- **zsh does not word-split unquoted `$VAR`** — use `${=VAR}` when passing
  built-up object/flag lists to `ocamlopt`.
