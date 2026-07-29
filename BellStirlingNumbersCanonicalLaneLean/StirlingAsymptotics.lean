import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure StirlingAsymptoticsPackage where
  stirling1Asymptotic : Prop
  stirling2Asymptotic : Prop
  bellAsymptotic : Prop

structure StirlingAsymptoticsEvidence (A : StirlingAsymptoticsPackage) where
  stirling1AsymptoticClosed : A.stirling1Asymptotic
  stirling2AsymptoticClosed : A.stirling2Asymptotic
  bellAsymptoticClosed : A.bellAsymptotic

def StirlingAsymptoticsClosed (A : StirlingAsymptoticsPackage) : Prop :=
  A.stirling1Asymptotic ∧ A.stirling2Asymptotic ∧ A.bellAsymptotic

theorem stirling_asymptotics_closed_from_evidence (A : StirlingAsymptoticsPackage) (E : StirlingAsymptoticsEvidence A) : StirlingAsymptoticsClosed A := by
  exact And.intro E.stirling1AsymptoticClosed (And.intro E.stirling2AsymptoticClosed E.bellAsymptoticClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse