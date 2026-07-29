import HautevilleHouse.BellStirlingNumbersCanonicalLaneLean.BellNumbersPackage

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure ExponentialGeneratingFunctionsPackage where
  bellEGF : Prop
  stirlingSecondEGF : Prop
  stirlingFirstEGF : Prop
  convolutionIdentities : Prop

structure ExponentialGeneratingFunctionsEvidence (pkg : ExponentialGeneratingFunctionsPackage) where
  bellEGFClosed : pkg.bellEGF
  stirlingSecondEGFClosed : pkg.stirlingSecondEGF
  stirlingFirstEGFClosed : pkg.stirlingFirstEGF
  convolutionIdentitiesClosed : pkg.convolutionIdentities

def ExponentialGeneratingFunctionsPackageClosed (pkg : ExponentialGeneratingFunctionsPackage) : Prop :=
  pkg.bellEGF ∧ pkg.stirlingSecondEGF ∧ pkg.stirlingFirstEGF ∧ pkg.convolutionIdentities

theorem exponential_generating_functions_closed_from_evidence (pkg : ExponentialGeneratingFunctionsPackage) (E : ExponentialGeneratingFunctionsEvidence pkg) :
    ExponentialGeneratingFunctionsPackageClosed pkg := by
  exact And.intro E.bellEGFClosed
    (And.intro E.stirlingSecondEGFClosed
      (And.intro E.stirlingFirstEGFClosed E.convolutionIdentitiesClosed))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse