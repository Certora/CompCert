/-
  Observable events and external calls — the minimal slice of `common/Events.v`
  the Clight semantics needs (~250 of its 1819 lines).

  What is here: `eventval`, `event`, `trace`/`E0`/`Eapp`, `eventval_match`, the
  volatile load/store relations, and real semantics for the builtins a C program
  actually uses — `malloc`, `free`, `memcpy`, `annot`, `annot_val`, `debug`.

  What is deliberately NOT here:
  * `traceinf` and the infinite-trace machinery (CoInductive in Rocq; Lean 4 has
    no native coinductive types, and none of it is needed for a
    terminating-program semantics based on `star`/`plus`).
  * `extcall_properties` and the ~770 lines proving each builtin satisfies it —
    that is pass-proof support.
  * `eventval_valid`, `symbols_inject`, `match_traces`, `eval_builtin_arg`.

  Unknown external functions and inline assembly are left UNINTERPRETED, exactly
  as in Rocq: `Events.v` lines 1487-1497 declare them with `Parameter` +
  `Axiom`, so the corresponding Lean `axiom`s below are faithful rather than a
  shortcut.  They are Prop-valued relations, hence consistent (the always-false
  relation instantiates them).
-/
import CCLib.Globalenvs

namespace CC

/-! ## Symbol environments (`Events.Senv`)

A non-dependent record of lookup functions, as in Rocq; `Genv.toSenv` builds one.
Keeping `Events` over `Senv` rather than `Genv` is what makes it independent of
the function/variable type parameters. -/

structure Senv where
  find_symbol : Ident → Option Block
  public_symbol : Ident → Bool
  invert_symbol : Block → Option Ident
  block_is_volatile : Block → Bool

/-- `Genv.to_senv` -/
def Genv.toSenv {F V : Type} (ge : Genv F V) : Senv :=
  { find_symbol := Genv.findSymbol ge
    public_symbol := Genv.publicSymbol ge
    invert_symbol := Genv.invertSymbol ge
    block_is_volatile := Genv.blockIsVolatile ge }

/-! ## Events and traces -/

/-- `Events.eventval` — a value as it appears in an observable event. -/
inductive EventVal where
  | EVint (i : Integers.Int)
  | EVlong (i : Integers.Int64)
  | EVfloat (f : Floats.Float)
  | EVsingle (f : Floats.Float32)
  | EVptr_global (id : Ident) (ofs : Integers.Ptrofs)
  deriving DecidableEq, Repr, Inhabited

/-- `Events.event` -/
inductive Event where
  | Event_syscall (name : String) (args : List EventVal) (res : EventVal)
  | Event_vload (chunk : Chunk) (id : Ident) (ofs : Integers.Ptrofs) (v : EventVal)
  | Event_vstore (chunk : Chunk) (id : Ident) (ofs : Integers.Ptrofs) (v : EventVal)
  | Event_annot (text : String) (args : List EventVal)
  deriving DecidableEq, Repr, Inhabited

/-- `Events.trace` -/
abbrev Trace := List Event
/-- `Events.E0` — the empty trace. -/
def E0 : Trace := []
/-- `Events.Eapp` -/
def Eapp (t1 t2 : Trace) : Trace := t1 ++ t2

/-- `Events.eventval_match` — which values a given event value may denote. -/
inductive EventValMatch (ge : Senv) : EventVal → ATyp → Val → Prop where
  | ev_match_int (i) : EventValMatch ge (.EVint i) .Tint (.Vint i)
  | ev_match_long (i) : EventValMatch ge (.EVlong i) .Tlong (.Vlong i)
  | ev_match_float (f) : EventValMatch ge (.EVfloat f) .Tfloat (.Vfloat f)
  | ev_match_single (f) : EventValMatch ge (.EVsingle f) .Tsingle (.Vsingle f)
  | ev_match_ptr (id b ofs) :
      ge.public_symbol id = true →
      ge.find_symbol id = some b →
      EventValMatch ge (.EVptr_global id ofs) Tptr (.Vptr b ofs)

/-- `Events.eventval_list_match` -/
inductive EventValListMatch (ge : Senv) :
    List EventVal → List ATyp → List Val → Prop where
  | evl_match_nil : EventValListMatch ge [] [] []
  | evl_match_cons (ev1 ty1 v1 evl tyl vl) :
      EventValMatch ge ev1 ty1 v1 →
      EventValListMatch ge evl tyl vl →
      EventValListMatch ge (ev1 :: evl) (ty1 :: tyl) (v1 :: vl)

/-! ## Volatile accesses

A load from (or store to) a *volatile* global produces an observable event and
does not touch memory; any other address behaves like a plain access. -/

/-- `Events.volatile_load` -/
inductive VolatileLoad (ge : Senv) :
    Chunk → Mem → Block → Integers.Ptrofs → Trace → Val → Prop where
  | vol (chunk m b ofs id ev v) :
      ge.block_is_volatile b = true →
      ge.find_symbol id = some b →
      EventValMatch ge ev (Chunk.typ chunk) v →
      VolatileLoad ge chunk m b ofs [Event.Event_vload chunk id ofs ev]
        (Val.loadResult chunk v)
  | nonvol (chunk m b ofs v) :
      ge.block_is_volatile b = false →
      Mem.load chunk m b (Integers.Ptrofs.unsigned ofs) = some v →
      VolatileLoad ge chunk m b ofs E0 v

/-- `Events.volatile_store` -/
inductive VolatileStore (ge : Senv) :
    Chunk → Mem → Block → Integers.Ptrofs → Val → Trace → Mem → Prop where
  | vol (chunk m b ofs id ev v) :
      ge.block_is_volatile b = true →
      ge.find_symbol id = some b →
      EventValMatch ge ev (Chunk.typ chunk) (Val.loadResult chunk v) →
      VolatileStore ge chunk m b ofs v [Event.Event_vstore chunk id ofs ev] m
  | nonvol (chunk m b ofs v m') :
      ge.block_is_volatile b = false →
      Mem.store chunk m b (Integers.Ptrofs.unsigned ofs) v = some m' →
      VolatileStore ge chunk m b ofs v E0 m'

/-! ## The type of an external-call semantics -/

/-- `Events.extcall_sem` -/
abbrev ExtcallSem := Senv → List Val → Mem → Trace → Val → Mem → Prop

/-! ## Builtins with real semantics -/

/-- `Events.volatile_load_sem` -/
inductive VolatileLoadSem (chunk : Chunk) : ExtcallSem where
  | intro (ge b ofs m t v) :
      VolatileLoad ge chunk m b ofs t v →
      VolatileLoadSem chunk ge [.Vptr b ofs] m t v m

/-- `Events.volatile_store_sem` -/
inductive VolatileStoreSem (chunk : Chunk) : ExtcallSem where
  | intro (ge b ofs m1 v t m2) :
      VolatileStore ge chunk m1 b ofs v t m2 →
      VolatileStoreSem chunk ge [.Vptr b ofs, v] m1 t .Vundef m2

/-- `Events.extcall_malloc_sem`.  The requested size is stashed just below the
    returned pointer so that `free` can recover it. -/
inductive ExtcallMallocSem : ExtcallSem where
  | intro (ge sz m m' b m'') :
      Mem.alloc m (- sizeChunk Mptr) (Integers.Ptrofs.unsigned sz) = (m', b) →
      Mem.store Mptr m' b (- sizeChunk Mptr) (Val.Vptrofs sz) = some m'' →
      ExtcallMallocSem ge [Val.Vptrofs sz] m E0 (.Vptr b Integers.Ptrofs.zero) m''

/-- `Events.extcall_free_sem` -/
inductive ExtcallFreeSem : ExtcallSem where
  | ptr (ge b lo sz m m') :
      Mem.load Mptr m b (Integers.Ptrofs.unsigned lo - sizeChunk Mptr)
        = some (Val.Vptrofs sz) →
      Mem.free m b (Integers.Ptrofs.unsigned lo - sizeChunk Mptr)
        (Integers.Ptrofs.unsigned lo + Integers.Ptrofs.unsigned sz) = some m' →
      ExtcallFreeSem ge [.Vptr b lo] m E0 .Vundef m'
  | null (ge m) : ExtcallFreeSem ge [Val.Vnullptr] m E0 .Vundef m

/-- `Events.extcall_memcpy_sem` — the source and destination must be aligned and
    either identical or non-overlapping. -/
inductive ExtcallMemcpySem (sz al : Z) : ExtcallSem where
  | intro (ge bdst odst bsrc osrc m bytes m') :
      (al = 1 ∨ al = 2 ∨ al = 4 ∨ al = 8) → sz ≥ 0 → sz % al = 0 →
      (sz > 0 → Integers.Ptrofs.unsigned osrc % al = 0) →
      (sz > 0 → Integers.Ptrofs.unsigned odst % al = 0) →
      (bsrc ≠ bdst
        ∨ Integers.Ptrofs.unsigned osrc = Integers.Ptrofs.unsigned odst
        ∨ Integers.Ptrofs.unsigned osrc + sz ≤ Integers.Ptrofs.unsigned odst
        ∨ Integers.Ptrofs.unsigned odst + sz ≤ Integers.Ptrofs.unsigned osrc) →
      Mem.loadbytes m bsrc (Integers.Ptrofs.unsigned osrc) sz = some bytes →
      Mem.storebytes m bdst (Integers.Ptrofs.unsigned odst) bytes = some m' →
      ExtcallMemcpySem sz al ge [.Vptr bdst odst, .Vptr bsrc osrc] m E0 .Vundef m'

/-- `Events.extcall_annot_sem` -/
inductive ExtcallAnnotSem (text : String) (targs : List ATyp) : ExtcallSem where
  | intro (ge vargs m args) :
      EventValListMatch ge args targs vargs →
      ExtcallAnnotSem text targs ge vargs m [Event.Event_annot text args] .Vundef m

/-- `Events.extcall_annot_val_sem` -/
inductive ExtcallAnnotValSem (text : String) (targ : ATyp) : ExtcallSem where
  | intro (ge varg m arg) :
      EventValMatch ge arg targ varg →
      ExtcallAnnotValSem text targ ge [varg] m
        [Event.Event_annot text [arg]] varg m

/-- `Events.extcall_debug_sem` — observationally a no-op. -/
inductive ExtcallDebugSem : ExtcallSem where
  | intro (ge vargs m) : ExtcallDebugSem ge vargs m E0 .Vundef m

/-! ## Uninterpreted externals

`Events.v` 1487-1497 declares these with `Parameter`/`Axiom` in Rocq; the same
choice here.  A program that calls an unknown external therefore has
unspecified — not stuck — behaviour, matching CompCert. -/

axiom externalFunctionsSem : String → Signature → ExtcallSem
axiom inlineAssemblySem : String → Signature → ExtcallSem

/-- `Events.builtin_or_external_sem`.  CompCert first consults its table of
    known builtins (`Builtins.lookup_builtin_function`); we do not model that
    table, so every named builtin is treated as an unknown external. -/
def builtinOrExternalSem (name : String) (sg : Signature) : ExtcallSem :=
  externalFunctionsSem name sg

/-- `Events.external_call` — the semantics of an external function. -/
def externalCall : ExtFun → ExtcallSem
  | .EF_external name sg => externalFunctionsSem name sg
  | .EF_builtin name sg => builtinOrExternalSem name sg
  | .EF_runtime name sg => builtinOrExternalSem name sg
  | .EF_vload chunk => VolatileLoadSem chunk
  | .EF_vstore chunk => VolatileStoreSem chunk
  | .EF_malloc => ExtcallMallocSem
  | .EF_free => ExtcallFreeSem
  | .EF_memcpy sz al => ExtcallMemcpySem sz al
  | .EF_annot _ txt targs => ExtcallAnnotSem txt targs
  | .EF_annot_val _ txt targ => ExtcallAnnotValSem txt targ
  | .EF_inline_asm txt sg _ => inlineAssemblySem txt sg
  | .EF_debug _ _ _ => ExtcallDebugSem

end CC
