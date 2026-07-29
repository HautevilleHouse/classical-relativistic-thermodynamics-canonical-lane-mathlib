import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure EinsteinFieldEquationsPackage where
  stressEnergyTensor : Type u
  cosmologicalConstant : ℝ
  einsteinTensor : Type v
  fieldEquations : Prop
  conservationLaws : Prop
  initialDataSatisfied : Prop

structure EinsteinFieldEquationsEvidence (E : EinsteinFieldEquationsPackage) where
  fieldEquationsClosed : E.fieldEquations
  conservationLawsClosed : E.conservationLaws
  initialDataSatisfiedClosed : E.initialDataSatisfied

def EinsteinFieldEquationsClosed (E : EinsteinFieldEquationsPackage) : Prop :=
  E.fieldEquations ∧ E.conservationLaws ∧ E.initialDataSatisfied

theorem einstein_field_equations_closed_from_evidence
    (E : EinsteinFieldEquationsPackage) (Ev : EinsteinFieldEquationsEvidence E) :
    EinsteinFieldEquationsClosed E := by
  exact And.intro Ev.fieldEquationsClosed
    (And.intro Ev.conservationLawsClosed Ev.initialDataSatisfiedClosed)

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse
