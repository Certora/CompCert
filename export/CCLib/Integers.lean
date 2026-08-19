/-
  Machine integers — port of `lib/Integers.v` (5009 lines, 58 % proof) on top of
  Lean's `BitVec`.

  CompCert represents a machine integer as a DEPENDENT record
      Record int := mkint { intval : Z; intrange : -1 < intval < modulus }
  inside a module functor `Make(WS : WORDSIZE)`. Lean has neither module
  functors nor a need for the range proof: `BitVec w` is exactly "a `Z` modulo
  2^w" with the invariant built in. This substitution is *faithful* — see the
  correspondence table below — and it deletes ~3900 lines of Rocq bit-algebra
  proofs (plus all of `lib/Zbits.v`), because `bv_decide`/`omega`/`simp` supply
  them on demand.

  Correspondence with CompCert (verified against the Rocq sources, and by
  differential testing in `test/lean/int_diff.v` / `IntDiff.lean`):

  | CompCert                            | here                        |
  |-------------------------------------|-----------------------------|
  | `Int.repr z`   (= z mod 2^w)        | `BitVec.ofInt w z`          |
  | `Int.unsigned x`                    | `x.toNat`  (as `Z`)         |
  | `Int.signed x`                      | `x.toInt`                   |
  | `Int.divs` (`Z.quot`, trunc → 0)    | `BitVec.sdiv`               |
  | `Int.mods` (`Z.rem`, sign of dvd)   | `BitVec.srem`               |
  | `Int.divu`/`Int.modu`               | `BitVec.udiv`/`BitVec.umod` |
  | `Int.shl/shru/shr`                  | `<<< / >>> / sshiftRight`   |
  | `Int.lt` / `Int.ltu`                | `BitVec.slt` / `BitVec.ult` |

  NOTE on partiality: CompCert's `divs`/`mods`/`divu`/`modu` are *total*
  functions on `int`; the guards against division by zero and against
  `min_signed / -1` live in `Cop.sem_div`/`sem_mod` (which return `option val`).
  We keep exactly that split: the operations here are total (matching Rocq bit
  for bit, including `sdiv min_int (-1) = min_int`), and Cop does the guarding.
-/
import CCLib.Archi

namespace CC

/-- Coq's `Z`, i.e. unbounded mathematical integers. Lean's `Int`. Aliased so
    that ports of CompCert code can keep reading as `Z` and so that `Int` can
    name a *machine* integer inside `namespace Integers` without ambiguity. -/
abbrev Z := _root_.Int

/-- Port of `Integers.comparison`. (Named `Comparison` to avoid shadowing.) -/
inductive Comparison where
  | Ceq | Cne | Clt | Cle | Cgt | Cge
  deriving DecidableEq, Repr, Inhabited

namespace Comparison

/-- `Integers.negate_comparison` -/
def negate : Comparison → Comparison
  | Ceq => Cne | Cne => Ceq | Clt => Cge | Cle => Cgt | Cgt => Cle | Cge => Clt

/-- `Integers.swap_comparison` -/
def swap : Comparison → Comparison
  | Ceq => Ceq | Cne => Cne | Clt => Cgt | Cle => Cge | Cgt => Clt | Cge => Cle

end Comparison

namespace Integers

/-! ## Generic operations, mirroring CompCert's `Make(WS)` functor

`w` plays the role of `WS.wordsize`. Every definition below is stated for an
arbitrary `w`, then instantiated at 32 / 64 / 8 / `Archi.ptrWordsize`. -/

namespace MI

variable {w : Nat}

/-! ### Range constants (`modulus`, `max_signed`, …) -/

def modulus (w : Nat) : Z := 2 ^ w
def half_modulus (w : Nat) : Z := modulus w / 2
def max_unsigned (w : Nat) : Z := modulus w - 1
def max_signed (w : Nat) : Z := half_modulus w - 1
def min_signed (w : Nat) : Z := - half_modulus w

/-! ### Conversions -/

/-- `Int.repr`: wrap a mathematical integer into `w` bits (mod 2^w). -/
def repr (z : Z) : BitVec w := BitVec.ofInt w z

/-- `Int.unsigned`: the value in `[0, 2^w)`. -/
def unsigned (x : BitVec w) : Z := (x.toNat : Z)

/-- `Int.signed`: the value in `[-2^(w-1), 2^(w-1))`. -/
def signed (x : BitVec w) : Z := x.toInt

/-! ### Constants -/

def zero : BitVec w := 0
def one : BitVec w := 1
/-- `Int.mone` = all ones = -1. -/
def mone : BitVec w := BitVec.allOnes w
/-- `Int.iwordsize` = the word size, as a machine integer. -/
def iwordsize (w : Nat) : BitVec w := BitVec.ofNat w w

/-! ### Comparisons -/

def eq (x y : BitVec w) : Bool := x == y
/-- Signed `<`. -/
def lt (x y : BitVec w) : Bool := x.slt y
/-- Unsigned `<`. -/
def ltu (x y : BitVec w) : Bool := x.ult y

/-- `Int.cmp`: signed comparison. -/
def cmp : Comparison → BitVec w → BitVec w → Bool
  | .Ceq, x, y => eq x y
  | .Cne, x, y => !(eq x y)
  | .Clt, x, y => lt x y
  | .Cle, x, y => !(lt y x)
  | .Cgt, x, y => lt y x
  | .Cge, x, y => !(lt x y)

/-- `Int.cmpu`: unsigned comparison. -/
def cmpu : Comparison → BitVec w → BitVec w → Bool
  | .Ceq, x, y => eq x y
  | .Cne, x, y => !(eq x y)
  | .Clt, x, y => ltu x y
  | .Cle, x, y => !(ltu y x)
  | .Cgt, x, y => ltu y x
  | .Cge, x, y => !(ltu x y)

/-! ### Arithmetic -/

def neg (x : BitVec w) : BitVec w := -x
def add (x y : BitVec w) : BitVec w := x + y
def sub (x y : BitVec w) : BitVec w := x - y
def mul (x y : BitVec w) : BitVec w := x * y

/-- `Int.divs` — signed division, truncating toward zero (Coq `Z.quot`). -/
def divs (x y : BitVec w) : BitVec w := x.sdiv y
/-- `Int.mods` — signed remainder, sign of the dividend (Coq `Z.rem`). -/
def mods (x y : BitVec w) : BitVec w := x.srem y
/-- `Int.divu` — unsigned division. -/
def divu (x y : BitVec w) : BitVec w := x / y
/-- `Int.modu` — unsigned remainder. -/
def modu (x y : BitVec w) : BitVec w := x % y

/-! ### Bitwise -/

def and (x y : BitVec w) : BitVec w := x &&& y
def or (x y : BitVec w) : BitVec w := x ||| y
def xor (x y : BitVec w) : BitVec w := x ^^^ y
/-- `Int.not x = xor x mone` -/
def not (x : BitVec w) : BitVec w := ~~~x

/-- `Int.testbit` -/
def testbit (x : BitVec w) (i : Nat) : Bool := x.getLsbD i

/-! ### Shifts

CompCert's `shl`/`shru`/`shr` are total: the shift amount is taken as
`unsigned y`, and out-of-range amounts saturate (`repr` of a huge shift is 0;
`Z.shiftr (signed x)` by a huge amount is 0 or -1). `BitVec` agrees on both.
The `ltu y iwordsize` guard lives in `Cop`/`Values`, exactly as in Rocq. -/

def shl (x y : BitVec w) : BitVec w := x <<< y.toNat
/-- Logical (unsigned) right shift. -/
def shru (x y : BitVec w) : BitVec w := x >>> y.toNat
/-- Arithmetic (signed) right shift. -/
def shr (x y : BitVec w) : BitVec w := x.sshiftRight y.toNat

/-- `Int.rol` — rotate left by `unsigned y mod w`. -/
def rol (x y : BitVec w) : BitVec w :=
  if w = 0 then x else x.rotateLeft (y.toNat % w)
/-- `Int.ror` — rotate right by `unsigned y mod w`. -/
def ror (x y : BitVec w) : BitVec w :=
  if w = 0 then x else x.rotateRight (y.toNat % w)

/-- `Int.rolm x a m = and (rol x a) m` -/
def rolm (x a m : BitVec w) : BitVec w := and (rol x a) m

/-! ### Zero/sign extension within the same word size

`Int.zero_ext n x` keeps the low `n` bits; `Int.sign_ext n x` sign-extends from
bit `n-1`. Both stay in `BitVec w` (they are *not* width changes). -/

def zero_ext (n : Nat) (x : BitVec w) : BitVec w :=
  if n ≥ w then x else x &&& (BitVec.allOnes w >>> (w - n))

/-- `Int.sign_ext n x`.  Note `n = 0` yields 0, not `x`: CompCert's
    `Zsign_ext 0 x = Z.lor (Zzero_ext (-1) x) 0 = 0`.  (Caught by the
    differential test against `lib/Integers.v` — do not "simplify" this.) -/
def sign_ext (n : Nat) (x : BitVec w) : BitVec w :=
  if n = 0 then 0
  else if n ≥ w then x
  else (x <<< (w - n)).sshiftRight (w - n)

/-- `Int.notbool`: 1 if zero, else 0 (C's `!`). -/
def notbool (x : BitVec w) : BitVec w := if x == 0 then 1 else 0

/-- High half of the unsigned product (`Int.mulhu`). -/
def mulhu (x y : BitVec w) : BitVec w :=
  repr ((unsigned x * unsigned y) / modulus w)
/-- High half of the signed product (`Int.mulhs`). -/
def mulhs (x y : BitVec w) : BitVec w :=
  repr ((signed x * signed y) / modulus w)

/-! ### Bitfield access (`Integers.v` 3440-3449), used by `Cop`'s bitfields -/

/-- `Int.unsigned_bitfield_extract` -/
def unsigned_bitfield_extract (pos width : Nat) (n : BitVec w) : BitVec w :=
  zero_ext width (shru n (repr (pos : Z)))

/-- `Int.signed_bitfield_extract` -/
def signed_bitfield_extract (pos width : Nat) (n : BitVec w) : BitVec w :=
  sign_ext width (shru n (repr (pos : Z)))

/-- `Int.bitfield_insert` — replace `width` bits of `n` at `pos` by those of `p`. -/
def bitfield_insert (pos width : Nat) (n p : BitVec w) : BitVec w :=
  let mask := shl (repr ((2 : Z) ^ width - 1)) (repr (pos : Z))
  or (shl (zero_ext width p) (repr (pos : Z))) (and n (not mask))

end MI

/-! ## `Int` — 32-bit machine integers (CompCert `Int`) -/

/-- CompCert's `Int.int`. -/
abbrev Int : Type := BitVec 32

namespace Int

/-! Concrete 32-bit operations. Bodies delegate to `MI`; the point of writing
them out is that the word size is then never a metavariable, so
`Int.repr 42` elaborates on its own (important for the generated AST files). -/

def wordsize : Nat := 32
def modulus : Z := MI.modulus 32
def max_unsigned : Z := MI.max_unsigned 32
def max_signed : Z := MI.max_signed 32
def min_signed : Z := MI.min_signed 32

def repr (z : Z) : Int := MI.repr z
def unsigned (x : Int) : Z := MI.unsigned x
def signed (x : Int) : Z := MI.signed x

def zero : Int := MI.zero
def one : Int := MI.one
def mone : Int := MI.mone
def iwordsize : Int := MI.iwordsize 32

def eq (x y : Int) : Bool := MI.eq x y
def lt (x y : Int) : Bool := MI.lt x y
def ltu (x y : Int) : Bool := MI.ltu x y
def cmp (c : Comparison) (x y : Int) : Bool := MI.cmp c x y
def cmpu (c : Comparison) (x y : Int) : Bool := MI.cmpu c x y

def neg (x : Int) : Int := MI.neg x
def add (x y : Int) : Int := MI.add x y
def sub (x y : Int) : Int := MI.sub x y
def mul (x y : Int) : Int := MI.mul x y
def divs (x y : Int) : Int := MI.divs x y
def mods (x y : Int) : Int := MI.mods x y
def divu (x y : Int) : Int := MI.divu x y
def modu (x y : Int) : Int := MI.modu x y

def and (x y : Int) : Int := MI.and x y
def or (x y : Int) : Int := MI.or x y
def xor (x y : Int) : Int := MI.xor x y
def not (x : Int) : Int := MI.not x
def testbit (x : Int) (i : Nat) : Bool := MI.testbit x i

def shl (x y : Int) : Int := MI.shl x y
def shru (x y : Int) : Int := MI.shru x y
def shr (x y : Int) : Int := MI.shr x y
def rol (x y : Int) : Int := MI.rol x y
def ror (x y : Int) : Int := MI.ror x y
def rolm (x a m : Int) : Int := MI.rolm x a m

def zero_ext (n : Nat) (x : Int) : Int := MI.zero_ext n x
def sign_ext (n : Nat) (x : Int) : Int := MI.sign_ext n x
def notbool (x : Int) : Int := MI.notbool x
def mulhu (x y : Int) : Int := MI.mulhu x y
def mulhs (x y : Int) : Int := MI.mulhs x y
def unsigned_bitfield_extract (pos width : Nat) (n : Int) : Int :=
  MI.unsigned_bitfield_extract pos width n
def signed_bitfield_extract (pos width : Nat) (n : Int) : Int :=
  MI.signed_bitfield_extract pos width n
def bitfield_insert (pos width : Nat) (n p : Int) : Int :=
  MI.bitfield_insert pos width n p
end Int

/-! ## `Int64` — 64-bit machine integers (CompCert `Int64`) -/

/-- CompCert's `Int64.int`. -/
abbrev Int64 : Type := BitVec 64

namespace Int64

def wordsize : Nat := 64
def modulus : Z := MI.modulus 64
def max_unsigned : Z := MI.max_unsigned 64
def max_signed : Z := MI.max_signed 64
def min_signed : Z := MI.min_signed 64

def repr (z : Z) : Int64 := MI.repr z
def unsigned (x : Int64) : Z := MI.unsigned x
def signed (x : Int64) : Z := MI.signed x

def zero : Int64 := MI.zero
def one : Int64 := MI.one
def mone : Int64 := MI.mone
def iwordsize : Int64 := MI.iwordsize 64

def eq (x y : Int64) : Bool := MI.eq x y
def lt (x y : Int64) : Bool := MI.lt x y
def ltu (x y : Int64) : Bool := MI.ltu x y
def cmp (c : Comparison) (x y : Int64) : Bool := MI.cmp c x y
def cmpu (c : Comparison) (x y : Int64) : Bool := MI.cmpu c x y

def neg (x : Int64) : Int64 := MI.neg x
def add (x y : Int64) : Int64 := MI.add x y
def sub (x y : Int64) : Int64 := MI.sub x y
def mul (x y : Int64) : Int64 := MI.mul x y
def divs (x y : Int64) : Int64 := MI.divs x y
def mods (x y : Int64) : Int64 := MI.mods x y
def divu (x y : Int64) : Int64 := MI.divu x y
def modu (x y : Int64) : Int64 := MI.modu x y

def and (x y : Int64) : Int64 := MI.and x y
def or (x y : Int64) : Int64 := MI.or x y
def xor (x y : Int64) : Int64 := MI.xor x y
def not (x : Int64) : Int64 := MI.not x
def testbit (x : Int64) (i : Nat) : Bool := MI.testbit x i

def shl (x y : Int64) : Int64 := MI.shl x y
def shru (x y : Int64) : Int64 := MI.shru x y
def shr (x y : Int64) : Int64 := MI.shr x y
def rol (x y : Int64) : Int64 := MI.rol x y
def ror (x y : Int64) : Int64 := MI.ror x y

def zero_ext (n : Nat) (x : Int64) : Int64 := MI.zero_ext n x
def sign_ext (n : Nat) (x : Int64) : Int64 := MI.sign_ext n x
def notbool (x : Int64) : Int64 := MI.notbool x
def mulhu (x y : Int64) : Int64 := MI.mulhu x y
def mulhs (x y : Int64) : Int64 := MI.mulhs x y

/-- `Int64.ofwords hi lo` -/
def ofwords (hi lo : Int) : Int64 :=
  (BitVec.zeroExtend 64 hi) <<< 32 ||| (BitVec.zeroExtend 64 lo)
/-- `Int64.loword` -/
def loword (x : Int64) : Int := BitVec.truncate 32 x
/-- `Int64.hiword` -/
def hiword (x : Int64) : Int := BitVec.truncate 32 (x >>> 32)
end Int64

/-! ## `Byte` — 8-bit (CompCert `Byte`), used by the memory model -/

abbrev Byte : Type := BitVec 8

namespace Byte
def wordsize : Nat := 8
def modulus : Z := MI.modulus 8
def max_unsigned : Z := MI.max_unsigned 8
def repr (z : Z) : Byte := MI.repr z
def unsigned (x : Byte) : Z := MI.unsigned x
def signed (x : Byte) : Z := MI.signed x
def zero : Byte := MI.zero
def eq (x y : Byte) : Bool := MI.eq x y
end Byte

/-! ## `Ptrofs` — pointer offsets (CompCert `Ptrofs`)

Word size is `if Archi.ptr64 then 64 else 32`, i.e. the *type itself* depends
on a target parameter — in Rocq via a module functor, here directly. -/

abbrev Ptrofs : Type := BitVec Archi.ptrWordsize

namespace Ptrofs

def repr (z : Z) : Ptrofs := MI.repr z
def unsigned (x : Ptrofs) : Z := MI.unsigned x
def signed (x : Ptrofs) : Z := MI.signed x
def zero : Ptrofs := MI.zero
def one : Ptrofs := MI.one
def mone : Ptrofs := MI.mone
def eq (x y : Ptrofs) : Bool := MI.eq x y
def lt (x y : Ptrofs) : Bool := MI.lt x y
def ltu (x y : Ptrofs) : Bool := MI.ltu x y
def cmp (c : Comparison) (x y : Ptrofs) : Bool := MI.cmp c x y
def cmpu (c : Comparison) (x y : Ptrofs) : Bool := MI.cmpu c x y
def neg (x : Ptrofs) : Ptrofs := MI.neg x
def add (x y : Ptrofs) : Ptrofs := MI.add x y
def sub (x y : Ptrofs) : Ptrofs := MI.sub x y
def mul (x y : Ptrofs) : Ptrofs := MI.mul x y
def divu (x y : Ptrofs) : Ptrofs := MI.divu x y
def modu (x y : Ptrofs) : Ptrofs := MI.modu x y
def and (x y : Ptrofs) : Ptrofs := MI.and x y
def or (x y : Ptrofs) : Ptrofs := MI.or x y
def xor (x y : Ptrofs) : Ptrofs := MI.xor x y

def wordsize : Nat := Archi.ptrWordsize
def modulus : Z := MI.modulus Archi.ptrWordsize
def max_unsigned : Z := MI.max_unsigned Archi.ptrWordsize
def max_signed : Z := MI.max_signed Archi.ptrWordsize
def min_signed : Z := MI.min_signed Archi.ptrWordsize

/-- `Ptrofs.to_int` -/
def to_int (x : Ptrofs) : Int := BitVec.truncate 32 x
/-- `Ptrofs.to_int64` -/
def to_int64 (x : Ptrofs) : Int64 := BitVec.zeroExtend 64 x
/-- `Ptrofs.of_int` — reinterpret a 32-bit int as an offset (unsigned). -/
def of_int (x : Int) : Ptrofs := BitVec.zeroExtend Archi.ptrWordsize x
/-- `Ptrofs.of_intu` — same as `of_int` (unsigned interpretation). -/
def of_intu (x : Int) : Ptrofs := of_int x
/-- `Ptrofs.of_ints` — signed interpretation of a 32-bit int. -/
def of_ints (x : Int) : Ptrofs := MI.repr (MI.signed x)
/-- `Ptrofs.of_int64` -/
def of_int64 (x : Int64) : Ptrofs := MI.repr (MI.unsigned x)
end Ptrofs

end Integers
end CC
