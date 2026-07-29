import ClassicalRelativisticThermodynamicsCanonicalLaneLean.EFEStressEnergyBridge

/-!
# Entropy Current Conservation Package
-/

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure EntropyCurrentPackage {O : RelativisticThermodynamicObject}
    (P : EFEPackage O) where
  entropyCurrentVector : Type
  divergenceZero : Prop
  positivityCondition : Prop
  constitutiveRelation : Prop

structure EntropyCurrentEvidence {O : RelativisticThermodynamicObject}
    {P : EFEPackage O} (S : EntropyCurrentPackage P) where
  divergenceZeroClosed : S.divergenceZero
  positivityConditionClosed : S.positivityCondition
  constitutiveRelationClosed : S.constitutiveRelation

def EntropyCurrentClosed {O : RelativisticThermodynamicObject}
    {P : EFEPackage O} (S : EntropyCurrentPackage P) : Prop :=
  S.divergenceZero ∧ S.positivityCondition ∧ S.constitutiveRelation

theorem entropy_current_closed_from_evidence {O : RelativisticThermodynamicObject}
    {P : EFEPackage O} (S : EntropyCurrentPackage P)
    (E : EntropyCurrentEvidence S) : EntropyCurrentClosed S := by
  exact And.intro E.divergenceZeroClosed
    (And.intro E.positivityConditionClosed E.constitutiveRelationClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse