import HautevilleHouse.BellStirlingNumbersCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse