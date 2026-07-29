import canonicalLaneMathlib.AdmissibleClass
import CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure CompositionSeries (G : Type u) [Group G] where
  subgroups : List (Subgroup G)
  length : ℕ := subgroups.length
  strictAscending : ∀ i < subgroups.length - 1, subgroups.get? i < subgroups.get? (i+1)
  maximal : ∀ i < subgroups.length - 1, IsMaximal (subgroups.get? i) (subgroups.get? (i+1))

structure JordanHolderPackage {G : Type u} [Group G] (S : CompositionSeries G) where
  refinementProperty : Prop
  lengthInvariant : Prop
  isomorphismTypeUnique : Prop

structure JordanHolderEvidence {G : Type u} [Group G] {S : CompositionSeries G} (J : JordanHolderPackage S) where
  refinementPropertyClosed : J.refinementProperty
  lengthInvariantClosed : J.lengthInvariant
  isomorphismTypeUniqueClosed : J.isomorphismTypeUnique

def JordanHolderClosed {G : Type u} [Group G] {S : CompositionSeries G} (J : JordanHolderPackage S) : Prop :=
  J.refinementProperty ∧ J.lengthInvariant ∧ J.isomorphismTypeUnique

theorem jordan_holder_closed_from_evidence {G : Type u} [Group G] {S : CompositionSeries G} (J : JordanHolderPackage S) (E : JordanHolderEvidence J) : JordanHolderClosed J := by
  exact And.intro E.refinementPropertyClosed (And.intro E.lengthInvariantClosed E.isomorphismTypeUniqueClosed)

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse
