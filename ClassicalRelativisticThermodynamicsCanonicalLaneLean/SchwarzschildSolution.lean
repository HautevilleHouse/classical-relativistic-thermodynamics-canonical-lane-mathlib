import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure SchwarzschildSolutionPackage {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage} where
  massParameter : Type u
  metricExplicit : Type v
  vacuumSolution : Prop
  eventHorizonDefined : Prop
  singularityStructure : Prop

structure SchwarzschildSolutionEvidence {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (S : SchwarzschildSolutionPackage EFE) where
  vacuumSolutionClosed : S.vacuumSolution
  eventHorizonDefinedClosed : S.eventHorizonDefined
  singularityStructureClosed : S.singularityStructure

def SchwarzschildSolutionClosed {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (S : SchwarzschildSolutionPackage EFE) : Prop :=
  S.vacuumSolution ∧ S.eventHorizonDefined ∧ S.singularityStructure

theorem schwarzschild_solution_closed_from_evidence
    {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (S : SchwarzschildSolutionPackage EFE)
    (E : SchwarzschildSolutionEvidence S) : SchwarzschildSolutionClosed S := by
  exact And.intro E.vacuumSolutionClosed (And.intro E.eventHorizonDefinedClosed E.singularityStructureClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse