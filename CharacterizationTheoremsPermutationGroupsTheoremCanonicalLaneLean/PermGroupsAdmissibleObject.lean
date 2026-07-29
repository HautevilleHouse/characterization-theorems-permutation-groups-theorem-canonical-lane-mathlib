import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PermGroupsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PermGroupsAdmittedObject where
  space : PermGroupsSpace
  groupStructure : Group (space.carrier)
  primitivePermutationGroup : Prop
  characterizationStatement : Prop
  conclusion : characterizationStatement

def PermGroupsWitnessClosed (O : PermGroupsAdmittedObject) : Prop :=
  O.characterizationStatement

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse