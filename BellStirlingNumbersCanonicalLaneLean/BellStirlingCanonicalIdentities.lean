import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure StirlingNumbersSecondKind where
  n : ℕ
  k : ℕ
  value : ℕ
  recurrence : Prop
  explicitFormula : Prop

structure BellNumbers where
  n : ℕ
  value : ℕ
  recurrenceFromStirling : Prop
  dobinskiFormula : Prop

structure BellPolynomial where
  n : ℕ
  x : ℚ
  value : ℚ
  expression : Prop

structure CanonicalIdentitiesPackage where
  stirlingSecondKind : StirlingNumbersSecondKind
  bellNumbers : BellNumbers
  bellPolynomial : BellPolynomial
  touchardIdentities : Prop
  exponentialGeneratingFunction : Prop

structure CanonicalIdentitiesEvidence (C : CanonicalIdentitiesPackage) where
  stirlingRecurrenceClosed : C.stirlingSecondKind.recurrence
  stirlingExplicitClosed : C.stirlingSecondKind.explicitFormula
  bellRecurrenceClosed : C.bellNumbers.recurrenceFromStirling
  bellDobinskiClosed : C.bellNumbers.dobinskiFormula
  bellPolynomialClosed : C.bellPolynomial.expression
  touchardClosed : C.touchardIdentities
  generatingFunctionClosed : C.exponentialGeneratingFunction

def CanonicalIdentitiesClosed (C : CanonicalIdentitiesPackage) : Prop :=
  C.stirlingSecondKind.recurrence ∧ C.stirlingSecondKind.explicitFormula ∧
  C.bellNumbers.recurrenceFromStirling ∧ C.bellNumbers.dobinskiFormula ∧
  C.bellPolynomial.expression ∧ C.touchardIdentities ∧
  C.exponentialGeneratingFunction

theorem canonical_identities_closed_from_evidence
  (C : CanonicalIdentitiesPackage) (E : CanonicalIdentitiesEvidence C) :
  CanonicalIdentitiesClosed C := by
  exact And.intro E.stirlingRecurrenceClosed (And.intro E.stirlingExplicitClosed
    (And.intro E.bellRecurrenceClosed (And.intro E.bellDobinskiClosed
      (And.intro E.bellPolynomialClosed (And.intro E.touchardClosed
        E.generatingFunctionClosed)))))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse