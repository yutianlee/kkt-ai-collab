Additional A2 revision instruction for Round 18 reasoning
========================================================

Your previous Round 18 answer is rejected as insufficient for this workflow. Rewrite the Round 18 reasoning response from scratch, using the original Round 18 A2 prompt as binding.

Failure reasons to correct:

- The answer was too short for A2's fixed research standard. Target at least 6500 words, with enough mathematical detail that each major claim can be reviewed independently.
- It used overconfident closure language such as "decisively verifies", "proving no hidden obstructions", "unconditionally", and similar wording. Replace such claims with calibrated statements unless a complete finite-constant proof or reproducible computation is actually supplied.
- It asserted numerical cartography and scaling evidence without a reproducible computation log. Either provide explicit, checkable formulas and computation details, or mark the claim as [HEURISTIC] / [TO VERIFY].
- It treated convergence/scaling arguments as if they closed the KKT amplitude theorem. Do not claim closure. Distinguish finite-constant certified bounds from asymptotic plausibility.
- Avoid mojibake or encoding-corrupted text. Use ASCII spellings such as "Pruefer" if needed.

Required response style:

- Raw markdown only.
- Include the required sections: Summary, Assumptions, Claim ledger, Theorem-dependency audit, Main claim or direction, Detailed derivations, Unsupported closure audit, Potential gaps, Counterexample or obstruction search, Divergent alternatives, Verification plan, Research strategy, Useful lemmas, What should be tested next, Confidence, Pre-submit calibration check.
- For every major lemma or estimate, mark it as [PROVED], [DERIVED-UNDER-ASSUMPTIONS], [HEURISTIC], [CONJECTURED], or [TO VERIFY].
- Spend roughly 80% on the judge-mandated finite-cutoff / global Langer / gamma-normalization / interval-certificate program, and roughly 20% on divergent alternatives.
- The confidence score must remain calibrated and below 0.89.
- The final answer must not contain the phrases "100% complete", "mathematically unassailable", "decisively proving", "completely solved", or "seamlessly".
