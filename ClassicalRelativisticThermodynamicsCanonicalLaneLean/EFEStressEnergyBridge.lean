import ClassicalRelativisticThermodynamicsCanonicalLaneLean.RelativisticThermoObject

/-!
# Einstein Field Equations Stress-Energy Bridge
-/

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure EFEPackage (O : RelativisticThermodynamicObject) where
  metricCompatibility : Prop
  einsteinTensorComputed : Prop
  stressEnergyCoupling : Prop
  conservationEquationsHeld : Prop

structure EFEEvidence {O : RelativisticThermodynamicObject} (P : EFEPackage O) where
  metricCompatibilityClosed : P.metricCompatibility
  einsteinTensorComputedClosed : P.einsteinTensorComputed
  stressEnergyCouplingClosed : P.stressEnergyCoupling
  conservationEquationsHeldClosed : P.conservationEquationsHeld

def EFEClosed {O : RelativisticThermodynamicObject} (P : EFEPackage O) : Prop :=
  P.metricCompatibility ∧ P.einsteinTensorComputed ∧ P.stressEnergyCoupling ∧ P.conservationEquationsHeld

theorem efe_closed_from_evidence {O : RelativisticThermodynamicObject}
    (P : EFEPackage O) (E : EFEEvidence P) : EFEClosed P := by
  exact And.intro E.metricCompatibilityClosed
    (And.intro E.einsteinTensorComputedClosed
      (And.intro E.stressEnergyCouplingClosed E.conservationEquationsHeldClosed))

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse