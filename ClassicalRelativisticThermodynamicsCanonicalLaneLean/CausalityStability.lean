import HautevilleHouse.ClassicalRelativisticThermodynamicsCanonicalLaneLean.RelativisticFluidDynamicsEquations

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure CausalityPackage (M : ThermodynamicSpacetime) where
  soundSpeed : M.thermodynamicFields
  causalityCondition : Prop
  characteristicsHyperbolic : Prop
  wellPosedness : Prop

structure CausalityEvidence {M : ThermodynamicSpacetime}
    (C : CausalityPackage M) where
  causalityConditionClosed : C.causalityCondition
  characteristicsHyperbolicClosed : C.characteristicsHyperbolic
  wellPosednessClosed : C.wellPosedness

def CausalityClosed {M : ThermodynamicSpacetime}
    (C : CausalityPackage M) : Prop :=
  C.causalityCondition ∧
  C.characteristicsHyperbolic ∧
  C.wellPosedness

theorem causality_closed_from_evidence
    {M : ThermodynamicSpacetime} (C : CausalityPackage M)
    (E : CausalityEvidence C) :
    CausalityClosed C := by
  exact And.intro E.causalityConditionClosed
    (And.intro E.characteristicsHyperbolicClosed E.wellPosednessClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse