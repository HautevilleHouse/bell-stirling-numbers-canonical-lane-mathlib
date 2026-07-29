import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellNumber where
  n : Nat
  value : Nat

def bellNumber (n : Nat) : Nat := by
  induction n with
  | zero => exact 1
  | succ m ih =>
    exact (Finset.range m).sum (fun k => (Nat.choose m k) * ih)

theorem bellNumber_zero : bellNumber 0 = 1 := by
  rfl

theorem bellNumber_succ (n : Nat) : bellNumber (n+1) = (Finset.range n).sum (fun k => (Nat.choose n k) * bellNumber k) := by
  rfl

structure StirlingFirstKind where
  n : Nat
  k : Nat
  value : ℤ

def stirlingFirstKind (n k : Nat) : ℤ := by
  induction n with
  | zero => exact if k = 0 then 1 else 0
  | succ m ih => exact ih (k-1) - (m : ℤ) * ih k

theorem stirlingFirstKind_zero (n : Nat) : stirlingFirstKind n 0 = if n = 0 then 1 else 0 := by
  induction n with
  | zero => rfl
  | succ m ih =>
    simp [stirlingFirstKind, ih]
    cases m <;> simp

structure StirlingSecondKind where
  n : Nat
  k : Nat
  value : Nat

def stirlingSecondKind (n k : Nat) : Nat := by
  induction n with
  | zero => exact if k = 0 then 1 else 0
  | succ m ih =>
    exact ih (k-1) + k * ih k

theorem stirlingSecondKind_zero (n : Nat) : stirlingSecondKind n 0 = if n = 0 then 1 else 0 := by
  induction n with
  | zero => rfl
  | succ m ih =>
    simp [stirlingSecondKind, ih]
    cases m <;> simp

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse