# Revised Strategy Memo, Polished And Audited

## Audit Verdict

This memo is useful as an exploratory strategy note, but it should not replace the current Round 24 judge route. Its strongest value is that it names real risks in the present proof program and proposes two potentially useful alternative tests. Its original form overclaimed several points, especially the rational-Bessel Volterra closure, the status of the $n=2$ certificate, and the promise of global structural pivots.

Use this memo as advisory input for the judge synthesis and for Round 25 exploratory allocations. Do not treat it as a proof, a pivot directive, or evidence that the full KKT conjecture is closed.

## Current Strategy, Calibrated

The accepted Round 24 state is narrower than the original note suggested:

- The endpoint-cap algebra and Sonin localization are reliable working modules, but the arbitrary-degree first-lobe amplitude theorem remains open.
- The $n=1$ residual endpoint theorem is strongly supported after the Round 24 normalization and gamma-bound repairs.
- The $n=2$ program has a corrected polynomial setup and a clear interval-verification target, but the $n=2$ certificate has not yet been completed.
- The rational-Bessel route has useful exact residual algebra, but still lacks theorem-level kernel signs, absolute Volterra bounds, transition-tail constants, and gamma-ratio control.
- The Langer/Airy route has a real Frobenius-to-Airy connection problem and must be instantiated with explicit weights and constants before it can be used.

The main program should therefore remain:

1. finish the Round 24 judge synthesis;
2. commit the $n=1$ theorem to the lemma bank after final copyedit;
3. execute the corrected $n=2$ interval certificate;
4. keep one arbitrary-degree constants track alive, either rational-Bessel or Langer/Airy;
5. assign alternative structural methods only as bounded exploratory work.

## Claim Audit

### Rational-Bessel Relative-Amplitude Claim

Original claim: A2's relative-amplitude equation was presented as bypassing the irregular Bessel solution, giving sign-definite Volterra control, and resolving the Laguerre-face obstruction.

Audit: overclaimed. A relative-amplitude formulation may be useful, but the Round 24 artifacts do not establish a theorem-level bound. The missing pieces are:

- exact reference solution and normalization;
- proof that the relevant kernel is sign-definite on the true interval of integration, or an absolute-value kernel bound;
- an explicit finite inequality for the Volterra variation, with constants;
- control of the true first critical point versus the reference Bessel critical point;
- a gamma-ratio envelope in the same parameter regime.

Status: exploratory but worth testing.

### Endpoint-Cap Reduction Claim

Original claim: endpoint-cap Sonin localization traps the absolute maximum in the first physical lobe.

Audit: mostly sound after calibration. The endpoint-cap algebra, cap length, and monotone product identity are reliable working modules. The remaining gap is the amplitude bound at the first allowed critical point, not the cap localization itself.

Status: keep as main proof skeleton.

### Low-Degree Certification Claim

Original claim: A3 and A4 have certified both $n=1$ and $n=2$ baselines.

Audit: incorrect. Round 24 supports the $n=1$ residual endpoint theorem, subject to final lemma-bank formatting. The $n=2$ case has corrected algebraic setup but still needs interval root isolation and value verification.

Status: $n=1$ nearly ready for lemma bank; $n=2$ remains an active certificate task.

### Frobenius-To-Airy Connection Claim

Original claim: the bulk track was presented as stalled unless the connection coefficient $\mathfrak C_c$ is solved.

Audit: the connection coefficient is a genuine hard gap, but that framing is too strong. The Langer/Airy route can still progress if the proof uses a named explicit-error theorem, an exact weighted variation integral, and a finite handoff bound.

Status: serious obstruction; not a proof-ending failure.

### Gamma-Ratio Envelope Claim

Original claim: $M_{n,\alpha,B}$ may consume all slack unless bounded by $1+C/n$.

Audit: this is a legitimate warning for arbitrary $n$. It should be split by regime. The $n=1$ gamma issue has a separate scalar repair; arbitrary $n$ still needs a sharper theorem or finite verification plan.

Status: important open lemma.

### Patchwork-Fragility Claim

Original claim: regime splitting may leave an uncovered overlap gap.

Audit: valid. Any split proof must give exact thresholds, overlap inequalities, and boundary-face checks. This warning should be retained.

Status: useful strategy constraint.

## Alternative Strategy Audit

### Alternative 1: Airy Relative-Amplitude Equation

The suggested Airy analogue is worth a short algebra audit, but it does not automatically remove the connection problem.

If

$$
W''+\zeta W=\Psi_B(\zeta)W
$$

and $a(\zeta)=\operatorname{Ai}(-\zeta)$ satisfies

$$
a''+\zeta a=0,
$$

then setting $W=a h$ gives

$$
(a^2h')'=\Psi_B(\zeta)a^2h.
$$

This identity is useful, but the original memo inserted an absolute value and treated the resulting integral as sign-definite. That is not justified without proving a sign condition on $\Psi_B$ or replacing the argument by an absolute-value bound. There is also a zero issue: $\operatorname{Ai}(-\zeta)$ has zeros for positive $\zeta$, so $h=W/a$ is singular on intervals that cross a zero of the reference Airy solution.

Required tests:

- locate the Airy zero relative to the KKT first-lobe interval;
- determine the sign or absolute-value bound for $\Psi_B$ on that interval;
- state the initial data for $h$ and $h'$ without hiding the Frobenius-to-Airy normalization;
- check whether the estimate controls the Sonin energy, not just $|W|$.

Recommendation: assign this as a 20% exploratory task to A1 or A2. Do not make it the main route until these tests pass.

### Alternative 2: Krasikov-Style Algebraic Envelopes

This is the most interesting structural alternative in the memo. A generalized Sonin functional of the form

$$
V(u)=A(u)H(u)^2+B(u)H'(u)^2+C(u)H(u)H'(u)
$$

could, in principle, avoid a pole at the turning point and produce a global algebraic envelope.

However, the memo overstates what is available. To become theorem-level, this route must provide:

- explicit candidate polynomials or rational functions $A,B,C$;
- positivity of the quadratic form in $(H,H')$ on the required domain;
- a verified sign for $V'(u)$ on all parameter boxes;
- endpoint normalization that implies the KKT target;
- boundary-face checks at $\theta=0$, $\beta=0$, $\alpha=1/2$, $\alpha=\alpha_E(n)$, and small $n$.

Recommendation: keep as the strongest exploratory alternative. A3 should derive a candidate symbolic ansatz only after $n=2$ is settled; A4 can then test low-degree and sampled arbitrary-degree boxes.

### Alternative 3: Contiguous Relation Induction

This is a plausible diagnostic idea but a weak proof strategy at the current stage.

Main issues:

- base cases $n=1,2$ do not imply arbitrary $n$ without a proved contraction;
- $\alpha$ and $\beta$ are real parameters, so integer-step contiguous relations do not directly cover the full continuous parameter domain;
- the location of the maximum changes with the parameter shift;
- the target normalization changes with $n,\alpha,\beta$ and must be included in the matrix norm.

Recommendation: use only as a numerical or symbolic search for monotonicity in special semi-discrete cases, especially $\beta\in\mathbb N_0$.

### Alternative 4: Riemann-Hilbert Steepest Descent

Riemann-Hilbert methods may be conceptually relevant, but this is not an efficient near-term route for this workflow. Finite-$n$ explicit constants for Jacobi endpoint and turning-point parametrices would be a major theorem-building project, not a quick repair.

Required before adopting:

- exact RHP normalization matching the KKT-weighted Jacobi function;
- finite-$n$ jump-matrix norm bounds with explicit constants;
- endpoint and Airy parametrices with certified matching error;
- proof that the resulting constants beat the KKT target margin.

Recommendation: literature-scout only. Do not allocate a main agent to this route unless a precise finite-$n$ theorem with usable constants is found.

## Revised Round 25 Recommendation

Round 25 should remain execution-focused rather than becoming an architecture round.

Recommended allocation:

- **A1:** write the judge synthesis and keep the current endpoint-cap route as the main route; include the Airy relative-amplitude and Krasikov envelope ideas only as bounded exploratory tests.
- **A2:** test the Airy relative-amplitude identity, especially Airy zeros, sign of $\Psi_B$, and whether the estimate controls the needed energy. If that fails, return to rational-Bessel constants with an absolute-value kernel bound.
- **A3:** provide CAS-verifiable compactified $n=2$ coefficients and boundary identities. Avoid manual multivariate expansion.
- **A4:** execute outward-rounded interval root isolation and value checks for the corrected $n=2$ certificate.

Do not defer the $n=2$ certificate in favor of a speculative global pivot.

## Falsification Checklist

Before any alternative route is promoted, require these checks:

1. **Airy relative-amplitude route:** show the reference Airy denominator does not vanish on the target interval, or split around zeros with a different reference pair.
2. **Airy sign claim:** prove the sign of $\Psi_B$ or replace the sign argument by an explicit absolute-value inequality.
3. **Krasikov envelope:** verify positivity of $V$ and sign of $V'$ on all boundary faces, not only in sampled interiors.
4. **Contiguous induction:** compute the normalized step matrix and test whether a contraction can even be plausible on small parameter grids.
5. **RHP route:** locate an explicit finite-$n$ theorem with constants before assigning proof effort.

## Bottom Line

The memo is useful as a source of exploratory ideas, especially the Airy relative-amplitude test and the Krasikov-envelope direction. It should not override the current proof plan. The next decisive deliverables remain the Round 24 judge synthesis, the final $n=1$ lemma-bank entry, and the corrected $n=2$ interval certificate.
