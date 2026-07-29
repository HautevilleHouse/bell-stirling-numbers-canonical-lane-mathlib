import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure StirlingNumbersPackage where
  n : Nat
  k : Nat
  firstKind : Nat
  secondKind : Nat
  firstKindFormula : Prop
  secondKindFormula : Prop
  explicitValues : Prop

structure StirlingNumbersEvidence (S : StirlingNumbersPackage) where
  firstKindFormulaClosed : S.firstKindFormula
  secondKindFormulaClosed : S.secondKindFormula
  explicitValuesClosed : S.explicitValues

def StirlingNumbersClosed (S : StirlingNumbersPackage) : Prop :=
  S.firstKindFormula ∧ S.secondKindFormula ∧ S.explicitValues

theorem stirling_numbers_closed_from_evidence (S : StirlingNumbersPackage) (E : StirlingNumbersEvidence S) :
    StirlingNumbersClosed S := by
  exact And.intro E.firstKindFormulaClosed (And.intro E.secondKindFormulaClosed E.explicitValuesClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse