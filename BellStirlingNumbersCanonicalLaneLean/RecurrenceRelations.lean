import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure RecurrencePackage where
  stirlingFirstKindRecurrence : Prop
  stirlingSecondKindRecurrence : Prop
  bellRecurrence : Prop
  closedFormRecurrence : Prop

structure RecurrenceEvidence (R : RecurrencePackage) where
  stirlingFirstKindRecurrenceClosed : R.stirlingFirstKindRecurrence
  stirlingSecondKindRecurrenceClosed : R.stirlingSecondKindRecurrence
  bellRecurrenceClosed : R.bellRecurrence
  closedFormRecurrenceClosed : R.closedFormRecurrence

def RecurrenceClosed (R : RecurrencePackage) : Prop :=
  R.stirlingFirstKindRecurrence ∧ R.stirlingSecondKindRecurrence ∧
  R.bellRecurrence ∧ R.closedFormRecurrence

theorem recurrence_closed_from_evidence (R : RecurrencePackage) (E : RecurrenceEvidence R) :
    RecurrenceClosed R := by
  exact And.intro E.stirlingFirstKindRecurrenceClosed
    (And.intro E.stirlingSecondKindRecurrenceClosed
      (And.intro E.bellRecurrenceClosed E.closedFormRecurrenceClosed))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse