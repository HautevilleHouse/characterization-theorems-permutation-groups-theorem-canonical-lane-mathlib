import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.ClassificationFiniteSimpleGroups

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure CayleyTheoremPackage {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} (D : CayleyTheoremPackage) where
  regularRepresentation : Prop
  permutationGroupEmbedding : Prop
  degreeEqualOrder : Prop
  faithfulAction : Prop

structure CayleyTheoremEvidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} (D : CayleyTheoremPackage) where
  regularRepresentationClosed : D.regularRepresentation
  permutationGroupEmbeddingClosed : D.permutationGroupEmbedding
  degreeEqualOrderClosed : D.degreeEqualOrder
  faithfulActionClosed : D.faithfulAction

def CayleyTheoremClosed {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} (D : CayleyTheoremPackage) : Prop :=
  D.regularRepresentation ∧ D.permutationGroupEmbedding ∧ D.degreeEqualOrder ∧ D.faithfulAction

theorem cayley_theorem_closed_from_evidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} (D : CayleyTheoremPackage) (E : CayleyTheoremEvidence D) : CayleyTheoremClosed D := by
  exact And.intro E.regularRepresentationClosed (And.intro E.permutationGroupEmbeddingClosed (And.intro E.degreeEqualOrderClosed E.faithfulActionClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse