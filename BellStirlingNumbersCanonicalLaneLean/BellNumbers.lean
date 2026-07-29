import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellNumbersPackage where
  n : Nat
  bellNumber : Nat
  stirlingSumFormula : Prop
  recurrenceFormula : Prop
  explicitValues : Prop

structure BellNumbersEvidence (B : BellNumbersPackage) where
  stirlingSumFormulaClosed : B.stirlingSumFormula
  recurrenceFormulaClosed : B.recurrenceFormula
  explicitValuesClosed : B.explicitValues

def BellNumbersClosed (B : BellNumbersPackage) : Prop :=
  B.stirlingSumFormula ∧ B.recurrenceFormula ∧ B.explicitValues

theorem bell_numbers_closed_from_evidence (B : BellNumbersPackage) (E : BellNumbersEvidence B) :
    BellNumbersClosed B := by
  exact And.intro E.stirlingSumFormulaClosed (And.intro E.recurrenceFormulaClosed E.explicitValuesClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse