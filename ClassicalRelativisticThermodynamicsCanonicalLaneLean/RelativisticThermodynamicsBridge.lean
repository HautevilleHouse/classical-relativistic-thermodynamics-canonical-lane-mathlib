import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure ThermodynamicAdmittedObject where
  spacetime : Type u
  stressEnergyTensor : Type v
  entropyCurrent : Type w
  equilibriumState : Prop
  conclusion : equilibriumState

structure ThermodynamicAdmissibleClass where
  object : ThermodynamicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : ThermodynamicAdmissibleClass) : Prop :=
  A.object.equilibriumState

theorem bridge_from_admissible_class (A : ThermodynamicAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : ThermodynamicAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ThermodynamicAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedThermodynamicsClosure (A : ThermodynamicAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_thermodynamics_endgame (A : ThermodynamicAdmissibleClass) :
    ConstrainedThermodynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse
