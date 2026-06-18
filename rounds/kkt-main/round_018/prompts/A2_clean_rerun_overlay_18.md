A2 clean rerun overlay for Round 18 reasoning
============================================

Your last Round 18 response is rejected because it was not a clean final answer: it included unrelated documents, private drafting notes, candidate markers, forbidden-word lists, and an incomplete/contaminated final block.

Rerun the original Round 18 A2 reasoning prompt, but obey these output hygiene rules strictly:

1. Output only the final research memorandum. Do not include planning notes, "I will..." notes, candidate blocks, scratchpad, prompt fragments, forbidden-word lists, replacement tables, or unrelated copied text.
2. The answer must begin with `Summary:` and end with `Pre-submit calibration check:` content. Do not add anything before `Summary:` or after the final calibration checklist.
3. Use raw Markdown and LaTeX source. Do not wrap the final answer in extra candidate tags or include nested code fences.
4. Do not quote the blocked phrases. In the calibration section, write only: "Blocked rhetoric scan completed; no blocked closure phrases are present."
5. Use ASCII spellings for potentially fragile words: `Pruefer`, `Olver's`, `Dunster-Gil-Segura`.
6. Target 6500-9000 words. More length is acceptable only if every paragraph is mathematical content; no padding, repeated adjectives, or duplicated phrases.
7. Calibrate all claims:
   - [PROVED] only for derivations actually shown in the response.
   - [DERIVED-UNDER-ASSUMPTIONS] for scaling or theorem-dependent consequences.
   - [HEURISTIC] or [TO VERIFY] for numerical cartography or unexecuted interval computations.
8. Do not claim KKT closure. Do not say the Langer route "solves", "closes", "proves", or "guarantees" the conjecture. The correct status is: promising route with finite-constant, gamma-normalization, and interval-certificate gaps still open.

Required sections, in this exact order:

Summary:
Assumptions:
Claim ledger:
Theorem-dependency audit:
Main claim or direction:
Detailed derivations:
Unsupported closure audit:
Potential gaps:
Counterexample or obstruction search:
Divergent alternatives and 20% exploration:
Verification plan:
Research strategy:
Useful lemmas:
What should be tested next:
Confidence:
Pre-submit calibration check:
