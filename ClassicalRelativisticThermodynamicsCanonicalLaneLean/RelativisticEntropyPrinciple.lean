import HautevilleHouse.ClassicalRelativisticThermodynamicsCanonicalLaneLean.ThermodynamicSpacetime

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure RelativisticEntropyPrinciplePackage (M : ThermodynamicSpacetime) where
  entropyProduction : M.thermodynamicFields
  entropyCurrentDensity : M.thermodynamicFields
  localEquilibriumAssumption : Prop
  secondLaw : Prop
  fluctuationTheorem : Prop

structure RelativisticEntropyPrincipleEvidence {M : ThermodynamicSpacetime}
    (E : RelativisticEntropyPrinciplePackage M) where
  localEquilibriumAssumptionClosed : E.localEquilibriumAssumption
  secondLawClosed : E.secondLaw
  fluctuationTheoremClosed : E.fluctuationTheorem

def RelativisticEntropyPrincipleClosed {M : ThermodynamicSpacetime}
    (E : RelativisticEntropyPrinciplePackage M) : Prop :=
  E.localEquilibriumAssumption ∧
  E.secondLaw ∧
  E.fluctuationTheorem

theorem relativistic_entropy_principle_closed_from_evidence
    {M : ThermodynamicSpacetime} (E : RelativisticEntropyPrinciplePackage M)
    (Ev : RelativisticEntropyPrincipleEvidence E) :
    RelativisticEntropyPrincipleClosed E := by
  exact And.intro Ev.localEquilibriumAssumptionClosed
    (And.intro Ev.secondLawClosed Ev.fluctuationTheoremClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse