import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.PermGroupsGateLemmas

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

def ConstrainedPermGroupsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_perm_groups_endgame (A : AdmissibleClass) :
    ConstrainedPermGroupsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse