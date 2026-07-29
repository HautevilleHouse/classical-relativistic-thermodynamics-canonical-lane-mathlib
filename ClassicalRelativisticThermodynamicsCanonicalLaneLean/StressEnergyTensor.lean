import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure StressEnergyTensorPackage where
  spacetime : Type u
  topology : TopologicalSpace spacetime
  smoothStructure : Prop
  metric : Type v
  stressEnergyTensor : Type w
  symmetric : Prop
  divergenceFree : Prop
  energyCondition : Prop

structure StressEnergyTensorEvidence (S : StressEnergyTensorPackage) where
  symmetricClosed : S.symmetric
  divergenceFreeClosed : S.divergenceFree
  energyConditionClosed : S.energyCondition

def StressEnergyTensorClosed (S : StressEnergyTensorPackage) : Prop :=
  S.symmetric ∧ S.divergenceFree ∧ S.energyCondition

theorem stress_energy_tensor_closed_from_evidence (S : StressEnergyTensorPackage)
    (E : StressEnergyTensorEvidence S) : StressEnergyTensorClosed S := by
  exact And.intro E.symmetricClosed (And.intro E.divergenceFreeClosed E.energyConditionClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse