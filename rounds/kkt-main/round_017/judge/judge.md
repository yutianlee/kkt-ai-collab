Summary:

Source packet acknowledged: Round 17 `judge_17.md` is the controlling uploaded packet for this synthesis. Raw uploaded-file citation token:. The retrieved Round 17 snippets state the essential status clearly: Round 17 is a refinement round, not a closure round; no agent proves the finite-$B$ first-lobe amplitude theorem or the full real-parameter KKT conjecture.

My judgment is that Round 17 produced one major analytic refinement and several useful algebra/computation fragments. The major refinement is the replacement of the vague directive “prove a Langer theorem” by a concrete error-control problem for the exact endpoint oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

The best route remains the endpoint-cap first-lobe reduction plus a global Langer/Airy amplitude theorem. The local Airy-to-Prüfer handoff should be demoted: A2’s $a^{-3/2}$ boundary-term obstruction is serious, and trying to force the handoff far enough from the turning point pushes it outside the reliable local linear Airy regime. This does not rule out all Prüfer methods, but it strongly disfavors the current piecewise handoff as the primary proof mechanism.

Round 17’s most useful mathematical objects are:

1. A1’s global Langer coordinate $\zeta$, residual $\Psi_B(\zeta)$, removable turning-point formula, Frobenius-to-Airy normalization, and conditional Airy-kernel theorem.
2. A2’s obstruction to the naive Airy-to-Prüfer handoff and insistence that the exact Prüfer denominator must be retained.
3. A3’s algebra audit: the $K_B+1/4$ Liouville normal-form sign, compactified hypergeometric representation, $n=1$ critical quadratic, and $n=2$ critical cubic.
4. A4’s low-degree scaffolding, especially the analytic $n=1$, $\beta=0$ cap calculation, corrected $T^4$ normalization, and interval-certificate plan.

None of these is yet a complete first-lobe amplitude theorem. The next round should stop adding broad architecture and instead execute three certification tracks: global Langer variation, gamma-ratio envelope, and low-degree interval certificates.

Literature status:

The core paper remains Koornwinder--Kostenko--Teschl, “Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator,” *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`; the arXiv record confirms the authors, title, and the link between Jacobi Bernstein estimates and dispersive estimates for the generalized Laguerre operator.

Landau’s Bessel dependency is valid when a Bessel maximum is actually needed. Landau’s 2000 paper, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215, DOI `10.1112/S0024610799008352`, proves monotonicity of the magnitude at stationary points; the OUP abstract states in particular that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$.

For the Langer/Airy route, the relevant modern references are Dunster--Gil--Segura. Their 2019 paper “Simplified error bounds for turning point expansions” gives explicit elementary-function error bounds for Airy-type simple-turning-point expansions and frames them as a simplification of Olver’s classical bounds. Their 2020 paper “Sharp error bounds for turning point expansions” gives computable, sharp error bounds for linear differential equations with a simple turning point. These are the right theorem families to instantiate for the KKT oscillator; they do not themselves prove the KKT estimate until the exact $\Psi_B$ variation and normalization constants are bounded in the KKT parameter range.

For interval certification, Johansson’s Arb paper describes Arb as a C library for arbitrary-precision midpoint-radius, or ball, interval arithmetic supporting real and complex numbers, polynomials, power series, matrices, and many special functions. Johansson’s separate rigorous hypergeometric computation paper explicitly covers ${}_2F_1$ and, by extension, Jacobi polynomials and related special functions. Arb or an equivalent outward-rounded ball-arithmetic system is therefore an appropriate platform, but no KKT interval certificate exists until logs, boxes, and failure records are produced.

Selected main route:

The selected main route is:

**Endpoint-cap first-lobe reduction plus a finite-cutoff global Langer/Airy amplitude theorem for the exact dynamic oscillator.**

The proof skeleton remains:

1. Import the already established or working global modules:
   - central branch-safe contour clearance;
   - weighted-energy clearance;
   - small endpoint exponent theorem for $0\le\alpha\le1/2$ on the right;
   - left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
   - elementary boundary-case separation for $n=0$, $\alpha=0$, $\alpha=1/2$, $\beta=0$, no turning point, and no first critical point.

2. In the residual right endpoint range

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0,
$$

set

$$
B=n+\alpha+\beta+1,
\qquad
u=\frac{B(1-x)}2,
\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

The certified cap is

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

3. Use the exact endpoint equation

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

4. Define

$$
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

The cap derivative lower bound is

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

Thus $K_B'(u)>1/4$ in the residual right-endpoint strip $\alpha>1/2$.

5. Use forbidden-zone ascent for $u<u_0$ and Sonin ordering for $K_B>0$. Any residual cap maximum is reduced to the first critical point $u_1$ after the first zero $u_0$ of $K_B$, if such a critical point exists.

6. The only active analytic target is:

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

7. Attack this target through the exact dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

The global Langer transform is now the primary amplitude route. The piecewise Airy-to-Prüfer handoff remains a fallback only if a revised version controls its boundary terms without leaving the local Airy regime.

Useful fragments by source:

### A1

A1 supplied the most important formal object of Round 17: a conditional global Langer theorem that turns the vague amplitude problem into named quantities. The key definitions are as follows.

Let $K(\tau)=K_B(u(\tau))$ and let $u_0$ be the first zero of $K_B$ in the cap. Define the Langer coordinate $\zeta$ by

$$
\frac23\zeta^{3/2}
=
\int_{\tau_0}^{\tau}\sqrt{K(s)}\,ds
=
\int_{u_0}^{u}
\frac{\sqrt{K_B(t)}}{p_B(t)}\,dt
$$

on the allowed side, with the corresponding negative-$\zeta$ definition in the forbidden zone. Then

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2.
$$

With

$$
H(\tau)=\zeta_\tau(\tau)^{-1/2}W(\zeta),
$$

A1 obtains the exact transformed equation

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
$$

where

$$
\Psi_B(\zeta)
=
\frac12\frac{\{\zeta,\tau\}}{\zeta_\tau^2}.
$$

Equivalently, away from the turning point,

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

A1 also derived the removable turning-point value. If

$$
K(\tau)=\gamma t+a t^2+b t^3+O(t^4),
\qquad
t=\tau-\tau_0,
$$

then

$$
\Psi_B(0)
=
\frac{3(-3a^2+5b\gamma)}{35\gamma^{8/3}}
=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}.
$$

This is the main algebraic milestone of the round. It turns the apparent $K^{-3}$ and $\zeta^{-2}$ singularity into a computable removable value. The Round 17 review packet reports independent cross-verification of this formula and identifies it as the correct replacement for inconsistent $u$-form limits.

A1’s conditional Airy-kernel theorem is useful, but too crude if left in terms of a generic $E_A(\zeta)$ envelope. The next round must replace generic envelopes by Olver Airy modulus/weight functions or by Dunster--Gil--Segura-style explicit error bounds. A1 also needs to repair the infinite forbidden-tail formulation: integrating a Volterra kernel from $\zeta=-\infty$ is not automatically valid, and A4’s review warns of possible tail divergence for larger $\alpha$.

### A2

A2’s most valuable contribution is the quantitative obstruction to the local Airy-to-Prüfer handoff. If the handoff point is

$$
\tau_h=\tau_0+a\gamma^{-1/3},
$$

then the integration-by-parts boundary term has model size $O(a^{-3/2})$. Reducing that term to KKT-level slack tends to force $a$ to grow with $n$, but the local linear Airy approximation

$$
K(\tau)\approx \gamma(\tau-\tau_0)
$$

is only safely controlled for $a=O(1)$ unless higher Taylor terms are explicitly bounded. The file records this as a serious obstruction to the naive local handoff and as support for shifting the primary amplitude route to a global Langer theorem.

A2 also correctly insists that a Prüfer integration by parts must retain the exact denominator

$$
\phi_\tau=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

Replacing it prematurely by $\sqrt{K_B}$ drops terms that may include $\sin4\phi$ contributions. This should be added to the gap register as a permanent warning.

A2 overclaims when suggesting that $O(n^{-4/3})$ local scaling of the Langer residual “seals” the primary analytic gap. The global variation integral over the first lobe has not been bounded; behavior near $u_1$, the forbidden tail, and the Airy-kernel weights remain open. The status should be “strong heuristic warning and theorem attempt,” not “proved amplitude theorem.”

### A3

A3 remains the strongest algebra auditor. Adopt the following A3 fragments.

First, the Liouville normal form sign is settled. Under the convention

$$
Y_u=p_B^{1/2}H,
$$

the affine normal form is

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

Thus the sign is $K_B+1/4$, not $K_B-1/4$. The Liouville-normal turning point is $K_B=-1/4$, distinct from the Sturm/Sonin turning point $K_B=0$. The Round 17 packet explicitly highlights this as a proved sign lemma to preserve.

Second, the compactified hypergeometric representation remains the correct interval-evaluation backbone:

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right)
\right]
u^k,
$$

where

$$
\theta=\frac{n+\alpha+1}{B}.
$$

At $\theta=0$, the product is $1$, so the Laguerre face is stable.

Third, the $n=2$ critical cubic is useful for A4’s interval work. With

$$
P_2(u)=A-b_1u+c_1u^2,
\qquad
A=\frac{(\alpha+1)(\alpha+2)}2,\quad
b_1=\alpha+2,\quad
c_1=\frac{B+1}{2B},
$$

the critical equation is

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0.
$$

A3 gives cubic coefficients

$$
a_3=-c_1(\alpha+\beta+4),
$$

$$
a_2=\alpha(Bc_1+b_1)+\beta b_1+4Bc_1+2b_1,
$$

$$
a_1=-\alpha Bb_1-(\alpha+\beta)A-2Bb_1,
$$

$$
a_0=\alpha BA.
$$

This should be promoted only after final independent comparison with direct differentiation and compactified evaluation. The cross-reviews treat it as very likely correct, not yet an archived interval certificate.

Fourth, A3’s gamma-ratio starting point is the correct one:

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B).
$$

The leading entropy negativity in $\alpha=cn$ is promising, but finite-$n$ Binet or Robbins remainders have not been assembled into a theorem.

One important rejection: A3’s alternate $u$-form Langer-residual limit is reported in cross review as algebraically inconsistent with the standard chain-rule derivation. Do not add that formula to the lemma bank. Use the $\tau$-derivative formulation and A1/A2 removable limit until A3 repairs the $u$-form expression.

### A4

A4’s most valuable contribution is low-degree and computational scaffolding.

First, A4 correctly fixes the $n=1$ target:

$$
T_{1,\alpha,\beta}^4=\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

For the Laguerre boundary face $\beta=0$, A4 gives a concrete analytic calculation. In that case, the first critical point is

$$
u_1=\frac{\alpha(\alpha+1)}{\alpha+2},
$$

and A4 derives

$$
H_1(u_1)^4
=
16\frac{\alpha^{2\alpha}(\alpha+1)^{2\alpha+4}}{(\alpha+2)^{4\alpha+4}}.
$$

The review packet states this is bounded by about $0.25<T^4=1$ on the relevant $\alpha$ interval for the $\beta=0$ face. This is useful small-degree evidence, but it is not yet a full $n=1$ certificate for all $\beta\ge0$. The $\beta$-monotonicity or an interval proof over $\theta\in[0,1]$ is still required.

Second, A4’s interval plan is now specific enough to execute, but it has not been executed. A credible certificate must include outward-rounded boxes, interval Newton or Krawczyk root isolation, boundary checks, interval evaluation of $H_n(u)^4-T^4$, and failure-box logs. Plans and floating rows remain heuristic.

Third, A4’s Riccati idea is worth a small computational track. For

$$
v(\tau)=\frac{H_\tau}{H},
$$

one gets

$$
v_\tau+v^2+K_B(u(\tau))=0.
$$

In $u$-form,

$$
p_B(u)v_u+v^2+K_B(u)=0.
$$

Near $u=0$, the positive regular branch gives $v(0)=\alpha/2$ and

$$
v_u(0)=-\frac{\Lambda_B}{\alpha+1}.
$$

This could help interval integration before the first zero of $H$, but it must not replace the Langer proof until it produces certified enclosures.

Rejected or risky ideas:

1. **Claiming Round 17 proves KKT.** Rejected. No first-lobe amplitude theorem, global Langer residual bound, gamma-ratio envelope, or interval certificate is proved. The packet itself gives confidence that Round 17 proves KKT at only about $0.08$ to $0.10$. 

2. **Naive piecewise Airy-to-Prüfer handoff as the main route.** Rejected as primary. The $O(a^{-3/2})$ boundary term produces a real scaling tension. A revised handoff may survive, but the present formulation is not the route to prioritize.

3. **A generic Airy envelope over the whole forbidden-to-allowed interval.** Risky. A single crude envelope for both $\operatorname{Ai}$ and $\operatorname{Bi}$ can overestimate the Volterra kernel and may lose the KKT margin. Use Olver’s Airy modulus/weight functions or Dunster--Gil--Segura computable bounds.

4. **Volterra integration from $\zeta=-\infty$ without a tail proof.** Rejected. A finite cutoff plus Frobenius tail bound is needed unless the weighted Airy kernel integral is proved convergent in the full residual range. The possible divergence for $\alpha\ge4$ must be checked.

5. **A2’s “$O(n^{-4/3})$ closes it” claim.** Not accepted. Local scaling near the turning point is not a global first-lobe variation bound. The global $\mathcal V_B$ integral may be affected by endpoint, critical-point, or Jacobian behavior.

6. **A3’s flawed $u$-form Langer limit.** Rejected until repaired. The $\tau$-derivative formula and removable value from A1/A2 are the current reference formulas.

7. **A4’s extrapolation from $\beta=0$ to all $\beta$.** Not accepted without a derivative proof or interval certificate. The target changes with $\beta$, and the amplitude also changes.

8. **Interval arithmetic without logs.** Rejected as proof. Arb is suitable, but the computation must be run with outward rounding, root isolation, boundary boxes, and archived failure boxes.

9. **Gamma entropy as a finite theorem.** Not yet. Leading negativity of $f(c)$ is useful, but the four gamma terms require explicit Binet/Robbins remainders and regime splits.

10. **Product formula, Christoffel, and contiguous-relation pivots.** Keep as exploration only. No exact positivity or contraction inequality has been produced.

Known gaps:

### G17.1: Finite-$B$ first-lobe amplitude theorem

The central open theorem remains:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point after the first zero $u_0$ of $K_B$ in the endpoint cap, if it exists. Prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

No Round 17 agent proves this.

### G17.2: Global Langer variation bound

A1 gives the right transformed problem, but the proof still needs an explicit bound for the Airy/Langer error-control quantity. A plausible schematic form is

$$
\mathcal V_B
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\zeta)|\,\Omega_A(\zeta)\,d\zeta,
$$

where $\Omega_A$ is the correct Olver or Dunster--Gil--Segura Airy weight, not a crude generic envelope. The bound must be explicit in $n,\alpha,\beta$ and strong enough to combine with the target margin.

### G17.3: Finite cutoff and forbidden-tail control

The endpoint corresponds to $\zeta\to-\infty$ in the global Langer variable. The Volterra theorem must either start at $-\infty$ with a proved integrability statement or start at a finite $\zeta_{\mathrm{cut}}$ with a certified Frobenius tail bound. The latter is now the safer route.

### G17.4: Frobenius-to-Airy normalization

A1’s normalization

$$
\mathfrak C_A
=
\sqrt{2\pi\alpha}\,
A_{n,\alpha,B}\,
e^{\mathcal C_B}
$$

with

$$
\mathcal C_B
=
\lim_{u\downarrow0}
\left[
\int_u^{u_0}
\frac{\sqrt{-K_B(t)}}{p_B(t)}\,dt
+
\frac{\alpha}{2}\log u
\right]
$$

is the right object, but it must be connected to the true solution with a rigorous error theorem. It may encode the same difficulty as the older gamma-ratio bound.

### G17.5: Gamma-ratio envelope

The old matching constant

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

and the Langer normalization both require finite-parameter control. The leading entropy function

$$
f(c)=(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right)
$$

appears negative on $0<c\le1$, but a finite theorem needs real Binet/Robbins remainders and regime splits:
$\alpha=O(1)$, $\alpha=O(\sqrt n)$, $\alpha=cn$, $\beta=0$, $\theta=0$, $\theta=1$, and compact interior.

### G17.6: Consistency of Langer residual formulas

The correct reference is the $\tau$-derivative formula

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2},
$$

with removable value

$$
\Psi_B(0)
=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}.
$$

A3’s inconsistent $u$-form limit must be repaired or rejected.

### G17.7: Low-degree interval certificates

The $n=1$ $\beta=0$ face has strong analytic evidence, but the full $n=1$ domain and $n=2$ domain require certificates:
- exact polynomial or derivative equation;
- interval variables $(\alpha,\theta,u)$;
- root isolation;
- boundary boxes;
- interval evaluation of $H_n^4-T^4$;
- failure logs.

### G17.8: Boundary cases

The proof must keep separate:
$$
n=0,\qquad
\alpha=0,\qquad
\alpha=\frac12,\qquad
\beta=0,\qquad
K_B\text{ has no zero in the cap},\qquad
u_0=u_\sigma,\qquad
u_1\text{ absent}.
$$

If $K_B$ has no zero in the cap and $\alpha>0$, then $K_B(0)<0$, so $K_B<0$ throughout the cap. That case is handled by forbidden-zone ascent plus central boundary control, not by Langer oscillation.

### G17.9: Semi-discrete route

The application only needs $\beta\in\mathbb N_0$, but no contraction, positivity, or monotone contiguous relation in $\beta$ has been supplied. It remains a limited exploratory route, not a replacement for the global Langer theorem.

New lemmas to add:

### Lemma L17.1: Conditional endpoint-cap proof from first-lobe amplitude

Under the imported central, energy, small-exponent, symmetry, and boundary modules, the residual right endpoint case reduces to the first critical point $u_1$ after the first zero $u_0$ of $K_B$. If

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4},
$$

then the strong KKT endpoint estimate follows.

Status: certified as a conditional reduction; not a proof of the amplitude lemma.

### Lemma L17.2: Global Langer residual formula

For

$$
H_{\tau\tau}+K(\tau)H=0,
$$

define $\zeta$ by

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2,
$$

and set

$$
H=\zeta_\tau^{-1/2}W.
$$

Then

$$
W_{\zeta\zeta}+\zeta W=\Psi(\zeta)W,
$$

where

$$
\Psi(\zeta)=\frac12\frac{\{\zeta,\tau\}}{\zeta_\tau^2}
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

Status: proposed/certified pending final A3 audit. Treat as a high-priority lemma-bank candidate.

### Lemma L17.3: Turning-point removable value

If

$$
K(\tau)=\gamma t+a t^2+b t^3+O(t^4),
\qquad
t=\tau-\tau_0,
$$

then

$$
\Psi(0)=
\frac{3(-3a^2+5b\gamma)}{35\gamma^{8/3}}
=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}.
$$

Status: strong proposed lemma, cross-checked in Round 17; requires one final symbolic audit and numerical limit test.

### Lemma L17.4: Correct Liouville normal-form sign

With

$$
Y_u=p_B^{1/2}H,
$$

one has

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

With

$$
v=\frac{Bu}{B-u},
\qquad
Y_v=v^{1/2}H,
$$

one has

$$
Y_v''+\frac{K_B(u(v))+1/4}{v^2}Y_v=0.
$$

Status: certified.

### Lemma L17.5: Naive Airy-to-Prüfer handoff obstruction

A handoff at

$$
\tau_h=\tau_0+a\gamma^{-1/3}
$$

produces a Prüfer integration-by-parts boundary term with model size $O(a^{-3/2})$. Taking $a$ large enough to fit KKT-level slack may leave the local Airy regime unless higher-order Taylor terms are controlled.

Status: serious warning/proposed obstruction lemma, not an impossibility theorem.

### Lemma L17.6: Degree-two critical cubic

For $n=2$ and

$$
P_2(u)=A-b_1u+c_1u^2,
$$

with

$$
A=\frac{(\alpha+1)(\alpha+2)}2,\qquad
b_1=\alpha+2,\qquad
c_1=\frac{B+1}{2B},
$$

critical points satisfy

$$
a_3u^3+a_2u^2+a_1u+a_0=0,
$$

where

$$
a_3=-c_1(\alpha+\beta+4),
$$

$$
a_2=\alpha(Bc_1+b_1)+\beta b_1+4Bc_1+2b_1,
$$

$$
a_1=-\alpha Bb_1-(\alpha+\beta)A-2Bb_1,
$$

$$
a_0=\alpha BA.
$$

Status: likely correct, pending final coefficient audit and stable compactified scaling for $\theta=0$.

### Lemma L17.7: Degree-one Laguerre-face cap bound

For $n=1$, $\beta=0$, the first critical point is

$$
u_1=\frac{\alpha(\alpha+1)}{\alpha+2},
$$

and

$$
H_1(u_1)^4
=
16\frac{\alpha^{2\alpha}(\alpha+1)^{2\alpha+4}}{(\alpha+2)^{4\alpha+4}}.
$$

This appears to give a large margin against $T^4=1$ on the relevant face.

Status: useful partial lemma. Do not extend to all $\beta$ without proof.

### Lemma L17.8: Gamma entropy candidate

For $\beta=0$, $\alpha=cn$, the leading Stirling exponent for the gamma normalization involves

$$
f(c)=(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right).
$$

Round 17 supports $f(c)<0$ on the relevant interval.

Status: asymptotic/leading-order lemma only. Needs finite remainders.

### Lemma L17.9: Finite-cutoff Airy-Volterra theorem

A valid KKT-specific Langer theorem should use a finite cutoff $\zeta_{\mathrm{cut}}<0$, a certified Frobenius tail estimate on $(-\infty,\zeta_{\mathrm{cut}}]$, and an Olver/Dunster-Gil-Segura weighted Airy-kernel bound on $[\zeta_{\mathrm{cut}},\zeta_1]$.

Status: proposed theorem architecture; not yet proved.

Counterexample checks to run:

1. **Symbolic and numerical check of $\Psi_B(0)$.**  
   For parameter sets such as $(n,\alpha,\beta)=(10,3.5,2)$, compute $\Psi_B(\zeta)$ near $\zeta=0$ from the defining Langer map and compare with

$$
\frac{10\gamma K_{\tau\tau\tau}-9K_{\tau\tau}^2}{140\gamma^{8/3}}.
$$

   Also compare against A3’s rejected $u$-form limit.

2. **Global first-lobe Langer variation map.**  
   For hard faces $\beta=0$, $\theta=0$, $\theta=1$, $\alpha=cn$, and $\alpha=O(\sqrt n)$, compute

$$
\mathcal V_B(n,\alpha,\beta)
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\zeta)|\,\Omega_A(\zeta)\,d\zeta.
$$

   Report $\mathcal V_B$, $n\mathcal V_B$, $n^{4/3}\mathcal V_B$, and worst parameter locations.

3. **Forbidden tail decay test.**  
   Measure $\Psi_B(\zeta)$ as $\zeta\to-\infty$ and compare with Airy kernel growth. Determine whether a cutoff is mandatory for all $\alpha$, or only for $\alpha\ge4$ as suggested by A4’s review.

4. **Gamma-ratio envelope grid plus Binet audit.**  
   Evaluate $\log M_{n,\alpha,B}$ and the Langer normalization $\mathfrak C_A$ on the same hard grid. Then derive interval Binet remainders for $\alpha=O(1)$, $\alpha=O(\sqrt n)$, and $\alpha=cn$.

5. **Full $n=1$ certificate.**  
   Extend A4’s $\beta=0$ proof to all $\theta\in[0,1]$ either by monotonicity in $\beta$ or by outward-rounded interval arithmetic. Use the corrected target

$$
T_{1,\alpha,\beta}^4=\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

6. **$n=2$ interval certificate.**  
   Use the certified cubic, rescale coefficients at $\theta=0$ to avoid $B\to\infty$ blow-up, isolate all critical roots, and evaluate the KKT margin.

7. **Riccati IVP diagnostic.**  
   Test

$$
p_Bv_u+v^2+K_B=0,\qquad
v(0)=\frac{\alpha}{2},\qquad
v_u(0)=-\frac{\Lambda_B}{\alpha+1},
$$

   as a certified computation path to the first maximum in low-degree cases.

8. **Semi-discrete contiguous-relation test.**  
   Derive exact contiguous relations in $\beta$ for normalized $g_n^{(\alpha,\beta)}$ and check whether the coefficient signs permit a contraction inequality. Expect sign obstruction unless a special endpoint-cap relation appears.

9. **Boundary cases.**  
   Re-check $n=0$, $\alpha=0$, $\alpha=1/2$, $\beta=0$, no zero of $K_B$, $u_0=u_\sigma$, and no $u_1$ before $u_\sigma$.

Research strategy adjustment:

Round 18 should be a measurement-and-certification round, not another architecture round.

The selected route is now narrow enough that further broad proof narratives are counterproductive. The next round should produce either a theorem-level bound or a failure box for the global Langer route. The panel should split work as follows:

- **Track A, A1:** Convert the conditional Langer theorem into a finite-cutoff theorem with exact hypotheses and Olver/Dunster-Gil-Segura error weights.
- **Track B, A2:** Quantify the global Langer variation integral on hard parameter faces, including behavior near $u_1$ and the forbidden tail.
- **Track C, A3:** Finalize algebra and prove or delimit the gamma-ratio envelope with explicit Binet remainders.
- **Track D, A4:** Execute interval certificates for $n=1$ and $n=2$ with outward-rounded logs.

The semi-discrete $\beta\in\mathbb N_0$ route may receive at most 15% effort. It should be pursued only through exact contiguous or positivity statements.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 18 task is to turn the Round 17 conditional Langer architecture into a finite-cutoff theorem statement with all constants explicit.

Objectives:

1. Preserve the current conditional endpoint theorem: imported modules plus the finite-$B$ first-lobe amplitude lemma imply the strong KKT estimate.

2. Define the global Langer coordinate $\zeta$ from

$$
K(\tau)=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

and state the transformed equation

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W.
$$

3. Use the residual

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2},
$$

and the turning-point value

$$
\Psi_B(0)=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}.
$$

4. Replace the infinite-tail Volterra theorem by a finite-cutoff theorem. Define $\zeta_{\mathrm{cut}}<0$, prove a Frobenius tail bound on $(-\infty,\zeta_{\mathrm{cut}}]$, and state the Airy-kernel bound on $[\zeta_{\mathrm{cut}},\zeta_1]$.

5. Replace generic $E_A(\zeta)$ by Olver’s Airy modulus and weight functions or by Dunster--Gil--Segura explicit error bounds. State exact theorem hypotheses and map each KKT quantity to them.

6. State the exact sufficient inequality of the form

$$
\mathfrak C_A \cdot \mathcal A_B \cdot \mathcal R_B
\le
T_{n,\alpha,\beta},
$$

where $\mathcal A_B$ is the Airy envelope/modulus factor and $\mathcal R_B$ is the residual-error amplification. Do not claim the inequality is proved unless you supply the bound.

7. Include a short section titled “What would falsify the global Langer route,” including at least:
   - $\mathcal V_B=O(1)$ on $\alpha=cn,\beta=0$;
   - uncontrollable forbidden-tail growth;
   - gamma normalization exceeding the target margin.

Exploratory allocation: spend no more than 15% on semi-discrete contiguous relations. State only exact identities or sign obstructions.

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 18 task is to measure and bound the global Langer variation, not to add new architecture.

Objectives:

1. Work with

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Do not use static Bessel comparison.

2. Adopt the A1/A2 $\tau$-derivative Langer residual formula and the removable value at $\zeta=0$. Verify the formula independently.

3. Define the exact error-control quantity required by your chosen Olver or Dunster--Gil--Segura theorem. It must be a displayed integral with exact weights, not $O(\cdot)$ notation.

4. For the hard scaling families:
   - $\alpha=cn$, $\beta=0$, $0<c\le1$;
   - $\alpha=C\sqrt n$, $\beta=0$;
   - $\theta=0$ Laguerre face;
   - $\theta=1$ finite face;
   compute or bound $\mathcal V_B$ and report whether it behaves like $n^{-4/3}$, $n^{-1}$, or $O(1)$.

5. Examine behavior near both endpoints of the integration interval:
   - the turning point $\zeta=0$ using the removable value;
   - the first critical point $u_1$;
   - the forbidden cutoff $\zeta_{\mathrm{cut}}$.

6. Refine the Airy-to-Prüfer handoff obstruction into a lemma with precise hypotheses, or downgrade it to a warning. If you keep it, retain the exact denominator

$$
\phi_\tau=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

7. Output at least one numerical table and one analytic inequality. If the analytic inequality is not strong enough, specify the failed subregime.

Exploratory allocation: derive an exact contiguous relation in $\beta$ for the semi-discrete case and test sign/contractivity. Do not exceed 15% of the response.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 18 task is to finalize the Langer algebra and attack the gamma-ratio envelope.

Objectives:

1. Audit the global Langer formulas:
   - $\zeta$ definition;
   - $K=\zeta\zeta_\tau^2$;
   - $H=\zeta_\tau^{-1/2}W$;
   - $\Psi_B(\zeta)$ formula;
   - removable value at $\zeta=0$.

2. Reconcile or reject the competing $u$-form residual formulas. If an $u$-form formula is kept, derive it from the $\tau$ formula and show it gives the same removable value.

3. Finalize lemma-bank algebra:
   - dynamic oscillator;
   - Prüfer equations;
   - Airy scale;
   - Liouville normal forms with $K_B+1/4$;
   - compactified hypergeometric polynomial;
   - $n=1$ quadratic;
   - $n=2$ cubic.

4. Produce a rigorous gamma-ratio theorem attempt from

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B).
$$

Use a real Binet formula or a real-argument Robbins/Kershaw/Gautschi inequality with explicit remainders. Split into:
   - $\alpha=O(1)$;
   - $\alpha=O(\sqrt n)$;
   - $\alpha=cn$;
   - $\beta=0$;
   - $\theta=0$;
   - $\theta=1$;
   - compact interior.

5. Prove, correct, or reject the entropy statement

$$
f(c)=(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right)<0.
$$

6. Audit A4’s $n=1$ monotonicity in $\beta$ if provided, and audit the $n=2$ cubic coefficient scaling near $\theta=0$.

Exploratory allocation: check whether a Turán, Christoffel-Darboux, or critical-point identity gives any sharp one-polynomial bound. Mark it exploratory unless a full inequality appears.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 18 task is execution, not planning.

Objectives:

1. Run a symbolic/numerical check of the turning-point residual limit. For at least five parameter sets, compute $\Psi_B(\zeta)$ from the Langer map near $\zeta=0$ and compare with

$$
\frac{10\gamma K_{\tau\tau\tau}-9K_{\tau\tau}^2}{140\gamma^{8/3}}.
$$

Report the discrepancy and whether A3’s rejected $u$-form formula fails.

2. Compute Langer variation diagnostics:
   - $\mathcal V_B$;
   - $n\mathcal V_B$;
   - $n^{4/3}\mathcal V_B$;
   - worst parameter locations;
   - behavior near $u_1$;
   - behavior near the forbidden tail.

Use hard grids including $\alpha=cn,\beta=0$, $\theta=0$, $\theta=1$, $\alpha=O(\sqrt n)$, and small integer $\beta$.

3. Execute the $n=1$ interval certificate for the full compactified domain:
   - $\alpha\in[1/2,\alpha_E(1)]$;
   - $\theta\in[0,1]$;
   - corrected target $T^4=2B/((\alpha+2)(B-\alpha))$;
   - critical roots and boundary boxes;
   - interval evaluation of $H_1^4-T^4$;
   - failure boxes.

4. Execute the $n=2$ interval prototype:
   - use the certified cubic;
   - rescale coefficients to remain bounded at $\theta=0$;
   - isolate roots using interval Newton or Krawczyk;
   - evaluate all critical and boundary boxes;
   - list unresolved boxes.

5. Use Arb, FLINT/Arb, or an equivalent outward-rounded ball-arithmetic system. Include enough implementation detail for reproducibility:
   - precision;
   - interval types;
   - subdivision rule;
   - root isolation criterion;
   - boundary evaluation;
   - log of failure boxes.

6. Compute $M_{n,\alpha,B}$ and $\mathfrak C_A$ on the same grids. Report maximum observed values and compare with candidate $1+C/(n+1)$ envelopes.

7. Treat all numerical results as experimental unless they are outward-rounded interval enclosures. Separate “certified” from “high-precision diagnostic.”

Exploratory allocation: test the Riccati IVP enclosure

$$
p_Bv_u+v^2+K_B=0
$$

for $n=1,2$ as an alternative low-degree certificate path.

Confidence:

Confidence in the endpoint-cap reduction, exact endpoint ODE, cap length, $K_B$ monotonicity, forbidden-zone ascent, and Sonin first-lobe reduction: **0.88**.

Confidence in the exact dynamic oscillator and Prüfer identities: **0.90**.

Confidence in the global Langer residual formula before final A3 audit: **0.82**.

Confidence in the removable turning-point value after Round 17 cross-checks: **0.80**.

Confidence in the corrected Liouville normal-form sign $K_B+1/4$: **0.88**.

Confidence that the naive piecewise Airy-to-Prüfer handoff is too weak as currently formulated: **0.80**.

Confidence that the global Langer/Airy route is the best current analytic route: **0.68**.

Confidence that the global Langer variation bound is already proved: **0.20**.

Confidence that a finite-parameter gamma-ratio envelope is already proved: **0.15**.

Confidence that A4’s low-degree work is useful but not yet certificate-level: **0.70**.

Confidence that Round 17 proves the real-parameter KKT conjecture: **0.08**.

Confidence that Round 18 should be a measurement-and-certification round rather than another architecture round: **0.86**.

Overall judge decision:

Record Round 17 as a successful obstruction-map and Langer-formulation round, not as a closure round. Add the global Langer residual formula, the turning-point removable value, the corrected Liouville normal-form sign, the degree-two critical cubic, and the degree-one Laguerre-face cap computation to the lemma bank with the statuses above. Do **not** add any first-lobe amplitude theorem, global Langer variation bound, gamma-ratio envelope, or interval certificate as proved.

Round 18 should focus on explicit Langer variation bounds, finite-cutoff Frobenius/Airy matching, regime-split gamma estimates, and executed $n=1,2$ interval certificates.