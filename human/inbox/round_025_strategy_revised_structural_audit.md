# Round 25 Structural Strategy Audit

A new round-local strategy memo is stored at `rounds/kkt-main/round_025/human/strategy-revised-25.md`. Treat it as an exploratory idea source, not as a proof, a pivot directive, or a replacement for the Round 25 judge route.

## Audit Verdict

The memo is useful because it names a real risk in the current program: local ODE perturbation methods can create many finite-constant obligations, especially at turning points and across regime boundaries. However, its central diagnosis is overstated. The current endpoint-cap program is not merely an asymptotic trap; it has already produced exact low-degree algebra, Sonin localization, and concrete finite-certificate tasks. The right response is not to abandon the program, but to keep the execution track while assigning one bounded structural alternative.

The near-term priorities should remain:

1. close the `n=1` residual endpoint theorem with a rational Binet-Stirling or interval-log certificate;
2. execute the corrected `n=2` interval root/value certificate;
3. keep the rational-Bessel small-alpha constants and the Langer/Airy bulk constants as separate finite-parameter tasks;
4. treat structural alternatives as falsifiable side tests with explicit candidate functionals, kernels, or operator norms.

## Strategy 1: Krasikov-Style SOS Envelope

This is the strongest alternative in the memo. A higher-order quadratic envelope

$$
V(u)=A(u)H(u)^2+B(u)H'(u)^2+C(u)H(u)H'(u)
$$

could, in principle, avoid the pole in the classical Sonin functional at the turning point. The idea is worth testing, especially because all coefficients in the endpoint-cap ODE are algebraic after normalization.

Downgrade the memo's claim that this would prove KKT "in five lines." To become theorem-level, the route needs:

- explicit candidate polynomials or rational functions `A,B,C`;
- positivity of the quadratic form in `(H,H')` on the full parameter domain;
- verified sign of `V'(u)` on the cap;
- endpoint normalization showing that `V(0)` or `V(u_sigma)` implies the exact KKT target;
- boundary-face checks at `alpha=1/2`, `beta=0`, `theta=0`, `alpha=alpha_E(n)`, `n=1`, `n=2`, and `n=3`;
- a certificate method for arbitrary `n`, not only sampled boxes.

Recommendation: keep as the primary exploratory alternative. Ask A3 to derive a minimal ansatz and A4 to test low-degree and sampled arbitrary-degree boxes only after the `n=2` certificate is not being delayed.

## Strategy 2: Fractional Transmutation Integrals

The Bateman/Koornwinder-style integral idea is a literature-search task, not a proof strategy yet. It requires exact hypotheses for parameter ranges and kernel positivity. A formula of the form

$$
g_n^{(\alpha,\beta)}(x)=\int K(x,y,\alpha,\beta)g_n^{(-1/2,-1/2)}(y)\,dy
$$

would only help if the kernel is nonnegative in the exact KKT normalization and if its `L^1` mass matches or beats the KKT constant. The triangle inequality may lose the sharp target, and not every transmutation formula preserves the weighted normalized quantity used by KKT.

Recommendation: assign to A1/A2 only as a literature scout. Required output is a cited theorem with exact parameter hypotheses, kernel sign, normalization constants, and the resulting mass calculation. Without that, do not promote this route.

## Strategy 3: Ermakov-Pinney Amplitude Equation

The non-oscillatory amplitude viewpoint is interesting, but the memo overstates the comparison principle. For a Liouville equation

$$
Y''+P(z)Y=0,
$$

an amplitude satisfying an Ermakov-Pinney equation can envelope a chosen fundamental pair, but it does not automatically give the sharp Jacobi amplitude with the correct Frobenius normalization. A proposed test envelope must have the correct initial data or a rigorous comparison inequality, and the sign direction in

$$
A''+P(z)A \le A^{-3}
$$

must be justified carefully. Boundary data matter as much as the differential inequality.

Recommendation: keep as a secondary exploratory test. It is potentially useful for replacing phase tracking by an envelope inequality, but it must produce a concrete `A_test`, boundary comparison, and finite-parameter error bound before it can influence the main proof plan.

## Strategy 4: Darboux Or Shape-Invariance Induction

The telescoping structure of the KKT constant is a real clue, and Jacobi operators do have raising/lowering and shape-invariance relations. The proof gap is the `L^\infty -> L^\infty` norm. A Darboux or contiguous relation can shift `(n,alpha,beta)`, but the normalized maximum location changes, the weight changes, and sharp operator norms are rarely obtained for free.

The displayed formula in the memo also has formatting corruption: it should refer to an `L^\infty` norm, not `|g_n|*infty`.

Recommendation: use this as a diagnostic for special semi-discrete cases. It should not replace endpoint-cap execution unless an exact contraction inequality is derived with the KKT normalization included.

## Strategy 5: Wigner d-Matrix Lift

The representation-theoretic connection is useful for special discrete or half-integer parameter grids, but it does not immediately prove the real-parameter KKT conjecture. Unitarity controls sums of squared matrix elements, not necessarily the sharp weighted Jacobi pointwise constant. The proposed Carlson-theorem continuation is especially risky: two-parameter analytic continuation of strict inequalities requires exact growth hypotheses, a holomorphic formulation, and boundary control. None of these are supplied.

Recommendation: literature-scout only. This route may reveal structural identities or test cases, but it is not a near-term proof path.

## Recommended Judge Treatment

The judge should mention this strategy memo as advisory input and preserve the execution-focused Round 25 plan:

- A1: judge synthesis should keep the endpoint-cap route as main and include only one structural exploratory allocation.
- A2: continue rational-Bessel small-alpha constants or perform a bounded SOS/Ermakov falsification test with explicit failure criteria.
- A3: prioritize the CAS Laurent cancellation log and the `n=2` algebra/interval inputs.
- A4: prioritize the `n=2` interval root isolation and value certificate.

Do not pivot the whole collaboration to SOS, transmutation integrals, Ermakov-Pinney, Darboux induction, or Wigner matrices until one of them supplies a concrete finite certificate that beats the current low-degree execution track.

## Bottom Line

The memo is valuable as a structural idea bank. Its best candidate is the Krasikov-style algebraic envelope; its highest-risk claims are fractional-kernel sharpness, Darboux `L^\infty` contraction, and Carlson continuation from Wigner matrix elements. The next decisive deliverables remain the `n=1` arithmetic closure and the corrected `n=2` interval certificate.
