# A2 Round 24 Reasoning Revision Prompt

Your previous Round 24 reasoning response is not accepted. Return a **full replacement answer**, not an addendum.

The previous answer was too short and missed required sections. It also ended with confidence `0.95`, which violates the fixed A2 cap.

## Required Corrections

1. Write a full raw Markdown research memo of **at least 3500 words**.
2. Use at least **14 section headings** with `##` headings.
3. Keep all confidence values **at or below 0.89**.
4. Include every required section:
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
5. Use the certification labels `[PROVED]`, `[DERIVED-UNDER-ASSUMPTIONS]`, `[HEURISTIC]`, `[CONJECTURED]`, `[ASSUMED]`, and `[LIKELY-FALSE]` for central claims.
6. Do not claim that the rational-Bessel route, the Langer route, the $n=2$ certificate, or KKT is closed. Treat all missing constants and external theorem hypotheses as open until explicitly proved.
7. Do not use forbidden rhetoric or absolute closure language. Do not quote banned phrases in the self-check.

## Mathematical Focus

Round 24 has three deliverables:

1. Final lemma-bank text after Round 23.
2. A corrected $n=2$ certificate.
3. One theorem-level constant inequality: either rational-Bessel Volterra with explicit constants, or Langer/Airy with explicit finite-parameter error control.

Your A2 role is the second/third item: repair the rational-coordinate Volterra track by giving explicit constants or a bounded failure.

Preserve any useful content from your previous response, especially:

- the exact rational-coordinate residual

  $$
  \Delta Q(z)
  =
  -\frac{\Lambda_B}{B+z}
  -
  \frac{\Delta_BB^2}{(B+z)^2};
  $$

- the distinction between pointwise residual size and Volterra-weighted smallness;
- the need for exact Bessel/Airy transition bounds;
- the threshold audit for $\alpha\le C\sqrt n$ versus $\alpha\le Cn^{2/3}$.

But expand it into a rigorous referee-style memo. Every threshold must come from a displayed finite-parameter inequality. If a constant cannot be proved, say exactly which theorem, bound, or computation is missing.

## Pre-submit Check Requirement

End with:

```markdown
## Pre-submit calibration check

- blocked rhetoric: none found
- confidence above 0.89: none found
- unsupported closure claim: none found
- invented or unchecked citation: none found / listed as theorem need
```

Do not include code fences in the actual answer; the block above only shows the required wording.
