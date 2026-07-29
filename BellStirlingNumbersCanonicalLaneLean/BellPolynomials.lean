import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure BellPolynomialsPackage where
  bellPolynomials : ℕ → ℕ → ℕ
  touchardPolynomial : Prop
  binomialSum : Prop
  recurrence : Prop

structure BellPolynomialsEvidence (P : BellPolynomialsPackage) where
  touchardPolynomialClosed : P.touchardPolynomial
  binomialSumClosed : P.binomialSum
  recurrenceClosed : P.recurrence

def BellPolynomialsClosed (P : BellPolynomialsPackage) : Prop :=
  P.touchardPolynomial ∧ P.binomialSum ∧ P.recurrence

theorem bell_polynomials_closed_from_evidence (P : BellPolynomialsPackage) (E : BellPolynomialsEvidence P) : BellPolynomialsClosed P := by
  exact And.intro E.touchardPolynomialClosed (And.intro E.binomialSumClosed E.recurrenceClosed)

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse