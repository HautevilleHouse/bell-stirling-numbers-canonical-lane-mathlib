import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure StirlingCongruencesPackage where
  stirling1ModPrime : Prop
  stirling2ModPrime : Prop
  bellModPrime : Prop

structure StirlingCongruencesEvidence (C : StirlingCongruencesPackage) where
  stirling1ModPrimeClosed : C.stirling1ModPrime
  stirling2ModPrimeClosed : C.stirling2ModPrime
  bellModPrimeClosed : C.bellModPrime

def StirlingCongruencesClosed (C : StirlingCongruencesPackage) : Prop :=
  C.stirling1ModPrime ∧ C.stirling2ModPrime ∧ C.bellModPrime

theorem stirling_congruences_closed_from_evidence (C : StirlingCongruencesPackage) (E : StirlingCongruencesEvidence C) : StirlingCongruencesClosed C := by
  exact And.intro E.stirling1ModPrimeClosed (And.intro E.stirling2ModPrimeClosed E.bellModPrimeClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse