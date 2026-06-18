Summary:

Round 14 is a successful structural and algebraic round, not a proof of the real-parameter KKT conjecture. The main certified progress is that the endpoint-cap/first-lobe reduction is now essentially lemma-bank ready, and the correct dynamic normal form has been identified. The remaining obstruction is no longer vague: it is the sharp amplitude estimate at the first critical point after the endpoint turning layer in the finite-$B$ cap.

The most important new object is the logarithmic endpoint variable

$$
\tau=\int^u \frac{ds}{p_B(s)}
=
\log\frac{u}{B-u},
$$

where

$$
p_B(u)=u\left(1-\frac{u}{B}\right).
$$

In this variable the endpoint equation becomes the exact oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
$$

with no Schwarzian residual and no artificial fixed-frequency Bessel drift. This is the main Round 14 architectural gain. It does not prove the amplitude bound, because the oscillator still has a simple turning point where $K_B=0$ and any Prüfer, Airy, or Langer analysis must be regularized with explicit constants.

The selected route for Round 15 should therefore be:

1. freeze the endpoint-cap first-lobe reduction as certified state;
2. treat the finite-$B$ first-lobe amplitude theorem as the sole active analytic gap;
3. attack that gap through a regularized Airy/Prüfer or Langer-Olver theorem for the exact dynamic oscillator;
4. use A4’s numerical/interval program to map the hard region and later certify finite $n<N_0$, but not as a proof until a large-$n$ analytic theorem exists.

Selected main route:

The selected main route is the **endpoint-cap first-lobe route with dynamic Airy/Prüfer amplitude control**.

The proof skeleton to preserve is as follows.

First, use imported global modules to reduce the problem to a right endpoint cap. These imported modules are:

- central branch-safe contour control;
- weighted-energy clearance;
- small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
- left-endpoint symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
- elementary boundary treatment of $n=0$, $\alpha=0$, and related degenerate cases.

In the residual right-endpoint strip, assume

$$
n\ge1,
\qquad
\frac12<\alpha<\alpha_E(n),
\qquad
\beta\ge0,
$$

where

$$
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3}.
$$

Set

$$
B=n+\alpha+\beta+1,
\qquad
u=\frac{B(1-x)}2,
\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

After central-region clearance, the cap satisfies

$$
0\le u\le u_\sigma
=
\frac{nB}{B+n-1}
\le n.
$$

In this cap the exact endpoint equation is

$$
(p_BH')'+q_BH=0,
$$

where

$$
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

and

$$
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{
\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2
}{
4u\left(1-\frac{u}{B}\right)
}.
$$

Define

$$
K_B(u)=p_B(u)q_B(u).
$$

Then

$$
K_B(u)
=
-\frac{\alpha^2}{4}
+
\Lambda_Bu
-
\Delta_Bu^2,
$$

where

$$
r_B=\frac{\alpha+\beta}{B}=1-\frac{n+1}{B},
$$

$$
c_B=n+\frac12-\frac{n+1}{2B},
$$

and

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
$$

The key monotonicity identity is

$$
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}
+
\frac{\beta(n+1)}{2B}.
$$

Since $K_B$ is a concave quadratic, $K_B'$ is decreasing as a function of $u$, and therefore for $0\le u\le u_\sigma$,

$$
K_B'(u)\ge K_B'(u_\sigma)\ge\frac{\alpha}{2}.
$$

In the residual strip $\alpha\ge1/2$, this gives

$$
K_B'(u)\ge\frac14.
$$

This lower bound must not be stated globally for all $\alpha,\beta\ge0$. For instance, $\alpha=\beta=0$ gives zero margin. It is a residual-strip fact, not a universal parameter fact.

The forbidden-zone ascent theorem is now accepted in substance. If $u_0$ is the first zero of $K_B$ in the cap, then on $(0,u_0)$ one has $q_B<0$. The regular Frobenius branch has

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
\qquad
A_{n,\alpha,B}>0,
$$

and with

$$
W(u)=p_B(u)H'(u),
$$

the ODE gives

$$
W'(u)=-q_B(u)H(u)>0
$$

as long as $H>0$. Since $H>0$ and $W>0$ near zero for $\alpha>0$, the solution remains positive and strictly increasing up to $u_0$. Hence there is no local maximum before the first endpoint turning point.

On the allowed side $q_B>0$, the Sonin functional

$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}
$$

satisfies

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Thus local extrema after the turning point are nonincreasing in amplitude as $u$ moves from the endpoint toward the central boundary. The only cap extremum that can matter is the first critical point $u_1$ after the turning point. If no such $u_1$ exists, then the cap maximum is either controlled by monotone ascent to the central boundary or by the imported central estimate at $u_\sigma$.

Therefore the remaining theorem is:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),
\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point of $H$ after the first endpoint turning point, if it exists. Prove

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This is the main gap.

The selected amplitude route is to use the exact dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

In this variable, the rational coordinate

$$
v=B\frac{1-x}{1+x}=\frac{Bu}{B-u}
$$

is simply

$$
\tau=\log\frac{v}{B}.
$$

The rational coordinate is useful for algebra and numerical stability, but it is not an independent amplitude fix. It preserves the same invariant product:

$$
v\widehat q_B(v)=K_B(u(v)).
$$

The dynamic oscillator should now replace naive constant-frequency Bessel comparison as the main analytic object.

Useful fragments by source:

### A1

A1 supplied the best theorem-level synthesis.

The following fragments should be adopted.

First, A1 wrote the endpoint cap and first-lobe theorem in a form close to lemma-bank quality. The exact cap length, endpoint ODE, product monotonicity, forbidden-zone ascent, Sonin ordering, and reduction to $u_1$ are coherent and should now be frozen as certified state after final boundary-case edits.

Second, A1 introduced the exact logarithmic Liouville variable

$$
\tau=\int^u\frac{ds}{p_B(s)}
=
\log\frac{u}{B-u}.
$$

This is a genuine advance. In this variable,

$$
H_\tau=p_B(u)H'(u),
$$

and the ODE

$$
(p_BH')'+q_BH=0
$$

becomes

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

This eliminates the distracting geometric amplitude factor that appears in affine-coordinate normal forms. The remaining difficulty is no longer coordinate geometry but the amplitude of an oscillator with a variable quadratic frequency product.

Third, A1 derived exact modified Prüfer equations on the allowed interval $K_B>0$:

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi.
$$

Then

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos 2\phi,
$$

and

$$
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin 2\phi.
$$

Equivalently,

$$
K_{B,\tau}=p_B(u)K_B'(u).
$$

These identities are exact where $K_B>0$. They give a precise target: bound the Prüfer amplitude drift through the first lobe after an Airy-layer initialization.

A1’s limitation is also clear: no explicit Airy/Prüfer constants are supplied. A1’s proposed theorem remains open.

### A2

A2 supplied the strongest obstruction analysis and several useful normal-form identities, but some of A2’s stronger claims should be downgraded.

Adopt the following.

First, A2’s affine Liouville normal form is useful. If

$$
H=p_B^{-1/2}Y_u,
$$

then

$$
Y_u''+Q_u(u)Y_u=0,
$$

with

$$
Q_u(u)
=
\frac{q_B(u)}{p_B(u)}
+
\frac{(p_B'(u))^2}{4p_B(u)^2}
-
\frac{p_B''(u)}{2p_B(u)}.
$$

A2 and the reviews identify the simplification

$$
Q_u(u)=\frac{K_B(u)+1/4}{p_B(u)^2}
=
\frac{K_B(u)+1/4}{u^2(1-u/B)^2}.
$$

This formula should be audited once more by A3 and then added as a derived normal-form identity.

Second, A2 correctly argued that the rational variable $v$ is a Möbius transform of $u$:

$$
v=\frac{Bu}{B-u}.
$$

Its Schwarzian derivative with respect to $u$ is zero. This means the rational coordinate does not by itself introduce a new curvature correction. It is not a magic amplitude cure.

Third, A2’s constant-frequency Volterra warning is directionally sound. In the transition strip $\alpha=O(n)$, freezing the first-lobe dynamics into a constant-frequency Bessel comparison leaves a residual that is not perturbatively small on the whole first-lobe scale. This does not prove every Bessel or Langer method impossible, but it rejects the naive static-frequency closure as the main route.

Fourth, A2 emphasized the Sonin handoff pole. Since

$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}
$$

is undefined at $q_B=0$, one cannot hand off exactly at the original turning point. Any handoff must occur at $u_h>u_0$ with control of the derivative-energy term, or be replaced by a regularized Airy/Prüfer argument.

Downgrade the following.

A2’s claim in the Stage B review that a Stirling entropy expansion “proves” decisive exponential decay of $M_{n,\alpha,B}$ in the transition strip is not accepted as certified. It may be a promising heuristic or partial asymptotic, but it needs explicit inequalities, a regime split, and remainder control before entering the lemma bank.

Similarly, A2’s assertion that the dynamic $\tau$-coordinate yields a bounded $O(1/n)$ error after integration by parts is not yet certified. The Prüfer integral is singular near $K_B=0$, and any cancellation must be made quantitative.

### A3

A3 was the most reliable algebra auditor.

Adopt the following as lemma-bank material.

A3 verified the affine endpoint equation, the cap length identity, the quadratic product structure, the sharpened derivative estimate, the rational-coordinate equation, the invariant product, and the finite-$B$ Bessel normalization.

The endpoint ODE is

$$
(p_BH')'+q_BH=0.
$$

The product is

$$
K_B(u)=p_Bq_B
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

The cap boundary is

$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

The derivative lower bound is

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
\ge
\frac{\alpha}{2}.
$$

The rational-coordinate equation is

$$
(vH_v')'+\widehat q_B(v)H=0,
$$

with

$$
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2},
$$

and

$$
v\widehat q_B(v)=K_B(u(v)).
$$

A3 also verified the finite-$B$ frequency drift identity

$$
\Lambda_\infty-\Lambda_B
=
\frac{(n+1)(\alpha+1)}{2B},
$$

where

$$
\Lambda_\infty=n+\frac{\alpha+1}{2}.
$$

This supports the warning that a naive finite-$B$ bridge from the Laguerre limit is not uniformly small when $\beta$ is small and $\alpha=O(n)$.

A3’s remaining tasks are not conceptual but auditing: verify A2’s $Q_u$, $Q_v$, Prüfer equations, turning-point distinctions, and compactified polynomial formula.

### A4

A4 supplied the most useful technical checklist and corrected a persistent Bessel constant error.

Adopt the half-order computation:

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t.
$$

The positive critical points satisfy

$$
\tan t=2t.
$$

For the first positive solution

$$
t_1\approx1.1655611852072113,
$$

the maximum is

$$
J_{1/2}(t_1)
=
\sqrt{\frac{8t_1}{\pi(1+4t_1^2)}}
\approx0.6791921047.
$$

This definitively rejects the earlier false value $2/\pi$. However, it does not by itself prove

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

A4 correctly says this global statement needs a named monotonicity theorem for Bessel maxima or a rigorous two-variable interval proof.

A4 also correctly reframed the gamma-ratio problem. The exact Bessel matching normalization is

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

A bound $M\le1$ is false in general, and a two-sided expansion $M=1+O(n^{-2})$ is not uniform across $\alpha=O(n)$. The required object is a one-sided upper certificate, with different treatments for fixed $\alpha$, intermediate $\alpha$, and $\alpha=cn$.

A4’s compactification is useful:

$$
\theta=\frac{n+\alpha+1}{B}\in[0,1].
$$

But A1’s review caught a correction. If the finite hypergeometric representation is used,

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
{}_2F_1\left(-n,B;\alpha+1;\frac{u}{B}\right),
$$

then

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}\left(1+\frac{j}{B}\right)
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right),
$$

not $\prod(1+j\theta)$. Any interval implementation must also include the endpoint weights, gamma normalization, and the stable $\theta=0$ Laguerre face.

Rejected or risky ideas:

1. **Claiming KKT is proved.** Rejected. No Round 14 agent proves the first-lobe amplitude theorem. The full real-parameter conjecture remains open in this workflow.

2. **Naive constant-frequency Bessel comparison as the main route.** Rejected as a primary route. It may remain a local diagnostic near the endpoint, but the $\alpha=O(n)$ transition strip makes the unabsorbed quadratic frequency drift too large for a global first-lobe perturbation.

3. **Rational coordinate as an amplitude fix.** Rejected. The rational coordinate is algebraically natural, but because

$$
v\widehat q_B(v)=K_B(u(v)),
$$

and $v$ is Möbius in $u$, it does not create a new invariant or remove the main amplitude problem.

4. **Direct Sonin handoff at $q_B=0$.** Rejected. The Sonin energy contains

$$
\frac{p_BH'^2}{q_B},
$$

which is singular at the original turning point unless a special cancellation is proved. No such cancellation is available. Handoff must be Airy/Prüfer-regularized or delayed to a point $u_h>u_0$ with derivative-energy control.

5. **Confusing turning points.** Risky. The original Sturm-Liouville/Sonin turning point is

$$
q_B=0
$$

or equivalently $K_B=0$ inside the cap. The affine Liouville-normal turning point for

$$
Y_u''+Q_uY_u=0
$$

is

$$
Q_u=0,
$$

which corresponds to

$$
K_B=-\frac14.
$$

These are different. Next-round work must state which turning point it uses and why.

6. **Treating Bessel maximum $<0.680$ as certified from the half-order computation alone.** Rejected. A4 certifies the $J_{1/2}$ local maximum, not the supremum over all $\nu\ge1/2$ and all $t$.

7. **Unproved gamma entropy closure.** Risky. A2’s and A4’s Stirling-entropy comments are useful, but none yet gives a rigorous uniform inequality for $M_{n,\alpha,B}$.

8. **Interval arithmetic before an analytic $N_0$.** Risky. The compactified variables are useful, but computation over infinitely many $n$ is not a proof unless a large-$n$ theorem reduces the problem to a finite range.

9. **Product formula/hypergroup optimism without positivity.** Rejected as a main route for now. It remains exploratory, but no positive product formula with the exact KKT normalization and required real-parameter range has been supplied.

10. **Global Laguerre inequality as the primary target.** Demoted. The Laguerre cap and $\beta=\infty$ face remain essential diagnostics, but the endpoint proof only needs the first lobe in $0\le u\le n$, not a global $u\in[0,\infty)$ theorem.

Known gaps:

### G14.1: First-lobe amplitude theorem

The central open theorem remains:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),
\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point of $H_B$ after the original endpoint turning point in the cap. Prove

$$
|H_B(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This theorem is not proved by Round 14.

### G14.2: Turning-layer regularization

Forbidden-zone ascent reaches the first original turning point, and Sonin monotonicity orders later extrema. But the Sonin functional is singular at $q_B=0$. A complete proof needs an Airy or regularized Prüfer bridge through the turning layer, or a handoff at $u_h>u_0$ with an explicit bound on

$$
H(u_h)^2+\frac{p_B(u_h)H'(u_h)^2}{q_B(u_h)}.
$$

### G14.3: Exact amplitude drift estimate in the dynamic oscillator

The dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0
$$

is exact, and the Prüfer drift equation is exact where $K_B>0$. What is missing is a bound for the amplitude integral

$$
\int
\frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau
$$

after proper Airy initialization. The integral is singular if treated naively near $K_B=0$, so cancellation or regularization must be explicit.

### G14.4: Gamma-ratio upper certificate

The exact matching constant

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

needs a rigorous one-sided upper estimate across the residual strip. The proof should split into at least:

- fixed or small $\alpha$;
- $\alpha=o(n)$ but unbounded;
- $\alpha=cn$;
- boundary $\beta=0$ and Laguerre face $\beta=\infty$.

A statement like $M=1+O(n^{-2})$ is not an acceptable uniform theorem.

### G14.5: Bessel maximum theorem

If any Bessel comparison remains in the proof, the bound

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680
$$

must be proved by a cited theorem with hypotheses or by rigorous interval analysis. The local half-order computation is certified but insufficient for the global supremum.

### G14.6: Correct compactified interval representation

For fixed $n$, the compactification

$$
\theta=\frac{n+\alpha+1}{B}
$$

is useful, but the interval formula must use the correct coefficient

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right).
$$

It must also include:

- gamma normalization;
- endpoint weights;
- stable $\theta=0$ Laguerre limit;
- interval isolation of critical points;
- boundary boxes at $u=0$, $u=u_\sigma$, $\alpha=1/2$, $\theta=0$, and $\theta=1$.

### G14.7: Boundary and degeneracy clauses

The final theorem must explicitly separate:

$$
n=0,\qquad
\alpha=0,\qquad
\beta=0,\qquad
\alpha=\frac12,\qquad
u_0=u_\sigma,\qquad
u_1\text{ absent}.
$$

The endpoint proof should not hide these inside assumptions that require $\alpha>0$, $q_B>0$, or $K_B>0$.

### G14.8: Central contour dependency

The first-lobe reduction assumes central control at $u_\sigma$. The final proof must restate the central module’s hypotheses exactly and verify they apply at the cap boundary. Round 14 did not reprove that module.

### G14.9: Semi-discrete specialization

The main application only needs $\beta\in\mathbb N_0$. The current route treats all $\beta\ge0$. If the full real-$\beta$ theorem stalls, the next fallback should test whether the semi-discrete case admits stronger gamma, monotonicity, or finite-verification structure.

New lemmas to add:

### Lemma L14.1: Right endpoint cap length

For $n\ge1$, $B=n+\alpha+\beta+1$, and

$$
u=\frac{B(1-x)}2,
$$

the central interface

$$
\sigma=\frac{\alpha+\beta}{\alpha+\beta+2n}
$$

maps to

$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

Status: certified.

### Lemma L14.2: Exact affine endpoint equation

For

$$
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
$$

one has

$$
(p_BH')'+q_BH=0,
$$

where

$$
p_B(u)=u\left(1-\frac uB\right),
$$

and

$$
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{
\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2
}{
4u\left(1-\frac uB\right)
}.
$$

Status: certified.

### Lemma L14.3: Quadratic Sonin product

With

$$
K_B(u)=p_B(u)q_B(u),
$$

one has

$$
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

where

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4},
$$

$$
c_B=n+\frac12-\frac{n+1}{2B},
\qquad
r_B=1-\frac{n+1}{B}.
$$

Status: certified.

### Lemma L14.4: Sharpened cap monotonicity

For $0\le u\le u_\sigma$,

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

Therefore, in the residual range $\alpha\ge1/2$,

$$
K_B'(u)\ge\frac14.
$$

Status: certified, with the stated residual-range restriction.

### Lemma L14.5: Forbidden-zone ascent

Assume $\alpha>0$. If $u_0$ is the first zero of $K_B$ in the cap, then the regular endpoint solution is positive and strictly increasing on $(0,u_0)$. If there is no zero of $K_B$ in the cap, then the solution is increasing throughout the cap.

Status: certified modulo final boundary wording.

### Lemma L14.6: Allowed-zone Sonin ordering

On intervals where $q_B>0$,

$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}
$$

satisfies

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Local extrema in the allowed zone are therefore nonincreasing in amplitude as $u$ increases.

Status: certified.

### Lemma L14.7: First-lobe reduction

Under the imported global reductions and in the residual right-endpoint range $\alpha>1/2$, the cap estimate reduces to proving the target bound at the first critical point $u_1$ after the first endpoint turning point. If $u_1$ is absent, the cap is controlled by the central boundary or monotonicity.

Status: nearly certified; add boundary cases before final lemma-bank commitment.

### Lemma L14.8: Exact dynamic oscillator

With

$$
\tau=\log\frac{u}{B-u},
$$

one has

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Status: certified algebraically.

### Lemma L14.9: Dynamic Prüfer equations

On $K_B>0$, define

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi.
$$

Then

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos 2\phi,
$$

and

$$
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin 2\phi.
$$

Status: certified algebraically on the allowed interval; not a bound until Airy initialization and singular behavior are handled.

### Lemma L14.10: Affine Liouville normal form

For $H=p_B^{-1/2}Y_u$,

$$
Y_u''+Q_uY_u=0,
$$

where

$$
Q_u(u)=\frac{K_B(u)+1/4}{p_B(u)^2}.
$$

Status: derived and likely correct; assign A3 to final audit before lemma-bank certification.

### Lemma L14.11: Rational-coordinate equation and invariant product

With

$$
v=B\frac{1-x}{1+x}=\frac{Bu}{B-u},
$$

one has

$$
(vH_v')'+\widehat q_B(v)H=0,
$$

where

$$
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2},
$$

and

$$
v\widehat q_B(v)=K_B(u(v)).
$$

Status: certified.

### Lemma L14.12: Half-order Bessel maximum

For

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

the first positive maximum occurs at the first positive solution of

$$
\tan t=2t,
$$

namely

$$
t_1\approx1.1655611852072113,
$$

with value

$$
J_{1/2}(t_1)
=
\sqrt{\frac{8t_1}{\pi(1+4t_1^2)}}
\approx0.6791921047.
$$

Status: certified for $\nu=1/2$ only. Do not upgrade to a global $\nu\ge1/2$ Bessel supremum without a theorem or interval proof.

### Lemma L14.13: Bessel normalization formula

The endpoint Bessel matching constant is

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

Status: certified algebraically; no useful global upper bound certified.

### Warning W14.1: Static Bessel drift

In the $\alpha=O(n)$ transition strip, fixed-frequency Bessel comparison leaves a non-small residual over the first-lobe scale. Static Bessel comparison is therefore not a credible main closure route.

Status: warning, not impossibility theorem.

### Warning W14.2: Sonin handoff pole

The Sonin energy is singular at $q_B=0$. A proof cannot simply evaluate $S_B$ at the turning point.

Status: certified obstruction to naive handoff.

Counterexample checks to run:

1. **First-lobe numerical map.** Compute

$$
R_{n,\alpha,\beta}^{(1)}
=
\frac{|H_B(u_1)|}{T_{n,\alpha,\beta}}
$$

over

$$
n\in\{1,2,3,5,10,20,50,100,200\},
$$

$$
\alpha\in\left[\frac12,\alpha_E(n)\right],
$$

and compactified

$$
\theta=\frac{n+\alpha+1}{B}\in\{0,0.05,0.1,0.25,0.5,0.75,1\}.
$$

Record the maximum ratio, worst parameters, and whether the apparent hardest region is near $\theta=0$, $\theta=1$, or the interior.

2. **Turning-point and first-critical-point scaling.** For the same grid compute $u_0$, $u_1$, $u_1-u_0$, and $\tau_1-\tau_0$. Determine whether the hardest cases have $u_1=O(1)$, $O(n^{2/3})$, or $O(n)$.

3. **Dynamic Prüfer drift integral.** Numerically compute

$$
\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau
$$

with an Airy or non-singular start $\tau_h>\tau_0$. Compare the signed integral with the absolute-variation integral. If cancellation is essential, measure it.

4. **Airy-layer constants.** Near $u_0$, fit

$$
K_B(u)=K_B'(u_0)(u-u_0)-\Delta_B(u-u_0)^2
$$

and compute the natural Airy scale. Test whether the Airy layer overlaps $u=0$ in the $\alpha=O(n)$ transition strip.

5. **Original versus Liouville-normal turning point.** Compute both turning notions:

$$
K_B=0
$$

and

$$
K_B=-\frac14.
$$

Check which one governs the numerically observed first maximum of $H$ and which one governs any transformed variable $Y_u$.

6. **Gamma normalization envelope.** Evaluate

$$
M_{n,\alpha,B}
$$

over the same grid. Record all cases where $M>1$, and test candidate bounds of the form

$$
M_{n,\alpha,B}\le1+\frac{C}{n+1},
$$

or sharper regime-dependent bounds.

7. **Bessel maximum over $\nu$.** Locate a precise theorem for

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680,
$$

or perform a rigorous interval search over $\nu$ and $t$. The half-order computation alone is not enough.

8. **Correct compactified interval formula.** Implement the finite hypergeometric polynomial with

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right),
$$

including full normalization and endpoint weights. Verify stable behavior at $\theta=0$.

9. **Boundary cases.** Explicitly test

$$
n=0,\quad n=1,\quad \alpha=0,\quad \alpha=\frac12,\quad \beta=0,\quad \theta=0,\quad \theta=1,
$$

and the no-critical-point case.

10. **Semi-discrete subset.** Run separate maps for $\beta\in\mathbb N_0$ at small integer values. It may expose additional monotonicity or finite verification structure not visible in continuous $\beta$.

Research strategy adjustment:

The Round 15 strategy should narrow further. Round 14 has produced enough architecture; the next round should not add more broad routes unless a route is tied to an explicit checkable inequality.

The primary research objective should be:

**Prove a conditional Airy/Prüfer first-lobe amplitude theorem for the dynamic oscillator**

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

A useful conditional theorem would be enough if it has the form:

If the regularized Prüfer amplitude drift satisfies

$$
\left|
\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau
\right|
\le E_{n,\alpha,\beta},
$$

with

$$
E_{n,\alpha,\beta}
$$

explicit and small enough after combining with the Airy initialization and gamma normalization, then

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

The next round should produce this inequality in symbolic form, even if the numerical constants remain incomplete.

Use a three-track allocation:

**Track A: Certified reduction and theorem statement.** A1 should write the proof skeleton as a theorem with exactly one analytic hypothesis: a first-lobe amplitude lemma. This keeps the state clean.

**Track B: Dynamic amplitude mechanics.** A2 and A3 should work on the Airy/Prüfer/Langer formulas. A2 should derive candidate bounds; A3 should audit signs, normalizations, turning points, and formulas.

**Track C: Numerical cartography.** A4 should stop planning in the abstract and produce actual numerical tables and corrected interval formulas. The data should identify whether the proof margin is large or thin.

Do not spend Round 15 on:

- global Laguerre $u\in[0,\infty)$;
- product formula speculation without positivity;
- Christoffel-function bounds without the sharp constant;
- static Bessel comparison without a new error estimate;
- interval verification claims without a concrete $N_0$.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 15 task is to convert the Round 14 structural progress into a clean theorem package and a single explicit analytic target.

Objectives:

1. Write a lemma-bank-ready theorem titled “Right endpoint cap and first-lobe reduction.” It must include:
   - hypotheses $n\ge1$, $\alpha>1/2$, $\beta\ge0$;
   - imported dependencies: central contour, small-exponent theorem, energy clearance, symmetry;
   - $B=n+\alpha+\beta+1$;
   - $u=B(1-x)/2$;
   - $u_\sigma=nB/(B+n-1)\le n$;
   - endpoint ODE;
   - $K_B$ quadratic;
   - $K_B'(u)\ge\alpha/2$ on the cap;
   - forbidden-zone ascent;
   - Sonin ordering;
   - first-lobe reduction.

2. State the exact target theorem remaining:

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Do not weaken it and do not replace it by a global Laguerre target.

3. Formulate a conditional dynamic amplitude theorem using

$$
\tau=\log\frac{u}{B-u}
$$

and

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

The theorem should specify exactly what Airy initialization constant, Prüfer drift integral, and gamma normalization estimate would imply the first-lobe target.

4. Separate all boundary cases:
   - $n=0$;
   - $\alpha=0$;
   - $\alpha=1/2$;
   - $\beta=0$;
   - no zero of $K_B$ in the cap;
   - no critical point $u_1$;
   - turning point at $u_\sigma$.

5. Include a section titled “What remains unproved” and keep it narrow.

Exploratory allocation: briefly evaluate whether the semi-discrete case $\beta\in\mathbb N_0$ admits a simpler version of the conditional amplitude theorem.

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 15 task is to turn the Airy/Prüfer idea into precise inequalities or to find a concrete obstruction.

Objectives:

1. Work in the exact dynamic variable

$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Do not use static Bessel comparison as the main model.

2. Define the original turning point $u_0$ by

$$
K_B(u_0)=0,
$$

and compute the local Airy scaling in $\tau$. Derive explicit formulas for:
   - $dK_B/d\tau$ at $u_0$;
   - the Airy scale;
   - the matching of the regular Frobenius branch to the Airy solution;
   - the phase and amplitude at a handoff point $\tau_h>\tau_0$.

3. Starting from the exact Prüfer equations

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos2\phi,
$$

and

$$
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi,
$$

derive a concrete upper bound for $R(\tau_1)/R(\tau_h)$, or prove that such a bound cannot be sharp enough in some scaling regime.

4. If you use a Langer or Szegő variable $\zeta$, derive the Schwarzian residual explicitly and bound it near the turning point. Do not state “$O(1/n)$” without a displayed integral and constants.

5. Revisit your Stirling-entropy claim for $M_{n,\alpha,B}$. Present it either as:
   - a rigorous lemma with Binet/Robbins/Kershaw remainder bounds; or
   - a heuristic, clearly marked as such.

6. State a falsification test: give a specific asymptotic parameter scaling under which the Airy/Prüfer theorem would fail if the drift integral exceeds the KKT slack.

Exploratory allocation: examine whether the semi-discrete case $\beta\in\mathbb N_0$ gives extra discrete convexity or monotonicity in $B$.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 15 task is to audit every formula needed for the dynamic amplitude theorem.

Objectives:

1. Verify the exact dynamic transformation:

$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

2. Verify the exact Prüfer equations:

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi,
$$

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos2\phi,
$$

$$
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

3. Compute explicitly:
   - $u(\tau)$;
   - $du/d\tau=p_B(u)$;
   - $K_{B,\tau}=p_BK_B'$;
   - $K_{B,\tau\tau}$;
   - $dK_B/d\tau$ at the original turning point $u_0$;
   - the Airy linearization constant.

4. Audit the affine Liouville normal form:

$$
Q_u(u)=\frac{K_B(u)+1/4}{p_B(u)^2},
$$

and derive the corresponding rational-coordinate normal form $Q_v(v)$. Distinguish clearly between the original turning point $K_B=0$ and the Liouville-normal turning point $K_B=-1/4$.

5. Correct the compactified hypergeometric formula. With

$$
\theta=\frac{n+\alpha+1}{B},
$$

derive the exact polynomial factor

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right).
$$

Also derive the endpoint weight limit as $\theta\to0$.

6. Produce a short lemma on all boundary cases:
   - $n=0$;
   - $\alpha=0$;
   - $\alpha=1/2$;
   - $\beta=0$;
   - $K_B$ has no zero in the cap;
   - $u_0=u_\sigma$;
   - $u_1$ absent.

Exploratory allocation: attempt a rigorous one-sided upper bound for $M_{n,\alpha,B}$ using Binet’s formula or a known gamma-ratio inequality, even if only in the subregime $\alpha\le C\sqrt n$.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 15 task is to produce executed numerical evidence and a corrected interval-arithmetic scaffold, not merely a plan.

Objectives:

1. Compute high-precision numerical tables for

$$
R_{n,\alpha,\beta}^{(1)}
=
\frac{|H_B(u_1)|}{T_{n,\alpha,\beta}}
$$

for

$$
n\in\{1,2,3,5,10,20,50,100,200\},
$$

with $\alpha$ sampled in

$$
\left[\frac12,\alpha_E(n)\right],
$$

and

$$
\theta=\frac{n+\alpha+1}{B}
$$

sampled at

$$
0,\ 0.05,\ 0.1,\ 0.25,\ 0.5,\ 0.75,\ 1.
$$

Report:
   - maximum observed ratio;
   - worst parameters;
   - $u_0$;
   - $u_1$;
   - whether $u_1$ exists;
   - numerical margin to $1$.

2. Compute and tabulate

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

Report all samples with $M>1$ and test candidate envelopes such as

$$
M\le1+\frac{C}{n+1}.
$$

3. Correctly implement the finite hypergeometric representation using

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right).
$$

Include:
   - gamma normalization;
   - endpoint weights;
   - the stable $\theta=0$ Laguerre face;
   - derivative formula for isolating critical points.

4. Provide a rigorous interval-arithmetic prototype for $n=1$ and $n=2$ only. It is acceptable if it does not finish, but it must specify:
   - interval variables;
   - box subdivision;
   - interval evaluation formula;
   - interval Newton criterion for $H'(u)=0$;
   - boundary checks;
   - failure boxes.

5. For the Bessel maximum, either:
   - cite an exact theorem proving the global supremum over $\nu\ge1/2$ is below $0.680$; or
   - design a genuine interval proof over $\nu$ and $t$.

6. Numerically evaluate the dynamic Prüfer drift and the Airy scale in the same samples as the first-lobe ratio. The goal is to identify whether the amplitude theorem has large slack or is near sharp.

Exploratory allocation: test the semi-discrete subset $\beta\in\{0,1,2,3,4,5,10\}$ separately and report whether the worst continuous-$\theta$ samples occur at integer $\beta$ or not.

Confidence:

Confidence in the endpoint-cap ODE, cap length, $K_B$ quadratic, derivative monotonicity, and rational-coordinate invariant product: high, about $0.92$.

Confidence in the forbidden-zone ascent and first-lobe reduction after boundary cases are written cleanly: moderately high, about $0.80$.

Confidence in the exact dynamic oscillator $H_{\tau\tau}+K_BH=0$ and the displayed Prüfer equations: high as algebra, about $0.88$; low as a completed amplitude theorem, about $0.30$.

Confidence that naive static Bessel comparison should not be the main proof route: moderately high, about $0.80$.

Confidence that the global Bessel maximum bound $<0.680$ is available or certifiable: moderate, about $0.65$, pending a precise theorem or interval proof.

Confidence in a uniform gamma-ratio upper bound strong enough for the final theorem: uncertain, about $0.45$.

Confidence that a dynamic Airy/Prüfer theorem can eventually close the first-lobe amplitude bound: moderate, about $0.55$.

Confidence that certified computation can close the finite-$n$ remainder after a large-$n$ theorem exists: moderate, about $0.65$.

Confidence that Round 14 proves the full real-parameter KKT conjecture: low, about $0.15$.

Overall judge decision:

Record Round 14 as a successful normal-form and reduction round. Commit the endpoint-cap first-lobe theorem package and the dynamic oscillator identities to the lemma bank, but do not commit any amplitude theorem, gamma-ratio bound, global Bessel maximum theorem, or interval verification as proved.

Round 15 should focus on one mathematical objective: convert the exact dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0
$$

into a first-lobe amplitude bound through a regularized Airy/Prüfer or Langer-Olver theorem with explicit constants. The proof target is not the global Laguerre inequality and not static Bessel comparison. It is the finite-$B$ first critical point estimate in the endpoint cap.
