import HautevilleHouse.BellStirlingNumbersCanonicalLaneLean.BellStirlingAdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BellStirlingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.bellNumberHolds

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse