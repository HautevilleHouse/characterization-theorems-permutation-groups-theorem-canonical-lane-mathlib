import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure CompositionSeries where
  group : Type u
  length : ℕ
  subgroups : ℕ → Set group
  normalization : Prop
  simplicity : Prop
  refinementProperty : Prop

structure JordanHolderPackage where
  compositionSeries : CompositionSeries
  isomorphismType : Type v
  uniquenessUpToIsomorphism : Prop
  lengthInvariant : Prop

structure JordanHolderEvidence (J : JordanHolderPackage) where
  uniquenessClosed : J.uniquenessUpToIsomorphism
  lengthInvariantClosed : J.lengthInvariant

def JordanHolderClosed (J : JordanHolderPackage) : Prop :=
  J.uniquenessUpToIsomorphism ∧ J.lengthInvariant

theorem jordan_holder_closed_from_evidence (J : JordanHolderPackage)
    (E : JordanHolderEvidence J) : JordanHolderClosed J := by
  exact And.intro E.uniquenessClosed E.lengthInvariantClosed

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse
