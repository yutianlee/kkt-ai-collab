Please discard the previous Round 22 answer completely and write a full replacement reasoning response.

Do not revise paragraph by paragraph. Start from the Round 22 prompt/context already provided in this Gemini conversation and produce a new raw Markdown research memo.

The previous answer is not accepted for these reasons:

- It was too short for the current A2 quality gate: about 2942 words, below the required 3500 words.
- It used closure language for claims that were only asymptotic or conditional.
- It treated the rational-Bessel route as resolving or closing a regime before giving explicit constants, finite-parameter inequalities, theorem hypotheses, and error-control bounds.
- It used forbidden rhetoric in the visible self-check by quoting blocked phrases.
- It contained malformed LaTeX copied as `\mathcal{V}*{\mathrm{Bess}}`, `\Delta*{\max}`, and `J*\alpha`; all formulas must be valid raw Markdown LaTeX.

Write a completely new response with these requirements:

1. Output only raw Markdown file content.
2. Use `##` top-level section headings.
3. Use raw `$...$` and `$$...$$` math only.
4. Do not use code fences, HTML, planning notes, or copied prompt text.
5. Target about 3800-5200 words. Do not pad with generic prose; expand by giving derivations, hypotheses, constants needed, failure modes, and verification plans.
6. Include every required section in this order:
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

Mathematical calibration:

- Treat the rational-Bessel coordinate route as a serious candidate route, not a proved closure.
- A statement such as $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ is not enough to prove a finite KKT regime. To promote it, you must state the exact integral, the theorem controlling the kernel, the parameter range, the explicit constants needed, and the boundary conditions.
- Mark the rational-Bessel variation estimate as `[DERIVED-UNDER-ASSUMPTIONS]` or `[HEURISTIC]` unless all constants and finite error terms are supplied.
- Do not claim that an overlap with Langer/Airy is guaranteed unless you give the explicit overlap inequalities and theorem hypotheses.
- Do not claim the Langer obstruction is harmless unless you bound the relevant error functional with constants on the actual parameter range.
- Do not cite Watson, Olver, DLMF, Landau, Nicholson, Wendel, or any paper as supporting a step unless you state exactly what theorem or formula is needed and what hypotheses must be checked. If you used web search, give precise source information. If not, mark it as a theorem need.
- Correctly distinguish `[PROVED]`, `[DERIVED-UNDER-ASSUMPTIONS]`, `[HEURISTIC]`, `[CONJECTURED]`, `[ASSUMED]`, and `[LIKELY-FALSE]`.
- Use `[PROVED]` only for statements derived in the answer or supported by a named theorem with hypotheses.

Forbidden language rule:

- Do not use any blocked overclaim phrase, even while saying that it is absent.
- In the final pre-submit check, do not quote blocked phrases. Use compact status lines such as:
  - `blocked rhetoric: none found`
  - `confidence above cap: none found`
  - `unsupported closure claim: none intentionally asserted`
  - `unchecked citations: listed as theorem needs`

Confidence rule:

- Every numeric confidence value must be at most 0.89.
- Avoid 0.90, 0.95, 0.98, 95%, and similar near-certainty values.

Formula hygiene:

- Before finalizing, scan for malformed LaTeX copied from Markdown emphasis. In particular, make sure all formulas use `\mathcal{V}_{\mathrm{Bess}}`, `\Delta_{\max}`, and `J_\alpha`, not star-subscript artifacts.

Your replacement answer should be useful to the other agents as a conservative referee memo: identify the strongest possible rational-Bessel theorem, the exact constants still missing, what would falsify the route, and how the next review stage should allocate verification tasks.
