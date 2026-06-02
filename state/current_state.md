# Current State

## Problem Status

The full real-parameter KKT conjecture appears open. KKT prove the integer-parameter case through representation-theoretic unitarity, and nearby real-parameter Bernstein inequalities are known but do not give the sharp constant needed here.

The most useful working target is the one-real-one-integer case $\alpha\ge0$, $\beta\in\mathbb N_0$, because it is enough for the Laguerre dispersive application.

## Reliable Background

The existing local notes identify these comparatively reliable modules:

- central-region control away from endpoints,
- Sonin-Polya style localization to endpoint lobes,
- weighted energy estimates that cover part of parameter space,
- small endpoint exponent ranges such as $\alpha\le 1/2$ or the symmetric $\beta\le 1/2$,
- overflow confinement that limits where endpoint failure could occur.

These modules still need audit before being treated as theorem-level state.

## Active Obstruction

The remaining hard region is an endpoint cap. The strongest current synthesis says the decisive missing piece is an effective endpoint or Laguerre certificate with explicit constants, plus a rigorous finite-$\beta$ bridge back to Jacobi.

In the right endpoint normalization, prior notes introduce an endpoint variable of the form

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

and observe that the residual endpoint cap should satisfy $0\le u\le u_\sigma\le n$ after central-region clearance. This observation may remove the need for a global $u\in[0,\infty)$ Laguerre theorem, but it has not been fully certified.

## Normalized Workflow Start

The old KKT workflow used combined review-then-reason responses. The new workflow starts at round 12 and separates:

1. Stage A independent reasoning by A1/A2/A3/A4;
2. Stage B review of the other Stage A responses;
3. Stage C A1/GPT judge synthesis and next-round prompts for all four AIs.

Before Round 12, A1/GPT should first produce a bootstrap judge synthesis from `manifests/round_011_seed.md`. The result is stored in `manifests/round_011_bootstrap_judge.md` and becomes the clean starting decision for Round 12.

## Current Best Direction

Start the next round by auditing the endpoint-cap reduction rather than trying to prove the full conjecture at once:

1. verify the exact endpoint differential equation for the Jacobi-weighted function;
2. verify the central/endcap interface and the claim $u_\sigma\le n$;
3. identify the exact finite-$\beta$ bridge needed to compare Jacobi endpoint behavior with the Laguerre limit;
4. formulate the minimal Laguerre/Bessel first-lobe certificate that would close the remaining gap;
5. reject any proof that does not give explicit constants or a finite verification plan.

## Round 12 Update

Timestamp: 2026-06-02 16:33:07

See `rounds/kkt-main/round_012/judge/judge.md`.

Summary:

Input source acknowledged: :contentReference[oaicite:0]{index=0}

Round 12 produced genuine progress, but not a proof of the real-parameter KKT conjecture.

The main certified advance is the endpoint-cap reduction. A1 derived it and A3 independently audited the algebra. In the right endpoint variable

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

the post-central-contour residual cap satisfies

```math
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n
```

for $n\ge1$. In this cap the finite-$B$ endpoint equation is exactly

```math
(p_BH')'+q_BH=0,
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

The product

```math
K_B(u)=p_B(u)q_B(u)
```

is a concave quadratic and is increasing on the residual cap. In the unresolved right-endpoint strip $\alpha\ge1/2$, one has the stronger lower bound

```math
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
\ge\frac14.
```

This gives a Sonin first-lobe reduction: the remaining endpoint maximum, if not already cleared by the central contour, energy estimate, or small-exponent theorem, is controlled by the first local extremum after the endpoint turning point. This replaces the older global Laguerre obstruction on $0\le u<\infty$ by a much smaller cap or first-lobe certificate on $0\le u\le n$.

The main unresolved issue is still an amplitude estimate for that first lobe, plus a finite-$B$ bridge. Round 12 also found several serious hazards in the proposed Bessel/Liouville-Green closure: the affine $u$-coordinate may introduce geometric amplitude inflation, naive Olver error integrals may grow when $\alpha=O(n)$, and A4’s quoted Bessel maximum $2/\pi$ is not the true maximum of $J_{1/2}$.

Selected main route:

Continue the endpoint-cap route, not the global Laguerre route.

The selected proof skeleton for Round 13 is:

1. Use the established global modules to reduce to a right endpoint residual cap:
   - central contour control on $|x|<\sigma$;
   - Sonin localization;
   - weighted-energy clearance;
   - small endpoint exponent theorem for $\alpha\le1/2$;
   - symmetry for the left endpoint.

2. In the residual right endpoint case $\alpha>1/2$, use the exact cap variable $u=B(1-x)/2$ and the monotone product $K_B=p_Bq_B$ to reduce the problem to the first allowed lobe.

3. Replace the older target

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u<\infty,
```

by the smaller cap target

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u\le n,
```

and preferably by the first-lobe version of this statement.

4. Develop a first-lobe amplitude certificate. The certificate may be:
   - a direct finite-$B$ Prüfer/Sonin comparison;
   - a rational-coordinate Bessel/Liouville-Green comparison;
   - a rigorous Laguerre cap certificate plus a finite-$B$ perturbation theorem;
   - or a hybrid analytic-plus-interval certificate, but only after an explicit large-$n$ analytic bound gives a finite $N_0$.

5. Treat computation as a certificate only after the analytic part gives compactness in all variables, including $n$ or an explicit large-$n$ theorem. An unbounded interval computation remains invalid.

Useful fragments by source:

A1:

A1 supplied the most important mathematical progress of the round.

The valuable certified fragments are:

1. The exact endpoint equation

```math
(p_BH_B')'+Q_BH_B=0
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
Q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

2. The exact central/endcap interface

```math
u_\sigma=\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n.
```

3. The product monotonicity. With

```math
P_B(u)=p_B(u)Q_B(u),
```

one has $P_B''(u)\le0$ and

```math
P_B'(u_\sigma)
=
\frac{(\alpha+\beta)(\alpha+n+1)}{2B}.
```

Thus $P_B'(u)\ge0$ on $0\le u\le u_\sigma$, and in the unresolved strip $\alpha\ge1/2$,

```math
P_B'(u)\ge\frac14.
```

4. The cap Sonin identity

```math
\left(
H^2+\frac{pH'^2}{Q}
\right)'
=
-\frac{(pQ)'H'^2}{Q^2},
```

which orders local extrema by amplitude inside the cap.

5. The observation that the old Laguerre target is overlarge. For the endpoint-cap proof, one only needs $0\le u\le n$, and then only the first lobe.

6. The finite-$B$ perturbation warning. A1 computed an explicit difference

```math
Q_B(u)=Q_\infty(u)+R_B(u),
```

and noted that $R_B$ changes sign. Therefore simple Sturm ordering between finite Jacobi and Laguerre endpoint equations is unavailable.

A2:

A2’s most valuable role was obstruction finding.

The useful fragments are:

1. A2 independently confirmed the cap interface and endpoint ODE.

2. A2 correctly emphasized that the affine $u$-coordinate is excellent for Sonin monotonicity but may be suboptimal for Liouville-Green amplitude estimates.

3. A2 proposed the rational endpoint coordinate

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
```

A direct calculation gives

```math
1-x^2=\frac{4Bv}{(B+v)^2},
\qquad
\frac{dx}{dv}=-\frac{2B}{(B+v)^2},
```

and the kinetic operator becomes

```math
\frac{d}{dx}\left((1-x^2)\frac{d}{dx}\right)
=
\frac{(B+v)^2}{B}\frac{d}{dv}\left(v\frac{d}{dv}\right).
```

Thus, after multiplying by $B/(B+v)^2$, the equation has principal part

```math
(vH_v')'
```

and potential

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

Equivalently, with $c_B=\kappa/B$,

```math
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
```

This rational-coordinate transform is algebraically correct and should be audited as a possible way to avoid the affine $u$ Liouville amplitude factor.

4. A2 correctly warned that a proof must handle the classically forbidden zone near $u=0$, where $q_B<0$ and the Sonin functional is not directly defined. The proposed “forbidden-zone ascent” argument is plausible but not certified.

Rejected or risky parts from A2:

A2’s claim that the rational coordinate “restores” the desired $O(1/n)$ residual is not proved. The coordinate removes one geometric amplitude factor, but it does not by itself bound the transformed potential error, Schwarzian terms, or Volterra integral. This should be treated as a proposed route, not as a closure.

A3:

A3 was the strongest algebra auditor.

The useful certified fragments are:

1. Independent verification of the endpoint ODE.

2. Independent verification of

```math
u_\sigma=\frac{nB}{B+n-1}\le n.
```

3. Independent verification of the quadratic form

```math
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
```

where

```math
\Lambda_B=c_B+\frac{r_B\alpha}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
```

4. The identity

```math
4\Delta_Bu_\sigma
=
n\left(1+\frac{n+1}{B}\right),
```

which gives the clean endpoint derivative formula.

5. The Frobenius coefficient near $u=0$:

```math
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
```

where

```math
A_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+1)\Gamma(B)}
{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}
}
B^{-\alpha/2}
\frac{\Gamma(n+\alpha+1)}
{\Gamma(\alpha+1)\Gamma(n+1)}.
```

6. The Bessel model normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
```

7. The critical-point equation

```math
\left(\beta(1-x)-\alpha(1+x)\right)P_n^{(\alpha,\beta)}(x)
+
(n+\alpha+\beta+1)(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)
=
0.
```

Rejected or corrected part from A3:

A3 states in a remark that the lower bound $K_B'(u)\ge1/4$ works unconditionally for all $\alpha\ge0$. That is not correct in the fully degenerate case. For example, $\alpha=\beta=0$ gives $K_B'(u_\sigma)=0$. The certified lower bound $K_B'(u)\ge1/4$ should be recorded only for the residual right-endpoint range $\alpha\ge1/2$. This is sufficient, since $\alpha\le1/2$ is already covered by the small-endpoint theorem.

A4:

A4’s contribution is useful mainly as a technical planning and obstruction document, not as a proof.

Useful fragments:

1. A4 correctly identified that $M_{n,\alpha,B}\le1$ is false. For small $n$ and small $\alpha$, the Bessel normalization can exceed $1$, so the proof needs a gamma-ratio bound of the form

```math
M_{n,\alpha,B}\le1+\frac{C_\Gamma}{n+1}
```

or a sharper structured replacement.

2. A4 correctly warned that the first Bessel peak may occur at $u_1=O(n)$ when $\alpha=O(n)$, so a naive Volterra or Olver error integral over the whole first lobe may not be $O(1/n)$.

3. A4’s interval-arithmetic compactification idea is useful once an analytic large-$n$ theorem exists. For fixed $n,\alpha$, the substitution

```math
\theta=\frac{n+\alpha+1}{B}
```

compactifies $\beta\in[0,\infty]$ to $\theta\in[0,1]$.

4. The finite polynomial representation

```math
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
{}_2F_1\left(-n,B;\alpha+1;\frac{u}{B}\right)
```

is the right starting point for interval verification.

Rejected or corrected parts from A4:

1. A4’s claim that

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|=\frac{2}{\pi}
```

is false. For $\nu=1/2$,

```math
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
```

and its positive critical points satisfy

```math
\tan t=2t.
```

The first maximum occurs near

```math
t\approx1.1655611852,
```

with value approximately

```math
0.6791921047,
```

not $2/\pi\approx0.6366197724$. The weaker bound $<0.680$ may still be true, but it is a very tight statement and needs a precise theorem or certified numerical proof. It should not be marked as “fully certified” from the calculation A4 gave.

2. A4’s proposed Bessel-Sonin handoff is not yet valid. If the handoff point is not a local extremum, the Sonin functional contains a derivative term. One cannot replace the Sonin energy at the handoff point by $|H(u_{\mathrm{handoff}})|^2$ without bounding $pH'^2/q$. This is a substantive gap.

3. The statement that the large-$n$ closure has “ample room” is premature. The true Bessel maximum near $0.67919$ leaves less slack than A4 claimed, and the gamma and perturbation constants are not known.

Rejected or risky ideas:

1. Global Laguerre as the main target.

The global Laguerre inequality on $0\le u<\infty$ may be true or false, but it is no longer the minimal target for the Jacobi endpoint proof. Round 12 shows the endpoint cap only requires $0\le u\le n$, and then only the first lobe. Future work should not spend its main effort on global $u\in[0,\infty)$ unless it yields a cleaner proof.

2. Simple finite-$B$ Sturm comparison with Laguerre.

A1’s explicit formula for $R_B=Q_B-Q_\infty$ changes sign. Therefore any proof assuming $Q_B\ge Q_\infty$ or $Q_B\le Q_\infty$ uniformly on the cap should be rejected unless a restricted sign regime is explicitly proved.

3. Naive affine-coordinate Bessel perturbation.

A2’s amplitude-inflation warning and A4’s $u_1=O(n)$ scaling warning both show that a direct estimate

```math
H(u)=M_{n,\alpha,B}J_\alpha(2\sqrt{\Lambda_Bu})+O\left(\frac1n\right)
```

uniformly up to the first peak cannot be assumed. It must be derived with explicit constants and the correct coordinate/dependent-variable normalization.

4. A4’s Bessel maximum calculation.

The bound $<0.680$ may be usable, but the derivation via $2/\pi$ is wrong. The next round must replace it with a correct theorem or interval certificate.

5. Unexecuted interval arithmetic.

A finite verification is acceptable only after an explicit large-$n$ analytic theorem gives a finite $N_0$. Without such a theorem, interval arithmetic remains a plan, not a proof.

6. Overclaiming “certified” status for the first-lobe amplitude bound.

The cap localization is certified. The first-lobe amplitude estimate is not.

Known gaps:

G12.1: First-lobe amplitude certificate.

The central missing estimate is a theorem bounding the first local extremum of the endpoint-cap solution in the residual range

```math
n\ge1,\qquad
\frac12<\alpha<
\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0.
```

A minimal finite-$B$ statement would be:

Let $u_0$ be the cap turning point and $u_1$ the first critical point after $u_0$. Prove

```math
|H_B(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
```

G12.2: Correct coordinate for first-lobe comparison.

The affine coordinate $u$ is certified for localization, but may be inefficient for Liouville-Green amplitude estimates. The rational coordinate $v=B(1-x)/(1+x)$ has exact principal part $(vH_v')'$, but the transformed potential and error terms need a full audit.

G12.3: Gamma-ratio normalization.

The Bessel normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

can exceed $1$. A proof needs a sharp inequality for $M_{n,\alpha,B}$ in the residual strip. A bound of the form

```math
M_{n,\alpha,B}\le1+\frac{C_\Gamma}{n+1}
```

is plausible but not proved.

G12.4: Bessel maximum.

A usable Bessel bound must be stated correctly. The candidate is probably

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680,
```

but the proof must not use the false value $2/\pi$. The next round should either cite a precise theorem with hypotheses or provide a rigorous interval proof of the maximum.

G12.5: Handoff derivative energy.

If a Bessel approximation is used only near the origin and then handed to Sonin monotonicity, the handoff must bound

```math
H(u_h)^2+\frac{p_B(u_h)H'(u_h)^2}{q_B(u_h)},
```

not only $|H(u_h)|$.

G12.6: Forbidden-zone ascent.

The endpoint solution should be shown to have no local maximum before the first turning point. The informal argument using positivity of $H$ and $(pH')'=-qH$ is plausible but needs a clean lemma with Frobenius initialization and sign preservation.

G12.7: Finite verification compactification.

The compactification $\theta=(n+\alpha+1)/B$ is useful, but the finite-dimensional domain is available only after a large-$n$ theorem. The $\beta=\infty$ face must be handled by analytic limiting formulas, not by numerically evaluating unstable $1^\infty$ expressions.

G12.8: Endpoint equality and strict margin.

The target becomes tight in several limiting regimes. The proof must identify where equality can occur and where strict margin remains. This matters for perturbation from Laguerre to finite $B$.

New lemmas to add:

### Lemma L12.1: Exact endpoint equation

For $n\ge0$, $\alpha,\beta\ge0$, $B=n+\alpha+\beta+1$, and

```math
H_B(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
```

one has

```math
(p_BH_B')'+q_BH_B=0,
```

where

```math
p_B(u)=u\left(1-\frac{u}{B}\right)
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

Status: certified by A1 and A3.

### Lemma L12.2: Endpoint cap length

For $n\ge1$,

```math
u_\sigma
=
\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n.
```

Status: certified by A1 and A3.

### Lemma L12.3: Endpoint product monotonicity

Let

```math
K_B(u)=p_B(u)q_B(u).
```

Then $K_B$ is a concave quadratic and

```math
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
```

Thus $K_B'(u)\ge0$ for $0\le u\le u_\sigma$. In the residual right-endpoint range $\alpha\ge1/2$,

```math
K_B'(u)\ge\frac14.
```

Status: certified, with the range restriction $\alpha\ge1/2$ for the lower bound $1/4$.

### Lemma L12.4: Cap Sonin monotonicity

On any subinterval of the cap where $q_B>0$,

```math
S_B(u)=H_B(u)^2+\frac{p_B(u)H_B'(u)^2}{q_B(u)}
```

satisfies

```math
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H_B'(u)^2
\le0.
```

Consequently local extrema in the allowed portion of the cap are nonincreasing in amplitude as $u$ increases.

Status: certified conditional on $q_B>0$.

### Lemma L12.5: Forbidden-zone ascent

Assume $\alpha>0$ and right overflow. Let $u_0$ be the first zero of $K_B$ in the cap. Then $H_B$ has no local maximum on $0<u<u_0$.

A proof should use the regular Frobenius behavior

```math
H_B(u)\sim A_{n,\alpha,B}u^{\alpha/2},
\qquad A_{n,\alpha,B}>0,
```

and the sign of

```math
(p_BH_B')'=-q_BH_B
```

where $q_B<0$.

Status: plausible; not yet certified. Assign to A1/A3.

### Lemma L12.6: First-lobe reduction

Assume Lemma L12.5. In the residual right endpoint case, the cap maximum is attained at the first critical point $u_1$ after the cap turning point $u_0$.

Status: nearly certified after L12.5.

### Lemma L12.7: Laguerre cap limit

As $B\to\infty$ with $n,\alpha$ fixed,

```math
p_B(u)\to u,
```

and

```math
q_B(u)\to
q_\infty(u)
=
n+\frac{\alpha+1}{2}
-\frac{u}{4}
-\frac{\alpha^2}{4u}.
```

The limiting equation is the normalized Laguerre equation for

```math
\ell_n^{(\alpha)}(u)
=
\left(
\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}
\right)^{1/2}
u^{\alpha/2}e^{-u/2}L_n^{(\alpha)}(u).
```

On $0\le u\le n$,

```math
(uq_\infty(u))'
=
n+\frac{\alpha+1}{2}-\frac u2
\ge
\frac{n+\alpha+1}{2}
>0.
```

Status: certified.

### Lemma L12.8: Minimal Laguerre cap certificate

For $n\ge1$ and

```math
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3},
```

prove

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u\le n.
```

Better: prove it only at the first local maximum after the Laguerre cap turning point.

Status: proposed; not proved.

### Lemma L12.9: Rational-coordinate endpoint equation

Set

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
```

Then the endpoint equation becomes

```math
(vH_v')'+\widehat q_B(v)H=0,
```

where

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

Equivalently,

```math
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
```

Status: algebraically verified in this synthesis; its usefulness for amplitude estimates is open.

### Lemma L12.10: Correct Bessel maximum certificate

Prove or cite a theorem giving

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
```

The proof must account for the fact that

```math
\max_{t>0}J_{1/2}(t)\approx0.6791921047,
```

not $2/\pi$.

Status: needed; A4’s derivation is rejected.

### Lemma L12.11: Gamma-ratio bound for $M_{n,\alpha,B}$

Find explicit constants, or a sharper functional bound, for

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

in the residual strip. A possible target is

```math
M_{n,\alpha,B}
\le
1+\frac{C_\Gamma}{n+1}.
```

Status: proposed; not proved.

### Lemma L12.12: Handoff Sonin energy bound

If using a Bessel approximation on $0<u\le u_h$, prove an upper bound for the full Sonin energy

```math
H_B(u_h)^2+\frac{p_B(u_h)H_B'(u_h)^2}{q_B(u_h)}.
```

Status: required if the Bessel-Sonin handoff route is pursued.

Counterexample checks to run:

1. Bessel maximum check.

Compute and rigorously enclose

```math
\max_{t>0}J_{1/2}(t),
```

where the maximizing point solves

```math
\tan t=2t.
```

Then verify whether the maximum over $\nu\ge1/2$ is indeed at $\nu=1/2$ or whether another order gives a larger value. This is a priority because A4’s $2/\pi$ computation is wrong.

2. Gamma normalization check.

For a grid and then by interval arithmetic, evaluate

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

over

```math
1\le n\le 200,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\in\{0,1,2,10,100,\infty\}.
```

Locate where $M>1$ and measure whether $M-1$ behaves like $O(1/n)$ or has a larger envelope.

3. Laguerre cap ratio.

Compute

```math
R_{n,\alpha}^{\mathrm{cap}}
=
\sup_{0\le u\le n}
\frac{
|\ell_n^{(\alpha)}(u)|
}{
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
}
```

over the transition strip. Compare this with the global ratio on $0\le u<\infty$ to quantify how much the cap reduction buys.

4. First-lobe location.

For the Laguerre cap, compute the turning point $u_0$ and first critical point $u_1$. Test whether $u_1$ is $O(1)$, $O(\alpha^2/n)$, or $O(n)$ in the worst part of the strip. This determines whether a uniform first-lobe Bessel perturbation can plausibly be $O(1/n)$.

5. Finite-$B$ worst case.

For fixed $(n,\alpha)$, compute

```math
R_{n,\alpha,B}^{\mathrm{cap}}
=
\frac{
\sup_{0\le u\le u_\sigma}|H_B(u)|
}{
T_{n,\alpha,\beta}
}.
```

Test whether this ratio is monotone in $B$ or whether the worst case is finite. A nonmonotone finite-$B$ worst case would require a direct finite-$B$ certificate rather than a Laguerre bridge.

6. Rational versus affine coordinate.

Numerically compare Liouville-Green residual terms in $u$ and $v$ coordinates on identical parameter grids. Determine whether the rational coordinate actually reduces the Volterra integral, and by what asymptotic order.

7. Forbidden-zone ascent.

Verify that $H_B$ is strictly increasing from $u=0$ to the first turning point in representative hard cases, then prove it symbolically.

8. Endpoint equality cases.

Separate $n=0$, $\alpha=0$, $\beta=0$, and $\alpha=1/2$ boundary cases. Make sure no endpoint equality or degeneracy is being hidden inside an argument that assumes $q_B>0$ or $\alpha>0$.

Research strategy adjustment:

The next round should pivot from broad proof architecture to a narrow two-track certification program.

Track 1: certify the first-lobe reduction completely.

This means turning the cap monotonicity into a theorem-level statement with all endpoint and forbidden-zone cases handled. This is mainly A1/A3 work.

Track 2: decide which amplitude certificate is viable.

The old direct affine-coordinate Bessel certificate is now suspect. Round 13 should compare three candidate certificates:

1. Rational-coordinate Liouville-Green certificate using $v=B(1-x)/(1+x)$.

2. Prüfer/Sonin monotone-frequency certificate using the equation in a variable where the frequency product is increasing.

3. Laguerre cap certificate plus finite-$B$ bridge.

A4 should simultaneously build numerical tests to identify the most promising route and to search for finite-$B$ or Laguerre cap obstructions. Interval arithmetic should not yet be presented as a proof; it should be used to map the hard region and test candidate constants.

The highest priority is not to prove the whole conjecture in Round 13. The highest priority is to produce one fully explicit theorem of the following type:

For all $n\ge N_0$, $\frac12\le\alpha\le\alpha_E(n)$, and $\beta\ge0$, the first endpoint-cap maximum satisfies the KKT bound.

Only after that theorem exists should the panel assign finite interval verification for $1\le n<N_0$.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist and proof synthesizer. Your Round 13 task is to turn the endpoint-cap localization into a theorem-level reduction and decide which amplitude route should become the main proof route.

Objectives:

1. State and prove a complete “right endpoint cap first-lobe reduction” theorem with exact hypotheses:
   - $n\ge1$;
   - $\alpha>1/2$ for the residual right endpoint;
   - $\beta\ge0$;
   - right overflow or noncentral residual;
   - $B=n+\alpha+\beta+1$;
   - $u=B(1-x)/2$;
   - $0\le u\le u_\sigma\le n$.

2. Include the exact endpoint ODE:

```math
(p_BH')'+q_BH=0,
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

3. Prove the product monotonicity with the exact formula

```math
K_B'(u_\sigma)=\frac{(\alpha+\beta)(n+\alpha+1)}{2B},
```

and state precisely when this implies $K_B'(u)\ge1/4$.

4. Fill the forbidden-zone gap: prove that the regular solution has no local maximum before the first turning point. Use Frobenius data and the sign of $(p_BH')'=-q_BH$.

5. State the exact reduced first-lobe amplitude theorem needed to close KKT. Do not prove it unless you can provide explicit constants. The statement should use the first critical point $u_1$ after the endpoint turning point.

6. Compare the three amplitude routes:
   - affine $u$ Bessel;
   - rational $v$ Bessel;
   - Laguerre cap plus finite-$B$ bridge.

Give a concrete recommendation for which one should be primary in Round 14.

Required output:

Use the Stage A schema. Label each claim as proved, plausible, or open. Include a section “What would falsify this route.”

For A2:

You are A2, the obstruction finder and referee-style strategist. Your Round 13 task is to rigorously audit the rational-coordinate proposal and the affine-coordinate amplitude-inflation objection.

Objectives:

1. Re-derive the rational-coordinate equation from scratch. With

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v},
```

verify or correct the equation

```math
(vH_v')'+\widehat q_B(v)H=0
```

and

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

2. Relate $u$ and $v$ exactly:

```math
u=\frac{Bv}{B+v},
\qquad
v=\frac{Bu}{B-u}.
```

Find the image of the cap $0\le u\le u_\sigma$ in $v$ coordinates.

3. Test the claim that the rational coordinate eliminates the Liouville-Green amplitude inflation. This requires deriving the dependent-variable transform, not just the principal operator.

4. Compute the transformed potential’s Bessel-core expansion near $v=0$. Identify the analogues of $\Lambda_B$ and the perturbation remainder.

5. Determine whether the Volterra or Olver error integral in $v$ is plausibly $O(1/n)$ up to the first lobe when $\alpha=O(n)$. If not, identify the obstruction explicitly.

6. Audit A4’s Bessel-Sonin handoff idea. In particular, check whether controlling $|H(u_h)|$ alone is insufficient because the Sonin functional also contains $pH'^2/q$.

Required output:

Do not claim closure. Your deliverable is a referee report on whether the rational-coordinate amplitude route is viable, including formulas precise enough for A3 to algebra-check and for A4 to numerically test.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 13 task is to certify or reject the exact algebra behind the two candidate endpoint coordinates and the first-lobe reduction.

Objectives:

1. Recheck the affine $u$ equation and record the final verified formulas for:
   - $p_B$;
   - $q_B$;
   - $K_B=p_Bq_B$;
   - $\Lambda_B$;
   - $\Delta_B$;
   - $u_\sigma$;
   - $K_B'(u_\sigma)$.

2. Correct the range statement for $K_B'(u)\ge1/4$. It is required only in the residual range $\alpha\ge1/2$. Check the degenerate cases $\alpha=\beta=0$, $\alpha=0<\beta$, and $\alpha=1/2,\beta=0$.

3. Prove or reject the forbidden-zone ascent lemma. Work directly from the Frobenius expansion and

```math
(p_BH')'=-q_BH.
```

Be precise about positivity of $H$, behavior of $p_BH'$, and whether a zero or local maximum can occur before the turning point.

4. Algebraically verify the rational-coordinate equation:

```math
(vH_v')'+\widehat q_B(v)H=0.
```

Check A2’s formula for $\widehat q_B(v)$ and give a simplified expression for the product

```math
\widehat K_B(v)=v\widehat q_B(v).
```

5. Determine whether $\widehat K_B(v)$ has useful monotonicity on the transformed cap. Compare it with the affine $K_B(u)$ monotonicity.

6. Recheck A4’s Bessel normalization formula and derive the exact expression for $M_{n,\alpha,B}$ in both $u$ and $v$ coordinates. State whether the normalizations agree at leading order.

Required output:

Use the Stage A schema. Include “certified identities,” “rejected identities,” and “open analytic estimates.” Provide enough algebra for direct inclusion in the lemma bank.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 13 task is to build a reliable numerical and analytic test harness for the first-lobe certificate, while correcting the Bessel maximum issue.

Objectives:

1. Correct the Bessel maximum claim. For $\nu=1/2$,

```math
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
```

and the first positive maximum solves

```math
\tan t=2t.
```

Compute a rigorous interval enclosure for the maximizer and maximum. Then investigate whether

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680
```

is a known theorem or requires interval proof. Do not use $2/\pi$ as the maximum.

2. Build a high-precision numerical map of the Laguerre cap ratio

```math
R_{n,\alpha}^{\mathrm{cap}}
=
\sup_{0\le u\le n}
\frac{
|\ell_n^{(\alpha)}(u)|
}{
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
}
```

for $1\le n\le200$ and $\frac12\le\alpha\le\alpha_E(n)$. Track the first-lobe maximum separately from the cap maximum.

3. Build the analogous finite-$B$ cap ratio

```math
R_{n,\alpha,B}^{\mathrm{cap}}
=
\frac{
\sup_{0\le u\le u_\sigma}|H_B(u)|
}{
T_{n,\alpha,\beta}
}
```

for sample $\beta$ values and for compactified $\theta=(n+\alpha+1)/B$.

4. Numerically compare affine $u$ and rational $v$ perturbation sizes. For each parameter sample, compute the Bessel-core residual in both coordinates and estimate the relevant Volterra integral.

5. Test the gamma normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
```

Find the maximum of $M-1$ over sampled grids and test whether $M\le1+C/(n+1)$ is plausible with a moderate explicit $C$.

6. Design, but do not yet claim, an interval arithmetic proof plan. It must include:
   - variables $(\alpha,\theta,u)$ for fixed $n$;
   - stable evaluation of the finite hypergeometric polynomial;
   - separate treatment of the $\theta=0$ Laguerre face;
   - interval Newton isolation of critical points;
   - a path to a finite $N_0$ only after A1/A2/A3 provide a large-$n$ theorem.

Required output:

Use the Stage A schema. Include numerical tables or precise sampled findings if available. Separate experimental evidence from certified interval bounds.

Confidence:

Confidence in the new endpoint-cap algebra: high, about $0.90$.

Confidence in the first-lobe reduction after the forbidden-zone lemma is written cleanly: moderate-high, about $0.75$.

Confidence that the current Round 12 material already proves KKT: low, about $0.15$.

Confidence that the endpoint-cap route is the best current strategy: moderate-high, about $0.80$.

Confidence that the rational-coordinate Liouville-Green route will close the first-lobe amplitude estimate: uncertain, about $0.45$.

Confidence that a hybrid analytic-plus-certified-computation route can eventually close the semi-discrete case $\alpha\ge0$, $\beta\in\mathbb N_0$: moderate, about $0.60$.

Overall judge decision:

Round 12 should be recorded as a successful reduction round, not a closure round. Add the endpoint ODE, cap length, product monotonicity, and cap Sonin first-lobe reduction to the lemma bank as certified or nearly certified modules. Do not add any Bessel perturbation theorem, Bessel maximum constant, gamma-ratio bound, or interval verification as proved. The next round should focus on making the first-lobe reduction theorem airtight and deciding whether the rational-coordinate amplitude route or Laguerre-cap bridge is analytically viable.

