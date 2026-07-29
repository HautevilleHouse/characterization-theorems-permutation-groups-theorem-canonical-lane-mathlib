import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.SylowTheorems

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PermutationGroupStructureTheoremPackage {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} {S : SylowTheoremsPackage} (P : PermutationGroupStructureTheoremPackage) where
  primitiveGroupClassification : Prop
  transitiveDecomposition : Prop
  wreathProductStructure : Prop
  oNanScottTheorem : Prop

structure PermutationGroupStructureTheoremEvidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} {S : SylowTheoremsPackage} (P : PermutationGroupStructureTheoremPackage) where
  primitiveGroupClassificationClosed : P.primitiveGroupClassification
  transitiveDecompositionClosed : P.transitiveDecomposition
  wreathProductStructureClosed : P.wreathProductStructure
  oNanScottTheoremClosed : P.oNanScottTheorem

def PermutationGroupStructureTheoremClosed {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} {S : SylowTheoremsPackage} (P : PermutationGroupStructureTheoremPackage) : Prop :=
  P.primitiveGroupClassification ∧ P.transitiveDecomposition ∧ P.wreathProductStructure ∧ P.oNanScottTheorem

theorem permutation_group_structure_theorem_closed_from_evidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} {J : JordanHolderTheoremPackage} {S : SylowTheoremsPackage} (P : PermutationGroupStructureTheoremPackage) (E : PermutationGroupStructureTheoremEvidence P) : PermutationGroupStructureTheoremClosed P := by
  exact And.intro E.primitiveGroupClassificationClosed (And.intro E.transitiveDecompositionClosed (And.intro E.wreathProductStructureClosed E.oNanScottTheoremClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse