import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalRelativisticThermodynamicsCanonicalLaneLean

structure SpacetimeGeometryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothAtlas : Prop
  lorentzianMetric : Type v
  signature : Prop
  causalStructure : Prop
  timeOrientable : Prop
  globallyHyperbolic : Prop

structure SpacetimeGeometryEvidence (G : SpacetimeGeometryPackage) where
  smoothAtlasClosed : G.smoothAtlas
  signatureClosed : G.signature
  causalStructureClosed : G.causalStructure
  timeOrientableClosed : G.timeOrientable
  globallyHyperbolicClosed : G.globallyHyperbolic

def SpacetimeGeometryClosed (G : SpacetimeGeometryPackage) : Prop :=
  G.smoothAtlas ∧ G.signature ∧ G.causalStructure ∧ G.timeOrientable ∧ G.globallyHyperbolic

theorem spacetime_geometry_closed_from_evidence
    (G : SpacetimeGeometryPackage) (E : SpacetimeGeometryEvidence G) :
    SpacetimeGeometryClosed G := by
  exact And.intro E.smoothAtlasClosed
    (And.intro E.signatureClosed
      (And.intro E.causalStructureClosed
        (And.intro E.timeOrientableClosed E.globallyHyperbolicClosed)))

end ClassicalRelativisticThermodynamicsCanonicalLaneLean
end HautevilleHouse
