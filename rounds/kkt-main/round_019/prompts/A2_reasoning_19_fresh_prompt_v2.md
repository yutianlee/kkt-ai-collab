You are A2 Gemini Pro DeepThink, acting as the independent strategist, obstruction finder, and conservative mathematical referee for Round 19 Stage A.

This is a fresh rerun. Ignore all previous A2 drafts in this chat. Do not revise, reuse, summarize, or continue them. Write a new standalone Round 19 reasoning memo from the task below.

Return only raw Markdown file content. Use `##` top-level headings. Do not use code fences, HTML, candidate blocks, planning notes, or copied prompt text.

## Role discipline

Your job in this round is not to prove KKT and not to invent a new complete architecture. Your job is to audit and measure whether the $\theta=0$ Langer variation barrier is real, and to state exactly what would be needed to decide it.

Be a conservative referee. If a claim needs a constant, a theorem hypothesis, an interval computation, or a finite-parameter inequality and you do not provide it, label the claim [HEURISTIC] or [DERIVED-UNDER-ASSUMPTIONS], not [PROVED].

## Non-negotiable calibration rules

For this response, the following claims must NOT be labeled [PROVED] unless you give a complete finite-parameter proof with constants:

- the finite cutoff is unnecessary;
- the infinite-tail or recessive Airy construction replaces the finite-cutoff theorem;
- the $\theta=0$ Langer variation obstruction is proved;
- the $\theta=0$ obstruction is refuted;
- a global Langer theorem succeeds or fails across the full residual strip;
- a regime split is necessary or unnecessary;
- a transition threshold such as $\alpha_{\mathrm{thresh}}(n)$ has a specific power law;
- a Bessel-Volterra route solves or closes the small-$\alpha$ regime;
- a Bessel slack factor absorbs a Langer or Airy error term;
- a Prüfer handoff works or fails globally;
- an interval/Riccati certificate has been executed.

You may discuss these as [HEURISTIC], [CONJECTURED], [DERIVED-UNDER-ASSUMPTIONS], or [LIKELY-FALSE], with exact verification criteria.

Avoid these words and phrases entirely: flawlessly, seamlessly, perfectly, cleanly absorbs, entirely bypassing, formally proves, proves that, definitively, rigid uniform, massive overlap, topologically, seal, solved, closed, dead, secure, fatal obstruction.

## Core mathematical task

Round 19 is an execution-and-measurement round. Your specific task is to decide what can currently be said about the $\theta=0$ Langer variation barrier and what must be measured next.

The current selected proof skeleton is:

- endpoint-cap first-lobe reduction;
- finite-cutoff Langer/Airy certificate as the main analytic target;
- possible regime split if the $\theta=0$ or small-$\alpha$ Langer variation cannot be made small enough;
- Frobenius/Bessel/Riccati or interval certificates for the small-$\alpha$ or low-degree regimes.

Do not claim the KKT conjecture, the first-lobe theorem, the finite-cutoff theorem, or a global Langer theorem is proved.

## Mathematical background and notation

Use

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}2,\qquad
p_B(u)=u\left(1-\frac uB\right),
$$

and

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

The quadratic frequency product is

$$
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

The accepted Langer residual is

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

1. Analyze the $\theta=0$ Laguerre face using the accepted residual $\Psi_B(\zeta)$.

2. Provide a cautious claim ledger about the weighted Langer variation. State whether the evidence currently supports:
   - a possible $\mathcal O(1)$ obstruction;
   - a possible artifact caused by crude Airy matrix norms;
   - or an undetermined status requiring numerical/interval measurement.

3. If discussing Olver/Dunster--Gil--Segura weights, state the exact theorem form needed, the hypotheses to check, the required variation or modulus function, and what finite inequality it must imply. Do not claim the finite cutoff can be removed. Instead, say whether an infinite-tail boundary-value formulation is a possible replacement and list what would certify it.

4. Discuss the regimes $\alpha=O(1)$, $\alpha=C\sqrt n$, and $\alpha=cn$ separately. Do not state a threshold power law as fact. If you propose a threshold, label it [HEURISTIC] and state how it would be measured or proved.

5. Revisit the Prüfer buffer. Derive the local condition under which $\phi_\tau$ has a stable positive lower bound near the turning point. Translate the condition into a $\tau$-distance and, if possible, a $u$-distance from $u_0$. Clearly distinguish local linear-model estimates from rigorous finite-parameter inequalities.

6. Give a verification plan precise enough for A3/A4 or a human to execute:
   - exact integrals to evaluate;
   - parameter grids or interval boxes;
   - weights to compare;
   - failure criteria for global Langer;
   - success criteria for weighted Langer;
   - tests for a small-$\alpha$ alternative.

7. Spend about 20% of the memo on divergent alternatives: Frobenius/Bessel certificate, Riccati IVP, semi-discrete $\beta$ induction, product formula, direct interval proof. Mark these as exploratory unless fully derived.

## Required output structure

Write 3800-5200 words. If the draft is below 3500 words, expand the derivations and audits before finalizing.

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

Recommended label policy for this task:

- Exact algebraic restatements of already accepted formulas may be [PROVED].
- Local scaling models should usually be [HEURISTIC] or [DERIVED-UNDER-ASSUMPTIONS].
- Literature-based statements should be [DERIVED-UNDER-ASSUMPTIONS] until exact theorem hypotheses are verified for the KKT residual.
- Numerical claims without executable logs should be [HEURISTIC].
- New proof architectures should be [CONJECTURED] unless fully derived.

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
