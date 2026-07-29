import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.PermGroupsAdmissibleObject

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PermGroupsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse