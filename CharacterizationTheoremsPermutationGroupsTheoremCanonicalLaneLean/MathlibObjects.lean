import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PermutationGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PermutationGroupAdmittedObject where
  space : PermutationGroupSpace
  finiteGroupAction : Prop
  primitiveAction : Prop
  twoTransitiveAction : Prop
  classificationResult : Prop
  conclusion : classificationResult

structure PermutationGroupEndgameState where
  object : PermutationGroupAdmittedObject

def PermutationGroupWitnessClosed (O : PermutationGroupAdmittedObject) : Prop :=
  O.classificationResult

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse