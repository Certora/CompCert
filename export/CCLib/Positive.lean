/-
  Binary positive numbers — Coq's `positive`, plus the string↔ident encoding
  from `export/Ctypesdefs.v`.

  Moved here from `Clightdefs.lean` because the maps (`CCLib.Maps`) and the
  memory model need it too: CompCert's `block`, `ident`, and every `PTree` key
  is a `positive`.  Names are unchanged (`CC.Positive`, `CC.identOfString`), so
  files emitted by `clightgen -lean` are unaffected.
-/
namespace CC

/-- Coq's `positive` (strictly-positive binary numbers, LSB-first spine). -/
inductive Positive where
  | xH                    -- 1
  | xO (p : Positive)     -- 2*p
  | xI (p : Positive)     -- 2*p + 1
  deriving DecidableEq, Repr

instance : Inhabited Positive := ⟨Positive.xH⟩

/-- CompCert's `ident` (`AST.ident := positive`). -/
abbrev Ident := Positive
/-- CompCert's `block` (`Values.block := positive`). -/
abbrev Block := Positive

namespace Positive

/-- Build a `Positive` from a `Nat`.  Total (structural on `fuel`) so that it
    reduces in the kernel; `0` maps to `1` since `positive` has no zero. -/
def ofNatAux : Nat → Nat → Positive
  | 0, _ => Positive.xH
  | _, 0 => Positive.xH
  | _, 1 => Positive.xH
  | fuel + 1, n =>
      if n % 2 == 0
      then Positive.xO (ofNatAux fuel (n / 2))
      else Positive.xI (ofNatAux fuel (n / 2))

def ofNat (n : Nat) : Positive := ofNatAux n n

/-- Numeric value of a `Positive` (always ≥ 1). -/
def toNat : Positive → Nat
  | .xH => 1
  | .xO p => 2 * p.toNat
  | .xI p => 2 * p.toNat + 1

/-- Coq's `Pos.succ`. -/
def succ : Positive → Positive
  | .xH => .xO .xH
  | .xO p => .xI p
  | .xI p => .xO (succ p)

theorem toNat_pos (p : Positive) : 0 < p.toNat := by
  induction p with
  | xH => decide
  | xO q ih => simp only [toNat]; omega
  | xI q _ => simp only [toNat]; omega

@[simp] theorem toNat_succ (p : Positive) : (succ p).toNat = p.toNat + 1 := by
  induction p with
  | xH => rfl
  | xO q _ => rfl
  | xI q ih => simp only [succ, toNat, ih]; omega

/-- Coq's `Pos.lt`, via numeric value. -/
def lt (p q : Positive) : Bool := p.toNat < q.toNat
/-- Coq's `Pos.le`. -/
def le (p q : Positive) : Bool := p.toNat ≤ q.toNat

instance : LT Positive := ⟨fun p q => p.toNat < q.toNat⟩
instance : LE Positive := ⟨fun p q => p.toNat ≤ q.toNat⟩

/-- Bridge `<` on `Positive` to `<` on `Nat`, so `omega` can be used. -/
theorem lt_iff (p q : Positive) : p < q ↔ p.toNat < q.toNat := Iff.rfl
instance (p q : Positive) : Decidable (p < q) :=
  inferInstanceAs (Decidable (p.toNat < q.toNat))
instance (p q : Positive) : Decidable (p ≤ q) :=
  inferInstanceAs (Decidable (p.toNat ≤ q.toNat))

end Positive

/-! ## Encoding character strings as identifiers

Mirror of `ident_of_string` / `append_char_pos` in `export/Ctypesdefs.v`.  We
use the general 8-bit encoding for every character (Rocq special-cases the
common ones for shorter numbers); it is injective and self-consistent, which is
all a standalone Lean mirror needs. -/

private def appendBit (b : Bool) (p : Positive) : Positive :=
  if b then Positive.xI p else Positive.xO p

private def nthBit (n i : Nat) : Bool := (n >>> i) &&& 1 == 1

private def appendCharPos (c : Char) (p : Positive) : Positive :=
  let n := c.toNat
  let p := appendBit (nthBit n 7) p
  let p := appendBit (nthBit n 6) p
  let p := appendBit (nthBit n 5) p
  let p := appendBit (nthBit n 4) p
  let p := appendBit (nthBit n 3) p
  let p := appendBit (nthBit n 2) p
  let p := appendBit (nthBit n 1) p
  let p := appendBit (nthBit n 0) p
  .xI (.xI (.xI (.xI (.xI (.xI p)))))

/-- Encode a character string as an identifier (`ident_of_string`).

    Folds over `s.toList` rather than calling `String.foldr` directly.  The two
    are equal — `identOfString_eq_foldr` below, from core's
    `String.foldr_eq_foldr_toList` — but only this form **reduces in the
    kernel**: `String.foldr` goes through the opaque UTF-8 iterator, so `decide`
    got stuck on every identifier disequality and the program logic had to reach
    for `native_decide`.  Folding over the character list makes identifier facts
    kernel-decidable, which is why `Distinct`-style hypotheses are no longer
    needed. -/
def identOfString (s : String) : Ident :=
  s.toList.foldr appendCharPos Positive.xH

/-- The `toList` fold above is exactly `String.foldr`, so nothing about the
    encoding changed — only its reducibility. -/
theorem identOfString_eq_foldr (s : String) :
    identOfString s = s.foldr appendCharPos Positive.xH :=
  (String.foldr_eq_foldr_toList ..).symm

end CC
