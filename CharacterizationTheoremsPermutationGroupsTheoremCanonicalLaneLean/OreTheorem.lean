import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure OreConditions where
  group : Type u
  conditionL : Prop
  conditionR : Prop
  conditionO : Prop
  impliesTransitivity : Prop

structure OreTheoremPackage where
  finiteGroup : Type u
  frobeniusGroup : Prop
  frobeniusComplement : Prop
  frobeniusKernel : Prop
  permutationRepresentation : Prop
  oreConditions : OreConditions

structure OreTheoremEvidence (O : OreTheoremPackage) where
  frobeniusGroupClosed : O.frobeniusGroup
  permutationRepresentationClosed : O.permutationRepresentation
  oreConditionsClosed : O.oreConditions.conditionL ∧ O.oreConditions.conditionR ∧ O.oreConditions.conditionO

def OreTheoremClosed (O : OreTheoremPackage) : Prop :=
  O.frobeniusGroup ∧ O.permutationRepresentation ∧
  (O.oreConditions.conditionL ∧ O.oreConditions.conditionR ∧ O.oreConditions.conditionO)

theorem ore_theorem_closed_from_evidence (O : OreTheoremPackage)
    (E : OreTheoremEvidence O) : OreTheoremClosed O := by
  exact And.intro E.frobeniusGroupClosed (And.intro E.permutationRepresentationClosed E.oreConditionsClosed)

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse
