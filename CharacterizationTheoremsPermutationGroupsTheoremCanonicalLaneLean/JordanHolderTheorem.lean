import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.CayleyTheorem

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure JordanHolderTheoremPackage {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} (J : JordanHolderTheoremPackage) where
  compositionSeries : Prop
  refinementTheorem : Prop
  isomorphismTypesUnique : Prop
  simpleFactorsDetermined : Prop

structure JordanHolderTheoremEvidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} (J : JordanHolderTheoremPackage) where
  compositionSeriesClosed : J.compositionSeries
  refinementTheoremClosed : J.refinementTheorem
  isomorphismTypesUniqueClosed : J.isomorphismTypesUnique
  simpleFactorsDeterminedClosed : J.simpleFactorsDetermined

def JordanHolderTheoremClosed {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} (J : JordanHolderTheoremPackage) : Prop :=
  J.compositionSeries ∧ J.refinementTheorem ∧ J.isomorphismTypesUnique ∧ J.simpleFactorsDetermined

theorem jordan_holder_theorem_closed_from_evidence {G : Type u} {X : Type v} [Group G] [MulAction G X] {O : OrbitStabilizerPackage G X} {C : ClassificationFiniteSimpleGroupsPackage O} {D : CayleyTheoremPackage} (J : JordanHolderTheoremPackage) (E : JordanHolderTheoremEvidence J) : JordanHolderTheoremClosed J := by
  exact And.intro E.compositionSeriesClosed (And.intro E.refinementTheoremClosed (And.intro E.isomorphismTypesUniqueClosed E.simpleFactorsDeterminedClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse