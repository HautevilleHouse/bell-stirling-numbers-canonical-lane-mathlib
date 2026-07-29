import HautevilleHouse.BellStirlingNumbersCanonicalLaneLean.BellStirlingGate

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

def ConstrainedBellStirlingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem bell_stirling_endgame (A : AdmissibleClass) :
    ConstrainedBellStirlingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse