import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure AsymptoticPackage where
  bellAsymptotic : Prop
  stirlingFirstAsymptotic : Prop
  stirlingSecondAsymptotic : Prop
  approximationOrder : Prop

structure AsymptoticEvidence (A : AsymptoticPackage) where
  bellAsymptoticClosed : A.bellAsymptotic
  stirlingFirstAsymptoticClosed : A.stirlingFirstAsymptotic
  stirlingSecondAsymptoticClosed : A.stirlingSecondAsymptotic
  approximationOrderClosed : A.approximationOrder

def AsymptoticClosed (A : AsymptoticPackage) : Prop :=
  A.bellAsymptotic ∧ A.stirlingFirstAsymptotic ∧
  A.stirlingSecondAsymptotic ∧ A.approximationOrder

theorem asymptotic_closed_from_evidence (A : AsymptoticPackage) (E : AsymptoticEvidence A) :
    AsymptoticClosed A := by
  exact And.intro E.bellAsymptoticClosed
    (And.intro E.stirlingFirstAsymptoticClosed
      (And.intro E.stirlingSecondAsymptoticClosed E.approximationOrderClosed))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse