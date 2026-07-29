import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PermGroupSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PermGroupAdmittedObject where
  space : PermGroupSpace
  finiteGroup : Prop
  faithfulRepresentation : Prop
  classificationResult : Prop
  conclusion : classificationResult

structure PermGroupEndgameState where
  object : PermGroupAdmittedObject

def PermGroupWitnessClosed (O : PermGroupAdmittedObject) : Prop :=
  O.classificationResult

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse
