import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean

structure PermutationAction (X : Type u) where
  group : Type v
  act : group → X → X
  identityAct : ∀ x : X, act 1 x = x
  compatibility : ∀ (g h : group) (x : X), act (g * h) x = act g (act h x)

def isTransitive {X : Type u} (act : PermutationAction X) : Prop :=
  ∀ x y : X, ∃ g : act.group, act.act g x = y

def isPrimitive {X : Type u} (act : PermutationAction X) : Prop :=
  isTransitive act ∧ ∀ (B : Set X), B ≠ ∅ → B ≠ Set.univ → (∀ g : act.group, act.act g '' B = B) → False

def regularAction {X : Type u} (act : PermutationAction X) : Prop :=
  isTransitive act ∧ ∀ x : X, (∀ g : act.group, act.act g x = x) → g = 1

end CharacterizationTheoremsPermutationGroupsTheoremCanonicalLaneLean
end HautevilleHouse
