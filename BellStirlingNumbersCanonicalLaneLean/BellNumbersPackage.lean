import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellNumbersPackage where
  bellNumbers : Nat → ℕ
  exponentialGeneratingFunction : Prop
  dobinisFormula : Prop
  recurrence : Prop

structure BellNumbersEvidence (B : BellNumbersPackage) where
  exponentialGeneratingFunctionClosed : B.exponentialGeneratingFunction
  dobinisFormulaClosed : B.dobinisFormula
  recurrenceClosed : B.recurrence

def BellNumbersClosed (B : BellNumbersPackage) : Prop :=
  B.exponentialGeneratingFunction ∧ B.dobinisFormula ∧ B.recurrence

theorem bell_numbers_closed_from_evidence (B : BellNumbersPackage) (E : BellNumbersEvidence B) : BellNumbersClosed B := by
  exact And.intro E.exponentialGeneratingFunctionClosed (And.intro E.dobinisFormulaClosed E.recurrenceClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse