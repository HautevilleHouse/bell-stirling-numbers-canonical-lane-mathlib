import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure StirlingIdentitiesPackage where
  orthogonalityS1S2 : Prop
  inversionFormula : Prop
  switchingFormula : Prop

structure StirlingIdentitiesEvidence (I : StirlingIdentitiesPackage) where
  orthogonalityS1S2Closed : I.orthogonalityS1S2
  inversionFormulaClosed : I.inversionFormula
  switchingFormulaClosed : I.switchingFormula

def StirlingIdentitiesClosed (I : StirlingIdentitiesPackage) : Prop :=
  I.orthogonalityS1S2 ∧ I.inversionFormula ∧ I.switchingFormula

theorem stirling_identities_closed_from_evidence (I : StirlingIdentitiesPackage) (E : StirlingIdentitiesEvidence I) : StirlingIdentitiesClosed I := by
  exact And.intro E.orthogonalityS1S2Closed (And.intro E.inversionFormulaClosed E.switchingFormulaClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse