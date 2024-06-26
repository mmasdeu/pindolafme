import Pindolafme.Config
import Mathlib.Algebra.Group.Units

open Function Finset Dvd Rat BigOperators

---------------------------------------------------


Exercici "Primer exercici del parcial 2024"

  Conclusió: ∀ n, ∃ m, ∀ k, ( (k > n) ⇒ 2*k > n + m )

Demostració:
  sorry
QED

-- Pel següent exercici és útil conèixer el lema sum_range_succ:
--  sum_range_succ (f : ℕ → β) (n : ℕ) :
--    ∑ x in range (n + 1), f x = ∑ x in range n, f x + f n

Exemple "La suma dels primers enters"
  Conclusió: ∀ n, ∑ k in range (n + 1), (k : ℝ) = n * (n + 1) / 2
Demostració:
  sorry
QED


/--
La successió de Fibonacci
-/
def Fib : ℕ → ℕ
| 0 => 0
| 1 => 1
| (n + 2) => Fib n + Fib (n+1)


Exercici  "Parcial 2024 (Fibonacci)"

  Conclusió: ∀ n, (1 + ∑ i in range n, Fib i = Fib (n+1))

Demostració:
  sorry
QED


section funcions

variable {X Y Z : Type}
variable (f : X → Y) (g : Y → Z)


Exemple "Si g ∘ f és injectiva aleshores f també ho és."

Conclusió: (g ∘ f) és injectiva ⇒ f és injectiva

Demostració:
  sorry
QED

Exemple "Si g ∘ f és exhaustiva aleshores g també ho és."

Conclusió: (g ∘ f) és exhaustiva  ⇒ g és exhaustiva

Demostració:
  sorry
QED

end funcions

-- Pel següent exercici és útil conèixer el lema even_of_even_sq:
--  even_of_even_sq {m : ℕ} (h : 2 ∣ m ^ 2) : 2 ∣ m
-- i el lema Nat.dvd_gcd:
--  Nat.dvd_gcd {k m n : ℕ} (hm : k ∣ m) (hn : k ∣ n) : k ∣ m.gcd n

Exemple "L'arrel quadrada de 2 és irracional"

  Dades: (m n : ℕ)
  Hipòtesis: (mn_coprimers : m.gcd n = 1)
  Conclusió:  m^2 ≠ 2 * n^2

Demostració:
  sorry
QED


Exemple "Anells"
  Dades: [CommRing A] [IsDomain A] (p a b : A)
  Hipòtesis: (hp : p ≠ 0) (h : p = a * b) (hab : p ∣ a ∨ p ∣ b)
  Conclusió: IsUnit a ∨ IsUnit b
Demostració:
  sorry
QED

