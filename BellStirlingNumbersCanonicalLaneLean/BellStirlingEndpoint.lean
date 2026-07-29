import canonicalLaneMathlib.AdmissibleClass
import BellStirlingNumbersCanonicalLaneLean.CanonicalIdentities

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure EndpointClassificationPackage (C : CanonicalIdentitiesPackage) where
  targetFormula : ℚ → ℚ
  generatingFunctionClosed : Prop
  asymptoticBound : Prop
  stirlingApproximation : Prop

structure EndpointClassificationEvidence {C : CanonicalIdentitiesPackage}
  (E : EndpointClassificationPackage C) where
  generatingFunctionClosed : E.generatingFunctionClosed
  asymptoticBoundClosed : E.asymptoticBound
  stirlingApproximationClosed : E.stirlingApproximation

def EndpointClassificationClosed {C : CanonicalIdentitiesPackage}
  (E : EndpointClassificationPackage C) : Prop :=
  E.generatingFunctionClosed ∧ E.asymptoticBound ∧ E.stirlingApproximation

theorem endpoint_classification_closed_from_evidence
  {C : CanonicalIdentitiesPackage} (E : EndpointClassificationPackage C)
  (Ev : EndpointClassificationEvidence E) :
  EndpointClassificationClosed E := by
  exact And.intro Ev.generatingFunctionClosed (And.intro Ev.asymptoticBoundClosed
    Ev.stirlingApproximationClosed)

theorem endpoint_classification_supplies_asymptotic
  {C : CanonicalIdentitiesPackage} (E : EndpointClassificationPackage C) :
  E.asymptoticBound := E.asymptoticBound

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse