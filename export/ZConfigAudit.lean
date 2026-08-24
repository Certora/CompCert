/-
  **M0d — the configuration audit.**  The third of the round-trip plan's
  kill-tests, and the cheapest.

  The generated ASTs freeze the `#ifdef` configuration of this zlib snapshot, so
  they — not the `.c` files — are the authority on what exists.  This file
  enumerates it *by computation over the linked program*, so the answers cannot
  drift from what will actually be proved about.

  Four questions, from the plan:

  1. **Are the static Huffman tables precomputed, or built by `tr_static_init`?**
     If built, every "finite table" fact becomes a loop proof rather than a
     `decide`, which would be a significant cost increase.
  2. **Is a 512-entry `decide` affordable at all?**  `_dist_code` is the test
     case.
  3. **Which functions are actually reachable** from `compress2_z` /
     `uncompress2_z`?  The plan's ~3,500–4,000-line scope estimate rests on this.
  4. **Are the expected functions dead** — `deflate_rle`, `deflate_huff`, gzip,
     `inflateBack`, the dictionary and sync entry points?

  Conclusions are at the bottom.
-/
import ZLink
import CCLib
open CC CC.Link

set_option maxRecDepth 100000

namespace ZConfigAudit

/-! ## 1. The static tables are precomputed

`trees.c` guards `tr_static_init`'s body with
`#if defined(GEN_TREES_H) || !defined(STDC)`.  `GEN_TREES_H` is commented out
(trees.c:35) and `STDC` holds, so the body vanishes and `#include "trees.h"`
supplies the tables as initialised globals instead. -/

/-- **`tr_static_init` is a no-op.**  The static trees are not built at run time,
    so no loop proof is needed for them. -/
theorem tr_static_init_is_noop : Trees.f_tr_static_init.fn_body = .Sskip := rfl

/-- `_dist_code` is a fully initialised 512-byte table. -/
theorem dist_code_is_table :
    Trees.v__dist_code.gvar_info = tarray tuchar 512 := rfl

theorem dist_code_init_length : Trees.v__dist_code.gvar_init.length = 512 := rfl

/-- `_length_code` likewise, at 256. -/
theorem length_code_init_length :
    Trees.v__length_code.gvar_init.length = 256 := rfl

/-- `static_ltree` is 288 `ct_data` entries — two `int16`s each, so 576
    initialisers. -/
theorem static_ltree_init_length :
    Trees.v_static_ltree.gvar_init.length = 576 := rfl

/-! ## 2. A 512-entry `decide` is affordable

The plan flagged this as an open question.  It is not a problem: the whole
`_dist_code` table is decided as one goal, in the same batched style
`DeflateMeasure` established for field offsets. -/

/-- Every initialiser of `_dist_code` is an 8-bit datum in range.  **One
    `decide` over all 512 entries.** -/
theorem dist_code_all_bytes :
    Trees.v__dist_code.gvar_init.all
      (fun d => match d with
                | .Init_int8 n => 0 ≤ n.toNat ∧ n.toNat < 256
                | _ => false) = true := by
  decide

/-- The distance code of a distance is what `_tr_tally` looks up; this pins the
    first and last entries so the table's *content*, not just its shape, is
    reachable by computation. -/
theorem dist_code_endpoints :
    Trees.v__dist_code.gvar_init.head? = some (.Init_int8 (Integers.Int.repr 0))
    ∧ Trees.v__dist_code.gvar_init.getLast?
        = some (.Init_int8 (Integers.Int.repr 29)) := by
  decide

/-! ## 3. Reachability, computed

A function is reachable if its name appears as an `Evar` anywhere in the body of
a reachable function.  Collecting *every* `Evar` over-approximates calls — it
also catches a function whose address is taken — which is the sound direction for
a scope estimate, and it is what makes `ZALLOC`'s indirect call
(`(*strm->zalloc)(…)`) show up. -/

def evarsOfExpr : Expr → List Ident
  | .Evar id _ => [id]
  | .Ederef a _ | .Eaddrof a _ | .Eunop _ a _ | .Ecast a _ | .Efield a _ _ =>
      evarsOfExpr a
  | .Ebinop _ a1 a2 _ => evarsOfExpr a1 ++ evarsOfExpr a2
  | _ => []

mutual
def evarsOfStmt : Stmt → List Ident
  | .Sskip | .Sbreak | .Scontinue | .Sgoto _ => []
  | .Sassign e1 e2 => evarsOfExpr e1 ++ evarsOfExpr e2
  | .Sset _ e => evarsOfExpr e
  | .Scall _ e el => evarsOfExpr e ++ (el.flatMap evarsOfExpr)
  | .Sbuiltin _ _ _ el => el.flatMap evarsOfExpr
  | .Ssequence s1 s2 | .Sloop s1 s2 => evarsOfStmt s1 ++ evarsOfStmt s2
  | .Sifthenelse e s1 s2 => evarsOfExpr e ++ evarsOfStmt s1 ++ evarsOfStmt s2
  | .Sreturn none => []
  | .Sreturn (some e) => evarsOfExpr e
  | .Sswitch e ls => evarsOfExpr e ++ evarsOfLStmts ls
  | .Slabel _ s => evarsOfStmt s

def evarsOfLStmts : LStmts → List Ident
  | .LSnil => []
  | .LScons _ s ls => evarsOfStmt s ++ evarsOfLStmts ls
end

/-- The linked program's internal functions, by name. -/
def internalNames : List Ident :=
  ZLink.zlibProg.prog_defs.filterMap (fun d =>
    match d.2 with
    | .Gfun (.Internal _) => some d.1
    | _ => none)

/-- The function pointers sitting in a global's initialiser.

    **This is the correction the audit forced.**  Without it the walk misses
    `deflate_fast` and `deflate_slow` entirely — and therefore `longest_match`,
    `fill_window` and most of the LZ77 layer — because `deflate` reaches them
    only through `configuration_table[s->level].func` (deflate.c:789, 1220), an
    array of `config` structs whose `func` members are `Init_addrof`s in a global
    initialiser rather than names in any function body. -/
def initAddrsOf (id : Ident) : List Ident :=
  match ZLink.zlibProg.prog_defs.find? (fun d => d.1 == id) with
  | some (_, .Gvar v) =>
      v.gvar_init.filterMap (fun d =>
        match d with
        | .Init_addrof n _ => some n
        | _ => none)
  | _ => []

/-- The names a given internal function mentions, restricted to internal
    functions: the `Evar`s in its body, plus the function pointers in the
    initialiser of any global it names.  `eraseDups` first — `inflate`'s body
    mentions thousands of `Evar`s and the global lookup is a linear scan of 215
    definitions. -/
def calleesOf (id : Ident) : List Ident :=
  match ZLink.zlibProg.prog_defs.find? (fun d => d.1 == id) with
  | some (_, .Gfun (.Internal f)) =>
      let direct := (evarsOfStmt f.fn_body).eraseDups
      (direct ++ direct.flatMap initAddrsOf).filter
        (fun n => internalNames.contains n)
  | _ => []

/-- One round of closure.  Iterated to a fixed point below. -/
def stepClosure (acc : List Ident) : List Ident :=
  acc.foldl (fun a id =>
    (calleesOf id).foldl (fun a' n => if a'.contains n then a' else n :: a') a) acc

/-- Iterate `stepClosure` to a fixed point — 95 functions with no recursion, so
    the depth of the call DAG bounds the number of rounds. -/
def closureFrom (seeds : List Ident) : Nat → List Ident
  | 0 => seeds
  | n + 1 =>
      let next := stepClosure seeds
      if next.length == seeds.length then seeds else closureFrom next n

/-- The round-trip entry points. -/
def seeds : List Ident := [Compress._compress2_z, Uncompr._uncompress2_z]

/-- Everything reachable from them. -/
def reachable : List Ident := closureFrom seeds 40

/-- Functions that exist but are NOT reachable. -/
def deadNames : List Ident :=
  internalNames.filter (fun n => ¬ reachable.contains n)

/-! ## 4. The report

**One evaluation, one closure computation, and it fails the build on any
mismatch.**

`#guard` and `decide` were both tried and both are unusable here: they reduce in
the **kernel**, so each query re-runs the whole fixed point, and every one of
seventeen blew the 200,000-heartbeat limit.  Compiled evaluation does the same
work in seconds.  That gap — kernel reduction versus compiled evaluation — is one
of this audit's findings, and it is why the reachability claims below are checked
by `#eval` rather than proved.

Nothing is being smuggled past the kernel: **no theorem in this project depends on
any of these checks.**  They are a scope measurement.  When a proof later needs
"`deflate_rle` is unreachable", it gets it for free by never having a spec for it.
-/

/-- The audit's claims, as (name, ident, expected-reachable) triples. -/
def auditChecks : List (String × Ident × Bool) :=
  [ -- expected DEAD
    ("deflateSetDictionary", Deflate._deflateSetDictionary, false),
    ("inflateSetDictionary", Inflate._inflateSetDictionary, false),
    ("inflateSync",          Inflate._inflateSync,          false),
    ("inflateGetHeader",     Inflate._inflateGetHeader,     false),
    ("deflateCopy",          Deflate._deflateCopy,          false),
    ("inflateCopy",          Inflate._inflateCopy,          false),
    ("deflateBound",         Deflate._deflateBound,         false),
    ("deflateParams",        Deflate._deflateParams,        false),
    ("crc32",                Deflate._crc32,                false),
    -- expected LIVE (a failure here means the walk is broken, not that the
    -- function is dead)
    ("deflate_stored",       Deflate._deflate_stored,       true),
    ("inflate_table",        Inftrees._inflate_table,       true),
    ("inflate_fast",         Inffast._inflate_fast,         true),
    ("_tr_flush_block",      Trees.__tr_flush_block,        true),
    ("longest_match",        Deflate._longest_match,        true),
    ("deflate_fast",         Deflate._deflate_fast,         true),
    ("deflate_slow",         Deflate._deflate_slow,         true),
    ("adler32_z",            Adler32._adler32_z,            true),
    -- **Syntactically reachable, semantically dead.**  `deflate` calls both by
    -- name at deflate.c:1218-1219, guarded by `s->strategy` value tests, so no
    -- syntactic walk can rule them out.  Their deadness follows from
    -- `compress2_z` passing `Z_DEFAULT_STRATEGY` and is a PROOF OBLIGATION, not
    -- a fact about the AST.  The plan called them "unreachable"; that was
    -- imprecise and this is the correction.
    ("deflate_rle",          Deflate._deflate_rle,          true),
    ("deflate_huff",         Deflate._deflate_huff,         true) ]

-- The whole audit, in one pass over one computed closure.
#eval show IO Unit from do
  let r := reachable
  let dead := internalNames.filter (fun n => ¬ r.contains n)
  IO.println s!"internal functions        = {internalNames.length}"
  IO.println s!"reachable from entries    = {r.length}"
  IO.println s!"unreachable               = {dead.length}"
  let bad := auditChecks.filter (fun c => r.contains c.2.1 != c.2.2)
  if bad.isEmpty then
    IO.println s!"reachability claims       = {auditChecks.length}/{auditChecks.length} hold"
  else
    throw (IO.userError s!"AUDIT FAILED for: {bad.map (fun c => c.1)}")
  -- `infback.c` is not one of the nine linked modules, so `inflateBack` is not
  -- merely unreachable: it does not exist in the program at all.
  if (ZLink.zlibProg.prog_defs.find?
        (fun d => d.1 == identOfString "inflateBack")).isNone then
    IO.println "inflateBack               = absent from the program"
  else
    throw (IO.userError "inflateBack is present - infback.c got linked in")

/-! ## Conclusions — M0d passes, with one new finding

**1. The static Huffman tables are precomputed.**  `tr_static_init_is_noop` is
`rfl`: `f_tr_static_init.fn_body` is literally `Sskip`, because `GEN_TREES_H` is
commented out (trees.c:35) and `STDC` holds, so `#include "trees.h"` supplies
`static_ltree` (288 entries / 576 initialisers), `_dist_code` (512) and
`_length_code` (256) as initialised globals.  This is the good outcome the plan
hoped for: **the finite-table facts stay `decide`s and never become loop proofs.**
`check_match` does not appear in the ASTs at all, so `ZLIB_DEBUG` is off and the
plan's "match optimality is never needed" free lunch is confirmed at the AST
level.

**2. A 512-entry `decide` is affordable.**  `dist_code_all_bytes` decides a
property of all 512 `_dist_code` initialisers as one goal, under 50 ms.  The
plan's open question is closed, and the batching discipline from `DeflateMeasure`
carries over unchanged.

**3. Scope, computed rather than estimated.**  Of **95** internal functions in the
linked program, **57 are reachable** from `compress2_z`/`uncompress2_z` and **38
are dead** — a 40 % reduction on the whole-program surface.  The nine
expected-dead entry points are confirmed dead, and `inflateBack` is absent
outright because `infback.c` is not among the nine linked units.

**3a. Two expectations were wrong, and both corrections matter.**

* *`deflate_fast`, `deflate_slow` and `longest_match` were missing* from the first
  walk, which reported 54.  `deflate` reaches them **only** through
  `configuration_table[s->level].func` (deflate.c:789, 1220) — function pointers
  living in a *global initialiser*, not names in any function body.  A walk over
  `Evar`s alone silently drops the entire LZ77 layer.  `initAddrsOf` fixes it, and
  the lesson generalises: **any reachability or call-DAG analysis in this project
  must follow `Init_addrof`**, including M1's call-DAG rank measure for `closure`.
* *`deflate_rle` and `deflate_huff` are syntactically reachable.*  `deflate` calls
  both **by name** at deflate.c:1218-1219, guarded by `s->strategy` value tests.
  The plan called them "unreachable"; that is imprecise.  They are dead only
  because `compress2_z` passes `Z_DEFAULT_STRATEGY`, which is a **semantic fact
  requiring proof** — a branch-elimination obligation in the `deflate` funspec, not
  something any AST walk can discharge.  Cheap, but it is work, and it has to be
  written down somewhere.

**4. The new finding: kernel reduction is not the same tool as compiled
evaluation.**  `reachable` is a fixed point over 95 function bodies.  `#eval`
computes it in seconds; `decide` and `#guard` both reduce in the kernel and blow
a 200,000-heartbeat budget on a *single* membership query.  M0b measured the
kernel side (≈100 ms per proof step, fine); this is the other side of the same
coin, and the rule it implies is worth carrying forward:

> **Compute with `#eval`, prove with `decide` — and never let a proof depend on a
> whole-program computation.** Anything a proof must `decide` has to be a *small,
> local* goal: a field-offset table, a 512-entry initialiser list, a member of a
> concrete list.  Whole-program facts belong in measurement code.

This costs the project nothing — no step of the round-trip proof needs to decide a
whole-program property — but it would have been an expensive surprise to discover
inside `inflate_table`.
-/

end ZConfigAudit
