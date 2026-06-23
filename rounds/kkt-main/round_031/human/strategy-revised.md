# Round 31 Strategy-Revised Audit

Source: `handoff/kkt-main/round_031/human/strategy-revised.md`.

Status: bounded exploratory proposal, not a strategic pivot.

The human strategy memo proposes two alternatives to the current bottlenecks:

1. an adaptive lower-frequency Bessel quotient intended to avoid division by a reference zero;
2. a Riccati super-solution intended to replace lossy factorwise envelopes in the low-degree \(n=2\) boxes.

Both ideas are worth recording, but neither should be promoted above the endpoint-cap, low-degree certificate route until it survives a small exact test. The judge should read the memo as a pressure test against the rational-Bessel quotient and the current \(n=2\) value-bounding method.

## Adaptive Bessel Quotient

The useful observation is that the original quotient \(h=Y/W_1\) is exposed to the first zero of the Bessel reference. If the exact solution oscillates more slowly than \(W_1\), then the denominator can vanish before the true first critical point is controlled. A lower-frequency reference \(\widetilde W=\sqrt z\,J_\alpha(k\sqrt z)\), with \(k<2\sqrt{\Lambda_B}\), is a plausible way to move the reference zero and peak.

This is only a candidate. To become a proof module, the proposal must establish all of the following with exact constants:

- a pointwise ordering \(\widetilde P_0(z)\le P(z)\) on the whole interval actually used, not only at a guessed peak location;
- a proof that the true first critical point lies before the relevant reference zero or peak under that ordering;
- a correct quotient identity with sign conventions checked against the exact normal form;
- the Frobenius normalization of \(Y/\widetilde W\) at the origin;
- the frequency penalty \((2\sqrt{\Lambda_B}/k)^\alpha\) bounded inside the remaining KKT margin;
- compatibility with the gamma-normalization envelope \(M_{n,\alpha,B}\).

The formula for \(k^2\) in the source memo is a useful diagnostic, but it is not yet a certificate. It depends on a peak-location substitution and on the size of \(M_Q(j'_{\alpha,1})^2/\Lambda_B^2\). A2 or A3 should first test it in one finite regime, for example \(\alpha\le C\sqrt n\), and report whether the frequency penalty leaves enough margin after the Landau/Bessel maximum and gamma factors are included.

## Riccati Super-Solution

The Riccati idea is better aligned with the low-degree \(n=2\) certificate program. Instead of bounding polynomial factors separately, it tries to control the logarithmic derivative and integrate a single envelope. This could address the observed failure mode where factorwise bounds exceed 1 while sampled true ratios are around 0.12--0.14.

However, the proposed quadratic super-solution is not yet established. The sign of the Riccati defect, the comparison direction, the behavior near \(u=0\), and the translation from a logarithmic-derivative bound to the normalized KKT ratio all need exact verification. The claim that the defect is positive from \(c_1<0\) and \(c_2<0\) must be checked symbolically on an actual box; it should not be accepted by sign narrative alone.

The correct next test is narrow:

- choose one already isolated box, preferably \(Q_C\) or \(Q_E\);
- derive \(R=-p_BH'/H\) and the proposed \(\overline R\) in exact rational arithmetic;
- clear denominators in the defect \(p_B\overline R'+\overline R^2+K_B\);
- compute Bernstein coefficients on the selected box and bracket;
- integrate the resulting envelope and compare the full KKT ratio, not separate factors;
- record whether the method beats the failed factorwise envelope.

If this test passes, the Riccati method can become a secondary \(n=2\) certificate tool. If it fails, the project should return to direct ratio Bernstein bounds and sharper gamma estimates.

## Recommended Judge Treatment

Do not pivot the main strategy. Round 32 should still prioritize:

1. closing the residual \(n=1\) gamma appendix;
2. replaying \(Q_{27},Q_{29},Q_A,Q_B,Q_C,Q_E\);
3. certifying the \(\theta=0\) and \(\theta=1\) boundary value tables;
4. auditing A2's \(M_Q<2\) derivation;
5. archiving the Langer Laurent transcript in the dynamic variable \(\tau\).

Allocate at most 10--15% of the next round to the revised strategy:

- A2: test the adaptive Bessel quotient in one named asymptotic regime and report the frequency penalty with constants.
- A3: test the Riccati super-solution on one certified or near-certified \(n=2\) box.

The strategy memo is valuable because it identifies two possible escape routes from known losses. It does not yet remove the zero-safety, gamma-envelope, value-certificate, or Langer-instantiation gaps.
