import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure EckartFrame where
  fourVelocity : ℝ → ℝ → ℝ
  projectionTensor : ℝ → ℝ → ℝ → ℝ → ℝ
  equilibriumPressure : ℝ
  bulkViscosity : ℝ
  shearViscosity : ℝ
  heatConductivity : ℝ
  constitutiveEquationsHold : Prop
  entropyProductionNonNegative : Prop
  closureEvidence : constitutiveEquationsHold ∧ entropyProductionNonNegative

def EckartFrameClosed (E : EckartFrame) : Prop :=
  E.constitutiveEquationsHold ∧ E.entropyProductionNonNegative

theorem eckart_frame_closed (E : EckartFrame) : EckartFrameClosed E :=
  E.closureEvidence

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse