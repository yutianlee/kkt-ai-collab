# Reading Packet

## Problem

Study KKT Conjecture 6.1 for the weighted normalized Jacobi expression $g_n^{(\alpha,\beta)}(x)$ with real $\alpha,\beta\ge0$. The main target is the sharp bound $|g_n|\le1$ and the stronger KKT Lemma 4.3 type factor. The near-term target is $\alpha\ge0$, $\beta\in\mathbb N_0$.

## Current State

The full real-parameter statement appears open. Existing legacy AI work has narrowed attention to endpoint-cap analysis after central-region and energy reductions. The remaining obstacle is an explicit endpoint/Laguerre certificate with constants and a finite-$\beta$ bridge.

Round 12 should start from `manifests/round_011_seed.md`, which contains `A1-11.md`, `A2-11.md`, `A3-11.md`, `A4-11.md`, `A1-Strategy.md`, and `A2-Strategy.md`.

## Most Important Gaps

1. Verify the endpoint-cap algebra and exact ODE.
2. Produce a sharp first-lobe Laguerre/Bessel or Sonin certificate.
3. Quantify finite-$\beta$ perturbation from Laguerre to Jacobi.
4. Keep proof claims separated from plausible but uncertified architecture.

## Suggested Next Round

Ask each active AI to make a fresh Stage A reasoning attempt from the Round 11 seed and latest strategies:

- A1 should synthesize the endpoint-cap strategy and later judge the round.
- A2 should stress-test the certified hybrid strategy and hidden hypotheses.
- A3 should audit endpoint ODE algebra, constants, and false compactness claims.
- A4 should generate checkable lemmas and symbolic/numeric verification plans.

Use `manifests/legacy_outputs.md` to decide which old files to attach selectively.
