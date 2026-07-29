import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure GeneratingFunctionPackage where
  exponentialGeneratingFunction : Prop
  ordinaryGeneratingFunction : Prop
  stirlingEGF : Prop
  bellEGF : Prop
  closedFormGenerating : Prop

structure GeneratingFunctionEvidence (G : GeneratingFunctionPackage) where
  exponentialGeneratingFunctionClosed : G.exponentialGeneratingFunction
  ordinaryGeneratingFunctionClosed : G.ordinaryGeneratingFunction
  stirlingEGFClosed : G.stirlingEGF
  bellEGFClosed : G.bellEGF
  closedFormGeneratingClosed : G.closedFormGenerating

def GeneratingFunctionClosed (G : GeneratingFunctionPackage) : Prop :=
  G.exponentialGeneratingFunction ∧ G.ordinaryGeneratingFunction ∧
  G.stirlingEGF ∧ G.bellEGF ∧ G.closedFormGenerating

theorem generating_function_closed_from_evidence (G : GeneratingFunctionPackage) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.exponentialGeneratingFunctionClosed
    (And.intro E.ordinaryGeneratingFunctionClosed
      (And.intro E.stirlingEGFClosed
        (And.intro E.bellEGFClosed E.closedFormGeneratingClosed)))

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse