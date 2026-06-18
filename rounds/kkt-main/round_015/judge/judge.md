Summary:

According to the Round 15 packet from 2026-06-02, Round 15 strengthens the endpoint-cap algebra and dynamic-normal-form machinery, but it does **not** prove the real-parameter KKT conjecture.

The most reliable Round 15 conclusion is that the right endpoint cap reduction should now be treated as certified, conditional on the imported central-contour, small-exponent, energy, and symmetry modules. The remaining mathematical problem has been narrowed to a finite-$B$ first-critical-point amplitude theorem in the cap. In particular, after setting

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}2,\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
$$

the residual cap satisfies

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n,
$$

and the endpoint equation is

$$
(p_BH')'+q_BH=0,
\qquad
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

with

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

The product

$$
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2
$$

is a concave quadratic and satisfies the cap derivative lower bound

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}
\ge\frac{\alpha}{2}.
$$

In the residual right-endpoint strip $\alpha>1/2$, this gives $K_B'(u)>1/4$ on the whole cap. A3 independently audited the algebra, including the exact dynamic oscillator and Prufer identities, and is the most trustworthy Round 15 technical source. A1 supplied the cleanest theorem package. A2 supplied the most useful obstruction analysis and the best strategic pivot toward a global Langer/Airy theorem, but its asymptotic constants are not yet theorem-level. A4 supplied useful compactified formulas and $n=1$ algebra, but did not yet provide the requested executed numerical tables or interval certificates.

The selected route remains the endpoint-cap first-lobe route. The global Laguerre inequality on $0\le u<\infty$, static Bessel comparison, speculative product formulas, and unexecuted interval arithmetic should not be treated as main proof routes.

Literature status:

The core reference remains Koornwinder--Kostenko--Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, Adv. Math. 333, 796--821 (2018), DOI 10.1016/j.aim.2018.05.038. The arXiv record confirms the title, authors, journal reference, and the connection between Jacobi Bernstein inequalities and dispersive estimates for the generalized Laguerre operator. Haagerup--Schlichtkrull prove a real-parameter uniform Bernstein-type inequality for Jacobi polynomials, uniform for $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but this is not the sharp KKT constant. Landau's Bessel theorem is now a usable external dependency: the Cambridge abstract states that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$, and gives the journal data and DOI. Arb is a legitimate interval-arithmetic platform: Johansson describes Arb as arbitrary-precision midpoint-radius interval arithmetic supporting real/complex numbers, polynomials, power series, matrices, and many special functions. Robbins' 1955 note gives the strict factorial Stirling remainder inequality $1/(12n+1)<r_n<1/(12n)$; extending the needed estimates to the real gamma-ratio arguments in this problem remains a separate analytic task. Olver/Langer turning-point theory remains the relevant theoretical framework, but Round 15 still lacks an instantiated theorem with the exact KKT hypotheses and constants.

Selected main route:

The selected main route is:

**Endpoint-cap first-lobe reduction plus a global Langer/Airy amplitude theorem for the exact dynamic oscillator.**

The proof skeleton to preserve is the following.

First, import the established global reductions:

1. central branch-safe contour clearance;
2. weighted-energy clearance;
3. small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
4. left-endpoint symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
5. elementary base-case separation for $n=0$, $\alpha=0$, $\alpha=1/2$, $\beta=0$, no turning point, no critical point, and endpoint-interface degeneracies.

Second, in the residual right-endpoint range

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

where

$$
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3},
$$

work only in the cap

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

Third, use forbidden-zone ascent before the first zero $u_0$ of $K_B$. Since

$$
K_B(0)=-\frac{\alpha^2}{4}<0
$$

for $\alpha>0$, the regular Frobenius branch satisfies

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
\qquad
A_{n,\alpha,B}>0,
$$

and, with

$$
W(u)=p_B(u)H'(u),
$$

the endpoint equation gives

$$
W'(u)=-q_B(u)H(u)>0
$$

as long as $q_B<0$ and $H>0$. Thus $H$ remains positive and increasing up to the first turning point. There is no forbidden-zone local maximum.

Fourth, on $K_B>0$, use Sonin ordering. The cap Sonin functional

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

Consequently, local extrema after the turning point are nonincreasing in amplitude as $u$ increases toward the central boundary. Any residual endpoint failure must occur at the first critical point $u_1$ after the first zero $u_0$ of $K_B$, if such a point exists.

Fifth, prove the remaining first-critical-point amplitude estimate:

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This is the only active analytic gap after Round 15.

Sixth, attack that estimate through the exact dynamic variable

$$
\tau=\int^u\frac{ds}{p_B(s)}
=
\log\frac{u}{B-u}.
$$

Since

$$
\frac{d\tau}{du}=\frac{1}{p_B(u)},
$$

one has

$$
H_\tau=p_BH',
\qquad
H_{\tau\tau}=p_B(p_BH')'=-p_Bq_BH=-K_BH.
$$

Therefore

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

This exact oscillator has no Schwarzian residual and should be the main analytic object. The task is not to compare it to a static Bessel equation. The task is to prove a uniform first-lobe amplitude theorem through either a global Langer transformation or an Airy-normalized Prufer theorem with explicit constants.

Useful fragments by source:

### A1

A1 supplied the most usable theorem-package synthesis.

Adopt A1's "Right endpoint cap and first-lobe reduction" as a lemma-bank theorem after minor boundary-case edits. Its central content is:

$$
u_\sigma=\frac{nB}{B+n-1}\le n,
$$

the exact endpoint ODE,

$$
(p_BH')'+q_BH=0,
$$

the quadratic product,

$$
K_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

the derivative lower bound,

$$
K_B'(u)\ge\frac{\alpha}{2}
$$

on the residual cap, and the conclusion that only the first allowed local extremum can matter.

A1's conditional dynamic theorem is also useful because it separates the three constants that must be controlled:

1. an Airy initialization constant at or just after the turning point;
2. a Prufer drift or Langer residual integral through the first lobe;
3. a gamma-normalization envelope strong enough to fit inside the KKT target.

A1 correctly does **not** claim that these constants have been proved. This distinction should be preserved.

A1's limitation is that its conditional theorem is still schematic. It does not yet give a specific value of the handoff coordinate, a rigorous bound for the Airy Cauchy data, or a closed error integral proving

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

### A2

A2's most valuable contribution is obstruction analysis.

The useful A2 conclusions are:

1. static-frequency Bessel/Volterra comparison is too lossy in the $\alpha=O(n)$ transition strip;
2. a piecewise Airy-to-Prufer handoff can leave an $O(1)$ boundary term if not regularized carefully;
3. the global Langer/Szego variable should be considered the primary analytic route because it can absorb the turning-point drift without a singular intermediate handoff;
4. the semi-discrete restriction $\beta\in\mathbb N_0$ does not obviously remove the Laguerre-face bottleneck, since the target constant changes with $\beta$.

The A2 static-frequency warning is valuable but should be recorded as a calibrated obstruction, not an impossibility theorem for all Bessel-based normal forms. Its Volterra estimate is a model scaling calculation. It does not rule out a Langer-Bessel or Bessel-pole turning-point uniform approximation.

A2's strongest strategic recommendation is that Round 16 should compute the exact Langer residual and its variation integral with constants rather than continue adding broad architecture.

A2 overstates the status of several asymptotic claims. In particular, the statement that the Langer residual is $O(n^{-4/3})$ near the turning point is not enough by itself. The theorem needed is a global first-lobe estimate with an explicitly bounded error kernel.

### A3

A3 supplied the strongest algebra audit and should be treated as the most reliable Round 15 technical source.

The following A3 identities are certified.

First, the dynamic oscillator:

$$
\tau=\log\frac{u}{B-u},
\qquad
u(\tau)=\frac{Be^\tau}{1+e^\tau},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Second, the Prufer equations on $K_B>0$. With

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi,
$$

one has

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

These formulas are exact on the allowed interval $K_B>0$ and should be added to the lemma bank.

Third, the Airy scale at the original turning point. If $u_0$ is the first zero of $K_B$, then

$$
K_B(u(\tau))
=
K_{B,\tau}(u_0)(\tau-\tau_0)+O((\tau-\tau_0)^2),
$$

with

$$
K_{B,\tau}(u_0)=p_B(u_0)K_B'(u_0).
$$

Thus the natural scaled Airy coordinate is

$$
\zeta=
\left(p_B(u_0)K_B'(u_0)\right)^{1/3}(\tau-\tau_0).
$$

Fourth, the affine and rational Liouville normal forms are correctly distinguished. If

$$
Y_u=p_B^{1/2}H,
$$

then

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

If

$$
v=\frac{Bu}{B-u},
\qquad
Y_v=v^{1/2}H,
$$

then

$$
Y_v''+\frac{K_B(u(v))+1/4}{v^2}Y_v=0.
$$

This proves that the Liouville-normal turning point $K_B=-1/4$ differs from the original Sonin/Sturm turning point $K_B=0$. Future arguments must not conflate them.

Fifth, A3 verified the compactified hypergeometric factor. For

$$
\theta=\frac{n+\alpha+1}{B},
$$

one has

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right),
$$

and therefore

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]
u^k.
$$

This formula is stable at the Laguerre face $\theta=0$ and is the correct basis for interval arithmetic.

A3's limitation is that it correctly stops at algebra. It does not prove the first-lobe amplitude theorem or the gamma-ratio envelope.

### A4

A4's most valuable input is computational scaffolding, not proof closure.

Adopt the following A4 contributions.

First, the compactified hypergeometric representation is correct and useful for interval arithmetic. It avoids unstable $1^\infty$ behavior at the Laguerre face $\theta=0$.

Second, the $n=1$ critical-point equation is correct. Since

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u,
$$

the positive critical points of $H_1$ satisfy

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)
=
0.
$$

This reduces the $n=1$ certification to exact algebraic root isolation plus interval evaluation of $H_1^4-T^4$.

Third, A4's leading Stirling-entropy calculation for the gamma normalization is potentially useful. In the boundary regime $\beta=0$, $\alpha=cn$, it suggests the exponent

$$
f(c)=(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right)
$$

may be negative for $0<c\le1$. This may show that the gamma normalization decays in the deep transition strip rather than grows. However, this is **not yet certified**. It requires Binet/Robbins remainder control and separate treatment of $\alpha=O(1)$, $\alpha=o(n)$, and transition subranges.

Fourth, A4 treats Landau's Bessel maximum result as an external theorem rather than a theorem proved inside the report. This is the correct posture.

Reject or downgrade the following A4 points.

A4 did not provide the requested executed numerical cartography tables for

$$
n\in\{1,2,3,5,10,20,50,100,200\}.
$$

Its first-lobe ratio claims remain heuristic. Its assertion about the worst case in $\theta$ or $\beta$ is not proved. Its no-turning-point discussion contains a sign error: since $K_B(0)<0$ for $\alpha>0$, if $K_B$ has no zero in the cap, then $K_B<0$ throughout the cap, not $K_B>0$.

Rejected or risky ideas:

1. **Claiming KKT is proved.**
Rejected. Round 15 contains no explicit first-lobe amplitude theorem and no finite interval certificate. The full real-parameter KKT conjecture remains open in this workflow.

2. **Static Bessel comparison as the main route.**
Rejected as a main route. A2's Volterra-scaling obstruction and earlier rounds show that constant-frequency comparison can inject an $O(n)$ phase/variation defect in the $\alpha=O(n)$ transition strip. This overwhelms the delicate KKT slack unless a new cancellation is proved.

3. **Rational coordinate as an amplitude fix.**
Rejected. The rational coordinate

$$
v=\frac{Bu}{B-u}
$$

is useful for computation and normal forms, but it preserves the same invariant product. It is not an independent source of amplitude control.

4. **Piecewise Airy-to-Prufer handoff without boundary constants.**
Risky. The raw Prufer drift

$$
\int \frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau
$$

has a turning-point singularity. It must be regularized through Airy data or transformed globally through a Langer variable. A handoff at arbitrary $\tau_h$ is not valid unless the Airy Cauchy data and boundary term are explicitly bounded.

5. **Gamma-ratio exponential decay as a proved theorem.**
Not accepted yet. A4's $f(c)<0$ calculation is promising but only leading-order. A theorem must use Binet or Robbins-type estimates with signs tracked for the four gamma arguments

$$
n+1,\qquad n+\alpha+1,\qquad B,\qquad B-\alpha.
$$

It must also cover small and intermediate $\alpha$.

6. **Worst-case monotonicity in $\beta$ or $\theta$.**
Not established. The target

$$
T_{n,\alpha,\beta}^4
=
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
$$

or, equivalently in original parameters,

$$
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
$$

depends nontrivially on $\beta$, and the amplitude also changes. No monotonicity conclusion should be used without proof.

7. **Unexecuted interval arithmetic.**
Rejected as proof. Arb/ball arithmetic is appropriate, but no interval proof exists until it provides exact boxes, outward-rounded evaluations, isolated critical points, boundary-face checks, and failure-box logs.

8. **Parameter-derivative shortcuts for Jacobi polynomials.**
Risky. A4's exploratory parameter derivative in $\beta$ should not be used unless a correct parameter-derivative identity is stated and proved. The known $x$-derivative identity does not automatically provide a sign expansion for parameter derivatives.

9. **Product-formula or hypergroup shortcut.**
Keep as long-term exploration only. Positivity formulas with exact normalization hypotheses might eventually help, but Round 15 produced no such theorem. The main route should not pivot there.

Known gaps:

### G15.1: Finite-$B$ first-lobe amplitude theorem

The main open theorem remains:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point after the first zero $u_0$ of $K_B$ in the endpoint cap, if such a point exists. Prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

No Round 15 agent proves this.

### G15.2: Airy/Langer initialization constant

The local Airy scale is algebraically known:

$$
\zeta=
\left(p_B(u_0)K_B'(u_0)\right)^{1/3}(\tau-\tau_0).
$$

What is missing is the exact inequality connecting the regular Frobenius solution on the forbidden side to the normalized Airy solution through the turning point. The proof needs explicit constants, not just asymptotic matching.

### G15.3: Prufer drift regularization

The exact Prufer amplitude equation gives

$$
\log\frac{R(\tau_1)}{R(\tau_h)}
=
-\frac14\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau.
$$

This integral is not controlled by absolute values near the turning point. The next step must be either:

1. a global Langer transform avoiding the singular handoff; or
2. a precise integration-by-parts lemma with boundary constants and Airy Cauchy data.

The promising formal IBP object is

$$
W(\tau)=\frac{K_{B,\tau}}{8K_B^{3/2}},
$$

leading to boundary terms plus

$$
\int |W'(\tau)|\,d\tau,
$$

but Round 15 did not certify this as a valid global estimate.

### G15.4: Gamma-ratio envelope

The normalization

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

requires a rigorous upper bound. The leading entropy calculation in $\alpha=cn$ is promising, but the uniform theorem must split regimes and carry explicit Binet/Robbins remainders.

### G15.5: Bessel maximum theorem and normalization use

Landau supplies the monotonicity needed to support

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

For $\nu=1/2$,

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

and the first positive maximum solves

$$
\tan t=2t,
$$

with value about $0.6791921047$. The theorem is now citable, but it is only useful after the exact Airy/Bessel normalization and error terms are aligned with the KKT target.

### G15.6: Finite-$n$ interval certification

A valid interval proof still requires:

1. a large-$n$ analytic theorem producing a finite threshold $N_0$, or a fully rigorous infinite-family interval argument;
2. exact compactified variables $(\alpha,\theta,u)$;
3. stable evaluation at $\theta=0$;
4. interval Newton isolation of all critical points;
5. boundary-face checks;
6. explicit archived failure boxes.

Round 15 supplies formulas, not a certificate.

### G15.7: Boundary cases

The following require clean statements in the proof skeleton:

$$
n=0,\qquad
\alpha=0,\qquad
\alpha=\frac12,\qquad
\beta=0,
$$

and the geometric cases:

$$
K_B\ \text{has no zero in the cap},\qquad
u_0=u_\sigma,\qquad
u_1\ \text{is absent}.
$$

The no-zero case must be corrected: for $\alpha>0$, $K_B(0)<0$, so no zero in the cap means $K_B<0$ throughout the cap.

### G15.8: Semi-discrete case

The semi-discrete target $\alpha\ge0$, $\beta\in\mathbb N_0$ remains strategically important, but Round 15 does not show that discreteness of $\beta$ simplifies the amplitude theorem. It should be tested separately, especially for $\beta=0,1,2,3,4,5,10$, but no proof should assume a semi-discrete monotonicity not yet established.

New lemmas to add:

### Lemma L15.1: Right endpoint cap and first-lobe reduction

Under the imported central, small-exponent, energy, and symmetry reductions, the residual right endpoint case with

$$
n\ge1,\qquad \alpha>1/2,\qquad \beta\ge0
$$

reduces to the cap

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

The endpoint equation is

$$
(p_BH')'+q_BH=0,
$$

with $p_B,q_B$ as above. The product

$$
K_B=p_Bq_B
$$

is a concave quadratic and satisfies

$$
K_B'(u)\ge\frac{\alpha}{2}>\frac14
$$

on the cap. Forbidden-zone ascent and Sonin ordering reduce the endpoint maximum to the first critical point $u_1$ after the first zero $u_0$ of $K_B$, if such $u_1$ exists.

Status: certified modulo imported modules and boundary-case edits.

### Lemma L15.2: Exact dynamic oscillator

With

$$
\tau=\log\frac{u}{B-u},
$$

one has

$$
H_\tau=p_BH',
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Status: certified by A3 and reviews.

### Lemma L15.3: Exact Prufer equations on $K_B>0$

On any interval where $K_B>0$, define

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

Status: certified algebraically. Not a completed amplitude bound.

### Lemma L15.4: Airy scale at the original turning point

If $u_0$ is a simple zero of $K_B$ in the cap, then

$$
K_B(u(\tau))
=
p_B(u_0)K_B'(u_0)(\tau-\tau_0)+O((\tau-\tau_0)^2),
$$

and the natural Airy coordinate is

$$
\zeta=
\left(p_B(u_0)K_B'(u_0)\right)^{1/3}(\tau-\tau_0).
$$

Status: certified as local algebra. The Airy connection estimate is open.

### Lemma L15.5: Liouville normal forms and turning-point distinction

With $Y_u=p_B^{1/2}H$,

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

With $v=Bu/(B-u)$ and $Y_v=v^{1/2}H$,

$$
Y_v''+\frac{K_B(u(v))+1/4}{v^2}Y_v=0.
$$

Therefore the Liouville-normal turning point $K_B=-1/4$ is not the Sonin/Sturm turning point $K_B=0$.

Status: certified.

### Lemma L15.6: Compactified hypergeometric representation

For

$$
\theta=\frac{n+\alpha+1}{B},
$$

the endpoint Jacobi polynomial has the stable finite representation

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]
u^k.
$$

Status: certified and recommended for interval arithmetic.

### Lemma L15.7: Degree-one critical equation

For $n=1$, the critical points of $H_1$ satisfy

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)
=
0.
$$

Status: certified algebraically. Needs interval evaluation for the KKT margin.

### Lemma L15.8: Bessel maximum bound

Landau's theorem implies $\nu\mapsto\sup_x|J_\nu(x)|$ strictly decreases for positive $\nu$. Since the half-order maximum is about $0.6791921047$, one obtains

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

Status: literature-backed dependency; cite Landau before using. It is not itself a KKT amplitude theorem.

### Lemma L15.9: Gamma-ratio entropy candidate

In the boundary scaling $\beta=0$, $\alpha=cn$, A4's leading Stirling calculation suggests a residual exponent

$$
f(c)=(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right),
$$

which appears negative on $0<c\le1$.

Status: promising but not certified. Needs Binet/Robbins remainder theorem and regime splitting.

### Lemma L15.10: Candidate Prufer integration-by-parts drift bound

Starting from

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos 2\phi,
$$

a possible regularized drift estimate uses integration by parts with

$$
W(\tau)=\frac{K_{B,\tau}}{8K_B^{3/2}}.
$$

At $\tau_1$, where $H_\tau=0$, $\sin 2\phi(\tau_1)=0$. The lower boundary term at the Airy handoff and the integral of $W'$ must be controlled. In the linear model, a handoff at

$$
\tau_h=\tau_0+a\gamma^{-1/3},
\qquad
\gamma=p_B(u_0)K_B'(u_0),
$$

suggests a candidate scale $O(a^{-3/2})$.

Status: exploratory. Needs exact nonlinear proof.

Counterexample checks to run:

1. **First-lobe ratio map.**
Compute

$$
R_{n,\alpha,\beta}^{(1)}
=
\frac{|H(u_1)|}{T_{n,\alpha,\beta}}
$$

for

$$
n\in\{1,2,3,5,10,20,50,100,200\},
$$

with $\alpha/\alpha_E(n)$ sampled near $0$, $1/4$, $1/2$, $3/4$, $1$, and with

$$
\theta=\frac{n+\alpha+1}{B}
$$

sampled at $0,0.05,0.1,0.25,0.5,0.75,1$. Report $u_0,u_1,u_\sigma,M_{n,\alpha,B}$, Airy scale, drift estimate, and margin $1-R$.

2. **Degree-one interval proof.**
Use the quadratic critical equation for $n=1$ to isolate all critical points in intervals. Evaluate $H_1^4-T^4$ on critical branches and all boundary faces:

$$
\alpha=1/2,\qquad
\alpha=\alpha_E(1),\qquad
\theta=0,\qquad
\theta=1.
$$

3. **Degree-two critical algebra.**
Derive the $n=2$ critical-point cubic in compactified variables. This is the next exact finite-degree test and will reveal whether the interval method scales beyond the base case.

4. **No-zero and no-critical-point cases.**
For $\alpha>0$, verify computationally and symbolically that if $K_B$ has no zero in the cap then $K_B<0$ throughout and the cap is controlled by forbidden-zone ascent and central clearance. Check the case $u_0=u_\sigma$ separately.

5. **Gamma-ratio envelope.**
Compute

$$
\log M_{n,\alpha,B}
=
\frac12\left[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)
\right]
-\frac{\alpha}{2}\log(B\Lambda_B)
$$

using interval Binet remainders. Split at least into $\alpha=O(1)$, $\alpha=o(n)$, and $\alpha=cn$ regimes. Test whether $M\le1+C/(n+1)$ is true and identify the best $C$.

6. **Global Langer residual.**
Define the Langer variable from $K_B$ exactly. Compute the Schwarzian/error-control residual and bound its variation over the first-lobe interval. The output must be an explicit expression in $n,\alpha,\beta$, not just $O(n^{-4/3})$.

7. **Prufer IBP validation.**
Starting from

$$
\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos2\phi\,d\tau,
$$

perform the full integration by parts, including the exact denominator

$$
\phi_\tau=\sqrt{K_B}+\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

Bound the boundary term and the residual integral. Check whether the formal $O(a^{-3/2})$ estimate survives.

8. **Bessel maximum dependency.**
Record Landau's exact theorem statement and verify that its hypotheses cover the use of

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

9. **Semi-discrete subset.**
Repeat the first-lobe numerical map for

$$
\beta\in\{0,1,2,3,4,5,10\}.
$$

Check whether worst cases occur at integer $\beta$, at the continuous boundary $\theta=0$, or in interior $\theta$.

10. **Failure search.**
Try to find samples where $R_{n,\alpha,\beta}^{(1)}$ approaches or exceeds $1$ in high precision. If none are found, report the smallest observed margin and whether it shrinks with $n$.

Research strategy adjustment:

Round 16 should narrow further. The project now has enough architecture. The next round should not spend serious effort on new broad routes unless they produce an explicit inequality that could close the first-lobe amplitude theorem.

The central objective should be:

**Turn the exact dynamic oscillator into an explicit first-lobe amplitude theorem.**

The most efficient allocation is:

1. A1 writes the clean proof skeleton and conditional theorem in state-update form, with exactly one analytic hypothesis.
2. A2 works on the global Langer/Airy theorem and exact residual constants.
3. A3 works on gamma-ratio certification and audits all algebraic formulas used by A2/A4.
4. A4 executes actual numerical and interval computations, beginning with $n=1$ and $n=2$.

Do not spend Round 16 on:

- global Laguerre $u\in[0,\infty)$ unless it directly proves the finite-$B$ first-lobe theorem;
- product-formula speculation without a positive formula and exact normalization;
- Christoffel-function bounds without the sharp single-polynomial constant;
- static Bessel comparison without a new cancellation theorem;
- interval verification without explicit boxes, outward rounding, and critical-point isolation.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 16 task is to convert the Round 15 conclusions into a clean proof skeleton with exactly one remaining analytic hypothesis.

Objectives:

1. Write a lemma-bank-ready theorem titled "Conditional KKT endpoint proof from first-lobe amplitude." It should import the following as already established:
   - central-contour clearance;
   - weighted-energy clearance;
   - small-exponent theorem for $0\le\alpha\le1/2$;
   - left-right symmetry;
   - right endpoint cap reduction;
   - forbidden-zone ascent;
   - Sonin ordering;
   - exact dynamic oscillator.

2. State the one remaining hypothesis as a finite-$B$ first-lobe amplitude lemma:

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Do not replace it by a global Laguerre theorem.

3. Formulate a precise conditional Airy/Langer theorem. It must define:
   - the turning point $u_0$;
   - $\tau_0$;
   - $\gamma=p_B(u_0)K_B'(u_0)$;
   - the Airy coordinate $\zeta$;
   - the first critical point $u_1$;
   - the exact error-control integral or Prufer-drift term;
   - the gamma normalization term $M_{n,\alpha,B}$;
   - the inequality among these constants that implies the KKT target.

4. Cleanly handle boundary cases:
   - $n=0$;
   - $\alpha=0$;
   - $\alpha=1/2$;
   - $\beta=0$;
   - no zero of $K_B$ in the cap;
   - $u_0=u_\sigma$;
   - $u_1$ absent.

5. Add a "What remains unproved" section with no broad speculation. It should list only:
   - Airy/Langer amplitude constants;
   - gamma-ratio envelope;
   - finite-$n$ interval certificate.

6. Include a short semi-discrete note: identify whether the proof skeleton simplifies if $\beta\in\mathbb N_0$, but do not claim a simplification unless it follows from a proved monotonicity or finite verification.

Required output: Stage A schema, with "Formal theorem statement for the lemma bank," "Exact remaining analytic hypothesis," and "What would falsify this route."

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 16 task is to replace the heuristic Langer/Airy route by a precise theorem attempt, or to find a concrete obstruction.

Objectives:

1. Work with the exact oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Do not use static Bessel comparison as the main proof model.

2. Define a Langer variable from $K_B$ across the first turning point. Write the exact transformed equation and identify the residual/error-control function. If using Olver's theorem, state the theorem's hypotheses and map each KKT quantity to those hypotheses.

3. Compute the residual explicitly in terms of $n,\alpha,\beta,u$ or $\tau$. The output must include exact rational/quadratic formulas, not just $O(\cdot)$ notation.

4. Prove or refute the claim that the Langer residual variation is $O(n^{-4/3})$ with a usable constant in the transition strip $\alpha=cn$, $\beta=0$, $0<c<1$.

5. Analyze the Airy Cauchy data at a handoff point

$$
\tau_h=\tau_0+a\gamma^{-1/3},
\qquad
\gamma=p_B(u_0)K_B'(u_0).
$$

Compute explicit formulas for the Airy solution value and derivative at $\zeta=a$, including the dependence on $a$.

6. If using Prufer after the Airy layer, perform the full integration by parts on

$$
\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos2\phi\,d\tau.
$$

Track the boundary term at $\tau_h$, the vanishing at $\tau_1$, and the residual integral. State explicit candidate constants.

7. Distinguish proved obstruction, strong heuristic warning, and open diagnostic. Do not declare a route dead unless the proof covers all reasonable variants.

Required output: Stage A schema with sections "Global Langer theorem attempt," "Airy handoff constants," "Prufer drift IBP," "Obstruction status," and "What would falsify this route."

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 16 task is to turn the Round 15 algebra into final lemma-bank text and to certify the gamma-ratio envelope as far as possible.

Objectives:

1. Write final lemma-bank versions of:
   - dynamic oscillator;
   - Prufer equations;
   - Airy scale;
   - affine and rational Liouville normal forms;
   - compactified hypergeometric representation;
   - $n=1$ critical quadratic.

2. Correct the no-zero case explicitly: in the residual strip $\alpha>0$, since $K_B(0)<0$, if $K_B$ has no zero in the cap then $K_B<0$ on the cap.

3. Derive the $n=2$ critical-point equation in compactified variables. Express it as a cubic or lower-degree polynomial with coefficients suitable for interval arithmetic.

4. Audit A4's compactified interval formula, including:
   - gamma normalization;
   - endpoint weights;
   - derivative equation;
   - $\theta=0$ Laguerre face;
   - $\theta=1$ finite face;
   - boundary $\alpha=1/2$ and $\alpha=\alpha_E(n)$.

5. Produce a rigorous gamma-ratio theorem attempt. Starting with

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B),
$$

apply Binet's formula or a real-argument Robbins-type bound. Split regimes as needed:
   - $\alpha=O(1)$;
   - $\alpha=o(n)$;
   - $\alpha=cn$;
   - $\beta=0$ versus $\beta>0$.

6. Prove or disprove the negativity of

$$
f(c)=(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right)
$$

on the intended interval, and state exactly what finite-remainder terms remain.

7. Derive the closed $u$-form of the signed Prufer drift:

$$
\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos2\phi\,d\tau
=
\int_{u_h}^{u_1}
\frac{K_B'(u)}{K_B(u)}\cos2\phi(u)\,du.
$$

Required output: Stage A schema with "Certified identities," "Rejected identities," "Open analytic estimates," and "Lemma-bank text."

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 16 task is to produce executed numerical evidence and a real interval-arithmetic prototype.

Objectives:

1. Produce high-precision numerical tables for

$$
R_{n,\alpha,\beta}^{(1)}
=
\frac{|H(u_1)|}{T_{n,\alpha,\beta}}
$$

for

$$
n\in\{1,2,3,5,10,20,50,100,200\},
$$

with $\alpha/\alpha_E(n)$ sampled at least at

$$
0,\ 0.1,\ 0.25,\ 0.5,\ 0.75,\ 0.9,\ 1
$$

inside the residual interval, and with

$$
\theta=\frac{n+\alpha+1}{B}
$$

sampled at

$$
0,\ 0.05,\ 0.1,\ 0.25,\ 0.5,\ 0.75,\ 1.
$$

For each row report $u_0,u_1,u_\sigma,R^{(1)},1-R^{(1)},M_{n,\alpha,B}$, the Airy scale $\gamma^{1/3}$, and the signed numerical Prufer drift.

2. Provide a separate table for the semi-discrete subset

$$
\beta\in\{0,1,2,3,4,5,10\}.
$$

Report whether the worst continuous-$\theta$ samples occur at integer $\beta$.

3. Execute the $n=1$ interval prototype. Use the exact quadratic critical equation

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)
=
0.
$$

Your output must include:
   - interval variables;
   - box subdivision;
   - root isolation method;
   - boundary-face checks;
   - interval evaluation of $H_1^4-T^4$;
   - unresolved boxes, if any.

4. Implement the compactified hypergeometric polynomial using

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right).
$$

Include full normalization and endpoint weights.

5. Verify the Landau Bessel maximum dependency as a citation and numerical sanity check. Do not try to prove it from scratch unless necessary.

6. Produce explicit failure examples if any ratio exceeds $1$ or if interval boxes cannot be resolved. Failure boxes are useful and should not be hidden.

Required output: Stage A schema with sections "Executed numerical tables," "Interval prototype," "Failure boxes," "Semi-discrete data," and "Experimental versus certified claims."

Confidence:

Confidence in the endpoint-cap ODE, cap length, $K_B$ quadratic, derivative monotonicity, and first-lobe reduction architecture: **0.92**.

Confidence in forbidden-zone ascent and Sonin ordering after boundary-case cleanup: **0.84**.

Confidence in the exact dynamic oscillator and Prufer equations as algebra: **0.92**.

Confidence that A3's Round 15 algebra should be promoted to the lemma bank: **0.88**.

Confidence that static-frequency Bessel comparison is too lossy as a main route: **0.82**.

Confidence that the global Langer/Airy route is the best current analytic route: **0.66**.

Confidence that A2's specific $O(n^{-4/3})$ residual and piecewise-handoff claims are already theorem-level: **0.35**.

Confidence that the gamma-ratio entropy idea will yield useful slack after Binet/Robbins remainder control: **0.62**.

Confidence that Landau supplies the needed Bessel maximum monotonicity dependency: **0.80**, subject to citing the exact theorem statement when used.

Confidence that interval arithmetic will close low-degree cases after the analytic large-$n$ theorem exists: **0.70**.

Confidence that Round 15 proves the full KKT real-parameter conjecture: **0.15**.

Overall judge decision:

Record Round 15 as a successful algebraic consolidation and strategy-narrowing round, not a closure round. Add the endpoint-cap first-lobe reduction, exact dynamic oscillator, Prufer equations, Airy scale, Liouville normal forms, compactified hypergeometric representation, and $n=1$ critical quadratic to the lemma bank with the statuses above. Do **not** add any first-lobe amplitude theorem, Langer residual theorem, gamma-ratio envelope, or interval certificate as proved.

Round 16 should focus almost entirely on the exact Airy/Langer amplitude theorem plus gamma-ratio certification. The endpoint-cap first-lobe route remains the selected route.
