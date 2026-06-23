Summary:

Round 31 is a productive execution-and-audit round, not a proof-closure round. The full real-parameter KKT conjecture remains unproved, the arbitrary-degree finite-$B$ first-lobe amplitude theorem remains unproved, and the full residual $n=2$ rectangle remains open. The selected endpoint-cap first-lobe route remains the correct proof spine.

The strongest Round 31 progress is concrete but local:

1. A1 supplied a clean residual $n=1$ lemma-bank proof structure and reduced its last scalar endpoint estimate to the already identified gamma lower bound $\Gamma(16/5)>121/50$ plus exact rational comparisons. This should still be recorded as **near-certified pending physical insertion of the gamma lower-bound proof**, not as fully archival, because the Binet/Robbins or outward-rounded derivation is still not written out in the Round 31 packet. The Round 31 packet itself emphasizes that the main tasks remain the $n=1$ gamma appendix, $n=2$ box replay, boundary-face tables, $M_Q<2$ replay, and Langer transcript.

2. A1 added two new provisional residual $n=2$ interior boxes
$$
Q_C=
\left[\frac65,\frac{13}{10}\right]\times
\left[\frac12,\frac35\right],
\qquad
Q_E=
\left[\frac32,\frac85\right]\times
\left[\frac7{20},\frac25\right],
$$
with rational root-order and value-bound data. These are high-value replay targets, not permanent certificates until A3 or a committed script reproduces the Bernstein coefficient lists and value comparisons. The Round 31 packet explicitly says that A1 did not prove the full residual $n=2$ rectangle and that the boundary-face diagnostics are not certificates.

3. A2 supplied the best analytic constant of the round: a hand-checkable proposed proof of
$$
M_Q
=
\sup_{z\ge0}|\Delta Q(z)|
\le
2-\frac{48n+61}{4(4n^2+12n+9)}
<2.
$$
This should enter the lemma bank as a **proposed exact rational lemma pending A3 replay**. A2 also gave a useful scaling obstruction for the rational-Bessel quotient method, especially around $\alpha=n^{2/3}$, but this is diagnostic rather than theorem-level because Bessel zero-gap constants, derivative-product bounds, gamma normalization, and final KKT scalar comparison remain missing. The Round 31 review explicitly identifies $M_Q<2$ as likely valuable but replay-needed.

4. A3 supplied the best algebra ledger: endpoint ODE, cap identities, compactified $n=2$ polynomial/cubic, rational-coordinate normal form, simple gamma-ratio lemma, and Langer removable value. The distinction remains crucial: algebraic identities can be lemma-bank ready after notation cleanup, while Langer cancellation logs, Bernstein signs, and interval claims remain pending until executable transcripts or full coefficient lists are archived.

5. The Ermakov-Pinney and adaptive quotient ideas remain bounded pilots only. A2's EP maximum-principle inequality is not accepted as written. The relative-amplitude equation must first be corrected in the appropriate independent variable, and the claimed maximum-principle inequality does not currently give an upper bound. The Round 31 packet recommends keeping EP exploratory and limiting broad alternatives unless they produce concrete inequalities with constants.

Selected main route:

The selected main route remains

$$
\boxed{
\text{endpoint-cap first-lobe reduction}
+
\text{low-degree certification}
+
\text{small-}\alpha\text{ rational-Bessel/Riccati diagnostics}
+
\text{bulk weighted Langer/Airy, only when instantiated}
}.
$$

The proof skeleton remains fixed.

Import the global modules:

- central branch-safe contour clearance;
- weighted-energy clearance;
- small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
- left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
- boundary treatment for $n=0$, $\alpha=0$, $\beta=0$, $\alpha=1/2$, no cap turning point, and no first critical point.

In the residual right-endpoint range

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n):=
\frac{(2n+1)(n+1)}{2n+3},
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

The cap is finite:

$$
0\le u\le u_\sigma=
\frac{nB}{B+n-1}
\le n.
$$

The exact endpoint equation is

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

Define

$$
K_B(u)=p_B(u)q_B(u).
$$

Then

$$
K_B(u)=
-\frac{\alpha^2}{4}
+
\Lambda_Bu
-
\Delta_Bu^2,
$$

with

$$
r_B=1-\frac{n+1}{B}=\frac{\alpha+\beta}{B},
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

On the cap,

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}
+
\frac{\beta(n+1)}{2B}.
$$

Thus in the residual right-endpoint strip $\alpha>1/2$,

$$
K_B'(u)>\frac14.
$$

Forbidden-zone ascent controls the interval before the first zero $u_0$ of $K_B$. Sonin ordering controls allowed-zone local extrema through

$$
S_B(u)
=
H(u)^2+
\frac{p_B(u)H'(u)^2}{q_B(u)},
$$

and

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Therefore any remaining endpoint-cap failure must occur at the first critical point $u_1$ after $u_0$, if such a point exists. The active arbitrary-degree theorem remains:

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Nothing in Round 31 proves this theorem.

Literature status:

The core source remains Koornwinder--Kostenko--Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," Adv. Math. 333 (2018), 796--821. The arXiv record confirms the title, authors, and the connection between Bernstein-type Jacobi estimates and dispersive estimates for generalized Laguerre operators.

Landau's Bessel paper remains a valid auxiliary dependency only after a genuine Bessel reduction is made. The relevant statement is that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$, and the article metadata identify L. J. Landau, "Bessel Functions: Monotonicity and Bounds," J. London Math. Soc. 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`.

Dunster--Gil--Segura remain the right reference family for computable simple-turning-point Airy error bounds. Their "Sharp error bounds for turning point expansions" states that it derives computable sharp error bounds for linear ODEs with a simple turning point and Airy-function expansions. This supports the future bulk Langer/Airy track but does not instantiate the KKT residual or constants.

Arb remains a suitable platform for certified interval computation. Johansson describes Arb as arbitrary-precision midpoint-radius, or ball, interval arithmetic; this validates the platform, not any unexecuted KKT certificate.

Useful fragments by source:

### A1

A1's most useful contributions are local and directly checkable.

First, A1 puts the residual $n=1$ endpoint theorem into near lemma-bank form. For

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,
\qquad
\beta\ge0,
$$

the degree-one cap satisfies

$$
H_1(u)^4\le E(\alpha),
$$

where

$$
E(\alpha)
=
\left(
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right)^2.
$$

The target comparison is

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}
=
\frac{2(\alpha+\beta+2)}{(\alpha+2)(\beta+2)}
\ge
\frac{2}{\alpha+2}
\ge
\frac58.
$$

Thus the proof reduces to

$$
E(\alpha)<0.39<\frac58.
$$

A1's proof structure is correct: use convexity of

$$
L(\alpha)=\frac12\log E(\alpha)
$$

on $[1/2,6/5]$ and check endpoints. The endpoint $\alpha=6/5$ is reduced to the gamma lower bound $\Gamma(16/5)>121/50$ and rational inequalities. The remaining issue is that the exact Binet/Robbins or outward-rounded proof of the gamma lower bound must be physically written into the proof log. This should be the highest-probability closure item for Round 32.

Second, A1 adds two useful $n=2$ boxes, $Q_C$ and $Q_E$. The box data are:

$$
Q_C=
\left[\frac65,\frac{13}{10}\right]\times
\left[\frac12,\frac35\right],
\qquad
[L,U]=
\left[\frac25,\frac12\right].
$$

A1 reports root-order Bernstein minima for $Q_C$:

$$
\min\operatorname{Bern}(C)=\frac{10954}{3125}>0,
$$

$$
\min\operatorname{Bern}\left(-C\left(\frac12\right)\right)
=
\frac{53397}{6250}>0,
$$

$$
\min\operatorname{Bern}(-C_u)
=
\frac{154944}{625}>0,
$$

and

$$
\min\operatorname{Bern}\left(4(\alpha+3)^2K_B\left(\frac25\right)\right)
=
\frac{17167}{400}>0.
$$

The value comparison reported is

$$
\mathcal R_2
\le
\frac{17316235309908515833}{20102549880000000000}
<1.
$$

For

$$
Q_E=
\left[\frac32,\frac85\right]\times
\left[\frac7{20},\frac25\right],
\qquad
[L,U]=
\left[\frac12,\frac35\right],
$$

A1 reports

$$
\min\operatorname{Bern}(C)=\frac{30551}{3200}>0,
$$

$$
\min\operatorname{Bern}\left(-C\left(\frac35\right)\right)
=
\frac{28053}{3125}>0,
$$

$$
\min\operatorname{Bern}(-C_u)
=
\frac{3514833}{10000}>0,
$$

and

$$
\min\operatorname{Bern}\left(4(\alpha+3)^2K_B\left(\frac12\right)\right)
=
\frac{159711}{2500}>0.
$$

The value comparison reported is

$$
\mathcal R_2
\le
\frac{33670179240519246669}{42325951250000000000}
<1.
$$

These are exactly the kind of artifacts the project needs. They should, however, be marked **provisional replay-needed** until A3 or a committed exact script provides the full tensor-Bernstein coefficient expansions and verifies the value envelopes.

Third, A1's boundary-face work is useful but diagnostic only. For $\theta=0$ and $\theta=1$, A1 lists plausible root brackets and high-precision ratio values far below $1$, but explicitly does not supply outward-rounded log-gamma/exponential tables or exact rational enclosures. Therefore no boundary face is closed in Round 31.

### A2

A2's strongest contribution is the exact rational envelope for the rational-coordinate residual. In the rational coordinate

$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H,
$$

the normal form is

$$
Y''
+
\left(
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
+
\Delta Q(z)
\right)Y=0,
$$

where

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

The residual size is

$$
M_Q
=
\sup_{z\ge0}|\Delta Q(z)|
=
\frac{\Lambda_B}{B}+\Delta_B.
$$

A2's proposed bound is

$$
M_Q
\le
2-\frac{48n+61}{4(4n^2+12n+9)}
<2.
$$

The derivation is short enough to be replayed by hand:

$$
M_Q
=
\frac{2c_B}{B}
+
\frac{\alpha r_B}{2B}
+
\frac{r_B^2}{4}.
$$

Using $\alpha/B\le r_B$ and $y=1/B$ gives the upper envelope

$$
f_n(y)=
(2n+1)y-(n+1)y^2+
\frac34(1-(n+1)y)^2.
$$

In the residual strip, $B>n+3/2$, hence

$$
0<y<\frac{2}{2n+3}.
$$

The claimed maximum is at $y=2/(2n+3)$, where

$$
f_n\left(\frac{2}{2n+3}\right)
=
2-\frac{48n+61}{4(4n^2+12n+9)}.
$$

This should become a lemma after exact replay. It is probably Round 31's best analytic constant.

A2 also gives a strategically important obstruction warning for the quotient method. The quotient

$$
h=\frac{Y}{W_1},
\qquad
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z}),
$$

is meaningful only on zero-free intervals of $W_1$. A2's scaling comparison for $\alpha=n^{2/3}$ suggests a phase shift of order $n^{4/9}$ against a Bessel zero-gap scale $n^{2/9}$, which strongly warns that the first true critical point may cross the first Bessel zero. This is not a proof of failure because it lacks constants, signs, and possible cancellation analysis. It is enough to demote the quotient method from proof route to diagnostic unless zero-gap and derivative-product inequalities are supplied.

A2's Ermakov-Pinney pilot is not accepted as a theorem. The idea of a denominator-free positive amplitude is relevant, but the displayed maximum-principle inequality is not valid as an upper bound as written. If $A=\rho A_0$ is written in the $z$ variable, differentiating produces a first-derivative term

$$
\rho_{zz}
+
2\frac{A_0'}{A_0}\rho_z
+
\Delta Q\rho
=
A_0^{-4}(\rho^{-3}-\rho).
$$

Only after changing to a phase variable can this be simplified. Moreover, at an interior maximum with $\Delta Q<0$, the inequality

$$
|\Delta Q|A_0^4\rho
\le
\rho-\rho^{-3}
$$

implies

$$
\rho^4(1-|\Delta Q|A_0^4)\ge1,
$$

which is a lower-type constraint, not the advertised upper bound. The EP idea may receive a bounded pilot only after the variable and sign are corrected.

### A3

A3 is the algebra baseline for Round 31.

A3 correctly consolidates the endpoint ODE, cap length, quadratic product, cap monotonicity, Frobenius coefficient, Bessel normalization, $n=2$ compactified polynomial/cubic, rational-coordinate normal form, simple gamma-ratio bound, and Langer removable value.

For $n=2$, A3 confirms

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2,
$$

and

$$
\begin{aligned}
C_{\alpha,\theta}(u)
={}&
-(\alpha+\theta+3)^2u^3\\
&+(\alpha+3)(3\alpha^2-\alpha\theta+17\alpha+24)u^2\\
&-(\alpha+2)(\alpha+3)(3\alpha^2-3\alpha\theta+14\alpha-3\theta+15)u\\
&+\alpha(\alpha+1)(\alpha+2)(\alpha+3)^2.
\end{aligned}
$$

It also states that this cubic is $2(\alpha+3)$ times the compactified factored critical equation, so roots and signs relevant to isolation are unchanged.

A3 also restates the dynamic Langer removable value. With

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
\qquad
t=\tau-\tau_0,
$$

and

$$
K=\zeta\zeta_\tau^2,
$$

the coefficient matching is

$$
c_1=\gamma^{1/3},
\qquad
c_2=\frac{k_2}{10\gamma^{2/3}},
\qquad
c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}}.
$$

The removable value is

$$
\Psi_B(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

This is accepted algebraically, but still needs an executable transcript in the selected dynamic variable $\tau$, not merely pseudo-code or a narrative derivation.

Rejected or risky ideas:

1. **Claiming Round 31 proves KKT.** Rejected. No arbitrary-degree first-lobe amplitude theorem is proved.

2. **Claiming full residual $n=2$ closure.** Rejected. The rectangle
$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1
$$
remains open. The boundary faces $\theta=0$ and $\theta=1$ are not value-certified. The known and new interior boxes cover only a subset.

3. **Promoting $Q_C,Q_E$ without replay.** Risky. The reported rational minima are credible but not self-auditing. A permanent certificate needs full Bernstein coefficient lists or a script emitting them.

4. **Treating diagnostic boundary-face tables as proof.** Rejected. The $\theta=0$ and $\theta=1$ values are numerically small, but the proof standard requires outward-rounded interval or rational-envelope value bounds.

5. **Using the simple gamma-ratio lemma as arbitrary-degree normalization.** Rejected. The bound
$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$
is safe and useful in low-degree boxes with large margin. It is too crude for the arbitrary-degree rational-Bessel normalization.

6. **Treating A2's zero-safety threshold as proved.** Rejected. The $\alpha\sim n^{3/5}$ or $\alpha\sim n^{2/3}$ discussion is a scaling diagnostic until exact Bessel zero-gap and derivative-product constants are supplied.

7. **Promoting EP or adaptive quotient as main architecture.** Rejected. Both are bounded pilots. Adaptive quotient needs exact potential ordering, peak/zero ordering, quotient sign, frequency penalty, Frobenius normalization, and gamma margins. EP needs the correct variable, comparison principle, endpoint matching, and a test on one low-degree box. The Round 31 strategy memo explicitly warns to treat both as bounded pilots, not pivots.

8. **Generic DGS/Olver citation as proof.** Rejected. Dunster--Gil--Segura gives relevant theorem families, but no Round 31 agent maps the KKT residual, Airy weights, normalization, and scalar KKT target into those hypotheses.

Known gaps:

### G31.1: Permanent residual $n=1$ gamma appendix

The residual $n=1$ theorem is reduced to a small arithmetic appendix, but the proof of

$$
\Gamma(16/5)>\frac{121}{50}
$$

must still be physically inserted. Acceptable forms are:

- real Binet/Stirling with explicit rational remainder bounds;
- Wendel/Gautschi/Kershaw if strong enough;
- Arb/MPFI outward-rounded interval output with precision and rounding mode;
- another exact lower-bound certificate.

Until then, mark $n=1$ as **near-certified, final gamma lower-bound pending**.

### G31.2: Full residual $n=2$ theorem

The target domain remains

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1.
$$

The proof needs:

- value certificates for $\theta=0$;
- value certificates for $\theta=1$;
- replay of $Q_{27},Q_{29},Q_A,Q_B$;
- replay of new $Q_C,Q_E$;
- systematic interior subdivision;
- root ordering relative to the first cap turning point;
- direct or sharper ratio bounds for boxes where factorwise envelopes fail;
- gamma lower bounds beyond the crude $B^\alpha$ envelope when the margin is tight.

### G31.3: Boundary face value certificates

A1's diagnostic tables suggest large margins on $\theta=0$ and $\theta=1$, but no outward-rounded table is supplied. The missing artifact is a seven-interval table for each face, with:

- exact root bracket;
- sign certificate identifying the first relevant critical point;
- value enclosure of $\mathcal R_2<1$;
- stable gamma/exponential evaluation.

For $\theta=0$, the stable formula is

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

For $\theta=1$, use $B=\alpha+3$, $\beta=0$, and $T_{2,\alpha,1}^4=1$.

### G31.4: A2 rational-Bessel zero safety

The following constants or certified enclosures remain missing:

- lower bound for $j_{\alpha,1}-j'_{\alpha,1}$ for $\alpha\ge1/2$;
- lower bound for $-J_\alpha'(T)J_\alpha(T)$ on a post-peak interval;
- safe upper bound for the relevant Volterra integral;
- gamma-normalization envelope for
$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2};
$$
- final comparison with $T_{n,\alpha,\beta}$.

Without those items, rational-Bessel remains a diagnostic or small-regime candidate, not a theorem.

### G31.5: Langer transcript

The removable value formula for $\Psi_B(0)$ is accepted algebraically, but the project still needs an executable or hand-checkable Laurent transcript using

$$
\tau=\log\frac{u}{B-u},
$$

not $u-u_0$, showing cancellation of $\zeta^{-2}$ and $\zeta^{-1}$ terms.

### G31.6: Direct-ratio certificates for hard boxes

A1 reports failed factorwise envelopes on boxes such as $Q_D,Q_F,Q_G,Q_H$, even though sampled true ratios remain near $0.12$--$0.14$. This is not evidence against KKT; it is evidence that the current factorwise envelope loses too much. The next method should bound the full ratio $\mathcal R_2$ directly in Bernstein form or use a Riccati/full-ratio method.

New lemmas to add:

### Lemma L31.1: Residual degree-one endpoint theorem

For

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,
$$

the residual right endpoint cap satisfies the strong KKT estimate, provided the proof includes a permanent certificate of

$$
\Gamma(16/5)>\frac{121}{50}
$$

and the associated rational endpoint comparisons.

Status: near-certified; mark as **proved after gamma appendix insertion**.

### Lemma L31.2: Degree-two compactified formulas

For $n=2$, set

$$
B=\alpha+\beta+3,
\qquad
\theta=\frac{\alpha+3}{B}.
$$

Then

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2,
$$

and the critical points are roots of $C_{\alpha,\theta}(u)$ as displayed above.

Status: certified algebra; add to lemma bank.

### Lemma L31.3: Degree-two target ratios

For $\theta>0$,

$$
\mathcal R_2(\alpha,\theta,u)
=
\left(
\frac{2\Gamma(B)}
{\Gamma(\alpha+3)\Gamma(B-\alpha)}
\right)^2
\left(\frac{u}{B}\right)^{2\alpha}
\left(1-\frac{u}{B}\right)^{2(B-\alpha-3)}
P_{2,\alpha,\theta}(u)^4
\frac{\alpha+3-\alpha\theta}{3},
\qquad
B=\frac{\alpha+3}{\theta}.
$$

For $\theta=0$,

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

Status: certified algebra; add to lemma bank.

### Lemma L31.4: New provisional box $Q_C$

For

$$
Q_C=
\left[\frac65,\frac{13}{10}\right]\times
\left[\frac12,\frac35\right],
$$

A1 reports that the first relevant critical point lies in

$$
\frac25<u_1<\frac12,
$$

and

$$
\mathcal R_2
\le
\frac{17316235309908515833}{20102549880000000000}
<1.
$$

Status: provisional; replay required.

### Lemma L31.5: New provisional box $Q_E$

For

$$
Q_E=
\left[\frac32,\frac85\right]\times
\left[\frac7{20},\frac25\right],
$$

A1 reports that the first relevant critical point lies in

$$
\frac12<u_1<\frac35,
$$

and

$$
\mathcal R_2
\le
\frac{33670179240519246669}{42325951250000000000}
<1.
$$

Status: provisional; replay required.

### Lemma L31.6: Simple gamma-ratio bound

If $B-\alpha>0$, then

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha.
$$

Proof:

$$
\log\frac{\Gamma(B)}{\Gamma(B-\alpha)}
=
\int_{B-\alpha}^{B}\psi(t)\,dt
<
\int_{B-\alpha}^{B}\log B\,dt
=
\alpha\log B.
$$

Status: certified with stated hypotheses; useful in low-degree boxes only.

### Lemma L31.7: Rational-coordinate residual bound candidate

In the rational-coordinate normal form,

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2},
$$

and

$$
M_Q=\sup_{z\ge0}|\Delta Q(z)|
\le
2-\frac{48n+61}{4(4n^2+12n+9)}<2.
$$

Status: proposed; hand-checkable; A3 replay required before certification.

### Lemma L31.8: Langer removable value

For the dynamic Langer transform in $\tau$, with $K(\tau_0)=0$ and $\gamma=K_\tau(\tau_0)>0$,

$$
\Psi_B(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

Status: algebraically accepted; executable transcript still pending.

Counterexample checks to run:

1. **Replay all currently claimed $n=2$ boxes.** Run exact tensor-Bernstein replay for
$$
Q_{27},Q_{29},Q_A,Q_B,Q_C,Q_E.
$$
For each box, archive the polynomial, variable transformation to Bernstein coordinates, full coefficient list or emitted minima with script hash, root bracket, cap inclusion check, value comparison, and gamma inequalities.

2. **Boundary face stress test.** On $\theta=0$ and $\theta=1$, use the existing seven root brackets and produce outward-rounded value tables. Since the diagnostic maximum is far below $1$, failure here would almost certainly indicate a value-enclosure error or unstable formula use, not a real KKT counterexample.

3. **Hard-box ratio test.** For the failed factorwise boxes $Q_D,Q_F,Q_G,Q_H$, compute a direct Bernstein bound of the full log-ratio or full rationalized ratio. Classify each failure as:
   - crude gamma loss;
   - crude polynomial envelope loss;
   - root bracket too wide;
   - true ratio close to $1$;
   - script error.

4. **Rational-Bessel zero-safety stress test.** Numerically and then interval-test whether the true first critical point crosses the first Bessel zero for
$$
\alpha\sim n^{3/5},
\qquad
\alpha\sim n^{2/3},
\qquad
\alpha\sim n.
$$

5. **Gamma normalization map.** Sample and then bound $M_{n,\alpha,B}$ in:
$$
\alpha\le C\sqrt n,
\qquad
\alpha\le Cn^{3/5},
\qquad
\alpha=cn.
$$
The output should identify where Wendel/Gautschi/Kershaw is too weak and where Binet/Stirling with entropy terms is needed.

6. **EP correction test.** Before any EP pilot is accepted, derive the correct relative amplitude equation in the chosen independent variable and test the resulting inequality on one already certified $n=2$ box. If it cannot produce an upper bound, record the failure.

7. **Low-degree SOS/Krasikov pilot.** Test one explicit rational ansatz on $Q_C$ or $Q_E$ only after replay. The functional should have the form
$$
V=A(u)H^2+B(u)Y^2+C(u)HY,
\qquad
Y=p_BH',
$$
with positive-definiteness and derivative sign reduced to polynomial inequalities. Failure is useful if the pole or sign obstruction is explicit.

Research strategy adjustment:

Round 32 should be a short artifact-oriented execution round. No strategic pivot is justified.

The priority order should be:

1. **Permanently close $n=1$.** Insert a complete proof of $\Gamma(16/5)>121/50$ or an outward-rounded certificate. This should be treated as the smallest high-value artifact. The theorem has been near-certified for several rounds; leaving the appendix unresolved creates unnecessary proof-state ambiguity.

2. **Replay and archive $n=2$ boxes.** A3 should replay $Q_{27},Q_{29},Q_A,Q_B,Q_C,Q_E$. A1 should not add many more boxes until the replay process is automated and reliable.

3. **Complete $n=2$ boundary faces.** A1 should finish $\theta=0$ and $\theta=1$ value certificates. These are one-dimensional and have large diagnostic margins. They should precede wide interior subdivision.

4. **Move from factorwise envelopes to direct ratio bounds.** The failed boxes show that factorwise $P$ and $u^{2\alpha}$ envelopes are often too loose. Direct Bernstein bounds on $\log\mathcal R_2$ or a rationalized full ratio should be tested.

5. **Downgrade rational-Bessel quotient until constants exist.** A2's $M_Q<2$ should be replayed and preserved, but the quotient theorem should not be promoted without zero-gap, derivative-product, gamma-normalization, and final scalar comparisons.

6. **Keep EP and adaptive quotient exploratory.** Limit them to at most 10--15% of effort. Prefer a Riccati full-ratio certificate on $Q_C$ or $Q_E$ if any exploratory work is done.

7. **Defer bulk Langer theorem-building.** No Round 31 material improves the DGS/Olver instantiation. The Langer route remains necessary for arbitrary degree but should resume only when an agent maps exact KKT residuals to a specific theorem with weights and constants.

Next-round prompts by agent:

### For A1

You are A1, the broad strategist and proof synthesizer. Round 32 is an artifact-completion round. Do not introduce new proof architecture.

Objectives:

1. **Finish the $n=1$ gamma appendix.**
   Write a permanent proof of
$$
   \Gamma(16/5)>\frac{121}{50}.
$$
   Use one of:
   - Binet's formula with explicit rational remainder bounds;
   - a real-argument Robbins/Stirling lower bound with exact hypotheses;
   - outward-rounded interval arithmetic with version, precision, and interval output.
   Then restate the full $n=1$ theorem and mark exactly which imported modules it depends on.

2. **Complete the $\theta=0$ value certificate for $n=2$.**
   Use the seven existing $\alpha$ intervals and root brackets.
   For each interval, provide:
   - bracket for the first critical point after the first cap turning point;
   - proof of root ordering;
   - outward-rounded or rational-enclosed upper bound for
$$
     \mathcal R_2(\alpha,0,u)
     =
     \left(\frac{2}{\Gamma(\alpha+3)}\right)^2
     u^{2\alpha}e^{-2u}
     P_{2,\alpha,0}(u)^4
     \frac{\alpha+3}{3};
$$
   - strict margin below $1$.

3. **Complete the $\theta=1$ value certificate for $n=2$.**
   Use the seven root brackets and prove
$$
   H_2(u_1)^4<1
$$
   on each interval. Since $T_{2,\alpha,1}^4=1$, the value target is simpler.

4. **Prepare direct-ratio Bernstein tests.**
   On one of the failed factorwise boxes, preferably $Q_F$ or $Q_H$, attempt a direct Bernstein bound for $\mathcal R_2$ or $\log\mathcal R_2$ rather than a product of crude factor envelopes. Report whether the method fixes the failure.

5. **Maintain a coverage table.**
   The table should include:
   - certified after replay;
   - provisional;
   - failed due to root ordering;
   - failed due to value envelope;
   - failed due to gamma bound;
   - untested.

Exploratory allocation: at most 10% on a Riccati full-ratio certificate for $Q_C$ or $Q_E$, only if the boundary faces have received concrete value tables.

Required output headings:
Summary, Certified or near-certified artifacts, Boundary-face value tables, Interior boxes, Failed boxes, Direct-ratio attempt, Dependencies, Gaps, Next tests, Confidence.

### For A2

You are A2, the obstruction finder and rational-Bessel strategist. Round 32 should convert Round 31's rational-Bessel work into either a certified constant lemma or a disciplined failure report.

Objectives:

1. **Replay $M_Q<2$ exactly.**
   Provide a clean proof, without pseudo-code dependency, that
$$
   M_Q
   =
   \frac{\Lambda_B}{B}+\Delta_B
   \le
   2-\frac{48n+61}{4(4n^2+12n+9)}<2.
$$
   State every hypothesis: $n\ge1$, $\alpha>1/2$, $\beta\ge0$, residual strip, and $B>n+3/2$.

2. **Correct the EP section or withdraw it.**
   Derive the relative amplitude equation in the exact independent variable used.
   If in $z$, include the first-derivative term:
$$
   \rho_{zz}
   +
   2\frac{A_0'}{A_0}\rho_z
   +
   \Delta Q\rho
   =
   A_0^{-4}(\rho^{-3}-\rho).
$$
   If using a phase variable, define it precisely and transform the equation. Then derive a genuine upper-bound inequality or file a failure report. Do not repeat the previous maximum-principle inequality.

3. **Produce Bessel zero-gap constants or a formal failure report.**
   The quotient route needs explicit inequalities for:
$$
   j_{\alpha,1}-j'_{\alpha,1},
$$
   and
$$
   -J_\alpha'(T)J_\alpha(T)
$$
   on a safe post-peak interval. If available references do not provide constants strong enough for KKT, say so.

4. **Quantify the $\alpha=n^{2/3}$ obstruction.**
   Turn the scaling model into a finite table or analytic inequality. Include constants where possible. If the obstruction is only heuristic, label it as such.

5. **State a small-$\alpha$ theorem candidate only if it includes final scalar KKT comparison.**
   A theorem with missing gamma normalization is not acceptable. The statement must include $M_{n,\alpha,B}$ and the final comparison with $T_{n,\alpha,\beta}$.

Exploratory allocation: at most 15% on EP or adaptive quotient, but only in the precise form above.

Required output headings:
Summary, Certified $M_Q$ replay, Zero-safety constants, Quotient failure or theorem, EP correction, Gamma normalization dependency, Counterexample search, Next tests, Confidence.

### For A3

You are A3, the algebra checker and endpoint-reduction auditor. Round 32 is an execution and replay round. Do not write broad proof strategy.

Objectives:

1. **Replay $M_Q<2$.**
   Independently verify A2's derivation from
$$
   M_Q=\frac{\Lambda_B}{B}+\Delta_B.
$$
   Check the use of $\alpha/B\le r_B$, the monotonicity of $f_n(y)$, and the endpoint $y=2/(2n+3)$.

2. **Replay all available $n=2$ boxes.**
   For $Q_{27},Q_{29},Q_A,Q_B,Q_C,Q_E$, produce:
   - exact parameter box;
   - critical bracket;
   - Bernstein coefficient minima or full coefficient list for $C$, $-C(U)$, $-C_u$, and $K_B(L)$;
   - cap inclusion;
   - value comparison;
   - gamma inequality used;
   - pass/fail status.

3. **Archive the Langer Laurent transcript.**
   Use
$$
   \tau=\log\frac{u}{B-u}
$$
   as the variable. Show coefficient matching for
$$
   K=\zeta\zeta_\tau^2
$$
   and cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms in
$$
   \Psi_B(\zeta)
   =
   \frac{\zeta K_{\tau\tau}}{4K^2}
   -
   \frac{5\zeta K_\tau^2}{16K^3}
   +
   \frac{5}{16\zeta^2}.
$$

4. **Audit gamma inequalities for boxes.**
   Verify:
   - $\Gamma(16/5)>121/50$;
   - $\Gamma(21/5)>7$ if used in $Q_C$;
   - $\Gamma(9/2)>11$ if used in $Q_E$;
   - any Wendel/Gautschi/Binet bounds used in older boxes.

5. **Finalize implementation-safe $n=2$ formulas.**
   Provide a single block for:
   - $P_{2,\alpha,\theta}$;
   - $C_{\alpha,\theta}$;
   - $C_u$;
   - $K_B$;
   - $u_\sigma$;
   - $\mathcal R_2$ for $\theta>0$;
   - $\mathcal R_2$ for $\theta=0$;
   - boundary $\theta=1$ simplification.

6. **Optional SOS/Krasikov pilot after replay.**
   If all replay tasks are complete, test one explicit low-degree functional on $Q_C$ or $Q_E$. Otherwise skip.

Required output headings:
Summary, Independent replay log, Certified identities, Box certificate table, Gamma audit, Langer transcript, Rejected or corrected identities, Open analytic estimates, Confidence.

Confidence:

- Endpoint-cap ODE, cap length, quadratic $K_B$, cap monotonicity: **0.89**.
- First-lobe reduction, conditional on imported modules and boundary-case handling: **0.88**.
- Residual $n=1$ theorem after explicit gamma appendix insertion: **0.89**.
- Residual $n=1$ theorem before gamma appendix insertion: **0.82**.
- Compactified $n=2$ polynomial and critical cubic: **0.89**.
- A1's earlier boxes $Q_{27},Q_{29},Q_A,Q_B$ after replay: **0.85**; before replay: **0.78**.
- New boxes $Q_C,Q_E$ after replay: **0.84**; before replay: **0.80**.
- $\theta=0,\theta=1$ face certifiability with current tools: **0.75**.
- A2's $M_Q<2$ lemma after exact replay: **0.89**; before replay: **0.82**.
- A2's zero-safety threshold as a proved theorem today: **0.25**.
- EP maximum-principle route as written: **0.15**.
- EP or Riccati route as a bounded low-degree pilot: **0.45**.
- Rational-Bessel quotient route closing a useful small-$\alpha$ range after constants: **0.40**.
- Bulk Langer/Airy route eventually needed for $\alpha\sim n$: **0.70**.
- Full residual $n=2$ theorem true: **0.76**.
- Full residual $n=2$ theorem proved in Round 31: **0.12**.
- Arbitrary-degree finite-$B$ first-lobe theorem proved at this stage: **0.08**.
- Full real-parameter KKT conjecture proved at this stage: **0.08**.

Overall judge decision:

Record Round 31 as an **execution-and-audit round with meaningful low-degree progress but no global closure**. Add the $n=2$ compactified formulas, $Q_C,Q_E$ provisional boxes, simple gamma-ratio lemma, $M_Q<2$ candidate, and A3 algebra ledger to the state with explicit status labels. Do not mark the residual $n=1$ theorem permanent until the gamma lower-bound proof is physically inserted. Do not mark any new $n=2$ box permanent until A3 replay. Do not mark the boundary faces, full residual $n=2$ theorem, rational-Bessel small-$\alpha$ theorem, EP theorem, bulk Langer theorem, arbitrary-degree first-lobe theorem, or full real-parameter KKT conjecture as proved.