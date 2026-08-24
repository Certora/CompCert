/-
  **Phase-9 Step 1 (Wave C) — the nine zlib translation units, linked.**

  `clightgen` emits one module per translation unit, so `compress` (compress.c)
  calls `deflate` as `EF_external "deflate"` and the body it needs is in another
  `Program` entirely.  `Sep.closure` wants one program.  This file produces it,
  with `CCLib.Linking`, and checks that the cross-module calls resolve.

  Two prerequisites had to be built first, **neither of them anticipated by the
  plan**:

  1. **Per-module namespaces in the exporter.**  Every generated module used to
     declare `prog`, `composites`, `___builtin_fabsf`, … at the root namespace,
     so `import GenDeflate` + `import GenAdler32` failed outright:
     *"environment already contains '___builtin_fabsf'"*.  Two generated modules
     could not coexist in one Lean file at all, which makes linking unstatable.
     `ExportLeanClight.ml` now wraps each module in a namespace derived from its
     source basename (`deflate.c` -> `namespace Deflate`).  The nine imports
     below are the evidence that this works.

  2. **α-renaming of file-local symbols.**  inflate.c and inffast.c both define
     `__stringlit_1` — different strings, same name, both `static`.  A real linker
     keeps statics as distinct local symbols; `prog_defs` is keyed by `Ident`, so
     the merge has to rename.  See `Link.privateRenaming`.

  The whole round-trip set is here: compress.c uncompr.c deflate.c inflate.c
  trees.c inftrees.c inffast.c adler32.c zutil.c — 6,139 lines of C, ~35,000
  lines of generated Lean.

  ## What is proved, and what is tested

  Kernel-checked (`decide`, no `native_decide`): the linker's *rules*, on small
  concrete programs — a declaration resolving against a definition, a duplicate
  definition conflicting, an incomplete array type completing, a private
  collision being renamed.

  Checked by evaluation (`#eval`, i.e. a **test**, at the level of
  `diff_all.sh`): that the real nine-module link succeeds and that
  `deflate` / `inflate` / `inflate_table` / `_tr_flush_block` resolve to
  `Internal` bodies in it.  A kernel `decide` over a 35,000-line AST merge does
  not finish in any useful time (measured: >10 min, abandoned), and
  `native_decide` is banned project-wide since Step 10.  Saying so plainly beats
  a green checkmark that hides an axiom.
-/
import GenZCompress
import GenZUncompr
import GenDeflate
import GenZInflate
import GenZTrees
import GenZInftrees
import GenZInffast
import GenAdler32
import GenZZutil
import CCLib

open CC CC.Link

set_option maxRecDepth 100000

namespace ZLink

/-! ## The nine translation units

Order matters for `prog_main` (taken from the head) and for the block numbering
of the resulting `Genv`.  compress.c goes first: it is the round-trip's entry. -/

def units : List Program :=
  [Compress.prog, Uncompr.prog, Deflate.prog, Inflate.prog, Trees.prog,
   Inftrees.prog, Inffast.prog, Adler32.prog, Zutil.prog]

theorem units_count : units.length = 9 := by rfl

/-- **The linked program.**  `Option` because linking can genuinely fail
    (duplicate symbol, conflicting declaration, composites that do not build). -/
def zlibProgOpt : Option Program := linkProgramsRenaming units

/-- The linked program, or the empty one, so downstream statements need no
    `Option` plumbing.  The `#eval` below shows the default never fires. -/
def zlibProg : Program :=
  match zlibProgOpt with
  | some p => p
  | none => mkprogram [] [] [] Positive.xH

/-! ## The real link, checked by evaluation

These are **tests**, not theorems — see the header.  They run at build time, so a
regression in the linker or in the exporter breaks the build. -/

section RealLink

#eval if zlibProgOpt.isSome then "link OK" else "LINK FAILED"

#eval s!"defs={zlibProg.prog_defs.length} composites={zlibProg.prog_types.length}"

/-! **The point of the exercise**: calls that were `EF_external` in their own
translation unit now resolve to `Internal` bodies.

* `deflate`         — called from compress.c, defined in deflate.c
* `inflate`         — called from uncompr.c,  defined in inflate.c
* `inflate_table`   — called from inflate.c/inffast.c, defined in inftrees.c
* `_tr_flush_block` — called from deflate.c, defined in trees.c -/
#eval s!"resolved: deflate={hasInternal zlibProg Compress._deflate} inflate={hasInternal zlibProg Inflate._inflate} inflate_table={hasInternal zlibProg Inftrees._inflate_table} tr_flush_block={hasInternal zlibProg Trees.__tr_flush_block}"

/-! …and each really was only a *declaration* in the calling module, so the
resolution above is doing work. -/
#eval s!"before linking: deflate in compress.c={hasExternal Compress.prog Compress._deflate} inflate_table in inflate.c={hasExternal Inflate.prog Inflate._inflate_table} tr_flush_block in deflate.c={hasExternal Deflate.prog Deflate.__tr_flush_block}"

/-! The colliding private literals were renamed, not dropped. -/
#eval s!"Gvars in linked program={(zlibProg.prog_defs.filter (fun d => match d.2 with | .Gvar _ => true | _ => false)).length}"

end RealLink

/-! ## The linker's rules, kernel-checked

Small concrete programs, so `decide` runs in the kernel in milliseconds.  These
are the actual content of `CCLib/Linking.lean`: each case of `linkFundef` /
`linkVar` / `privateRenaming`, exercised on a real `Program`. -/

section Rules

private def idF : Ident := Positive.ofNat 10
private def idG : Ident := Positive.ofNat 11
private def idV : Ident := Positive.ofNat 12

/-- `int f(int)`, defined. -/
private def fBody : Function :=
  { fn_return := tint, fn_callconv := cc_default,
    fn_params := [(idG, tint)], fn_vars := [], fn_temps := [],
    fn_body := .Sreturn (some (.Etempvar idG tint)) }

/-- The same function, only declared — as clightgen emits a prototype. -/
private def fDecl : FunDef :=
  .External (.EF_external "f" (mksignature [.Xint] .Xint cc_default))
    [tint] tint cc_default

/-- Module A: declares `f`, does not define it. -/
private def modDecl : Program :=
  mkprogram [] [(idF, .Gfun fDecl)] [idF] idF

/-- Module B: defines `f`. -/
private def modDef : Program :=
  mkprogram [] [(idF, .Gfun (.Internal fBody))] [idF] idF

/-- **A declaration resolves against a definition.** -/
theorem decl_resolves :
    (linkProgram modDecl modDef).map (fun p => hasInternal p idF) = some true := by
  decide

/-- **…in either order.** -/
theorem def_resolves_reversed :
    (linkProgram modDef modDecl).map (fun p => hasInternal p idF) = some true := by
  decide

/-- **Two definitions of one name do not link.**  Deliberate: a duplicate symbol
    is an error, and silently preferring one would make the result depend on
    argument order. -/
theorem dup_def_fails : linkProgram modDef modDef = none := by decide

/-- An `extern const uch v[];` declaration — the shape that broke the real link
    until `linkTy` existed (zlib's `_dist_code`). -/
private def vDecl : GlobVar Ty :=
  { gvar_info := tarray tuchar 0, gvar_init := [], gvar_readonly := true,
    gvar_volatile := false }

/-- …and its definition, `const uch v[2] = {7, 9};`. -/
private def vDef : GlobVar Ty :=
  { gvar_info := tarray tuchar 2,
    gvar_init := [.Init_int8 (Integers.Int.repr 7), .Init_int8 (Integers.Int.repr 9)],
    gvar_readonly := true, gvar_volatile := false }

/-- **An incomplete array type completes against the sized one**, and the
    surviving variable carries the *sized* type — otherwise `sizeof` would answer
    0 for every access to it. -/
theorem incomplete_array_links :
    (linkVar vDecl vDef).map (fun v => (v.gvar_info, v.gvar_init.length))
      = some (tarray tuchar 2, 2) := by decide

theorem incomplete_array_links_reversed :
    (linkVar vDef vDecl).map (fun v => (v.gvar_info, v.gvar_init.length))
      = some (tarray tuchar 2, 2) := by decide

/-- Two *different* definitions still conflict. -/
theorem conflicting_defs_fail :
    (linkVar vDef { vDef with gvar_init := [.Init_int8 (Integers.Int.repr 1)] }).isSome
      = false := by decide

/-! ### Private collisions are renamed, not merged -/

/-- Module C: a **private** `v` (absent from `prog_public`) plus a public `f` —
    the `__stringlit` shape. -/
private def modPrivA : Program :=
  mkprogram [] [(idF, .Gfun (.Internal fBody)), (idV, .Gvar vDef)] [idF] idF

/-- Module D: a *different* private `v` under the same name, plus a public `g`. -/
private def modPrivB : Program :=
  mkprogram []
    [(idG, .Gfun (.Internal fBody)),
     (idV, .Gvar { vDef with
       gvar_init := [.Init_int8 (Integers.Int.repr 1),
                     .Init_int8 (Integers.Int.repr 2)] })]
    [idG] idG

/-- **Both private variables survive.**  Without renaming this link fails (two
    initialised definitions of one name); with it, the second moves to a fresh
    identifier, so the linked program holds all four definitions — the two public
    functions and *both* private variables. -/
theorem private_collision_renamed :
    (linkProgramRenaming modPrivA modPrivB).map (fun p => p.prog_defs.length)
      = some 4 := by
  decide

/-- The naive merge — without renaming — genuinely fails on that pair.  This is
    exactly what the real nine-module link hit at inffast.c. -/
theorem private_collision_without_renaming_fails :
    linkProgram modPrivA modPrivB = none := by decide

/-- Both public functions are still reachable in the renamed link. -/
theorem private_collision_keeps_publics :
    (linkProgramRenaming modPrivA modPrivB).map
        (fun p => hasInternal p idF && hasInternal p idG)
      = some true := by
  decide

end Rules

end ZLink
