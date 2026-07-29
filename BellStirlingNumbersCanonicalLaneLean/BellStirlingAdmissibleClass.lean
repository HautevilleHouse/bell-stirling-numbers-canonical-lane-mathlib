import Mathlib.Data.Fintype.Basic
import Mathlib.Combinatorics.BellNumbers

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellStirlingSpace where
  carrier : Type
  finite : Fintype carrier
  cardinal : ℕ := Fintype.card carrier

structure BellStirlingAdmittedObject where
  space : BellStirlingSpace
  bellNumberMatches : Prop
  bellNumberHolds : bellNumberMatches
  remainderOption : Prop

def BellStirlingWitnessClosed (O : BellStirlingAdmittedObject) : Prop :=
  O.bellNumberMatches

structure AdmissibleClass where
  object : BellStirlingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BellStirlingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse