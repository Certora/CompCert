/-
  `CCLib` — Phase 0 foundations for a CompCert-grade Clight semantics in Lean.

  * `CCLib.Archi`    — target parameters (port of `<arch>/Archi.v`)
  * `CCLib.Integers` — machine integers on `BitVec` (substitutes `lib/Integers.v`
                       + `lib/Zbits.v`).  Validated against CompCert's Rocq
                       implementation by `test/lean/int_diff.sh` (24,880 cases).
  * `CCLib.Floats`   — binary32/64 by bit pattern, ops via native IEEE hardware
                       (substitutes `lib/Floats.v` + `lib/IEEE754_extra.v` +
                       `flocq/`).  See the trust notes in that file.

  Phase 1 — values and the memory model:

  * `CCLib.Positive` — Coq's `positive`; `ident`, `block`, and the string↔ident
                       encoding from `export/Ctypesdefs.v`.
  * `CCLib.Maps`     — `PTree` / `PMap` / `ZMap` (port of `lib/Maps.v` core).
  * `CCLib.AST`      — `common/AST.v`: value types, chunks, signatures,
                       external functions, global definitions.
  * `CCLib.Values`   — `common/Values.v`: the `Val` type and its operations.
  * `CCLib.Memdata`  — `common/Memdata.v`: `MemVal`, `encodeVal`/`decodeVal`.
  * `CCLib.Memory`   — `common/Memory.v` operational core: the proof-carrying
                       `Mem` record with load/store/alloc/free/perm.

  Phase 2 — types and operators:

  * `CCLib.Ctypes`   — `cfrontend/Ctypes.v`: the C type syntax plus its layout
                       semantics (`sizeof`, `alignof`, `fieldOffset`,
                       `accessMode`, `buildCompositeEnv`).
  * `CCLib.Cop`      — `cfrontend/Cop.v`: `semCast`, `boolVal`,
                       `semUnaryOperation`, `semBinaryOperation`.

  Phase 3 — the semantics:

  * `CCLib.Globalenvs` — `common/Globalenvs.v`: `Genv`, symbol/function lookup,
                       and `init_mem`'s allocation of globals.
  * `CCLib.Events`   — `common/Events.v` (minimal slice): traces, volatile
                       accesses, and the `malloc`/`free`/`memcpy` builtins.
  * `CCLib.Clight`   — `cfrontend/Clight.v`: the Clight AST *and* its small-step
                       operational semantics (`DerefLoc`/`AssignLoc`,
                       `EvalExpr`/`EvalLvalue`, continuations, `Step`,
                       `InitialState`/`FinalState`), plus `star`/`plus`.

  Phase 4 — the executable semantics:

  * `CCLib.ClightExec` — an interpreter (`doStep`, `run`, `runProgram`) plus its
                       soundness against the relation.  CompCert has no
                       executable Clight semantics, so this has no Rocq original.
  * `CCLib.ClightExecSound` — soundness of the interpreter against the relation.
-/
import CCLib.Archi
import CCLib.Positive
import CCLib.Integers
import CCLib.Floats
import CCLib.Maps
import CCLib.AST
import CCLib.Values
import CCLib.Memdata
import CCLib.Memory
import CCLib.Ctypes
import CCLib.Cop
import CCLib.Globalenvs
import CCLib.Events
import CCLib.Clight
import CCLib.ClightExec
import CCLib.ClightExecSound
import CCLib.Hoare
import CCLib.HoareArray
