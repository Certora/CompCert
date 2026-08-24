/-
  Non-vacuity and validation checks for `ZAdler32`.

  Two different things are checked here, and they are worth distinguishing:

  * **Non-vacuity** — the specification's precondition is satisfiable, so
    `adler32_z_len1_satisfies` is not a statement about an impossible state.
  * **Model validation** — the Lean model agrees with the published Adler-32 of
    a known string, and with zlib's own `adler32` on a corpus (see
    `test/lean/adler_oracle.sh`).  A proof against a wrong model proves nothing.
-/
import ZAdler32
open CC CC.Sep CC.HProp

namespace ZAdler32Check
open ZAdler32
open Adler32   -- the generated module now lives in its own namespace

/-! ## Non-vacuity -/

/-- The seed value `adler32(0, Z_NULL, 0) = 1` is a valid `Sums`. -/
theorem seed_valid : Sums.Valid (unpack 1) := by
  simp only [Sums.Valid, unpack, BASE]; omega

/-- The precondition of `adler32zSpec` is satisfiable: a one-byte buffer exists
    at any block and offset (byte buffers need no alignment). -/
theorem pre_satisfiable (p : Permission) (b : Block) (ofs0 : Integers.Ptrofs)
    (c : Nat) (s : Sums) :
    ∃ hp, (adler32zSpec p b ofs0 c s).pre
      [.Vlong (Integers.Int64.repr (((pack s : Nat) : _root_.Int))),
       .Vptr b ofs0,
       .Vlong (Integers.Int64.repr (((1 : Nat) : _root_.Int)))] hp := by
  obtain ⟨hp, hh⟩ := arrayU8_satisfiable p b 1 (fun _ => c) (Integers.Ptrofs.unsigned ofs0)
  exact ⟨hp, rfl, hh⟩

/-! ## Model validation

Adler-32 of `"Wikipedia"` is `0x11E60398` — a value published independently of
this development, so agreeing with it is a real check on the model. -/

def wikipedia : List Nat := [87, 105, 107, 105, 112, 101, 100, 105, 97]

theorem adler_wikipedia : adler32Model 1 wikipedia = 0x11E60398 := by decide

/-- The empty string keeps the seed, as the algorithm requires. -/
theorem adler_empty : adler32Model 1 [] = 1 := by decide

/-- One byte, checked directly against the definition of the step. -/
theorem adler_one : adler32Model 1 [65] = pack (stepByte ⟨1, 0⟩ 65) := by decide

end ZAdler32Check
