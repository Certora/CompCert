/-
  Floating-point values — substitute for `lib/Floats.v` (1464 lines) +
  `lib/IEEE754_extra.v` (1492) + the whole `flocq/` library (31,416 lines).

  ## Why this is a substitution rather than a port

  CompCert defines `float := Flocq binary_float 53 1024`, a dependent inductive
  whose `B754_finite` carries a boundedness proof and whose `B754_nan` carries a
  payload-validity proof, and every NaN-propagation function is written with
  subset types `{x : float | is_nan x = true}` plus hand-passed precision
  bounds (`Local Notation __ := (eq_refl Datatypes.Lt)`).  Porting that
  faithfully means porting Flocq: ~34,000 lines, the single largest item in the
  whole project and ~5x the rest of the semantics combined.

  Instead a float is **represented by its bit pattern** and the operations are
  delegated to Lean's native `Float`/`Float32`, i.e. to the hardware's IEEE-754
  binary64/binary32 units.

  ## Trust and fidelity — read before relying on float results

  * TRUSTED, NOT PROVED: we assume Lean's native `Float`/`Float32` implement
    IEEE-754 round-to-nearest-even, which is what CompCert's Flocq operations
    specify.  This is an assumption about the platform, quarantined in this one
    file; nothing else in the semantics takes it.
  * Representing a float by its bits (rather than by a Flocq value) gives
    *structural* equality that distinguishes NaN payloads and ±0 — closer to
    CompCert's `float` than Lean `Float`'s IEEE `==` would be (`nan != nan`,
    `-0.0 == 0.0`).  Comparisons that should follow IEEE go through
    `cmp`/`compare`, never through `==`.
  * KNOWN GAP: NaN *payload propagation* is not guaranteed to match CompCert's
    `Archi.choose_nan_64/32` rules.  Programs that observe a NaN's payload bits
    (e.g. `memcpy` a NaN then inspect bytes) may differ.  The differential test
    corpus is integer-only until this is addressed.
  * `to_bits`/`of_bits` ARE exact, so the `memval`/`decode_val` path that moves
    doubles through memory is faithful.

  Names match what the `clightgen -lean` printers emit (`Floats.Float.ofBits`,
  `Floats.Float32.ofBits`), so exported files need no changes.
-/
import CCLib.Integers

namespace CC
namespace Floats

/-! ## binary64 (`CompCert Floats.float`) -/

/-- CompCert's `float` (binary64), represented by its 64-bit pattern. -/
structure Float where
  bits : Integers.Int64
  deriving DecidableEq, Repr, Inhabited

namespace Float

/-- `Float.of_bits` -/
def ofBits (b : Integers.Int64) : Float := ⟨b⟩
/-- `Float.to_bits` -/
def toBits (f : Float) : Integers.Int64 := f.bits

/-- Bridge to the native (hardware) binary64 value. -/
@[inline] def toNative (f : Float) : _root_.Float :=
  _root_.Float.ofBits f.bits.toNat.toUInt64
/-- Bridge back from a native binary64 value. -/
@[inline] def ofNative (x : _root_.Float) : Float :=
  ⟨BitVec.ofNat 64 x.toBits.toNat⟩

@[inline] private def un (g : _root_.Float → _root_.Float) (f : Float) : Float :=
  ofNative (g f.toNative)
@[inline] private def bin (g : _root_.Float → _root_.Float → _root_.Float)
    (f1 f2 : Float) : Float := ofNative (g f1.toNative f2.toNative)

def zero : Float := ofNative 0.0

/-! ### Arithmetic (IEEE round-to-nearest-even, via hardware) -/

def neg : Float → Float := un (fun x => -x)
def abs : Float → Float := un (fun x => if x < 0.0 then -x else x)
def add : Float → Float → Float := bin (· + ·)
def sub : Float → Float → Float := bin (· - ·)
def mul : Float → Float → Float := bin (· * ·)
def div : Float → Float → Float := bin (· / ·)

/-! ### Comparison

`Float.cmp` mirrors CompCert's `cmp_of_comparison`: it is *false* whenever the
operands are unordered (either is NaN), except for `Cne` which is true. -/

def isNaN (f : Float) : Bool := f.toNative.isNaN

def cmp (c : Comparison) (f1 f2 : Float) : Bool :=
  let x := f1.toNative; let y := f2.toNative
  if x.isNaN || y.isNaN then
    match c with | .Cne => true | _ => false
  else
    match c with
    | .Ceq => x == y
    | .Cne => x != y
    | .Clt => x < y
    | .Cle => x <= y
    | .Cgt => y < x
    | .Cge => y <= x

/-! ### Conversions to and from integers

CompCert's `to_int`/`to_intu`/`to_long`/`to_longu` return `option` and fail when
the value is NaN or out of range — the C standard makes those cases undefined,
and `Cop` propagates the `None`.  We reproduce that partiality exactly. -/

private def inRange (x : _root_.Float) (lo hi : Z) : Bool :=
  !x.isNaN && !x.isInf &&
    (let t := x.toInt64.toInt   -- truncation toward zero
     decide (lo ≤ t) && decide (t ≤ hi))

/-- `Float.to_int` — signed 32-bit, truncating toward zero. -/
def toInt (f : Float) : Option Integers.Int :=
  let x := f.toNative
  if inRange x Integers.Int.min_signed Integers.Int.max_signed
  then some (Integers.Int.repr x.toInt64.toInt) else none

/-- `Float.to_intu` — unsigned 32-bit. -/
def toIntu (f : Float) : Option Integers.Int :=
  let x := f.toNative
  if inRange x 0 Integers.Int.max_unsigned
  then some (Integers.Int.repr x.toInt64.toInt) else none

/-- `Float.to_long` — signed 64-bit. -/
def toLong (f : Float) : Option Integers.Int64 :=
  let x := f.toNative
  if inRange x Integers.Int64.min_signed Integers.Int64.max_signed
  then some (Integers.Int64.repr x.toInt64.toInt) else none

/-- `Float.to_longu` — unsigned 64-bit. -/
def toLongu (f : Float) : Option Integers.Int64 :=
  let x := f.toNative
  if inRange x 0 Integers.Int64.max_unsigned
  then some (Integers.Int64.repr x.toInt64.toInt) else none

/-- `Float.of_int` — from a signed 32-bit integer. -/
def ofInt (n : Integers.Int) : Float :=
  ofNative (_root_.Float.ofInt (Integers.Int.signed n))
/-- `Float.of_intu` — from an unsigned 32-bit integer. -/
def ofIntu (n : Integers.Int) : Float :=
  ofNative (_root_.Float.ofInt (Integers.Int.unsigned n))
/-- `Float.of_long` — from a signed 64-bit integer. -/
def ofLong (n : Integers.Int64) : Float :=
  ofNative (_root_.Float.ofInt (Integers.Int64.signed n))
/-- `Float.of_longu` — from an unsigned 64-bit integer. -/
def ofLongu (n : Integers.Int64) : Float :=
  ofNative (_root_.Float.ofInt (Integers.Int64.unsigned n))

end Float

/-! ## binary32 (`CompCert Floats.float32`) -/

/-- CompCert's `float32` (binary32), represented by its 32-bit pattern. -/
structure Float32 where
  bits : Integers.Int
  deriving DecidableEq, Repr, Inhabited

namespace Float32

/-- `Float32.of_bits` -/
def ofBits (b : Integers.Int) : Float32 := ⟨b⟩
/-- `Float32.to_bits` -/
def toBits (f : Float32) : Integers.Int := f.bits

@[inline] def toNative (f : Float32) : _root_.Float32 :=
  _root_.Float32.ofBits f.bits.toNat.toUInt32
@[inline] def ofNative (x : _root_.Float32) : Float32 :=
  ⟨BitVec.ofNat 32 x.toBits.toNat⟩

@[inline] private def un (g : _root_.Float32 → _root_.Float32) (f : Float32) : Float32 :=
  ofNative (g f.toNative)
@[inline] private def bin (g : _root_.Float32 → _root_.Float32 → _root_.Float32)
    (f1 f2 : Float32) : Float32 := ofNative (g f1.toNative f2.toNative)

def zero : Float32 := ofNative 0.0

def neg : Float32 → Float32 := un (fun x => -x)
def abs : Float32 → Float32 := un (fun x => if x < 0.0 then -x else x)
def add : Float32 → Float32 → Float32 := bin (· + ·)
def sub : Float32 → Float32 → Float32 := bin (· - ·)
def mul : Float32 → Float32 → Float32 := bin (· * ·)
def div : Float32 → Float32 → Float32 := bin (· / ·)

def isNaN (f : Float32) : Bool := f.toNative.isNaN

/-! ### Conversions to and from integers

binary32 ⊆ binary64, so these route through the `Float` versions, which is
exact. -/

/-- Widen to binary64 (used to reuse `Float`'s conversion logic). -/
@[inline] def toDoubleNative (f : Float32) : _root_.Float := f.toNative.toFloat

private def inRange32 (x : _root_.Float) (lo hi : Z) : Bool :=
  !x.isNaN && !x.isInf &&
    (let t := x.toInt64.toInt
     decide (lo ≤ t) && decide (t ≤ hi))

/-- `Float32.to_int` -/
def toInt (f : Float32) : Option Integers.Int :=
  let x := f.toDoubleNative
  if inRange32 x Integers.Int.min_signed Integers.Int.max_signed
  then some (Integers.Int.repr x.toInt64.toInt) else none

/-- `Float32.to_intu` -/
def toIntu (f : Float32) : Option Integers.Int :=
  let x := f.toDoubleNative
  if inRange32 x 0 Integers.Int.max_unsigned
  then some (Integers.Int.repr x.toInt64.toInt) else none

/-- `Float32.to_long` -/
def toLong (f : Float32) : Option Integers.Int64 :=
  let x := f.toDoubleNative
  if inRange32 x Integers.Int64.min_signed Integers.Int64.max_signed
  then some (Integers.Int64.repr x.toInt64.toInt) else none

/-- `Float32.to_longu` -/
def toLongu (f : Float32) : Option Integers.Int64 :=
  let x := f.toDoubleNative
  if inRange32 x 0 Integers.Int64.max_unsigned
  then some (Integers.Int64.repr x.toInt64.toInt) else none

/-- `Float32.of_int` -/
def ofInt (n : Integers.Int) : Float32 :=
  ofNative (_root_.Float.ofInt (Integers.Int.signed n)).toFloat32
/-- `Float32.of_intu` -/
def ofIntu (n : Integers.Int) : Float32 :=
  ofNative (_root_.Float.ofInt (Integers.Int.unsigned n)).toFloat32
/-- `Float32.of_long` -/
def ofLong (n : Integers.Int64) : Float32 :=
  ofNative (_root_.Float.ofInt (Integers.Int64.signed n)).toFloat32
/-- `Float32.of_longu` -/
def ofLongu (n : Integers.Int64) : Float32 :=
  ofNative (_root_.Float.ofInt (Integers.Int64.unsigned n)).toFloat32

def cmp (c : Comparison) (f1 f2 : Float32) : Bool :=
  let x := f1.toNative; let y := f2.toNative
  if x.isNaN || y.isNaN then
    match c with | .Cne => true | _ => false
  else
    match c with
    | .Ceq => x == y
    | .Cne => x != y
    | .Clt => x < y
    | .Cle => x <= y
    | .Cgt => y < x
    | .Cge => y <= x

end Float32

/-! ## Conversions between the two formats (`Float.of_single` / `to_single`) -/

/-- `Float.of_single` — widen binary32 to binary64. -/
def Float.ofSingle (f : Float32) : Float :=
  Float.ofNative f.toNative.toFloat
/-- `Float.to_single` — narrow binary64 to binary32 (rounds). -/
def Float.toSingle (f : Float) : Float32 :=
  Float32.ofNative f.toNative.toFloat32

end Floats
end CC
