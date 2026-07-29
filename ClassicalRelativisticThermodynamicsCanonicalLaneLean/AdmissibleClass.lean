import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure AdmissibleClass where
  object : RelativisticThermodynamicObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RelativisticThermodynamicsClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse