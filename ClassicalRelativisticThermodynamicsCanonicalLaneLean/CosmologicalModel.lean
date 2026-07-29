import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure CosmologicalModelPackage {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage} where
  universeMetric : Type u
  perfectFluidStressEnergy : Prop
  friedmannEquations : Prop
  equationOfState : Prop
  expansionHistory : Prop

structure CosmologicalModelEvidence {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (C : CosmologicalModelPackage EFE) where
  friedmannEquationsClosed : C.friedmannEquations
  equationOfStateClosed : C.equationOfState
  expansionHistoryClosed : C.expansionHistory

def CosmologicalModelClosed {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (C : CosmologicalModelPackage EFE) : Prop :=
  C.friedmannEquations ∧ C.equationOfState ∧ C.expansionHistory

theorem cosmological_model_closed_from_evidence
    {EFE : EinsteinFieldEquationsPackage StressEnergyTensorPackage}
    (C : CosmologicalModelPackage EFE)
    (E : CosmologicalModelEvidence C) : CosmologicalModelClosed C := by
  exact And.intro E.friedmannEquationsClosed (And.intro E.equationOfStateClosed E.expansionHistoryClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse