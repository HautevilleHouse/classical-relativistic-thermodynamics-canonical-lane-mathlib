import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure StressEnergyTensor where
  energyDensity : ℝ
  momentumDensity : ℝ → ℝ → ℝ
  stressTensor : ℝ → ℝ → ℝ → ℝ → ℝ
  symmetric : ∀ i j, stressTensor i j = stressTensor j i
  divergenceless : ∀ ν, (∑ μ, ∂_μ stressTensor μ ν) = 0

structure ThermalFluidData where
  restFrameEnergyDensity : ℝ
  restFramePressure : ℝ
  fourVelocity : ℝ → ℝ → ℝ
  thermodynamicQuantities : Prop
  closureCondition : Prop

def thermalStressEnergy (T : ThermalFluidData) : StressEnergyTensor :=
  { energyDensity := T.restFrameEnergyDensity
    momentumDensity := λ x y => (T.restFrameEnergyDensity + T.restFramePressure) * T.fourVelocity x * T.fourVelocity y
    stressTensor := λ μ ν α β => (T.restFrameEnergyDensity + T.restFramePressure) * T.fourVelocity μ * T.fourVelocity ν * T.fourVelocity α * T.fourVelocity β + T.restFramePressure * (if μ = α ∧ ν = β then 1 else 0)
    symmetric := by intro i j; ring
    divergenceless := by
      intro ν
      simp
  }

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse