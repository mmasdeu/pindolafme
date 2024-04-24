import Pindolafme.Config
import Mathlib.Algebra.Group.Units

open Function Finset Dvd Rat BigOperators

---------------------------------------------------


Exercici "Primer exercici del parcial 2024"

  Conclusió: ∀ n, ∃ m, ∀ k, ( (k > n) ⇒ 2*k > n + m )

Demostració:
  --sorry
  Sigui n : ℕ
  Demostrem que 1 funciona: ∀ k > n, 2 * k > n + 1
  Sigui k > n
  Concloem amb k_gt
  --sorry
QED

-- Pel següent exercici és útil conèixer el lema sum_range_succ:
--  sum_range_succ (f : ℕ → β) (n : ℕ) :
--    ∑ x in range (n + 1), f x = ∑ x in range n, f x + f n

Exemple "La suma dels primers enters"
  Conclusió: ∀ n, ∑ k in range (n + 1), (k : ℝ) = n * (n + 1) / 2
Demostració:
  --sorry
  Apliquem induccio
  · Calculem
  · Sigui n : ℕ
    Suposem H_induccio
    Reescrivim via sum_range_succ
    Reescrivim via H_induccio
    Calculem
  --sorry
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
  --sorry
  Apliquem induccio
  · Calculem
  · Sigui (n : ℕ)
    Suposem hyp : 1 + ∑ i in range n, Fib i = Fib (n + 1)
    Reescrivim via sum_range_succ
    Reescrivim via Fib
    Combinem [hyp]
  --sorry
QED


section funcions

variable {X Y Z : Type}
variable (f : X → Y) (g : Y → Z)


Exemple "Si g ∘ f és injectiva aleshores f també ho és."

Conclusió: (g ∘ f) és injectiva ⇒ f és injectiva

Demostració:
  --sorry
  Suposem h
  Sigui x y
  Suposem hxy : f x = f y
  Apliquem h
  Calculem
  Reescrivim utilitzant hxy
  --sorry
QED

Exemple "Si g ∘ f és exhaustiva aleshores g també ho és."

Conclusió: (g ∘ f) és exhaustiva  ⇒ g és exhaustiva

Demostració:
  --sorry
  Suposem h : (g ∘ f) és exhaustiva
  Reformulem h com ∀ (b : Z), ∃ a, (g ∘ f) a = b
  Demostrem que ∀ (b : Z), ∃ a, g a = b
  Sigui b : Z
  Per h aplicat a b obtenim x tal que hx : (g ∘ f) x = b
  Demostrem que f x funciona
  Concloem amb hx
  --sorry
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
  --sorry
  Suposem hc : m^2 = 2 * n^2

  Fet m_es_parell : 2 ∣ m per
    Apliquem even_of_even_sq
    Demostrem que n^2 funciona
    Concloem amb hc

  Fet n_es_parell : 2 ∣ n per
    Apliquem even_of_even_sq
    Per m_es_parell obtenim k tal que h : m = 2 * k
    Demostrem que k^2 funciona
    Reescrivim utilitzant h at hc
    Combinem [hc, h]

  Fet mcd_es_parell : 2 ∣ m.gcd n de
    Nat.dvd_gcd m_es_parell n_es_parell

  Reescrivim utilitzant mn_coprimers at mcd_es_parell
  Arribem a contradicció
  --sorry
QED


Exemple "Anells"
  Dades: [CommRing A] [IsDomain A] (p a b : A)
  Hipòtesis: (hp : p ≠ 0) (h : p = a * b) (hab : p ∣ a ∨ p ∣ b)
  Conclusió: IsUnit a ∨ IsUnit b
Demostració:
  --sorry
  Fet h' : p ∣ a * b per
    Apliquem dvd_of_eq h
  Separem hab en casos
  · Suposem hpa : p ∣ a
    Per hpa obtenim k tal que hk : a = p * k
    Reescrivim via hk at h
    Reescrivim via mul_assoc at h
    Fet h' : p * 1 = p * (k*b) per
      Reescrivim via ←h
      Calculem
    Reescrivim via (mul_right_inj' hp) at h'
    Demostrem que IsUnit b
    Calculem
    Demostrem que k funciona
    Reescrivim via h'
    Calculem
  · sorry --igual
  --sorry
QED
