import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.JordanHolderTheorem

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure SylowTheoremsPackage {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} (S : SylowTheoremsPackage) where
  sylowExistence : Prop
  sylowConjugacy : Prop
  sylowCount : Prop
  sylowSubgroupStructure : Prop

structure SylowTheoremsEvidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} (S : SylowTheoremsPackage) where
  sylowExistenceClosed : S.sylowExistence
  sylowConjugacyClosed : S.sylowConjugacy
  sylowCountClosed : S.sylowCount
  sylowSubgroupStructureClosed : S.sylowSubgroupStructure

def SylowTheoremsClosed {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} (S : SylowTheoremsPackage) : Prop :=
  S.sylowExistence ∧ S.sylowConjugacy ∧ S.sylowCount ∧ S.sylowSubgroupStructure

theorem sylow_theorems_closed_from_evidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} (S : SylowTheoremsPackage) (E : SylowTheoremsEvidence S) : SylowTheoremsClosed S := by
  exact And.intro E.sylowExistenceClosed (And.intro E.sylowConjugacyClosed (And.intro E.sylowCountClosed E.sylowSubgroupStructureClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse