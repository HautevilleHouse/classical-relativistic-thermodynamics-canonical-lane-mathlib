import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure GravitationalWavesPackage {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage} where
  perturbationMetric : Type u
  waveEquation : Prop
  polarizationTensors : Type v
  energyFlux : Prop
  quadrupoleFormula : Prop

structure GravitationalWavesEvidence {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (G : GravitationalWavesPackage EFE) where
  waveEquationClosed : G.waveEquation
  energyFluxClosed : G.energyFlux
  quadrupoleFormulaClosed : G.quadrupoleFormula

def GravitationalWavesClosed {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (G : GravitationalWavesPackage EFE) : Prop :=
  G.waveEquation ∧ G.energyFlux ∧ G.quadrupoleFormula

theorem gravitational_waves_closed_from_evidence
    {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (G : GravitationalWavesPackage EFE)
    (E : GravitationalWavesEvidence G) : GravitationalWavesClosed G := by
  exact And.intro E.waveEquationClosed (And.intro E.energyFluxClosed E.quadrupoleFormulaClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse