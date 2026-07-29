import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure StirlingNumbersPackage where
  unsignedStirling1 : Nat → Nat → ℕ
  signedStirling1 : Nat → Nat → ℤ
  stirling2 : Nat → Nat → ℕ
  recurrenceS1 : Prop
  recurrenceS2 : Prop
  initialValues : Prop

structure StirlingNumbersEvidence (P : StirlingNumbersPackage) where
  recurrenceS1Closed : P.recurrenceS1
  recurrenceS2Closed : P.recurrenceS2
  initialValuesClosed : P.initialValues

def StirlingNumbersClosed (P : StirlingNumbersPackage) : Prop :=
  P.recurrenceS1 ∧ P.recurrenceS2 ∧ P.initialValues

theorem stirling_numbers_closed_from_evidence (P : StirlingNumbersPackage) (E : StirlingNumbersEvidence P) : StirlingNumbersClosed P := by
  exact And.intro E.recurrenceS1Closed (And.intro E.recurrenceS2Closed E.initialValuesClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse