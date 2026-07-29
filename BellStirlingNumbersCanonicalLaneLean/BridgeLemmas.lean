import HautevilleHouse.BellStirlingNumbersCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BellStirlingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse