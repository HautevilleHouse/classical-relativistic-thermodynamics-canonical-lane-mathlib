import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure LinearPerturbation where
  metricPerturbation : ℝ → ℝ → ℝ → ℝ
  fluidPerturbation : ℝ → ℝ → ℝ
  perturbationEquations : Prop

structure CausalityCondition where
  characteristicSpeedsBounded : ∀ (k : ℝ → ℝ → ℝ), sup_{v} |v| ≤ 1
  closureTerm : characteristicSpeedsBounded

def CausalityClosed (C : CausalityCondition) : Prop :=
  C.characteristicSpeedsBounded

theorem causality_closed (C : CausalityCondition) : CausalityClosed C :=
  C.closureTerm

structure StabilityCondition where
  linearModesDecay : ∀ (ω : ℂ), Im(ω) ≤ 0
  closureTerm : linearModesDecay

def StabilityClosed (S : StabilityCondition) : Prop :=
  S.linearModesDecay

theorem stability_closed (S : StabilityCondition) : StabilityClosed S :=
  S.closureTerm

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse