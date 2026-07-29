import canonicalLaneMathlib.AdmissibleClass
import BellStirlingNumbersCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellStirlingTheoremStatement where
  bellRecurrence : Prop
  stirlingRecurrenceFirst : Prop
  stirlingRecurrenceSecond : Prop
  connectionIdentities : Prop

def bellStirlingTheoremClosed (S : BellStirlingTheoremStatement) : Prop :=
  S.bellRecurrence ∧ S.stirlingRecurrenceFirst ∧ S.stirlingRecurrenceSecond ∧ S.connectionIdentities

theorem bellStirlingTheoremClosedIntro (S : BellStirlingTheoremStatement)
  (h1 : S.bellRecurrence) (h2 : S.stirlingRecurrenceFirst) (h3 : S.stirlingRecurrenceSecond) (h4 : S.connectionIdentities) :
  bellStirlingTheoremClosed S := by
  exact And.intro h1 (And.intro h2 (And.intro h3 h4))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse