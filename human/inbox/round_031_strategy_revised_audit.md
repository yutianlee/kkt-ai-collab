# Round 31 Strategy-Revised Audit

The incoming strategy proposes an adaptive lower-frequency Bessel quotient and a Riccati super-solution for low-degree boxes. Treat both as bounded pilots, not as a pivot.

Adaptive Bessel quotient: useful idea for avoiding a reference zero, but it needs exact potential ordering, peak/zero ordering, quotient sign, Frobenius normalization, frequency penalty, and gamma-margin checks before it becomes a proof module.

Riccati super-solution: promising for \(n=2\) value envelopes because it may preserve cancellations lost by factorwise bounds. It must be tested on one box, preferably \(Q_C\) or \(Q_E\), with exact defect signs and a full-ratio comparison.

Judge recommendation: keep the endpoint-cap low-degree route as main. Allocate at most 10--15% of Round 32 to these pilots. Main tasks remain \(n=1\) gamma appendix, \(n=2\) box replay, boundary-face value tables, \(M_Q<2\) replay, and Langer transcript.
