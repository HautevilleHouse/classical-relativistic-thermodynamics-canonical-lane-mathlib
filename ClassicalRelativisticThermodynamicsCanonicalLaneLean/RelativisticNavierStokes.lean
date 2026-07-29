import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure RelativisticNavierStokes where
  stressEnergy : StressEnergyTensor
  particleCurrent : ℝ → ℝ → ℝ
  entropyCurrent : EntropyCurrent
  equationsClosed : Prop
  causalityCondition : Prop
  stabilityCondition : Prop
  closureEvidence : equationsClosed ∧ causalityCondition ∧ stabilityCondition

def RNSClosed (R : RelativisticNavierStokes) : Prop :=
  R.equationsClosed ∧ R.causalityCondition ∧ R.stabilityCondition

theorem rns_closed (R : RelativisticNavierStokes) : RNSClosed R :=
  R.closureEvidence

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse