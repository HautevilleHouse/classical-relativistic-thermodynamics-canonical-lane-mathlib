import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure FLRWModelPackage where
  scaleFactor : ℝ → ℝ
  curvatureParameter : ℝ
  matterContent : Prop
  friedmannEquations : Prop
  thermodynamicEquilibrium : Prop

structure FLRWModelEvidence (F : FLRWModelPackage) where
  friedmannEquationsClosed : F.friedmannEquations
  thermodynamicEquilibriumClosed : F.thermodynamicEquilibrium

def FLRWModelClosed (F : FLRWModelPackage) : Prop :=
  F.friedmannEquations ∧ F.thermodynamicEquilibrium

theorem flrw_model_closed_from_evidence
    (F : FLRWModelPackage) (Ev : FLRWModelEvidence F) :
    FLRWModelClosed F := by
  exact And.intro Ev.friedmannEquationsClosed Ev.thermodynamicEquilibriumClosed

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse
