import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure EntropyCurrent where
  entropyDensity : ℝ
  entropyFlux : ℝ → ℝ → ℝ
  nonNegativeProduction : ∀ x, ∂_t entropyDensity + ∑ i, ∂_i entropyFlux x i ≥ 0

structure ECPackage where
  temperature : ℝ → ℝ → ℝ
  chemicalPotential : ℝ → ℝ → ℝ
  entropyCurrent : EntropyCurrent
  closureWitness : entropyCurrent.nonNegativeProduction

def EntropyCurrentClosed (E : ECPackage) : Prop :=
  E.entropyCurrent.nonNegativeProduction

theorem entropy_current_closed (E : ECPackage) : EntropyCurrentClosed E :=
  E.closureWitness

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse