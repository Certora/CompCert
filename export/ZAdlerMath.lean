/-
  **M0a, part 1 — the Adler-32 closed form and the catenation law.**

  The round-trip plan needs one fact about the checksum that congruence does not
  give: deflate calls `adler32(adler, buf, len)` once per `read_buf` refill, while
  inflate's `CHECK` does one `UPDATE_CHECK` over the whole output, so the two
  sides fold over *different partitions* of the same byte sequence.  What closes
  the gap is the catenation law

      adler32 (adler32 a u) v = adler32 a (u ++ v)

  This file establishes it at the model level, and the closed form beside it.

  **Both are needed, for different reasons — and the plan conflated them.**

  * The **catenation law** is what the round trip needs, and it turns out to be
    nearly free: `sums_append` is a two-line induction and `unpack_pack` already
    existed.  The plan claimed this needed the closed form.  It does not.
  * The **closed form** is needed for a different job: `adler32_z`'s loops do NOT
    reduce mod `BASE` per byte.  `len < 16` accumulates raw and reduces once at
    the end; the `NMAX` loop reduces once per 5552 bytes.  The model
    (`ZAdler32.stepByte`) reduces every byte.  Proving the C against the model
    therefore needs "reduce-per-byte equals reduce-at-the-end", which is exactly
    the closed form.

  So the closed form is a *loop* obligation, not a *composition* obligation.  It
  is still needed; it is needed one layer down from where the plan put it.
-/
import ZAdler32
import CCLib

namespace ZAdlerMath

open ZAdler32

/-! ## The catenation law

`sums` is a left fold, so it splits over `++` by a bare induction.  No arithmetic
at all — which is the point. -/

/-- **The fold splits.**  Two lines, no number theory. -/
theorem sums_append : ∀ (u v : List Nat) (s : Sums),
    sums s (u ++ v) = sums (sums s u) v
  | [], _, _ => rfl
  | c :: cs, v, s => by
      show sums (stepByte s c) (cs ++ v) = sums (sums (stepByte s c) cs) v
      exact sums_append cs v (stepByte s c)

/-- **The catenation law**, at the model level.

    `unpack_pack` needs the intermediate result to be reduced, which
    `sums_valid` supplies — so the hypothesis is on the *starting* value only. -/
theorem adler32Model_append (a : Nat) (u v : List Nat)
    (ha : (unpack a).Valid) :
    adler32Model (adler32Model a u) v = adler32Model a (u ++ v) := by
  show pack (sums (unpack (pack (sums (unpack a) u))) v)
       = pack (sums (unpack a) (u ++ v))
  rw [unpack_pack (sums_valid u (unpack a) ha), sums_append]

/-- The starting value zlib actually uses is `1`, and it is reduced. -/
theorem unpack_one_valid : (unpack 1).Valid := by
  simp only [unpack, Sums.Valid, BASE]; omega

/-- So the catenation law holds unconditionally along zlib's own chain: every
    intermediate value is `adler32Model`'s output, hence packed-and-valid. -/
theorem adler32Model_append_one (u v : List Nat) :
    adler32Model (adler32Model 1 u) v = adler32Model 1 (u ++ v) :=
  adler32Model_append 1 u v unpack_one_valid

/-! ## The closed form

`sums` reduces after every byte; `adler32_z`'s loops do not.  These two
definitions are the unreduced accumulations the C actually computes. -/

/-- `Σ cᵢ` — what the C's `adler` accumulates before its single reduction. -/
def sumBytes : List Nat → Nat
  | [] => 0
  | c :: cs => c + sumBytes cs

/-- `Σₖ (s₁ + c₁ + ⋯ + cₖ)` — what the C's `sum2` accumulates.  Note it is the
    sum of the *running* `adler`, which is why it is weighted. -/
def weighted (s1 : Nat) : List Nat → Nat
  | [] => 0
  | c :: cs => (s1 + c) + weighted (s1 + c) cs

/-- **Reducing the seed does not change the weighted sum, modulo `BASE`.**  This
    is the congruence that lets the per-byte reduction be deferred. -/
theorem weighted_congr : ∀ (cs : List Nat) (x y : Nat),
    x % BASE = y % BASE → weighted x cs % BASE = weighted y cs % BASE
  | [], _, _, _ => rfl
  | c :: cs, x, y, hxy => by
      -- `BASE` is a `def`, so `omega` cannot see the modulus until it is unfolded
      simp only [BASE] at hxy
      have hstep : (x + c) % BASE = (y + c) % BASE := by
        simp only [BASE]; omega
      have hih : weighted (x + c) cs % BASE = weighted (y + c) cs % BASE :=
        weighted_congr cs (x + c) (y + c) hstep
      show ((x + c) + weighted (x + c) cs) % BASE
         = ((y + c) + weighted (y + c) cs) % BASE
      simp only [BASE] at hstep hih ⊢
      omega

/-- **The closed form.**  One reduction at the end computes what the model
    computes byte by byte.  This is the lemma every `adler32_z` loop needs.

    `Valid` is required and not incidental: `sums s [] = s` on the nose, while the
    closed form reduces, so the two agree at length 0 only when `s` is already
    reduced.  Every call site has it — `adler32_z` starts from `unpack` of a
    packed value, and `sums_valid` propagates it. -/
theorem sums_closed : ∀ (bs : List Nat) (s : Sums), s.Valid →
    sums s bs = { s1 := (s.s1 + sumBytes bs) % BASE,
                  s2 := (s.s2 + weighted s.s1 bs) % BASE }
  | [], s, hs => by
      obtain ⟨h1, h2⟩ := hs
      simp only [BASE] at h1 h2
      show s = _
      simp only [sumBytes, weighted,
                 show (s.s1 + 0) % BASE = s.s1 from by simp only [BASE]; omega,
                 show (s.s2 + 0) % BASE = s.s2 from by simp only [BASE]; omega]
  | c :: cs, s, hs => by
      rw [show sums s (c :: cs) = sums (stepByte s c) cs from rfl,
          sums_closed cs (stepByte s c) (stepByte_valid c)]
      -- the seed of the tail's weighted sum is the REDUCED `adler`; the target
      -- wants the unreduced one, and `weighted_congr` is exactly that bridge
      have hcg : weighted ((s.s1 + c) % BASE) cs % BASE
               = weighted (s.s1 + c) cs % BASE :=
        weighted_congr cs _ _ (by simp only [BASE]; omega)
      show Sums.mk (((s.s1 + c) % BASE + sumBytes cs) % BASE)
             (((s.s2 + (s.s1 + c) % BASE) % BASE
               + weighted ((s.s1 + c) % BASE) cs) % BASE)
           = Sums.mk ((s.s1 + (c + sumBytes cs)) % BASE)
             ((s.s2 + ((s.s1 + c) + weighted (s.s1 + c) cs)) % BASE)
      simp only [BASE] at hcg
      congr 1 <;> (simp only [BASE]; omega)

end ZAdlerMath
