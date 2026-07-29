import HautevilleHouse.CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean.PermGroupsPrimitiveAction

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure ClassificationPackage (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) where
  caseCyclic : Prop
  caseAlternating : Prop
  caseSporadic : Prop
  classificationComplete : Prop

structure ClassificationEvidence (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) (C : ClassificationPackage O P) where
  caseCyclicClosed : C.caseCyclic
  caseAlternatingClosed : C.caseAlternating
  caseSporadicClosed : C.caseSporadic
  classificationCompleteClosed : C.classificationComplete

def ClassificationClosed (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) (C : ClassificationPackage O P) : Prop :=
  C.caseCyclic ∧ C.caseAlternating ∧ C.caseSporadic ∧ C.classificationComplete

theorem classification_closed_from_evidence (O : PermGroupsAdmittedObject) (P : PrimitiveActionPackage O) (C : ClassificationPackage O P) (E : ClassificationEvidence O P C) :
    ClassificationClosed O P C :=
  And.intro E.caseCyclicClosed (And.intro E.caseAlternatingClosed (And.intro E.caseSporadicClosed E.classificationCompleteClosed))

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse