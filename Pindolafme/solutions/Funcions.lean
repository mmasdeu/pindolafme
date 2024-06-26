import Pindolafme.Config

setLang ca

Exercici "Imatge d'una successió per una funció contínua"

  Dades: (f : ℝ → ℝ) (u : ℕ → ℝ) (x₀ : ℝ)
  Hipòtesis: (hu : u convergeix a x₀) (hf : f és contínua a x₀)
  Conclusió: (f ∘ u) convergeix a f x₀

Demostració:
  --sorry
  Demostrem que ∀ ε > 0, ∃ N, ∀ n ≥ N, |f (u n) - f x₀| ≤ ε
  Sigui ε > 0
  Com que f és contínua a x₀ and ε > 0 obtenim δ tal que
    (δ_pos : δ > 0) and (Hf : ∀ x, |x - x₀| ≤ δ ⇒ |f x - f x₀| ≤ ε)
  Com que u convergeix a x₀ and δ > 0 obtenim N tal que Hu : ∀ n ≥ N, |u n - x₀| ≤ δ
  Demostrem que N funciona : ∀ n ≥ N, |f (u n) - f x₀| ≤ ε
  Sigui n ≥ N
  Com que ∀ x, |x - x₀| ≤ δ → |f x - f x₀| ≤ ε només cal demostrar que |u n - x₀| ≤ δ
  Com que ∀ n ≥ N, |u n - x₀| ≤ δ and n ≥ N concloem que |u n - x₀| ≤ δ
  --sorry
QED

Exemple "Les successions constants són convergents."
  Dades: (u : ℕ → ℝ) (l : ℝ)
  Hipòtesis: (h : ∀ n, u n = l)
  Conclusió: u convergeix a l
Demostració:
  --sorry
  Sigui ε > 0
  Demostrem que ∃ N, ∀ n ≥ N, |u n - l| ≤ ε
  Demostrem que 0 funciona
  Sigui n ≥ 0
  Calc |u n - l| = |l - l| per Reescrivim utilitzant h
   _             = 0       per Calculem
   _             ≤ ε       per Concloem amb ε_pos
  --sorry
QED

Exemple "Una successió amb límit positiu és eventualment positiva."
  Dades: (u : ℕ → ℝ) (l : ℝ)
  Hipòtesis: (hl : l > 0) (h : u convergeix a l)
  Conclusió: ∃ N, ∀ n ≥ N, u n ≥ l/2
Demostració:
  --sorry
  Per h aplicat a l/2 utilitzant que l/2 > 0 obtenim N tal que hN : ∀ n ≥ N, |u n - l| ≤ l/2
  Demostrem que N funciona
  Sigui n ≥ N
  Per hN aplicat a n utilitzant que n ≥ N obtenim hN' : |u n - l| ≤ l/2
  Per hN' obtenim (h₁ : -(l/2) ≤ u n - l) (h₂ : u n - l ≤ l/2)
  Concloem amb h₁
  --sorry
QED


Exemple "Suma de successions convergents."
  Dades:  (u v : ℕ → ℝ) (l l' : ℝ)
  Hipòtesis: (hu : u convergeix a U) (hv : v convergeix a V)
  Conclusió: (u + v) convergeix a U +V
Demostració:
  --sorry
  Sigui ε > 0
  Per hu aplicat a ε/2 utilitzant que ε/2 > 0 obtenim N₁
      tal que (hN₁ : ∀ n ≥ N₁, |u n - U| ≤ ε / 2)
  Per hv aplicat a ε/2 utilitzant que ε/2 > 0 obtenim N₂
      tal que (hN₂ : ∀ n ≥ N₂, |v n - V| ≤ ε / 2)
  Demostrem que max N₁ N₂ funciona
  Sigui n ≥ max N₁ N₂
  Per n_ge obtenim (hn₁ : N₁ ≤ n) (hn₂ : N₂ ≤ n)
  Tenim fact₁ : |u n - U| ≤ ε/2
    de hN₁ aplicat a n utilitzant hn₁
  Tenim fact₂ : |v n - V| ≤ ε/2
    de hN₂ aplicat a n utilitzant hn₂
  Calc
  |(u + v) n - (U + V)| = |(u n - U) + (v n - V)|    per Calculem
                      _ ≤ |u n - U| + |v n - V|      per Apliquem abs_add
                      _ ≤  ε/2 + ε/2                 per Combinem [fact₁, fact₂]
                      _ =  ε                         per Calculem
  --sorry
QED

Exemple "El teorema de l'entrepà"
  Dades:  (u v w : ℕ → ℝ) (l : ℝ)
  Hipòtesis: (hu : u convergeix a l) (hw : w convergeix a l)
    (h : ∀ n, u n ≤ v n)
    (h' : ∀ n, v n ≤ w n)
  Conclusió: v convergeix a l
Demostració:
  --sorry
  Demostrem que ∀ ε > 0, ∃ N, ∀ n ≥ N, |v n - l| ≤ ε
  Sigui ε > 0
  Com que u convergeix a l and ε > 0 obtenim N tal que hN : ∀ n ≥ N, |u n - l| ≤ ε
  Com que w convergeix a l and ε > 0 obtenim N' tal que hN' : ∀ n ≥ N', |w n - l| ≤ ε
  Demostrem que max N N' funciona : ∀ n ≥ max N N', |v n - l| ≤ ε
  Sigui n ≥ max N N'
  Com que n ≥ max N N' obtenim (hn : n ≥ N) and (hn' : n ≥ N')
  Com que ∀ n ≥ N, |u n - l| ≤ ε and n ≥ N obtenim
   (hNl : -ε ≤ u n - l) and (hNd : u n - l ≤ ε)
  Com que ∀ n ≥ N', |w n - l| ≤ ε and n ≥ N' obtenim
    (hN'l : -ε ≤ w n - l) and (hN'd : w n - l ≤ ε)
  Demostrem que |v n - l| ≤ ε
  Demostrem primer que -ε ≤ v n - l
  Calc -ε ≤ u n - l per assumption
      _   ≤ v n - l perquè u n ≤ v n
  Demostrem ara que v n - l ≤ ε
  Calc v n - l ≤ w n - l  perquè v n ≤ w n
      _        ≤ ε        per assumption
  --sorry
QED

Exemple "Una reformulació de la definició de convergència"
  Dades:  (u : ℕ → ℝ) (l : ℝ)
  Conclusió: (u convergeix a l) ⇔ ∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - l| < ε
Demostració:
  --sorry
  Demostrem primer que (u convergeix a l) ⇒ ∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - l| < ε
  Suposem hyp : u convergeix a l
  Sigui ε > 0
  Per hyp aplicat a ε/2 utilitzant que ε/2 > 0 obtenim N
      tal que hN : ∀ n ≥ N, |u n - l| ≤ ε / 2
  Demostrem que N funciona
  Sigui n ≥ N
  Calc |u n - l| ≤ ε/2  de hN aplicat a n utilitzant que n ≥ N
       _         < ε    perquè ε > 0
  Demostrem ara que (∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - l| < ε) ⇒ u convergeix a l
  Suposem hyp : ∀ ε > 0, ∃ N, ∀ n ≥ N, |u n - l| < ε
  Sigui ε > 0
  Per hyp aplicat a ε utilitzant que ε > 0 obtenim N tal que hN : ∀ n ≥ N, |u n - l| < ε
  Demostrem que N funciona
  Sigui n ≥ N
  Concloem amb hN aplicat a n utilitzant que n ≥ N
  --sorry
QED


Exemple "Unicitat del límit."
  Dades:  (u : ℕ → ℝ) (l l' : ℝ)
  Hipòtesis: (h : u convergeix a l) (h': u convergeix a l')
  Conclusió: l = l'
Demostració:
  --sorry
  Per eq_of_forall_dist_le només cal demostrar que ∀ ε > 0, |l - l'| ≤ ε
  Sigui ε > 0
  Per h aplicat a ε/2 utilitzant que ε/2 > 0 obtenim N
      tal que hN : ∀ n ≥ N, |u n - l| ≤ ε / 2
  Per h' aplicat a  ε/2 utilitzant que ε/2 > 0 obtenim N'
      tal que hN' : ∀ n ≥ N', |u n - l'| ≤ ε / 2
  Per hN aplicat a max N N' utilitzant le_max_left _ _
     obtenim hN₁ : |u (max N N') - l| ≤ ε / 2
  Per hN' aplicat a max N N' utilitzant le_max_right _ _
    obtenim hN'₁ : |u (max N N') - l'| ≤ ε / 2
  Calc |l - l'| = |(l-u (max N N')) + (u (max N N') -l')|  per Calculem
  _             ≤ |l - u (max N N')| + |u (max N N') - l'| per Apliquem abs_add
  _             = |u (max N N') - l| + |u (max N N') - l'| per Reescrivim utilitzant abs_sub_comm
  _             ≤ ε                                        per Combinem [hN₁, hN'₁]
  --sorry
QED


Exemple "Una successió creixent amb suprem finit el té com a límit."
  Dades:  (u : ℕ → ℝ) (M : ℝ)
  Hipòtesis: (h : M és un suprem de u) (h' : u és creixent)
  Conclusió: u convergeix a M
Demostració:
  --sorry
  Sigui ε > 0
  Per h obtenim (inf_M : ∀ (n : ℕ), u n ≤ M)
    (sup_M_ep : ∀ ε > 0, ∃ (n₀ : ℕ), u n₀ ≥ M - ε)
  Per sup_M_ep aplicat a ε utilitzant que ε > 0 obtenim n₀ tal que (hn₀ : u n₀ ≥ M - ε)
  Demostrem que n₀ funciona : ∀ n ≥ n₀, |u n - M| ≤ ε
  Sigui n ≥ n₀
  Per inf_M aplicat a n obtenim (inf_M' : u n ≤ M)
  Demostrem primer que -ε ≤ u n - M
  · Per h' aplicat a [n₀, n, n_ge] obtenim h'' : u n₀ ≤ u n
    Combinem [h'', hn₀]
  Demostrem ara que u n - M ≤ ε
  ·  Combinem [inf_M', ε_pos]
  --sorry
QED
