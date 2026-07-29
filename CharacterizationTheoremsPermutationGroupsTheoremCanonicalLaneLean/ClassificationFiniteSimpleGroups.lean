import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.OrbitStabilizerPackage

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure ClassificationFiniteSimpleGroupsPackage {G : Type u} {X : Type v} [Group G] [MulAction G X] (O : OrbitStabilizerPackage G X) where
  primeCyclicClassified : Prop
  alternatingClassified : Prop
  lieTypeClassified : Prop
  sporadicClassified : Prop
  simpleGroupCharacterization : Prop

structure ClassificationFiniteSimpleGroupsEvidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} (C : ClassificationFiniteSimpleGroupsPackage O) where
  primeCyclicClassifiedClosed : C.primeCyclicClassified
  alternatingClassifiedClosed : C.alternatingClassified
  lieTypeClassifiedClosed : C.lieTypeClassified
  sporadicClassifiedClosed : C.sporadicClassified
  simpleGroupCharacterizationClosed : C.simpleGroupCharacterization

def ClassificationFiniteSimpleGroupsClosed {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} (C : ClassificationFiniteSimpleGroupsPackage O) : Prop :=
  C.primeCyclicClassified ∧ C.alternatingClassified ∧ C.lieTypeClassified ∧ C.sporadicClassified ∧ C.simpleGroupCharacterization

theorem classification_finite_simple_groups_closed_from_evidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} (C : ClassificationFiniteSimpleGroupsPackage O) (E : ClassificationFiniteSimpleGroupsEvidence C) : ClassificationFiniteSimpleGroupsClosed C := by
  exact And.intro E.primeCyclicClassifiedClosed (And.intro E.alternatingClassifiedClosed (And.intro E.lieTypeClassifiedClosed (And.intro E.sporadicClassifiedClosed E.simpleGroupCharacterizationClosed)))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse