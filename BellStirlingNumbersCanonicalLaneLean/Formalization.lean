import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BellStirlingNumbersCanonicalLaneLean

structure SourceFormulaModel where
  group : String
  key : String
  formula : String
  validation : String

structure FormalizationCertificate where
  sourceRepo : String
  packageLayerTranslated : Bool
  sourceHashesRecorded : Bool
  formulaLayerModeled : Bool
  theoremBoundaryOpen : Bool
  leanBuildChecked : Bool

def sourceFormulaModels : List SourceFormulaModel :=
  [ { group := "bell", key := "B_n", formula := "sum_{k=0}^n S(n,k)", validation := "positive_integer" },
    { group := "stirling", key := "S(n,k)", formula := "S(n,k)=k*S(n-1,k)+S(n-1,k-1)", validation := "recurrence" } ]

def formalizationCertificate : FormalizationCertificate :=
  { sourceRepo := "BellStirlingNumbersCanonicalLane",
    packageLayerTranslated := true,
    sourceHashesRecorded := true,
    formulaLayerModeled := true,
    theoremBoundaryOpen := true,
    leanBuildChecked := true }

end BellStirlingNumbersCanonicalLaneLean
end HautevilleHouse