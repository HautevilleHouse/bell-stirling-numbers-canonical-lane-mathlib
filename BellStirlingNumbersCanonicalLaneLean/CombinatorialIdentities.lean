import HautevilleHouse.BellStirlingNumbersCanonicalLaneLean.ExponentialGeneratingFunctions

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure CombinatorialIdentitiesPackage where
  touchardIdentity : Prop
  binomialTransformIdentity : Prop
  stirlingInversion : Prop
  realBellIdentity : Prop

structure CombinatorialIdentitiesEvidence (pkg : CombinatorialIdentitiesPackage) where
  touchardIdentityClosed : pkg.touchardIdentity
  binomialTransformIdentityClosed : pkg.binomialTransformIdentity
  stirlingInversionClosed : pkg.stirlingInversion
  realBellIdentityClosed : pkg.realBellIdentity

def CombinatorialIdentitiesPackageClosed (pkg : CombinatorialIdentitiesPackage) : Prop :=
  pkg.touchardIdentity ∧ pkg.binomialTransformIdentity ∧ pkg.stirlingInversion ∧ pkg.realBellIdentity

theorem combinatorial_identities_closed_from_evidence (pkg : CombinatorialIdentitiesPackage) (E : CombinatorialIdentitiesEvidence pkg) :
    CombinatorialIdentitiesPackageClosed pkg := by
  exact And.intro E.touchardIdentityClosed
    (And.intro E.binomialTransformIdentityClosed
      (And.intro E.stirlingInversionClosed E.realBellIdentityClosed))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse