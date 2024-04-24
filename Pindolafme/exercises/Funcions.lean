import Pindolafme.Config

setLang ca

Exercici "Imatge d'una successió per una funció contínua"

  Dades: (f : ℝ → ℝ) (u : ℕ → ℝ) (x₀ : ℝ)
  Hipòtesis: (hu : u convergeix a x₀) (hf : f és contínua a x₀)
  Conclusió: (f ∘ u) convergeix a f x₀

Demostració:
  sorry
QED

Exemple "Les successions constants són convergents."
  Dades: (u : ℕ → ℝ) (l : ℝ)
  Hipòtesis: (h : ∀ n, u n = l)
  Conclusió: u convergeix a l
Demostració:
  sorry
QED

Exemple "Una successió amb límit positiu és eventualment positiva."
  Dades: (u : ℕ → ℝ) (l : ℝ)
  Hipòtesis: (hl : l > 0) (h : u convergeix a l)
  Conclusió: ∃ N, ∀ n ≥ N, u n ≥ l/2
Demostració:
  sorry
QED


Exemple "Suma de successions convergents."
  Dades:  (u v : ℕ → ℝ) (l l' : ℝ)
  Hipòtesis: (hu : u convergeix a U) (hv : v convergeix a V)
  Conclusió: (u + v) convergeix a U +V
Demostració:
  sorry
QED

Exemple "El teorema de l'entrepà"
  Dades:  (u v w : ℕ → ℝ) (l : ℝ)
  Hipòtesis: (hu : u convergeix a l) (hw : w convergeix a l)
    (h : ∀ n, u n ≤ v n)
    (h' : ∀ n, v n ≤ w n)
  Conclusió: v convergeix a l
Demostració:
  sorry
QED

Exemple "Una reformulació de la definició de convergència"
  Dades:  (u : ℕ → ℝ) (l : ℝ)
  Conclusió: (u convergeix a l) ⇔ ∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - l| < ε
Demostració:
  sorry
QED


Exemple "Unicitat del límit."
  Dades:  (u : ℕ → ℝ) (l l' : ℝ)
  Hipòtesis: (h : u convergeix a l) (h': u convergeix a l')
  Conclusió: l = l'
Demostració:
  sorry
QED


Exemple "Una successió creixent amb suprem finit el té com a límit."
  Dades:  (u : ℕ → ℝ) (M : ℝ)
  Hipòtesis: (h : M és un suprem de u) (h' : u és creixent)
  Conclusió: u convergeix a M
Demostració:
  sorry
QED

