import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure ThermodynamicSpacetime where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  stressEnergyTensor : Type w
  thermodynamicFields : Type x
  entropyCurrent : Type y
  temperatureField : Type z
  smoothLorentzianFourManifold : Prop
  metricSmoothLorentzian : Prop
  stressEnergyContinuity : Prop
  entropyBalance : Prop
  temperaturePositive : Prop

structure ThermodynamicSpacetimeEvidence (M : ThermodynamicSpacetime) where
  smoothLorentzianFourManifoldClosed : M.smoothLorentzianFourManifold
  metricSmoothLorentzianClosed : M.metricSmoothLorentzian
  stressEnergyContinuityClosed : M.stressEnergyContinuity
  entropyBalanceClosed : M.entropyBalance
  temperaturePositiveClosed : M.temperaturePositive

def ThermodynamicSpacetimeClosed (M : ThermodynamicSpacetime) : Prop :=
  M.smoothLorentzianFourManifold ∧
  M.metricSmoothLorentzian ∧
  M.stressEnergyContinuity ∧
  M.entropyBalance ∧
  M.temperaturePositive

theorem thermodynamic_spacetime_closed_from_evidence
    (M : ThermodynamicSpacetime) (E : ThermodynamicSpacetimeEvidence M) :
    ThermodynamicSpacetimeClosed M := by
  exact And.intro E.smoothLorentzianFourManifoldClosed
    (And.intro E.metricSmoothLorentzianClosed
      (And.intro E.stressEnergyContinuityClosed
        (And.intro E.entropyBalanceClosed E.temperaturePositiveClosed)))

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse