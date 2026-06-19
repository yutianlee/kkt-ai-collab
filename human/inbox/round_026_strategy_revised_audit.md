# Round 26 Revised Strategy Audit

A new strategy memo is stored at `rounds/kkt-main/round_026/human/strategy-revised.md`. Treat it as advisory input for the judge and next-round task design, not as a proof, not as a forced pivot, and not as evidence that the endpoint-cap route has failed.

## Audit Verdict

The memo correctly identifies a real workflow risk: the current endpoint-cap program can become fragile if every regime split requires a new Volterra constant, a peak-location comparison, and a gamma-ratio envelope. The warning is useful. However, the memo overstates the conclusion that the collaboration is "trapped" in a WKB bottleneck. Round 26 has concrete exact artifacts: the `n=1` endpoint theorem is close to lemma-bank status, the `n=2` compactification is now a finite certificate task, and the rational-Bessel route has produced checkable inequalities even where some constants remain unproved.

The judge should preserve the execution plan while assigning at most one structural alternative as a bounded exploratory task.

## Strategy 1: Ermakov-Pinney Supersolutions

The Ermakov-Pinney amplitude idea is interesting but not immediately theorem-level. A non-oscillatory amplitude can avoid zero denominators, but a comparison argument still requires:

- exact Liouville normalization matching the KKT-weighted Jacobi function;
- a proposed positive envelope `A_test`;
- correct boundary or initial comparison at the endpoint;
- a rigorously oriented differential inequality;
- proof that the resulting envelope implies the exact KKT constant rather than a looser bound.

Recommendation: keep as a secondary exploratory test. It should not displace the `n=2` certificate unless it supplies a concrete envelope inequality on at least the `n=1` and `n=2` caps.

## Strategy 2: Krasikov/SOS Envelope

This is the strongest alternative in the memo. A generalized quadratic envelope

$$
V=A(u)H^2+B(u)H'^2+C(u)HH'
$$

could remove the classical Sonin pole at the turning point. The memo is right that this can be turned into polynomial positivity and derivative-sign checks after denominators are cleared.

Downgrade claims that an SOS solver would deterministically produce a complete proof. To promote this route, require:

- explicit degree bounds for `A,B,C`;
- positivity of the quadratic form on all parameter faces;
- sign of `V'` on the full cap;
- endpoint normalization proving the KKT target;
- exact rational or interval certificates, not floating SDP output;
- low-degree tests for `n=1`, `n=2`, and sampled arbitrary-degree boxes.

Recommendation: assign A3 or A2 a bounded ansatz-search task only after the `n=2` interval certificate is not delayed.

## Strategy 3: Discrete Lyapunov / Induction In Degree

This is a plausible diagnostic direction, especially because Round 26 has strengthened the `n=1` base. But the memo overstates the claim that the three-term recurrence has no analogue of turning behavior. Orthogonal-polynomial recurrences have their own oscillatory and spectral regimes, and an `L^\infty` bound for the weighted Jacobi function is not automatically propagated by a recurrence.

To become useful, this route must provide:

- the exact recurrence in the KKT normalization;
- a candidate discrete energy involving `P_n`, `P_{n-1}`, and possibly weights;
- a sign-definite forward difference;
- preservation of the exact target constant under the induction step;
- boundary checks in `x`, `alpha`, and `beta`.

Recommendation: good candidate for a 20% exploratory allocation. Do not replace the endpoint-cap execution track with it yet.

## Strategy 4: Whittaker / Confluent Hypergeometric Core

A single reference model combining regular-singular and turning-point geometry is conceptually attractive. However, the memo's claim that the phase mismatch would "practically vanish" is heuristic. A Whittaker comparison still requires a residual calculation, normalization, endpoint matching, and finite constants. It may simply move the Volterra problem into a more complicated reference family.

Recommendation: literature-scout only unless an explicit transformed equation and residual bound are produced.

## Strategy 5: Fractional Integral Transplantation

The fractional-integral idea is worth a citation search, but positivity and sharpness are the whole problem. A positive kernel from one Jacobi parameter range to another would help only if:

- it applies to the exact real-parameter KKT normalization;
- the kernel is nonnegative on the full domain;
- the `L^1` mass is at most the KKT target factor;
- the endpoint/bulk weight factors are preserved exactly.

Recommendation: assign to A1/A2 as a literature-check task if time permits. Do not assume the KKT constant is the kernel mass without calculation.

## Recommended Round 26/27 Treatment

The current Round 26 judge should treat this memo as a structural warning and idea bank. The next decisive tasks remain:

1. verify and archive the `n=1` rational arithmetic appendix;
2. execute the corrected `n=2` interval/root-value certificate;
3. repair or downgrade A2's rational-Bessel phase-shift and zero-safety claims;
4. decide whether the small-alpha route can be certified with explicit gamma and Volterra constants;
5. assign one structural exploratory task, preferably Krasikov/SOS or discrete Lyapunov, with falsifiable low-degree checks.

## Bottom Line

The memo is useful because it pushes against endless local-patching work. Its best alternatives are Krasikov/SOS envelopes and discrete Lyapunov induction. Its weaker claims are the immediate Ermakov-Pinney comparison principle, Whittaker residual collapse, and fractional-integral sharpness. Keep the main proof plan execution-focused until one alternative supplies an explicit finite certificate.
