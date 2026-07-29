import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.PermGroupsAdmissibleObject

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PrimitiveActionPackage (O : PermGroupsAdmittedObject) where
  groupAction : O.space.carrier → Type u → Type v
  faithful : Prop
  transitive : Prop
  primitive : Prop
  characterization : Prop

structure PrimitiveActionEvidence (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) where
  faithfulClosed : P.faithful
  transitiveClosed : P.transitive
  primitiveClosed : P.primitive
  characterizationClosed : P.characterization

def PrimitiveActionClosed (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) : Prop :=
  P.faithful ∧ P.transitive ∧ P.primitive ∧ P.characterization

theorem primitive_action_closed_from_evidence (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) (E : PrimitiveActionEvidence O P) :
    PrimitiveActionClosed O P :=
  And.intro E.faithfulClosed (And.intro E.transitiveClosed (And.intro E.primitiveClosed E.characterizationClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse