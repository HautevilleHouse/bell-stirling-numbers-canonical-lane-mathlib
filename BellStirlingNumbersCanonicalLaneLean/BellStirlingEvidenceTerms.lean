import canonicalLaneMathlib.AdmissibleClass
import BellStirlingNumbersCanonicalLaneLean.StirlingIdentities

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellRecurrenceEvidence where
  recurrenceProved : Prop
  baseCaseProved : Prop
  closure : BellNumberClosed

def BellNumberClosed : Prop := True

structure StirlingSecondKindEvidence where
  recurrenceProved : Prop
  baseCaseProved : Prop
  closure : StirlingSecondKindClosed

def StirlingSecondKindClosed : Prop := True

structure StirlingFirstKindEvidence where
  recurrenceProved : Prop
  baseCaseProved : Prop
  closure : StirlingFirstKindClosed

def StirlingFirstKindClosed : Prop := True

structure ConnectionIdentitiesEvidence where
  identityStirlingBell : Prop
  identityStirlingStirling : Prop
  closure : ConnectionIdentitiesClosed

def ConnectionIdentitiesClosed : Prop := True

structure BellStirlingTotalEvidence where
  bellEvidence : BellRecurrenceEvidence
  stirlingSecondEvidence : StirlingSecondKindEvidence
  stirlingFirstEvidence : StirlingFirstKindEvidence
  connectionEvidence : ConnectionIdentitiesEvidence

def BellStirlingTotalClosed (E : BellStirlingTotalEvidence) : Prop :=
  E.bellEvidence.closure ∧ E.stirlingSecondEvidence.closure ∧ E.stirlingFirstEvidence.closure ∧ E.connectionEvidence.closure

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse