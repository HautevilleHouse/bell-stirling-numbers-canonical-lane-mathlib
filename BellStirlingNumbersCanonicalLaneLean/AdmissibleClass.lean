import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellStirlingAdmittedObject where
  combinatorialStructure : Type u
  bellNumberIdentity : Prop
  stirlingNumberRecurrence : Prop
  identityHolds : Prop
  conclusion : identityHolds

structure AdmissibleClass where
  object : BellStirlingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BellStirlingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse