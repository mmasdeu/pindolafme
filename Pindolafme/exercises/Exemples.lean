import Pindolafme.Config
import Mathlib.Algebra.Group.Units

open Function Finset Dvd Rat BigOperators

---------------------------------------------------


Exercici "Primer exercici del parcial 2024"

  Conclusió: ∀ n, ∃ m, ∀ k, ( (k > n) ⇒ 2*k > n + m )

Demostració:
  sorry
QED


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

#check even_of_even_sq

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

