import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PermutationGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse