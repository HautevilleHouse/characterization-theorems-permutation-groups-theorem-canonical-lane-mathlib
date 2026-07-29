import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PrimitiveGroupAction where
  underlyingSet : Type u
  group : Type v
  action : group → underlyingSet → underlyingSet
  faithful : Prop
  transitive : Prop
  primitive : Prop

structure BlockSystem where
  primitiveGroup : PrimitiveGroupAction
  blocks : Set (Set primitiveGroup.underlyingSet)
  partitionProperty : Prop
  blockTransitivity : Prop
  trivialBlocksOnly : Prop

structure PrimitiveGroupEvidence (G : PrimitiveGroupAction) where
  faithfulClosed : G.faithful
  transitiveClosed : G.transitive
  primitiveClosed : G.primitive

def PrimitiveGroupClosed (G : PrimitiveGroupAction) : Prop :=
  G.faithful ∧ G.transitive ∧ G.primitive

theorem primitive_group_closed_from_evidence (G : PrimitiveGroupAction)
    (E : PrimitiveGroupEvidence G) : PrimitiveGroupClosed G := by
  exact And.intro E.faithfulClosed (And.intro E.transitiveClosed E.primitiveClosed)

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse
