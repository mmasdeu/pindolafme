import Mathlib.Tactic
import Mathlib.Data.Finsupp.Defs
import Mathlib.Init.Function
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Rat.Lemmas
import Mathlib.Algebra.Group.Units
import Verbose.Catalan.All
import Mathlib.Tactic.RewriteSearch
import Mathlib.Topology.MetricSpace.Basic

import Lean
open Lean Elab Tactic

lemma induccio (P : ℕ → Prop) (h₀ : P 0)
(h_ind : ∀ n, (P n → P (n+1))) : ∀ n, P n := fun n => Nat.recAux h₀ h_ind n

/--
Si m^2 és parell aleshores m també ho és.
-/
lemma even_of_even_sq {m : ℕ} (h : 2 ∣ (m^2)) : 2 ∣ m :=
  Prime.dvd_of_dvd_pow (Nat.prime_iff.mp Nat.prime_two) h

def funcio_continua_a (f : ℝ → ℝ) (x₀ : ℝ) :=
∀ ε > 0, ∃ δ > 0, ∀ x, |x - x₀| ≤ δ → |f x - f x₀| ≤ ε

def succ_convergeix (u : ℕ → ℝ) (l : ℝ) :=
∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - l| ≤ ε

def creixent (u : ℕ → ℝ) := ∀ n m, n ≤ m → u n ≤ u m

def es_suprem (M : ℝ) (u : ℕ → ℝ) :=
(∀ n, u n ≤ M) ∧ ∀ ε > 0, ∃ n₀, u n₀ ≥ M - ε

variable {X : Type*}

def es_injectiva (f : X → X) := Function.Injective f
def es_exhaustiva (f : X → X) := Function.Surjective f

notation3:50 f:80 " és injectiva" => Function.Injective f
notation3:50 f:80 " és exhaustiva" => Function.Surjective f
notation3:50 f:80 " és contínua a " x₀ => funcio_continua_a f x₀
notation3:50 u:80 " convergeix a " l => succ_convergeix u l
notation3 u " és creixent" => creixent u
notation3 M " és un suprem de " u => es_suprem M u

configureUnfoldableDefs funcio_continua_a succ_convergeix creixent es_suprem
  Function.Injective Function.Surjective IsUnit


open Verbose.Catalan
setLang ca
configureAnonymousFactSplittingLemmas le_le_of_abs_le le_le_of_max_le

configureAnonymousGoalSplittingLemmas LogicIntros AbsIntros Set.Subset.antisymm

useDefaultDataProviders

useDefaultSuggestionProviders

attribute [simp] isUnit_iff_exists_inv
