# A2 Round 23 Reasoning Revision Prompt

Your previous Round 23 reasoning response is much more detailed and now meets the length/structure target, but it still fails the fixed A2 quality gate.

Return a **full replacement answer**, not an addendum.

Keep the useful mathematics from your previous response, but revise it under the following constraints.

## Required Fixes

1. Remove all forbidden rhetoric and do not quote forbidden phrases even in your self-check.

   In particular, your previous answer failed because it used or quoted several banned absolute-closure phrases and one polished-but-overconfident transition phrase. Do not reproduce those phrases in the replacement answer.

2. Recalibrate the rational-Bessel claim.

   Your previous "Main claim or direction" made the rational-coordinate Bessel track sound like it already bridges the proof to a concrete threshold such as

   $$
   \alpha \le 1.04 n^{2/3}.
   $$

   Replace this with a calibrated statement:

   - the rational-coordinate normal form is useful;
   - the residual formula is algebraically checkable;
   - any Volterra estimate remains theorem-level only after explicit kernel bounds, Bessel/Airy transition constants, endpoint treatment, and slack comparison are fully stated;
   - the threshold is provisional unless derived from displayed finite-parameter inequalities.

3. Keep the output as raw Markdown.

   Use `##` headings, raw `$...$` and `$$...$$` math, no code fences, no HTML, and no copied prompt text.

4. Preserve the A2 calibration rules.

   - At least 3500 words.
   - At least 14 top-level/section headings.
   - Confidence values must be at most 0.89.
   - Every important claim must be labeled `[PROVED]`, `[DERIVED-UNDER-ASSUMPTIONS]`, `[HEURISTIC]`, `[CONJECTURED]`, `[ASSUMED]`, or `[LIKELY-FALSE]`.
   - Do not claim proof closure of KKT, the finite-$B$ first-lobe theorem, the rational-Bessel threshold, or the Langer handoff.

5. End with `## Pre-submit calibration check`.

   In that section, do not list or quote banned phrases. Use compact status lines:

   - blocked rhetoric: none found
   - confidence above 0.89: none found
   - unsupported closure claim: none found
   - invented or unchecked citation: none found / listed as theorem need

## Mathematical Content To Preserve

Preserve and sharpen the useful parts of the previous answer:

- the exact rational-coordinate normal form;
- the residual

  $$
  \Delta Q(z)
  =
  -\frac{\Lambda_B}{B+z}
  -
  \frac{\Delta_BB^2}{(B+z)^2};
  $$

- the need to distinguish pointwise residual size from Volterra-weighted smallness;
- the kernel sign audit;
- the threshold audit for $\alpha\le C\sqrt n$ or $\alpha\le Cn^{2/3}$;
- the explicit statement of what constants and theorem hypotheses remain missing.

The replacement answer should read like a conservative mathematical referee memo, not a closure claim.
