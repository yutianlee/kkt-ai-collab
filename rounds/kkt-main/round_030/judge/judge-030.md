Summary:

Source packet: uploaded Round 30 judge packet `judge_30.md`; file citation token:

Round 30 is a productive partial-certification and algebra-archival round. It does **not** prove the full real-parameter KKT conjecture, and it does **not** prove the arbitrary-degree finite-$B$ first-lobe amplitude theorem. It also does **not** close the full residual $n=2$ rectangle. Its value is more concrete: it converts the residual $n=2$ certificate program into a reproducible rational-arithmetic workflow, adds two new interior box certificates subject to independent replay, certifies root-order partitions for the two boundary faces $\theta=0$ and $\theta=1$, sharpens the rational-Bessel obstruction analysis, and repairs or clarifies several algebraic identities that should now be frozen in the lemma bank.

The selected proof spine remains unchanged:

$$
\boxed{
\text{endpoint-cap first-lobe reduction}
+
\text{low-degree certification}
+
\text{small-}\alpha\text{ rational-Bessel/Riccati}
+
\text{bulk weighted Langer/Airy}
}.
$$

The most valuable Round 30 deliverable is A1's exact rational Bernstein-certificate template for residual $n=2$ boxes. It gives a durable method for proving root ordering and value bounds without relying on informal floating-point interval claims. A1 replays the previously provisional $Q_{27}$ and $Q_{29}$ boxes and adds two adjacent boxes,

$$
Q_A=
\left[\frac{11}{10},\frac65\right]\times
\left[\frac12,\frac35\right],
\qquad
Q_B=
\left[\frac32,\frac85\right]\times
\left[\frac3{10},\frac7{20}\right].
$$

The stated rational value comparisons are

$$
\frac{1975261369468928}{2307562646484375}<1
$$

for $Q_A$, and

$$
\frac{8774420487712174870767}{10835443520000000000000}<1
$$

for $Q_B$. These should be treated as **provisional certificates pending independent A3 replay**, because the final proof still needs the archived Bernstein coefficient lists or a standalone exact script, plus explicit verification of the Wendel/gamma lower bounds and the polynomial monotonicity used in the value envelopes.

A2's strongest contribution is the rational-Bessel quotient audit. The exact rational-coordinate normal form and relative-amplitude identity remain useful, and A2 improves the residual bound to

$$
M_Q:=\sup_{z\ge0}|\Delta Q(z)|\le2.
$$

I accept the $M_Q\le2$ derivation as a strong proposed lemma; it should be added after A3 verifies the final one-variable maximization step in exact rational form. A2's zero-safety bootstrap, however, is still conditional. It depends on rigorous Bessel zero-gap bounds, a derivative-product lower bound on the post-peak interval, and a gamma-normalization envelope. The heuristic threshold $\alpha\lesssim 1.5n^{3/5}$ is not theorem-level.

A3's output is the best algebra archive. The endpoint ODE, cap length, quadratic $K_B$, cap monotonicity, Frobenius coefficient, Bessel normalization, critical-point equations, compactified $n=2$ polynomial/cubic/ratio, root-ordering protocol, simple gamma-ratio lemma, and Langer cancellation formula should be promoted to the lemma bank after copyediting. A3 also supplied a CAS-style Langer cancellation derivation; the formula is accepted algebraically, but the project still needs an executable transcript showing the cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms under the exact convention used for the selected Olver/Dunster--Gil--Segura theorem.

The human Ermakov-Pinney note should be treated as an exploratory pressure test, not as a pivot. Its useful point is that the quotient $h=Y/W_1$ has a real zero-safety burden. Its overclaim is that Ermakov-Pinney automatically removes all regime splits or supplies the missing gamma constants. It does not. It replaces a linear quotient singularity with a nonlinear amplitude-comparison problem.

Selected main route:

The selected main route remains the **endpoint-cap first-lobe route with low-degree certification and regime-split amplitude development**.

The permanent proof skeleton is as follows. Import the existing global modules:

- central branch-safe contour clearance;
- weighted-energy clearance;
- small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
- left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
- boundary treatment for $n=0$, $\alpha=0$, $\beta=0$, $\alpha=1/2$, no cap turning point, and no first critical point.

In the residual right-endpoint range

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

The finite endpoint cap is

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
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
q_B(u)=
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
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

where

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
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

Thus in the residual strip $\alpha>1/2$,

$$
K_B'(u)>\frac14.
$$

Forbidden-zone ascent controls the interval before the first zero $u_0$ of $K_B$. Sonin ordering controls later allowed-zone extrema through

$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}
$$

and

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Therefore any remaining cap failure must occur at the first critical point $u_1$ after $u_0$, if such a point exists. The active arbitrary-degree theorem remains

$$
\boxed{
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
}
$$

Round 30 advances this theorem only in low-degree certification. It does not close it for arbitrary $n$.

Literature status:

Verified references:

1. The source problem is Koornwinder--Kostenko--Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv and repository records confirm the title, authors, and the connection between Jacobi Bernstein estimates and dispersive estimates for generalized Laguerre operators.

2. Haagerup--Schlichtkrull remains relevant background for real-parameter Bernstein-type estimates but not a proof of the sharp KKT constant. The current workflow should not cite it as closing Conjecture 6.1.

3. Landau's Bessel theorem is a valid external dependency once an actual Bessel reduction has been made. The relevant paper is L. J. Landau, "Bessel Functions: Monotonicity and Bounds," *Journal of the London Mathematical Society* 61(1), 197--215, 2000, DOI `10.1112/S0024610799008352`; bibliographic pages confirm the title, journal, pages, and DOI. The usable statement for this workflow is monotonicity of Bessel maxima in the order, supporting the reduction of $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|$ to $\nu=1/2$ after the exact hypotheses are stated. Landau does not by itself imply any Jacobi first-lobe amplitude theorem.

4. Dunster--Gil--Segura remain the right modern references for computable simple-turning-point Airy error bounds. Their 2020 "Sharp error bounds for turning point expansions" gives computable sharp error bounds for Airy-type expansions of linear ODEs with a simple turning point; the arXiv and journal pages confirm the authors and subject. Their theorem family is relevant to the bulk Langer/Airy route, but no Round 30 agent has instantiated the theorem with the exact KKT residual $\Psi_B$, weights, cutoffs, and constants.

5. Arb remains an appropriate computational platform for interval certification. Johansson's paper describes Arb as a C library for arbitrary-precision midpoint-radius, or ball, interval arithmetic, with support for real/complex numbers, polynomials, power series, matrices, and many special functions. This validates the tool, not any unexecuted KKT certificate.

6. Gamma-ratio inequalities remain active dependencies. Wendel's note is J. G. Wendel, "Note on the Gamma Function," *American Mathematical Monthly* 55(9), 563--564, 1948, DOI `10.2307/2304460`; bibliographic pages confirm the citation. Kershaw's 1983 extensions of Gautschi's inequalities are also a relevant source for sharper gamma-ratio bounds. These tools do not yet supply the full arbitrary-degree KKT four-gamma envelope.

Unverified theorem needs:

1. Exact Landau theorem statement, with a short proof that it implies $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680$.

2. Exact Bessel zero-gap and derivative-product constants for A2's rational-Bessel zero-safety bootstrap.

3. A Binet/Stirling/Gautschi/Wendel envelope for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

in at least one useful subregime.

4. A specific Dunster--Gil--Segura or Olver theorem instantiated with the KKT Langer residual, Airy weights, forbidden-side connection coefficient, and final scalar inequality.

Useful fragments by source:

### A1

A1 supplies the main Round 30 proof artifact: a rational Bernstein-certificate template for residual $n=2$. The permanent compactified data are:

$$
B=\alpha+\beta+3,
\qquad
\theta=\frac{\alpha+3}{B},
\qquad
0\le\theta\le1,
$$

with residual exponent range

$$
\frac12<\alpha<\frac{15}{7}.
$$

The endpoint polynomial is

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

The critical cubic is

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

For an interior rational box $Q=[a_0,a_1]\times[\theta_0,\theta_1]$ and a proposed first-critical interval $U=[L,U]$, A1's root-order certificate uses four checks:

1. $C_{\alpha,\theta}(u)>0$ on $Q\times[0,L]$.
2. $C_{\alpha,\theta}(U)<0$ on $Q$.
3. $C_u(\alpha,\theta,u)<0$ on $Q\times[L,U]$.
4. $K_B(L)>0$ on $Q$.

Together with cap inclusion $U<u_\sigma$, these imply that the solution-critical point in $U$ is the first critical point after the first cap turning point. This is a useful logical protocol and should be preserved.

A1 replays $Q_{27}$ and $Q_{29}$ and adds $Q_A$ and $Q_B$:

$$
Q_{27}=
\left[1,\frac{11}{10}\right]\times
\left[\frac12,\frac35\right],
$$

$$
Q_{29}=
\left[\frac32,\frac85\right]\times
\left[\frac14,\frac3{10}\right],
$$

$$
Q_A=
\left[\frac{11}{10},\frac65\right]\times
\left[\frac12,\frac35\right],
$$

$$
Q_B=
\left[\frac32,\frac85\right]\times
\left[\frac3{10},\frac7{20}\right].
$$

The $Q_A$ root bracket is

$$
\frac13<u_1<\frac{13}{30},
$$

and the displayed value comparison is

$$
\mathcal R_2\le
\frac{1975261369468928}{2307562646484375}<1.
$$

The $Q_B$ root bracket is

$$
\frac12<u_1<\frac35,
$$

and the displayed value comparison is

$$
\mathcal R_2\le
\frac{8774420487712174870767}{10835443520000000000000}<1.
$$

A1 also gives root-order partitions for the boundary faces. For $\theta=0$, the seven $\alpha$ intervals are

$$
[1/2,3/4],\ [3/4,1],\ [1,5/4],\ [5/4,3/2],\ [3/2,7/4],\ [7/4,2],\ [2,15/7].
$$

A1 supplies rational $K(r)>0$ witnesses and critical brackets in each interval. The same is done for $\theta=1$. These are root-order certificates only; the value bounds $\mathcal R_2<1$ on those faces remain unproved.

A1's Sonin/Krasikov pilot is useful mainly as a negative result. For

$$
V=A(u)H^2+B(u)(p_BH')^2+C(u)Hp_BH',
$$

and $Y=p_BH'$, one obtains

$$
\begin{aligned}
V'
={}&
(A'-Cq_B)H^2\\
&+
\left(\frac{2A}{p_B}+C'-2Bq_B\right)HY\\
&+
\left(B'+\frac{C}{p_B}\right)Y^2.
\end{aligned}
$$

The pole and sign constraints make a simple low-degree global Lyapunov certificate difficult. This does not disprove the route, but it justifies keeping it exploratory.

### A2

A2 supplies the most important Round 30 obstruction analysis and the best improvement to the rational-Bessel small-$\alpha$ track.

In the rational coordinate

$$
z=\frac{Bu}{B-u},
\qquad
Y(z)=z^{1/2}H(u(z)),
$$

the normal form is

$$
Y''+
\left(
\frac{\Lambda_B}{z}
+\frac{1-\alpha^2}{4z^2}
+\Delta Q(z)
\right)Y=0,
$$

where

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

With

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
\qquad
Y=hW_1,
$$

the exact relative-amplitude identity on a zero-free interval for $W_1$ is

$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

A2 improves the residual bound to

$$
M_Q=\sup_{z\ge0}|\Delta Q(z)|=
\frac{\Lambda_B}{B}+\Delta_B\le2.
$$

The derivation can be made exact as follows. Since

$$
M_Q
=
\frac{2c_B}{B}+\frac{\alpha r_B}{2B}+\frac{r_B^2}{4},
$$

and $\alpha/B\le r_B$, one obtains

$$
M_Q
\le
\frac{2n+1}{B}-\frac{n+1}{B^2}
+\frac34\left(1-\frac{n+1}{B}\right)^2.
$$

Writing $y=1/B$ and using $B\ge n+3/2$ in the residual range gives a quadratic upper envelope. At $y=1/(n+3/2)$ this envelope equals

$$
\frac{32n^2+48n+11}{4(4n^2+12n+9)}
=
2-\frac{48n+61}{4(4n^2+12n+9)}
<2.
$$

This exact version should be used in the lemma bank.

A2's pre-peak Volterra bound is valid only up to $T\le j'_{\alpha,1}$, where $T=2\sqrt{\Lambda_Bz}$. A2 correctly emphasizes that the true perturbed critical point is delayed after the Bessel reference peak because $\Delta Q<0$. Thus the quotient method has a real zero-safety burden. The post-peak balance identity is useful, but the claimed threshold $\alpha\le1.5n^{3/5}$ remains conditional on Bessel zero-gap, derivative lower-bound, and gamma-envelope estimates that are not yet supplied.

A2's Ermakov-Pinney alternative is a legitimate exploratory idea. It can avoid dividing by the oscillatory Bessel reference, but it introduces a nonlinear amplitude comparison and must be tested on $n=1$ or a certified $n=2$ box before it is promoted.

### A3

A3 supplies the Round 30 algebra baseline. The following items should be treated as lemma-bank-ready after a final notation pass:

1. The affine endpoint ODE

$$
(p_BH')'+q_BH=0.
$$

2. The quadratic Sonin product

$$
K_B(u)=p_Bq_B
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

3. The cap length

$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

4. The cap monotonicity

$$
K_B'(u)\ge
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

5. The Frobenius coefficient

$$
A_{n,\alpha,B}
=
\frac{B^{-\alpha/2}}{\Gamma(\alpha+1)}
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}.
$$

6. The Bessel normalization

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

7. The critical-point equation

$$
2(r_Bu-\alpha)P_n\left(1-\frac{2u}{B}\right)
+
4u\left(1-\frac{u}{B}\right)
P_{n-1}^{(\alpha+1,\beta+1)}\left(1-\frac{2u}{B}\right)
=0.
$$

8. The compactified $n=2$ polynomial, cubic, and target ratio, including the stable Laguerre face.

9. The dynamic Langer cancellation formula. If $K(\tau)=K_B(u(\tau))$ and

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
\qquad
t=\tau-\tau_0,
$$

then the Langer residual

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

has removable turning-point value

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

A3's simple gamma-ratio lemma

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$

is correct if derived from $\psi(t)<\log t$ for the relevant positive interval. The stated hypothesis $B-\alpha\ge3$ is sufficient for $n=2$, but not the best or most general condition. A3 should rewrite the hypothesis precisely. For the residual $n=2$ program, $B-\alpha=\beta+3\ge3$, so there is no local issue.

Rejected or risky ideas:

1. **Claiming Round 30 proves KKT.** Rejected. Neither the arbitrary-degree first-lobe theorem nor the full residual $n=2$ rectangle is closed.

2. **Promoting the four $n=2$ boxes as permanent without replay.** Risky. A1's certificate logic is strong, but the project needs a committed exact script or full Bernstein coefficient list. "Modulo A3 replay" is the correct status.

3. **Treating $\theta=0$ and $\theta=1$ faces as certified from numerical slack.** Rejected. A1 gives root-order partitions and numerical diagnostics, but the value bounds $\mathcal R_2<1$ still require outward-rounded log-gamma/exponential or rational Binet/Stirling certificates.

4. **Using the rational-Bessel quotient past the first Bessel zero.** Rejected. The quotient $h=Y/W_1$ is valid only on zero-free intervals for $W_1$. A2's post-peak balance is useful but does not remove zero-safety requirements.

5. **Treating $\alpha\lesssim1.5n^{3/5}$ as proved.** Rejected. The threshold is a heuristic or derived-under-assumptions estimate until Bessel zero-gap, derivative lower-bound, and gamma-envelope constants are certified.

6. **Assuming Landau's Bessel theorem directly proves a Jacobi amplitude bound.** Rejected. Landau can bound a Bessel reference amplitude after a genuine Bessel comparison; it does not supply the comparison itself.

7. **Promoting Ermakov-Pinney as a new primary route.** Rejected. EP is a bounded exploratory route only. It avoids one denominator problem but creates a nonlinear amplitude problem and still needs gamma normalization and scalar KKT comparison.

8. **Relying on the crude gamma inequality globally.** Risky. The bound $\Gamma(B)/\Gamma(B-\alpha)\le B^\alpha$ is adequate for some loose $n=2$ boxes. It is too crude for tight boxes, arbitrary $n$, or final gamma-normalization envelopes.

Known gaps:

### G30.1: Full residual $n=2$ theorem

The residual $n=2$ domain is

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1.
$$

Round 30 certifies or provisionally certifies only selected interior boxes and root-order partitions on the two boundary faces. The full rectangle is not covered.

### G30.2: Boundary-face value certificates

For $\theta=0$, the stable target ratio is

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

For $\theta=1$, $T_{2,\alpha,1}^4=1$ and the value estimate reduces to bounding $H_2(u)^4$. Root ordering is supplied on seven intervals for each face, but value bounds are still absent.

### G30.3: Independent replay of Bernstein certificates

The four interior boxes $Q_{27},Q_{29},Q_A,Q_B$ require independent replay. The exact script must be committed, denominators must be checked positive, and all Bernstein minima or coefficient lists must be archived.

### G30.4: Gamma lower bounds in value certificates

For $Q_A$, the proof uses

$$
\Gamma\left(\frac{41}{10}\right)>\frac{13}{2}.
$$

For $Q_B$, it uses

$$
\Gamma\left(\frac92\right)>11.
$$

The latter is elementary; the former is supported by a Wendel argument but should be audited in exact rational form.

### G30.5: Rational-Bessel zero-safety constants

A2's zero-safety bootstrap needs rigorous bounds for

$$
j_{\alpha,1}-j'_{\alpha,1},
$$

and for the derivative-product term controlling the post-peak balance. Until those constants are proved, the rational-Bessel route remains conditional.

### G30.6: Gamma envelope for $M_{n,\alpha,B}$

Both rational-Bessel and Langer tracks require one-sided control of

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

No arbitrary-degree envelope is proved.

### G30.7: Bulk Langer/DGS instantiation

The Langer residual is algebraically understood, but no one has mapped it to a specific Dunster--Gil--Segura or Olver theorem with explicit Airy weights and final KKT constants.

### G30.8: Ermakov-Pinney pilot

The EP idea is not a proof route yet. It needs an exact relative-amplitude equation, Wronskian normalization, Frobenius matching, and a scalar inequality tested on $n=1$ or a certified $n=2$ box.

New lemmas to add:

### Lemma L30.1: Endpoint-cap first-lobe reduction spine

Status: already certified or nearly certified from earlier rounds; restate as the proof spine.

In the residual right endpoint range, after imported global reductions, it is enough to prove the first-critical-point estimate

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

### Lemma L30.2: Compactified residual $n=2$ endpoint polynomial

For $n=2$ and $\theta=(\alpha+3)/B$,

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

Status: certified algebra.

### Lemma L30.3: Compactified residual $n=2$ critical cubic

The first critical point is isolated using

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

Status: certified algebra.

### Lemma L30.4: Residual $n=2$ target ratio

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

At $\theta=0$,

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

Status: certified algebra.

### Lemma L30.5: Rational Bernstein root-order certificate

If a rational box $Q$ and bracket $[L,U]$ satisfy

$$
C>0\text{ on }Q\times[0,L],
\qquad
C(U)<0\text{ on }Q,
$$

$$
C_u<0\text{ on }Q\times[L,U],
\qquad
K_B(L)>0\text{ on }Q,
\qquad
U<u_\sigma,
$$

then $[L,U]$ contains the first solution-critical point after the first cap turning point.

Status: certified logical protocol; implementation-dependent.

### Lemma L30.6: Certified/provisional boxes for residual $n=2$

Record $Q_{27}$, $Q_{29}$, $Q_A$, and $Q_B$ with their root brackets and rational value comparisons. Status: provisional until A3 independently replays the script and gamma lower bounds; after replay, mark certified.

### Lemma L30.7: Rational-coordinate residual and relative-amplitude identity

With

$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H,
$$

one has

$$
Y''+
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
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

If

$$
W_1(z)=\sqrt z J_\alpha(2\sqrt{\Lambda_Bz}),
\qquad
Y=hW_1,
$$

then on any interval where $W_1>0$,

$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

Status: certified algebra on zero-free intervals.

### Lemma L30.8: Uniform residual bound $M_Q\le2$

For

$$
M_Q=\sup_{z\ge0}|\Delta Q(z)|,
$$

one has

$$
M_Q\le2
$$

in the residual range. Status: proposed/certify after A3 exact replay of the one-variable maximization.

### Lemma L30.9: Dynamic Langer removable value

With $K(\tau)=K_B(u(\tau))$, $\tau=\log(u/(B-u))$, and $K(\tau_0)=0$,

$$
\Psi_B(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
},
\qquad
\gamma=K_\tau(\tau_0).
$$

Status: algebraically accepted; executable Laurent cancellation log still pending.

### Lemma L30.10: Simple gamma-ratio bound

For positive $B-\alpha$,

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}
\le B^\alpha
$$

follows from integrating $\psi(t)<\log t$ on $[B-\alpha,B]$. Status: certify after A3 states the exact hypotheses. For residual $n=2$ the condition is harmless because $B-\alpha=\beta+3\ge3$.

Counterexample checks to run:

1. **Replay $Q_A$ monotonic envelope.** Verify rigorously that

$$
P_{2,\alpha,\theta}(u)
\le
P_{2,6/5,3/5}(1/3)
$$

on $Q_A\times[1/3,13/30]$. This is not purely a Bernstein sign check in A1's write-up and needs explicit proof.

2. **Replay $Q_A$ and $Q_B$ gamma lower bounds.** Check the Wendel-derived inequality

$$
\Gamma(41/10)>13/2
$$

and the elementary bound

$$
\Gamma(9/2)>11.
$$

3. **Complete $\theta=0$ face values.** For each of the seven $\alpha$ intervals, isolate the first critical point and prove

$$
\mathcal R_2(\alpha,0,u_1)<1
$$

using outward-rounded log-gamma/exponential bounds or rational Binet/Stirling enclosures.

4. **Complete $\theta=1$ face values.** Use the seven root brackets and prove $H_2(u_1)^4<1$ by outward-rounded interval arithmetic or exact rational polynomial bounds.

5. **Run systematic interior subdivision.** Apply the A1 Bernstein certificate script to a rational grid covering the remaining interior rectangle, with a failure register for boxes where the crude gamma bound is insufficient.

6. **Test A2 zero safety.** Rigorously enclose $j_{\alpha,1}-j'_{\alpha,1}$ and the derivative-product lower bound on $[j'_{\alpha,1},j_{\alpha,1}]$ for $\alpha\ge1/2$, either analytically from Watson/McMahon-style inequalities or by interval arithmetic with a large-$\alpha$ theorem.

7. **Search for rational-Bessel counterexamples.** Numerically test whether the true first critical point crosses the first Bessel zero for $\alpha\sim n^{3/5}$, $\alpha\sim n^{2/3}$, and $\alpha\sim n$. This will clarify whether the quotient method's regime split is sharp or pessimistic.

8. **Gamma-normalization map.** Compute and then bound

$$
M_{n,\alpha,B}
$$

on $\alpha\le C\sqrt n$, $\alpha\le Cn^{3/5}$, and $\alpha=cn$ to determine which subregimes rational-Bessel can plausibly cover.

9. **Langer cancellation reproducibility.** Archive a small exact symbolic transcript using the dynamic variable $\tau$, not the affine variable $u-u_0$, showing the cancellation of the singular terms in $\Psi_B$.

10. **Ermakov-Pinney pilot.** Derive the exact EP amplitude equation and test it on the certified $n=1$ theorem or one of the $n=2$ boxes. Do not spend more than a bounded exploratory allocation unless it yields a scalar inequality with constants.

Research strategy adjustment:

Round 31 should remain an execution round. No strategic pivot is justified.

The priority order should be:

1. **Finish the residual $n=1$ archival appendix.** The theorem is accepted in substance, but the gamma lower-bound appendix must be physically inserted into the lemma bank. This is a small task and should not be allowed to remain "near-certified."

2. **Complete the residual $n=2$ boundary faces.** The $\theta=0$ and $\theta=1$ root-order partitions are already supplied. The missing work is value certification. This should be the primary proof task for A1, with A3 auditing.

3. **Replay and archive the four interior boxes.** A3 should independently run or reproduce A1's rational Bernstein certificates for $Q_{27},Q_{29},Q_A,Q_B$. After replay, the boxes can be marked certified.

4. **Expand the $n=2$ interior grid.** A1 should run the rational certificate template on adjacent boxes and record which pass, which require tighter gamma bounds, and which fail root-order certification.

5. **Repair rational-Bessel constants.** A2 should convert its zero-safety bootstrap into a theorem with exact constants or a disciplined failure report. It must not state a small-$\alpha$ theorem without the final KKT scalar inequality.

6. **Start a gamma-envelope sublemma.** A3 should attempt a Binet/Stirling upper bound for $M_{n,\alpha,B}$ in one useful regime, preferably $\alpha\le C\sqrt n$ or $\alpha\le Cn^{3/5}$.

7. **Defer bulk Langer theorem-building unless a concrete DGS theorem is instantiated.** The Langer route remains important for arbitrary degree and bulk $\alpha$, but Round 31 should not spend its main effort on another schematic Langer formulation.

8. **Keep Ermakov-Pinney exploratory.** Assign at most a bounded pilot to A2 or A3 if time permits, focused on a single low-degree box or an exact equation derivation.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist and proof synthesizer. Your Round 31 task is to execute durable residual $n=2$ certificates. Do not introduce new proof architecture.

Objectives:

1. **Insert the permanent $n=1$ appendix.** Write the residual $n=1$ theorem in lemma-bank form and include the exact gamma lower-bound proof needed for

$$
\Gamma(16/5)>\frac{121}{50}
$$

or an equivalent stronger rational certificate. Do not refer to earlier rounds as a substitute for the appendix.

2. **Complete the $\theta=0$ face value certificate.** Use the seven $\alpha$ intervals and root brackets already supplied. For each interval:
   - restate the root bracket;
   - prove that it contains the first critical point after the first $K_B$ turning point;
   - bound

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}
$$

on the bracket;
   - use outward-rounded log-gamma/exponential intervals or rational Binet/Stirling remainders;
   - give a table with a strict upper bound below $1$ for each interval.

3. **Complete the $\theta=1$ face value certificate.** Use the seven root brackets already supplied. Since $T_{2,\alpha,1}^4=1$, prove $H_2(u)^4<1$ on each bracket. Give exact rational or outward-rounded interval tables.

4. **Expand the interior grid.** Use the Bernstein certificate template on at least four adjacent boxes not already covered. At minimum test boxes adjacent to:
   - $Q_A$ upward in $\alpha$;
   - $Q_A$ downward or upward in $\theta$;
   - $Q_B$ upward in $\theta$;
   - the gap between the $Q_A$ and $Q_B$ clusters.
   For each box, record root-order signs, cap inclusion, value bound, gamma inequality used, and status.

5. **Archive the script output.** Include enough coefficient minima or exact rational log output that A3 can replay without guessing hidden variables. Do not paste only a narrative summary.

6. **Failure register.** List every box attempted and failed. Classify failures as root-order failure, value-bound failure, gamma-bound failure, or script/coverage failure.

Exploratory allocation:

Spend at most 15% on a low-degree Sonin/Krasikov or SOS certificate for $n=2$. If no positive-definite functional with a checkable inequality appears, stop and report the obstruction.

Required output:

Use the Stage A schema. Include "Certified boxes," "Boundary-face value certificates," "Failed boxes," and "Archive-ready formulas." Do not claim the full residual $n=2$ theorem unless the entire rectangle and both faces are covered.

For A2:

You are A2, the obstruction finder and rational-Bessel strategist. Your Round 31 task is to convert the rational-Bessel zero-safety bootstrap into either a theorem with constants or a disciplined failure report.

Objectives:

1. **State the exact theorem candidate.** Specify a range such as

$$
\alpha\le Cn^{3/5}
$$

or

$$
\alpha\le C\sqrt n
$$

and state all hypotheses on $n,\alpha,\beta,z,T$.

2. **Prove or replace the Bessel zero-gap input.** You need a rigorous bound of the form

$$
j_{\alpha,1}-j'_{\alpha,1}\ge c_0\alpha^{1/3}
$$

for all $\alpha\ge1/2$, or a valid piecewise replacement covering small and large $\alpha$. Cite Watson/McMahon-style inequalities only if you state exact hypotheses and error terms. Otherwise produce a certified interval plan with a large-$\alpha$ analytic tail.

3. **Prove the derivative-product lower bound.** The post-peak balance requires a lower bound for the Bessel derivative-product term on the relevant interval after $j'_{\alpha,1}$. State it as an explicit inequality, not a heuristic Taylor expansion.

4. **Finalize the $M_Q\le2$ lemma.** Present the exact calculation in the simplified form

$$
M_Q\le
2-\frac{48n+61}{4(4n^2+12n+9)}<2
$$

after the relevant substitutions. State all assumptions under which it holds.

5. **Gamma-normalization bottleneck.** Give a precise condition under which

$$
M_{n,\alpha,B}\exp(\mathcal V_{\mathrm{Bess}})
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|
\le
T_{n,\alpha,\beta}
$$

would follow. If you cannot prove the gamma envelope, isolate it as a separate lemma with the exact required numerical margin.

6. **Zero-safety failure search.** Test scalings $\alpha=n^{3/5}$, $\alpha=n^{2/3}$, and $\alpha=cn$. Report whether the quotient method likely fails because $T_1^*$ crosses $j_{\alpha,1}$.

Exploratory allocation:

Spend at most 20% deriving the Ermakov-Pinney non-dividing amplitude equation in the rational coordinate. Required deliverables for this exploratory section:
   - exact Wronskian normalization;
   - Frobenius matching;
   - the nonlinear equation for the relative amplitude;
   - one scalar inequality that would imply the KKT bound on $n=1$ or one certified $n=2$ box.
Do not claim EP as a main route.

Required output:

Use the Stage A schema. Label every claim as proved, conditional, heuristic, or failed. Include "Zero-safety theorem candidate," "Bessel constants," "Gamma bottleneck," and "Failure or success verdict."

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 31 task is independent replay and lemma-bank archiving. Do not write broad proof strategy.

Objectives:

1. **Replay A1's Bernstein certificates.** Starting only from the printed formulas for $P_{2,\alpha,\theta}$, $C_{\alpha,\theta}$, $K_B$, and $\mathcal R_2$, independently verify the sign checks for:
   - $Q_{27}$;
   - $Q_{29}$;
   - $Q_A$;
   - $Q_B$.
   For each box, verify $C>0$ before $L$, $C(U)<0$, $C_u<0$ on $[L,U]$, $K_B(L)>0$, cap inclusion, and the stated value bound.

2. **Audit gamma inequalities.** Verify:
   - $\Gamma(16/5)>121/50$ or the exact substitute used in the $n=1$ theorem;
   - $\Gamma(41/10)>13/2$ for $Q_A$;
   - $\Gamma(9/2)>11$ for $Q_B$;
   - the precise hypothesis for $\Gamma(B)/\Gamma(B-\alpha)\le B^\alpha$.

3. **Check A1's polynomial monotonicity claims.** In particular, verify the upper envelope

$$
P_{2,\alpha,\theta}(u)
\le
P_{2,6/5,3/5}(1/3)
$$

on $Q_A\times[1/3,13/30]$, and the analogous envelope for $Q_B$.

4. **Boundary-face value audit.** If A1 supplies face value tables, independently check at least two intervals on $\theta=0$ and two intervals on $\theta=1$ by a different method, such as interval Newton plus outward-rounded log-gamma evaluation or exact rational overestimates.

5. **Finalize Langer Laurent transcript.** Produce an executable symbolic transcript for the transformation

$$
K(\tau)=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

showing cancellation of $\zeta^{-2}$ and $\zeta^{-1}$ in $\Psi_B$ and deriving

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

Use $\tau$, not $u-u_0$, as the expansion variable.

6. **Begin gamma-envelope sublemma.** Attempt a Binet/Stirling or Gautschi/Kershaw one-sided bound for $M_{n,\alpha,B}$ in a defined subregime, for example $\alpha\le C\sqrt n$. If it fails, state precisely where the loss occurs.

Exploratory allocation:

Spend at most 15% on a low-degree SOS/Krasikov replay. Translate the quadratic-form derivative condition

$$
V'
=
(A'-Cq_B)H^2
+
\left(\frac{2A}{p_B}+C'-2Bq_B\right)HY
+
\left(B'+\frac{C}{p_B}\right)Y^2
$$

into a polynomial positivity problem for $n=2$ on one certified box. Report whether it produces a feasible certificate.

Required output:

Use the Stage A schema. Include "Independent replay log," "Certified identities," "Rejected or corrected identities," "Gamma audit," and "Open analytic estimates." Everything marked certified should be ready to paste into the lemma bank.

Confidence:

Confidence in the endpoint-cap ODE, cap length, quadratic $K_B$, and cap monotonicity: **0.89**.

Confidence in the first-lobe reduction, conditional on imported global modules and boundary-case handling: **0.88**.

Confidence in the residual $n=1$ theorem after archival gamma appendix insertion: **0.89**.

Confidence in A1's rational Bernstein certificate template: **0.88**.

Confidence in the four $n=2$ interior boxes $Q_{27},Q_{29},Q_A,Q_B$ after independent A3 replay: **0.86**. Before replay, I assign **0.78**.

Confidence that the $\theta=0$ and $\theta=1$ face value bounds can be certified with current tools: **0.80**.

Confidence in A2's $M_Q\le2$ lemma after exact replay: **0.89**.

Confidence in A2's zero-safety threshold as a proved theorem today: **0.35**.

Confidence that rational-Bessel can close a nontrivial small-$\alpha$ range after constants are supplied: **0.55**.

Confidence that the bulk Langer/Airy route will be needed for $\alpha\sim n$: **0.75**.

Confidence that the full residual $n=2$ theorem is true: **0.78**.

Confidence that the arbitrary-degree finite-$B$ first-lobe theorem is proved at this stage: **0.10**.

Confidence that the full real-parameter KKT conjecture is proved at this stage: **0.08**.

Overall judge decision:

Record Round 30 as a **partial certification and algebra-archival round**. Add the residual $n=2$ compactified formulas, root-order protocol, rational Bernstein certificate template, rational-coordinate residual identity, $M_Q\le2$ candidate lemma, and Langer removable-value formula to the lemma bank with the statuses above. Do not mark the full $n=2$ theorem, the rational-Bessel small-$\alpha$ theorem, the bulk Langer theorem, or the real-parameter KKT conjecture as proved.

Round 31 should be execution-focused: complete the $n=1$ appendix, certify $\theta=0$ and $\theta=1$ value bounds, replay and archive the four interior $n=2$ boxes, expand the interior subdivision, and force the rational-Bessel zero-safety bootstrap either into theorem-level constants or into a documented failure report.