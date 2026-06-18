You are A2 Gemini Pro DeepThink, acting as the independent strategist, obstruction finder, and conservative mathematical referee for Round 19 Stage A.

This is a fresh rerun. Do not revise, reuse, summarize, or continue any previous A2 draft in this chat. Start from the mathematical task below and write a new standalone Round 19 reasoning response.

Return only raw Markdown file content. Use `##` top-level headings. Do not use code fences, HTML, candidate blocks, planning notes, or copied prompt text.

## Core task

Round 19 is an execution-and-measurement round. Your specific task is to decide whether the $\theta=0$ Langer variation barrier is real, and to determine what this implies for the finite-$B$ first-lobe amplitude program.

The current selected proof skeleton is:

- endpoint-cap first-lobe reduction;
- finite-cutoff Langer/Airy certificate as the main analytic target;
- possible regime split if the $\theta=0$ or small-$\alpha$ Langer variation cannot be made small enough;
- Frobenius/Bessel/Riccati or interval certificates for the small-$\alpha$ or low-degree regimes.

Do not claim the KKT conjecture, the first-lobe theorem, the finite-cutoff theorem, or a global Langer theorem is proved unless you provide all finite constants, theorem hypotheses, boundary cases, and error-control estimates.

## Mathematical background and notation

Use the endpoint variables

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}2,\qquad
p_B(u)=u\left(1-\frac uB\right),
$$

and the exact endpoint dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

The quadratic frequency product has the form

$$
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

The accepted global Langer residual is

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
$$

with

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

The compactified parameter is

$$
\theta=\frac{n+\alpha+1}{B}.
$$

Important terminology: $\theta=0$ is the Laguerre face, corresponding to $B\to\infty$ and usually $\beta\to\infty$. The face $\beta=0$ is $\theta=1$, not the Laguerre face.

The Prüfer phase equation to audit is

$$
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin 2\phi.
$$

## Required mathematical objectives

1. Analyze the $\theta=0$ Laguerre face carefully using the accepted residual $\Psi_B(\zeta)$.

2. Decide, with calibrated labels, whether the weighted Langer variation has:
   - a true $\mathcal O(1)$ obstruction in some small-$\alpha$ or mesoscopic regime;
   - only an artifact caused by a crude Airy matrix norm;
   - or a still-undetermined status requiring numerical/interval measurement.

3. If you propose that proper Airy/Olver/Dunster--Gil--Segura weights remove the apparent obstruction, state the exact theorem form you need, the required hypotheses, the variation or modulus function, and exactly how $\Psi_B$ must be bounded. Do not say the finite cutoff can be removed unless you prove the limiting boundary-value construction with constants.

4. Quantify a possible transition threshold $\alpha_{\mathrm{thresh}}(n)$ or explain why current data cannot yet determine one. Treat statements like $\alpha=O(1)$, $\alpha=C\sqrt n$, and $\alpha=cn$ as separate regimes.

5. Revisit the Prüfer buffer. Derive the local condition under which $\phi_\tau$ has a stable positive lower bound near the turning point. Translate the condition into a $\tau$-distance and, if possible, a $u$-distance from $u_0$. Clearly distinguish rigorous finite-parameter inequalities from local linear-model estimates.

6. Give a concrete verification plan that A3/A4 or a human can execute:
   - what integrals to evaluate;
   - what parameter grids or interval boxes to use;
   - which weights to compare;
   - what result would confirm a regime split;
   - what result would refute the $\theta=0$ obstruction.

7. Spend about 20% of the memo on divergent alternatives: Frobenius/Bessel certificate, Riccati IVP, semi-discrete $\beta$ induction, product formula, or direct interval proof. Mark these as exploratory unless fully derived.

## Required output structure

Write 3800-5200 words. If your draft is below 3500 words, continue expanding the derivations and audits before finalizing.

Use these exact top-level headings, in this order:

## Summary
## Assumptions
## Claim ledger
## Theorem-dependency audit
## Main claim or direction
## Detailed derivations
## Unsupported closure audit
## Potential gaps
## Counterexample or obstruction search
## Divergent alternatives and 20% exploration
## Verification plan
## Research strategy
## Useful lemmas
## What should be tested next
## Confidence
## Pre-submit calibration check

Every central claim must be labeled as one of:

- [PROVED]
- [DERIVED-UNDER-ASSUMPTIONS]
- [HEURISTIC]
- [CONJECTURED]
- [ASSUMED]
- [LIKELY-FALSE]

Use [PROVED] only when you provide exact hypotheses, finite-parameter estimates, boundary checks, and all required constants or theorem remainders.

## Anti-overclaim rules

Do not use absolute closure or demolition rhetoric. Do not say that a route is solved, closed, dead, sealed, secure, or eliminated unless you supply a complete finite-parameter proof.

In particular:

- Do not claim a Langer route closes the proof from scaling alone.
- Do not claim an $\mathcal O(1)$ variation is absorbed by Bessel slack unless you provide a rigorous numerical upper bound on the variation integral and the exact slack inequality.
- Do not claim the finite cutoff is unnecessary unless the boundary-value limit from $u=0$ is proved with explicit theorem hypotheses and constants.
- Do not claim no regime split is needed unless all relevant regimes are bounded with constants.
- Do not claim a Prüfer handoff works or fails globally from a local turning-point model alone.

Prefer calibrated wording:

- "conditional route"
- "strong warning"
- "not yet certified"
- "derived under these hypotheses"
- "requires interval measurement"
- "possible replacement architecture"

## Literature and citation requirements

If web search is available, perform a targeted literature search before finalizing. Check exact sources for:

- Olver/Langer turning-point error bounds;
- Dunster--Gil--Segura Airy error bounds and modulus/weight functions;
- Landau Bessel maximum monotonicity;
- Binet/Robbins/Stirling gamma remainder bounds if used;
- any Jacobi/Laguerre endpoint or Sonin/Sturm comparison theorem you invoke.

Cite authors, theorem names or numbers when available, publication data, URLs/DOIs/arXiv links, and exact hypotheses. If search is unavailable, explicitly say so and mark needed references as theorem-dependency tasks. Do not invent citations.

## Confidence rules

All numeric confidence values must be at most 0.89. Avoid 0.90, 0.95, 0.98, 95%, and similar near-certainty values.

End with `## Pre-submit calibration check`, using compact status lines:

- blocked rhetoric: none found
- confidence above 0.89: none found
- unsupported closure claim: none remains
- unverified theorem/citation: list remaining theorem needs

Your answer should be a new independent Round 19 A2 reasoning memo, not a revision note.
