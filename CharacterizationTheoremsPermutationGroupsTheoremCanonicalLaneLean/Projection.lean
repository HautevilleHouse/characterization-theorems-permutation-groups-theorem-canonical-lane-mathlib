import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

def permutationGroupProjection : Projection PermutationGroupEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem permutationGroup_projection_idempotent (x : PermutationGroupEndgameState) :
    permutationGroupProjection.toFun (permutationGroupProjection.toFun x) = permutationGroupProjection.toFun x := by
  exact permutationGroupProjection.idempotent x

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse