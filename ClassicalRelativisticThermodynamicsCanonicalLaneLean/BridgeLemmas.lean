import ClassicalRelativisticThermodynamicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RelativisticThermodynamicsClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse