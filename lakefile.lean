import Lake
open Lake DSL

package «pindolafme» where
  -- Settings applied to both builds and interactive editing
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩, -- pretty-prints `fun a ↦ b`
    ⟨`pp.proofs.withType, false⟩
  ]
  -- add any additional package configuration options here

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git"

require verbose from git
  "https://github.com/mmasdeu/verbose-lean4"@"catalan"

@[default_target]
lean_lib «Pindolafme» where
  -- add any library configuration options here
