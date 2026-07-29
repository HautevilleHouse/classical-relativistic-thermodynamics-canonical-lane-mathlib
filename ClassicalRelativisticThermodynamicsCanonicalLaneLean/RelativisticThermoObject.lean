import ClassicalRelativisticThermodynamicsCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

structure RelativisticSpacetime where
  manifold : Type
  topology : TopologicalSpace manifold
  metric : Type
  curvatureScalar : Type

structure RelativisticThermodynamicObject where
  spacetime : RelativisticSpacetime
  stressEnergyTensorSatisfiesEFE : Prop
  equationOfState : Prop
  entropyCurrentConserved : Prop
  secondLawSatisfied : Prop
  conclusion : stressEnergyTensorSatisfiesEFE ∧ equationOfState ∧ entropyCurrentConserved ∧ secondLawSatisfied

structure ThermodynamicsEndgameState where
  object : RelativisticThermodynamicObject

def RelativisticThermodynamicsClosed (O : RelativisticThermodynamicObject) : Prop :=
  O.stressEnergyTensorSatisfiesEFE ∧ O.equationOfState ∧ O.entropyCurrentConserved ∧ O.secondLawSatisfied

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse