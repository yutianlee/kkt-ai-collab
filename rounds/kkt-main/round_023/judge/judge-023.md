Summary:

Source packet: Round 23 uploaded judge packet `judge_23.md`; raw uploaded-file token: :contentReference[oaicite:0]{index=0}

Round 23 is an artifact-completion round with one real theorem-level advance, several useful algebraic consolidations, and several rejected overclaims. It does **not** prove the full real-parameter KKT conjecture, and it does **not** prove the arbitrary-degree finite-$B$ first-lobe amplitude theorem. It does, however, appear to complete the residual right-endpoint certificate for degree $n=1$, provided the standard digamma, trigamma, and Binet-Robbins gamma inequalities are accepted in the lemma-bank proof.

The central new certified artifact is A1’s degree-one residual endpoint theorem. For

$$
n=1,\qquad \frac12\le\alpha\le\frac65,\qquad \beta\ge0,
$$

with

$$
B=\alpha+\beta+2,\qquad
H_1(u)=g_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
$$

the residual cap is

$$
0\le u\le u_\sigma=1,
$$

and the proof gives

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

The proof reduces the cap estimate to

$$
H_1(u)^4<E(\alpha),
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
\right)^2,
$$

and then proves

$$
E(\alpha)<0.39<\frac58\le T_{1,\alpha,\beta}^4.
$$

This is the first fully explicit residual endpoint certificate in the normalized workflow. It should be added to the lemma bank after A3 performs a final normalization copyedit. One cross-review incorrectly objected that the proof used the wrong fourth-power normalization. That objection is rejected: A1 bounded $H_1(u)^2$ by a scalar envelope and then squared the envelope. Under the KKT normalization in the state bundle, the displayed $H_1(u)^2$ formula is correct.

The second most important result of Round 23 is A3’s algebra audit. A3’s endpoint-cap identities should now be frozen in the lemma bank: the affine endpoint ODE, the quadratic Sonin product, the cap length, the cap monotonicity, the Frobenius coefficient, the Bessel normalization, the critical-point equation, the rational-coordinate ODE, and the invariant product identity. A3 also supplied a useful residual audit against a Bessel core. That residual audit should be recorded as algebra, not as a completed amplitude theorem.

A2’s rational-coordinate Bessel track remains promising but conditional. The exact residual

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}
$$

is valuable. The claims about a sign-definite Volterra kernel, the transition-tail integral, and a threshold such as $\alpha\le1.04n^{2/3}$ are not yet theorem-level. They require precise Bessel-product bounds, phase-shift control between the reference Bessel peak and the perturbed first critical point, and a gamma-normalization envelope.

A4’s output is useful mainly as a warning and planning document. A4 correctly focused on Bessel maxima and low-degree critical equations, but its low-degree polynomial formulas used a wrong hypergeometric parameter shift: it used $B+1$ where the finite hypergeometric parameter is $B=n+\alpha+\beta+1$. Consequently A4’s $n=1$ quadratic, $n=2$ cubic, discriminant examples, and “cap trivialization” claims are rejected as written. A4’s half-order Bessel maximum argument has the right critical equation $\tan t=2t$, but its numerical arithmetic is wrong. The correct first half-order maximum is approximately

$$
0.6791921047,
$$

not approximately $0.679417$. The intended bound $<0.680$ survives once Landau’s monotonicity theorem is correctly invoked.

Literature status:

Verified references and theorem dependencies:

1. Koornwinder--Kostenko--Teschl is the source problem: Tom Koornwinder, Aleksey Kostenko, Gerald Teschl, “Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator,” *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv record confirms the title, authors, and the connection between Jacobi Bernstein estimates and dispersive estimates for generalized Laguerre operators. :contentReference[oaicite:1]{index=1}

2. Haagerup--Schlichtkrull remains relevant context but not a closure theorem. Their arXiv record states a Bernstein-type inequality for Jacobi polynomials, uniform for $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but this is not the sharp KKT constant. :contentReference[oaicite:2]{index=2}

3. Landau’s Bessel theorem is a legitimate external dependency. Landau’s article is L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215, 2000, DOI `10.1112/S0024610799008352`. The available abstract states that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$. This supports the reduction of $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|$ to $\nu=1/2$ once the Bessel reduction has actually been made. :contentReference[oaicite:3]{index=3}

4. Dunster--Gil--Segura remain the correct turning-point error-bound references. Their “Sharp error bounds for turning point expansions” derives computable sharp error bounds for linear differential equations with a simple turning point and Airy functions; bibliographic records give *Journal of Classical Analysis* 18(1), 49--81, 2021, DOI `10.7153/jca-2021-18-05`. Their 2020 arXiv abstract explicitly states computable sharp error bounds for simple-turning-point Airy expansions. These references support the global Langer/Airy route but do not instantiate the KKT residual or constants. :contentReference[oaicite:4]{index=4}

5. Arb is an appropriate interval-certification platform but not a proof by itself. Johansson’s Arb paper is “Arb: Efficient Arbitrary-Precision Midpoint-Radius Interval Arithmetic,” *IEEE Transactions on Computers* 66(8), 1281--1292, 2017, DOI `10.1109/TC.2017.2690633`. The abstract describes Arb as a C library for arbitrary-precision midpoint-radius, or ball, interval arithmetic. :contentReference[oaicite:5]{index=5}

6. Gamma-ratio references remain needed for arbitrary $n$. Wendel’s note is J. G. Wendel, “Note on the Gamma Function,” *American Mathematical Monthly* 55(9), 563--564, 1948, DOI `10.2307/2304460`; DLMF §5.6 lists Gautschi’s and Kershaw’s inequalities for gamma ratios. These are relevant dependencies for future gamma-envelope work, but no Round 23 output proves the required four-gamma estimate for arbitrary $n$. :contentReference[oaicite:6]{index=6}

Selected main route:

The selected main route remains the **endpoint-cap first-lobe route with low-degree certification and regime-split amplitude development**.

The proof skeleton is now:

1. Import the existing global modules:
   - central branch-safe contour clearance;
   - weighted-energy clearance;
   - small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
   - left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
   - base cases $n=0$, $\alpha=0$, $\beta=0$, $\alpha=1/2$, no turning point, and no first critical point.

2. In the residual right-endpoint range

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0,
$$

set

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}2,\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

3. Work on the finite endpoint cap

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

4. Use the exact endpoint equation

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

5. Use the Sonin product

$$
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

where

$$
r_B=1-\frac{n+1}{B},
\qquad
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

Thus $K_B'(u)>1/4$ in the residual right-endpoint strip.

6. Use forbidden-zone ascent and Sonin ordering. If $u_0$ is the first zero of $K_B$ in the cap and $u_1$ is the first critical point of $H$ after $u_0$, then the remaining endpoint estimate reduces to

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

If $K_B$ has no zero in the cap, if $u_0=u_\sigma$, or if $u_1$ is absent, the cap is controlled by forbidden-zone monotonicity and the imported central boundary estimate.

7. Low-degree certification is now part of the main proof program. Round 23 closes $n=1$. Round 24 should attack $n=2$.

8. For arbitrary $n$, use a regime split:
   - bulk growing $\alpha$: weighted Langer/Airy with instantiated Dunster--Gil--Segura or Olver weights;
   - small or moderate $\alpha$: rational-coordinate Bessel/Volterra or Riccati;
   - finite low degrees: exact critical equations plus interval certificates.

Useful fragments by source:

### A1

A1’s Stage A output is the most important theorem-level contribution of Round 23.

The degree-one reduction is correct. For $n=1$,

$$
B=\alpha+\beta+2,
$$

and

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u.
$$

The KKT-normalized square is

$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(\beta+2)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2.
$$

Let $x=\beta+2$, so $B=x+\alpha$. A1 uses the standard inequality

$$
\psi(y)<\log y,\qquad y>0,
$$

to get

$$
\log\frac{\Gamma(x+\alpha)}{\Gamma(x)}
=
\int_0^\alpha\psi(x+t)\,dt
<
\int_0^\alpha\log(x+t)\,dt
\le
\alpha\log(x+\alpha).
$$

Therefore

$$
\frac{\Gamma(x+\alpha)}{\Gamma(x)}<B^\alpha.
$$

Since $\beta\ge0$ and $0\le u\le1<B$,

$$
\left(1-\frac{u}{B}\right)^\beta\le1.
$$

Thus

$$
H_1(u)^2
<
\frac{u^\alpha(\alpha+1-u)^2}{\Gamma(\alpha+2)}.
$$

The scalar envelope

$$
f_\alpha(u)=u^\alpha(\alpha+1-u)^2
$$

has a critical point

$$
u_*=\frac{\alpha(\alpha+1)}{\alpha+2},
$$

which lies in $[0,1]$ for $1/2\le\alpha\le6/5$. At that point,

$$
f_\alpha(u_*)
=
\frac{4\alpha^\alpha(\alpha+1)^{\alpha+2}}
{(\alpha+2)^{\alpha+2}}.
$$

Consequently

$$
H_1(u)^4<E(\alpha),
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

A1’s convexity argument is also correct. With $F(\alpha)=E(\alpha)^{1/2}$ and $L=\log F$,

$$
L''(\alpha)
=
\frac1\alpha+\frac1{\alpha+1}-\frac1{\alpha+2}
-\frac1{(\alpha+1)^2}
-\psi'(\alpha+2).
$$

Using

$$
\psi'(x)=\sum_{k=0}^\infty\frac1{(x+k)^2}
<
\int_{x-1}^\infty\frac{dt}{t^2}
=
\frac1{x-1}
\qquad (x>1),
$$

one gets

$$
L''(\alpha)
>
\frac1\alpha-\frac1{\alpha+2}-\frac1{(\alpha+1)^2}
=
\frac{2}{\alpha(\alpha+2)}-\frac1{(\alpha+1)^2}>0.
$$

So $L$ is convex and its maximum on $[1/2,6/5]$ is at an endpoint. A1’s endpoint estimates give

$$
E(1/2)=\frac{31104}{28125\pi}<0.39,
$$

and, using rational inequalities plus Binet-Robbins,

$$
E(6/5)<\left(\frac{151}{242}\right)^2<0.39.
$$

Finally,

$$
T_{1,\alpha,\beta}^4
=
\frac{2(\alpha+\beta+2)}{(\alpha+2)(\beta+2)}
\ge
\frac2{\alpha+2}
\ge
\frac58.
$$

Hence

$$
H_1(u)^4<0.39<\frac58\le T_{1,\alpha,\beta}^4.
$$

This proves the residual $n=1$ endpoint cap.

Caution: A1’s coarse gamma-ratio inequality is very useful for $n=1$ because the proof has large margin. It is too crude to use blindly for $n\ge2$.

### A2

A2’s rational-coordinate residual formula is worth retaining. Set

$$
z=\frac{Bu}{B-u},
\qquad
u=\frac{Bz}{B+z},
\qquad
Y(z)=z^{1/2}H(u(z)).
$$

Then the rational-coordinate normal form is

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
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

This is algebraically useful because the residual is regular at $z=0$. A2 correctly emphasizes that an $O(1)$ pointwise residual at the hard edge is not automatically fatal; the Volterra-weighted integral is the relevant object.

A2’s conditional Volterra structure should remain an active research track, but the following parts are not certified:

1. the sign-definite kernel claim;
2. the Watson/Nicholson product bound as used;
3. the transition-tail constant;
4. the shift from the Bessel reference critical point to the true perturbed critical point;
5. the threshold $\alpha\le1.04n^{2/3}$.

A2’s output is useful as a blueprint, not as a theorem.

### A3

A3 supplied the strongest algebra audit.

Promote the following identities after final formatting:

1. Endpoint ODE:

$$
(p_BH')'+q_BH=0.
$$

2. Quadratic Sonin product:

$$
K_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

3. Cap length:

$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

4. Cap derivative lower bound:

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}\ge\frac{\alpha}{2}.
$$

5. Frobenius coefficient:

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
$$

with

$$
A_{n,\alpha,B}
=
B^{-\alpha/2}
\sqrt{
\frac{\Gamma(B)\Gamma(n+\alpha+1)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
\frac1{\Gamma(\alpha+1)}.
$$

6. Bessel normalization:

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(B)\Gamma(n+\alpha+1)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

7. Critical-point equation:

$$
\left(\beta(1-x)-\alpha(1+x)\right)P_n^{(\alpha,\beta)}(x)
+
B(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)=0.
$$

In $u$-coordinates this is

$$
2(r_Bu-\alpha)P_n
+
4u\left(1-\frac{u}{B}\right)P_{n-1}^{(\alpha+1,\beta+1)}=0,
$$

with the Jacobi polynomials evaluated at $1-2u/B$.

8. Rational-coordinate ODE and invariant product:

$$
(zH_z')'+\widehat q_B(z)H=0,
$$

and

$$
z\widehat q_B(z)=K_B(u(z)).
$$

A3’s algebra is strong enough to freeze the core lemma bank. The requested convention-sensitive global Langer removable-value cancellation is still not fully logged at theorem-publication quality. Assign that as a next-round algebra task.

### A4

A4’s useful contributions are limited but not zero.

Accepted:

1. The half-order Bessel maximum is governed by

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

and its first positive maximum satisfies

$$
\tan t=2t.
$$

2. With Landau’s monotonicity theorem, a repaired calculation gives

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

3. The idea of using low-degree critical equations and interval root isolation is the correct finite-degree path.

Rejected:

1. A4’s interval arithmetic was not actually a certified outward-rounded log.

2. A4’s half-order numerical value is wrong. Correctly, if $t_0$ is the first positive root of $\tan t=2t$, then

$$
t_0\approx1.1655611852072113,
$$

and

$$
J_{1/2}(t_0)
=
\sqrt{
\frac{8t_0}{\pi(1+4t_0^2)}
}
\approx0.6791921047.
$$

3. A4’s $n=1$ polynomial is wrong. The correct formula in $v=u/B$ is

$$
P_1^{(\alpha,\beta)}(1-2v)=\alpha+1-Bv,
\qquad
B=\alpha+\beta+2,
$$

not $\alpha+1-(B+1)v$.

4. The corrected $n=1$ critical equation in $v$ is

$$
B^2v^2
-
\left(2\alpha^2+2\alpha\beta+5\alpha+3\beta+4\right)v
+
\alpha(\alpha+1)=0.
$$

5. A4’s $n=2$ cubic is shifted by the same error. The correct degree-two polynomial in $v=u/B$, with $B=\alpha+\beta+3$, is

$$
P_2^{(\alpha,\beta)}(1-2v)
=
\frac{(\alpha+1)(\alpha+2)}2
-
B(\alpha+2)v
+
\frac{B(B+1)}2v^2.
$$

A4 should rebuild the $n=2$ certificate from this formula or from A3’s $u$-coordinate version, not from its Round 23 cubic.

Rejected or risky ideas:

1. **Claiming Round 23 proves KKT.** Rejected. Round 23 proves only a residual degree-one endpoint certificate, not the arbitrary-degree first-lobe amplitude theorem.

2. **Using A4’s low-degree critical equations.** Rejected. They use $B+1$ in place of $B$ in the hypergeometric parameter and corrupt the $n=1$ and $n=2$ equations.

3. **Using A4’s Bessel maximum interval arithmetic as written.** Rejected. The analytic reduction is right, but the displayed numerical intervals are wrong. The final $<0.680$ bound is recoverable via correct arithmetic and Landau’s theorem.

4. **Treating A2’s kernel positivity as proved.** Risky. The sign argument depends on exact Bessel zero interlacing, the sign of $J_\alpha$ and $Y_\alpha$, and the location of the true perturbed first critical point. It must be written as a theorem with hypotheses.

5. **Treating $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ as a theorem.** Rejected. The transition-tail integral lacks explicit constants.

6. **Assuming $M_{n,\alpha,B}\le1+C/(n+1)$ without proof.** Rejected. Prior rounds already found $M>1$ can occur. A gamma-ratio theorem must be explicit and regime-split.

7. **Relying on unexecuted interval arithmetic.** Rejected. Arb or any interval package is only a tool. A certificate requires outward-rounded boxes, root isolation, boundary checks, and failure logs.

8. **Repeating the global Laguerre target as the main route.** Demoted. The cap and first-lobe theorem is sharper and should remain primary.

9. **Assuming one monolithic Langer theorem covers all residual regimes.** Risky. Prior residual analysis suggests fixed or small $\alpha$ near the Laguerre face behaves differently from growing $\alpha$.

Known gaps:

### G23.1: Arbitrary-degree first-lobe amplitude theorem

For

$$
n\ge2,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point after the first zero $u_0$ of $K_B$ in the endpoint cap. Prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This remains the central open theorem.

### G23.2: Correct $n=2$ finite-degree certificate

The $n=1$ residual cap is now closed. The next low-degree theorem is $n=2$, with

$$
\frac12\le\alpha\le\alpha_E(2)=\frac{15}{7},
\qquad
\beta\ge0.
$$

The task is to isolate critical roots of the corrected cubic on

$$
0\le u\le u_\sigma=\frac{2B}{B+1}\le2
$$

or equivalently in compactified variables $(\alpha,\theta)$, then prove

$$
H_2(u)^4-T_{2,\alpha,\beta}^4<0
$$

on all critical and boundary boxes.

### G23.3: Langer removable-value cancellation log

The global Airy/Langer residual

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

and the removable value

$$
\Psi_B(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}
$$

have been proposed in earlier rounds. Round 23 does not yet give the final CAS-style Laurent cancellation log needed for permanent lemma-bank certification.

### G23.4: Rational-Bessel Volterra constants

A2’s exact residual identity is certified algebra, but a theorem needs:

- reference Bessel solutions with exact normalization;
- Wronskian convention;
- kernel sign or modulus bound;
- a bound on the true first critical point versus the Bessel reference peak;
- explicit constants for the pre-transition and transition-tail integrals.

### G23.5: Bessel product and transition-tail theorem

The transition integral

$$
\int_\alpha^{t_1}t^3|J_\alpha(t)Y_\alpha(t)|\,dt
$$

must be bounded with explicit constants using a named theorem or a self-contained interval/asymptotic proof.

### G23.6: Gamma-ratio envelope for arbitrary $n$

The degree-one proof uses a coarse gamma-ratio bound that is adequate only because the margin is huge. Arbitrary $n$ needs a sharper bound for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(B)\Gamma(n+\alpha+1)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

### G23.7: Imported global modules still need final collation

The central contour, weighted-energy, small-exponent, and symmetry modules are imported. They remain part of the proof skeleton, but the final proof draft must restate exact hypotheses and endpoint interfaces.

### G23.8: Semi-discrete simplification is still unproved

The application only needs $\beta\in\mathbb N_0$, but no agent has found a discrete monotonicity or induction in $\beta$ that simplifies the first-lobe bound.

New lemmas to add:

### Lemma R23.1: Degree-one residual endpoint certificate

For

$$
n=1,\qquad \frac12\le\alpha\le\frac65,\qquad \beta\ge0,
$$

set

$$
B=\alpha+\beta+2,
\qquad
H_1(u)=g_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

Then for all

$$
0\le u\le1,
$$

one has

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

Status: proved, conditional only on standard digamma, trigamma, and Binet-Robbins inequalities.

### Lemma R23.2: Degree-one scalar envelope

For the same parameter range,

$$
H_1(u)^4<E(\alpha),
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

Moreover,

$$
E(\alpha)<0.39.
$$

Status: proved.

### Lemma R23.3: Degree-one target lower bound

For

$$
\frac12\le\alpha\le\frac65,\qquad \beta\ge0,
$$

one has

$$
T_{1,\alpha,\beta}^4
=
\frac{2(\alpha+\beta+2)}{(\alpha+2)(\beta+2)}
\ge
\frac58.
$$

Status: proved.

### Lemma R23.4: Coarse gamma-ratio bound

For $x>0$ and $\alpha>0$,

$$
\frac{\Gamma(x+\alpha)}{\Gamma(x)}<(x+\alpha)^\alpha.
$$

Proof:

$$
\log\frac{\Gamma(x+\alpha)}{\Gamma(x)}
=
\int_0^\alpha\psi(x+t)\,dt
<
\int_0^\alpha\log(x+t)\,dt
\le
\alpha\log(x+\alpha).
$$

Status: proved. Use cautiously; too crude for large-degree amplitude estimates.

### Lemma R23.5: Correct degree-one critical equation

For $n=1$, $B=\alpha+\beta+2$, and $v=u/B$,

$$
P_1^{(\alpha,\beta)}(1-2v)=\alpha+1-Bv.
$$

The critical equation is

$$
B^2v^2
-
\left(2\alpha^2+2\alpha\beta+5\alpha+3\beta+4\right)v
+
\alpha(\alpha+1)=0.
$$

Status: algebraically derived; include after A3 copyedit.

### Lemma R23.6: Correct degree-two cap polynomial

For $n=2$, $B=\alpha+\beta+3$, and $v=u/B$,

$$
P_2^{(\alpha,\beta)}(1-2v)
=
\frac{(\alpha+1)(\alpha+2)}2
-
B(\alpha+2)v
+
\frac{B(B+1)}2v^2.
$$

Equivalently, in $u$,

$$
P_2^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)(\alpha+2)}2
-
(\alpha+2)u
+
\frac{B+1}{2B}u^2.
$$

Status: certified algebraically; the associated cubic should be derived and interval-tested next.

### Lemma R23.7: Half-order Bessel maximum

Let $t_0$ be the first positive solution of

$$
\tan t=2t.
$$

Then

$$
J_{1/2}(t_0)
=
\sqrt{
\frac{8t_0}{\pi(1+4t_0^2)}
}
\approx0.6791921047<0.680.
$$

Together with Landau’s monotonicity theorem for $\sup_t|J_\nu(t)|$, this gives

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

Status: half-order calculation proved by elementary calculus; global $\nu$ statement depends on exact Landau theorem citation.

### Lemma R23.8: Rational-coordinate Bessel residual

In the rational coordinate

$$
z=\frac{Bu}{B-u},
\qquad
Y(z)=z^{1/2}H(u(z)),
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
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

Status: algebraically certified; no amplitude bound yet.

Counterexample checks to run:

1. **Normalize the $n=1$ proof in the lemma bank.** Recompute $H_1(u)^2$ directly from the KKT definition and verify the exact gamma powers. This should settle the erroneous cross-review objection permanently.

2. **Corrected $n=1$ critical-root map.** Using

$$
B^2v^2
-
\left(2\alpha^2+2\alpha\beta+5\alpha+3\beta+4\right)v
+
\alpha(\alpha+1)=0,
$$

map roots on

$$
\alpha\in[1/2,6/5],\qquad \theta=\frac{\alpha+2}{B}\in[0,1].
$$

This is no longer needed to prove $n=1$, but it is a sanity check for future low-degree methods.

3. **$n=2$ critical cubic derivation.** Derive the cubic from

$$
2(r_Bu-\alpha)P_2
+
4u\left(1-\frac{u}{B}\right)
P_1^{(\alpha+1,\beta+1)}=0.
$$

Use both $u$ and $v$ forms and verify they agree.

4. **$n=2$ interval root isolation.** Isolate all roots in

$$
0\le u\le u_\sigma=\frac{2B}{B+1}.
$$

Use compactified

$$
\theta=\frac{\alpha+3}{B}\in[0,1],
$$

with $\alpha\in[1/2,15/7]$.

5. **Evaluate $H_2^4-T_2^4$ on root boxes.** Include boundary boxes $u=0$, $u=u_\sigma$, $\theta=0$, $\theta=1$, $\alpha=1/2$, and $\alpha=15/7$.

6. **Bessel maximum interval redo.** Enclose $t_0$ solving $\tan t=2t$ with outward rounding and compute the correct interval for $J_{1/2}(t_0)$, aiming for upper bound $<0.6793$ or simply $<0.680$.

7. **A2 kernel sign test.** Numerically compare the true first critical point of the perturbed rational equation to the reference Bessel first stationary point for grids in $\alpha,\theta,n$. Look for cases crossing the sign boundary.

8. **Volterra transition-tail experiment.** Compute

$$
I(\alpha)=\int_\alpha^{j'_{\alpha,1}}t^3|J_\alpha(t)Y_\alpha(t)|\,dt
$$

for large $\alpha$ and fit constants. This is diagnostic only until turned into a theorem.

9. **Gamma normalization map.** Compute $M_{n,\alpha,B}$ over the residual strip to locate where $M>1$ and to test whether $1+C/(n+1)$ is plausible, or whether regime splitting is mandatory.

10. **Semi-discrete scan.** Test $\beta\in\{0,1,2,3,4,5,10\}$ separately to see whether integer $\beta$ cases show monotonicity not visible in continuous $\beta$.

Research strategy adjustment:

Round 23 should be recorded as a successful artifact round because it closes the degree-one residual cap and freezes much of the algebra. Round 24 should be narrower, not broader.

The immediate research priorities are:

1. **Commit $n=1$ as closed.** A1’s theorem should be entered into the lemma bank after A3 performs a final normalization copyedit. Do not spend another round relitigating $n=1$ unless a genuine normalization flaw is found.

2. **Make $n=2$ the finite-degree target.** The next concrete artifact should be a corrected $n=2$ root-isolation certificate, not another broad amplitude essay. A3 must supply the corrected cubic; A4 must execute interval root isolation and interval evaluation.

3. **Separate algebra from amplitude.** A3’s identities should be frozen. The active unsolved problem is amplitude, not endpoint algebra.

4. **Keep A2’s rational-Bessel route but demand constants.** The rational residual identity is useful. The next A2 output must either produce a theorem-level Volterra inequality or explicitly identify the obstruction that prevents one.

5. **Continue the bulk Langer track only with instantiated weights.** A1 should locate the exact Dunster--Gil--Segura or Olver theorem and write the KKT residual and interval of integration in that theorem’s notation. Generic references to “turning-point theory” are no longer enough.

6. **Stop accepting simulated interval logs.** Any computational certificate must contain outward-rounded intervals, root boxes, boundary boxes, and reproducible evaluation formulas.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 24 task is to convert the Round 23 gains into permanent proof-state artifacts and to begin the corrected $n=2$ certificate.

Objectives:

1. Write a final lemma-bank proof of the **Degree-one residual endpoint certificate**. Start from the KKT definition and display the exact formula

$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(\beta+2)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2.
$$

Then reproduce the scalar-envelope proof and make clear that $H_1^4<E(\alpha)$ follows by first bounding $H_1^2$.

2. Include exact dependencies for the $n=1$ proof:
   - $\psi(x)<\log x$ for $x>0$;
   - $\psi'(x)=\sum_{k=0}^\infty(x+k)^{-2}$;
   - the integral tail bound for trigamma;
   - Binet-Robbins or a comparable gamma lower bound proving $\Gamma(16/5)>121/50$.

3. Produce the corrected degree-two certificate setup. Use

$$
P_2^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)(\alpha+2)}2
-
(\alpha+2)u
+
\frac{B+1}{2B}u^2.
$$

State the critical-point cubic and the target interval

$$
0\le u\le u_\sigma=\frac{2B}{B+1}.
$$

4. Do not claim the $n=2$ theorem unless you provide an interval or analytic proof. A good Round 24 result would be a complete root-isolation plan with one nontrivial certified box.

5. Literature task: quote exact theorem statements for Landau and for one Dunster--Gil--Segura or Olver turning-point error theorem. State how their hypotheses would map to the KKT variables. Do not use them as black boxes without constants.

Exploratory allocation: briefly test whether the $n=1$ scalar-envelope method has any analogue for $n=2$ after splitting by signs of the quadratic polynomial. Treat this as exploratory unless fully proved.

For A2:

You are A2, the obstruction finder and rational-Bessel strategist. Your Round 24 task is to turn the rational-coordinate Volterra track into one theorem-level lemma or a precise obstruction.

Objectives:

1. Work from the exact normal form

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

with

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

2. Define the reference Bessel solution exactly. State whether the reference variable is

$$
t=2\sqrt{\Lambda_B z}.
$$

Give the exact normalized regular solution and the Wronskian convention.

3. Prove or retract the sign-definite kernel claim. If proving it, state all Bessel zero and sign hypotheses, including the needed inequalities involving $j'_{\alpha,1}$, $j_{\alpha,1}$, and $y_{\alpha,1}$. Also prove that the integration endpoint for the true first critical point remains in the sign-safe interval. If this cannot be proved, replace the argument by an absolute-value kernel bound.

4. Bound the Volterra integral with explicit constants. The output must contain a displayed finite inequality of the form

$$
\mathcal V_{\mathrm{Bess}}
\le
C_1\frac{\alpha^3}{\Lambda_B^2}
+
C_2\frac{\alpha^{8/3}}{\Lambda_B^2}
$$

or another explicit bound. No $O(\cdot)$ term is acceptable unless it is accompanied by a numerical constant and a valid range.

5. Identify exactly how the gamma normalization $M_{n,\alpha,B}$ enters the rational-Bessel theorem. State the required gamma-ratio inequality separately rather than assuming it.

6. State a falsification test: give a concrete parameter scaling or numerical diagnostic under which the rational-Bessel route fails.

Exploratory allocation: inspect whether the semi-discrete condition $\beta\in\mathbb N_0$ helps the rational coordinate through monotonicity in $B$ or $\theta$. Do not overclaim.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 24 task is to freeze the lemma bank and correct all low-degree algebra.

Objectives:

1. Produce final lemma-bank statements for:
   - affine endpoint ODE;
   - $K_B$ quadratic;
   - cap length;
   - cap monotonicity;
   - Frobenius coefficient;
   - Bessel normalization;
   - critical-point equation;
   - rational-coordinate ODE;
   - invariant product;
   - rational-coordinate Bessel residual.

2. Explicitly audit A1’s degree-one proof. Confirm the exact $H_1(u)^2$ formula and state whether the $H_1^4<E(\alpha)$ step is valid. This should resolve the normalization dispute from the Stage B reviews.

3. Derive the corrected $n=1$ critical equation in both $u$ and $v=u/B$ variables:

$$
B^2v^2
-
\left(2\alpha^2+2\alpha\beta+5\alpha+3\beta+4\right)v
+
\alpha(\alpha+1)=0.
$$

4. Derive the corrected $n=2$ critical cubic from

$$
P_2(u)=
\frac{(\alpha+1)(\alpha+2)}2
-
(\alpha+2)u
+
\frac{B+1}{2B}u^2
$$

and

$$
P_1^{(\alpha+1,\beta+1)}=
\alpha+2-\frac{B+1}{B}u.
$$

Give the cubic coefficients in $u$, and also provide the compactified $\theta=(\alpha+3)/B$ form for interval arithmetic.

5. Complete the CAS-style Laurent cancellation log for the global Langer residual at the turning point. Starting from

$$
K(\tau)=\gamma t+a t^2+b t^3+O(t^4),
\qquad t=\tau-\tau_0,
$$

derive the removable value

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

6. Begin a rigorous gamma-ratio envelope for $M_{n,\alpha,B}$ using Wendel, Gautschi, Kershaw, or Binet bounds. A partial subregime theorem is acceptable; label ranges exactly.

Exploratory allocation: check whether a Turán or Christoffel-Darboux identity gives a sharper bound for the first critical point in degree two. Treat as exploratory.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 24 task is to repair the low-degree computations and produce actual certificate logs.

Objectives:

1. Do not reuse the Round 23 $B+1$ low-degree formulas. Use the corrected hypergeometric representation

$$
P_n^{(\alpha,\beta)}(1-2v)
=
\frac{(\alpha+1)_n}{n!}
{}_2F_1(-n,B;\alpha+1;v),
\qquad
B=n+\alpha+\beta+1.
$$

2. Produce an outward-rounded interval certificate for the scalar inequality

$$
E(\alpha)<0.39
\qquad
\left(\frac12\le\alpha\le\frac65\right),
$$

or reproduce A1’s analytic proof with interval-confirmed endpoint constants. Include exact intervals for $\Gamma(16/5)$ or for the Binet-Robbins lower bound. Do not provide simulated decimals.

3. Recompute the $n=1$ critical quadratic from the corrected formula and give a small root-map table only as a diagnostic. The theorem is already scalar; root maps are not a substitute for proof.

4. Begin the $n=2$ certificate:
   - use A3’s corrected cubic;
   - compactify with $\theta=(\alpha+3)/B$;
   - isolate roots in $0\le u\le2B/(B+1)$;
   - include boundary boxes;
   - evaluate $H_2(u)^4-T_{2,\alpha,\beta}^4$ on at least one nontrivial parameter box.

5. Redo the half-order Bessel maximum certificate with correct arithmetic. Enclose the root of $\tan t=2t$ and report a rigorous upper bound below $0.680$. Cite Landau only as the order-monotonicity dependency.

6. Provide reproducible computational details: precision, interval package, box endpoints, root inclusion test, and interval result. Pseudo-code alone is not enough.

Exploratory allocation: run numerical diagnostics for the rational-Bessel Volterra integral and $M_{n,\alpha,B}$ over sample grids. Label them as experiments, not certificates.

Confidence:

- Confidence that the endpoint-cap algebra should be frozen after final formatting: **0.92**.
- Confidence that A1’s $n=1$ residual endpoint theorem is correct under the KKT normalization: **0.90**.
- Confidence that the scalar bound $E(\alpha)<0.39$ is correct: **0.93**.
- Confidence that Round 23 closes all residual $n=1$ endpoint cases after imported global reductions: **0.88**.
- Confidence that A4’s Round 23 $n=1,n=2$ critical equations are invalid as written: **0.90**.
- Confidence that the corrected $n=2$ certificate can be obtained by interval root isolation: **0.72**.
- Confidence that A2’s rational-coordinate residual identity is correct: **0.88**.
- Confidence that A2’s current Volterra threshold $\alpha\le1.04n^{2/3}$ is theorem-level: **0.25**.
- Confidence that Landau plus the corrected half-order calculation gives $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680$: **0.80**, pending exact theorem statement inclusion.
- Confidence that a split Langer/Riccati/rational-Bessel plus finite-degree program can eventually close the semi-discrete case: **0.65**.
- Confidence that the full real-parameter KKT conjecture is proved at this stage: **0.10**.

Overall judge decision:

Record Round 23 as a successful artifact-completion round. Add the degree-one residual endpoint theorem to the lemma bank as proved, after a final A3 normalization check. Freeze the endpoint-cap algebra. Reject A4’s low-degree formulas and numerical Bessel intervals as written. Retain A2’s rational-coordinate residual identity but demote its Volterra constants and threshold to conditional status. Round 24 should focus on three deliverables: final lemma-bank text, a corrected $n=2$ certificate, and one theorem-level rational-Bessel or Langer constant inequality.
