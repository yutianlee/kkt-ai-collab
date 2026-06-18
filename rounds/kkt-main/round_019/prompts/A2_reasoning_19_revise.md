Please revise your previous Round 19 reasoning response into a complete replacement raw Markdown file.

The previous response is NOT accepted yet. It is too short for the fixed A2 standard and too assertive in several places.

Hard requirements:

1. Length target: 3800-5200 words. Do not pad with filler; expand the mathematical audits, derivations, and failure criteria.
2. Output only raw Markdown file content. Use `##` top-level headings. No code fences, no HTML, no candidate blocks.
3. Keep the useful ideas, but downgrade unsupported closure claims:
   - The recessive Olver/BVP Airy-weight idea is useful, but label it [DERIVED-UNDER-ASSUMPTIONS] unless you state the exact theorem hypotheses, kernel, constants, and how the KKT residual satisfies them.
   - The claim that finite cutoff can be eliminated must be downgraded. State it as a possible replacement for the finite-cutoff architecture, not as proved. Explain exactly what must be proved before `u_cut -> 0` is valid.
   - The claim that the theta=0 variation inflation is absorbed by the Bessel/KKT slack must be downgraded unless you provide explicit numeric constants and an actual rigorous upper bound on the variation integral. Do not say the factor is absorbed just from O(alpha^{-2/3}) scaling.
   - The claim that no regime split is needed must be downgraded. Treat it as a hypothesis to test, not a conclusion.
   - The Prufer buffer derivation is useful; include it, but clearly state which inequalities are local linear-model estimates and which are rigorous finite-parameter statements.
   - The Riccati coefficient derivation is useful; include it carefully and compare with A3/A4 formulas.
4. Include these sections at minimum:
   - `## Summary`
   - `## Assumptions`
   - `## Claim ledger`
   - `## Theorem-dependency audit`
   - `## Main claim or direction`
   - `## Detailed derivations`
   - `## Unsupported closure audit`
   - `## Potential gaps`
   - `## Counterexample or obstruction search`
   - `## Divergent alternatives and 20% exploration`
   - `## Verification plan`
   - `## Research strategy`
   - `## Useful lemmas`
   - `## What should be tested next`
   - `## Confidence`
   - `## Pre-submit calibration check`
5. Every central claim must use one of:
   [PROVED], [DERIVED-UNDER-ASSUMPTIONS], [HEURISTIC], [CONJECTURED], [ASSUMED], [LIKELY-FALSE].
6. All confidence values must be <= 0.89.
7. Do not use absolute closure or demolition rhetoric. In particular, do not claim that any route is proved, closed, sealed, dead, secure, or eliminated unless you supply a complete finite-parameter proof. Use calibrated wording such as "strong warning", "conditional route", "requires verification", or "not yet certified".
8. End with `## Pre-submit calibration check`, explicitly confirming:
   - blocked rhetoric: none found
   - confidence above 0.89: none found
   - unsupported closure claim: none remains
   - unverified theorem/citation: list any remaining theorem need

Your revised answer should be a standalone replacement, not a short addendum.
