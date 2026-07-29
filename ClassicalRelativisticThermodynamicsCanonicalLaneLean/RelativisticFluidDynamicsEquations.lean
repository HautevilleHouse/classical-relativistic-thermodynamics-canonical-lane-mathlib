import HautevilleHouse.ClassicalRelativisticThermodynamicsCanonicalLaneLean.ThermodynamicSpacetime

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure RelativisticFluidDynamicsPackage (M : ThermodynamicSpacetime) where
  fourVelocity : M.thermodynamicFields
  particleDensity : M.thermodynamicFields
  entropyDensity : M.thermodynamicFields
  pressure : M.thermodynamicFields
  energyDensity : M.thermodynamicFields
  stressEnergyExpression : Prop
  particleConservation : Prop
  entropyGrowth : Prop

structure RelativisticFluidDynamicsEvidence {M : ThermodynamicSpacetime}
    (F : RelativisticFluidDynamicsPackage M) where
  stressEnergyExpressionClosed : F.stressEnergyExpression
  particleConservationClosed : F.particleConservation
  entropyGrowthClosed : F.entropyGrowth

def RelativisticFluidDynamicsClosed {M : ThermodynamicSpacetime}
    (F : RelativisticFluidDynamicsPackage M) : Prop :=
  F.stressEnergyExpression ∧
  F.particleConservation ∧
  F.entropyGrowth

theorem relativistic_fluid_dynamics_closed_from_evidence
    {M : ThermodynamicSpacetime} (F : RelativisticFluidDynamicsPackage M)
    (E : RelativisticFluidDynamicsEvidence F) :
    RelativisticFluidDynamicsClosed F := by
  exact And.intro E.stressEnergyExpressionClosed
    (And.intro E.particleConservationClosed E.entropyGrowthClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse