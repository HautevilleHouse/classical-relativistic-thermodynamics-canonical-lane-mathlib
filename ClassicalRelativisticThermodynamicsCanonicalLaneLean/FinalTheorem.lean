import canonicalLaneMathlib.AdmissibleClass
import ClassicalRelativisticThermodynamicsCanonicalLaneLean.BridgeLemmas
import ClassicalRelativisticThermodynamicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

def ConstrainedRelativisticThermodynamicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_relativistic_thermodynamics_endgame (A : AdmissibleClass) :
    ConstrainedRelativisticThermodynamicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse