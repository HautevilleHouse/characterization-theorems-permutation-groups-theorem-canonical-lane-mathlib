import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure OrbitStabilizerPackage (G : Type u) (X : Type v) [Group G] [MulAction G X] where
  orbitPartition : Prop
  stabilizerSubgroup : Prop
  orbitStabilizerEquation : Prop
  sizeFormula : Prop

structure OrbitStabilizerEvidence {G : Type u} {X : Type v} [Group G] [MulAction G X] (P : OrbitStabilizerPackage G X) where
  orbitPartitionClosed : P.orbitPartition
  stabilizerSubgroupClosed : P.stabilizerSubgroup
  orbitStabilizerEquationClosed : P.orbitStabilizerEquation
  sizeFormulaClosed : P.sizeFormula

def OrbitStabilizerClosed {G : Type u} {X : Type v} [Group G] [MulAction G X] (P : OrbitStabilizerPackage G X) : Prop :=
  P.orbitPartition ∧ P.stabilizerSubgroup ∧ P.orbitStabilizerEquation ∧ P.sizeFormula

theorem orbit_stabilizer_closed_from_evidence {G : Type u} {X : Type v} [Group G] [MulAction G X] (P : OrbitStabilizerPackage G X) (E : OrbitStabilizerEvidence P) : OrbitStabilizerClosed P := by
  exact And.intro E.orbitPartitionClosed (And.intro E.stabilizerSubgroupClosed (And.intro E.orbitStabilizerEquationClosed E.sizeFormulaClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse