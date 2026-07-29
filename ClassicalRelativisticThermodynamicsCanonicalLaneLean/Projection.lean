import ClassicalRelativisticThermodynamicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib

def thermodynamicsProjection : Projection ThermodynamicsEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem thermodynamics_projection_idempotent (x : ThermodynamicsEndgameState) :
    thermodynamicsProjection.toFun (thermodynamicsProjection.toFun x) = thermodynamicsProjection.toFun x := by
  exact thermodynamicsProjection.idempotent x

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse