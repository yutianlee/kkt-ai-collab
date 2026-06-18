Summary:

Round 24 source packet:

Round 24 is a useful artifact-correction and algebra-consolidation round. It does **not** prove the full real-parameter KKT conjecture, and it does **not** prove the arbitrary-degree finite-$B$ first-lobe amplitude theorem. The best proof state is now:

1. The endpoint-cap first-lobe reduction is stable enough to freeze as a lemma-bank theorem, conditional on the imported central-contour, weighted-energy, small-exponent, symmetry, and boundary-case modules.
2. The residual $n=1$ endpoint theorem is essentially closed, but the final write-up must replace the remaining decimal/gamma endpoint estimates by a permanent outward-rounded or Binet/Wendel certificate before the lemma bank marks it "proved" without qualification.
3. The $n=2$ problem now has the correct degree-two endpoint polynomial, critical cubic, compactified variables, and a useful cap sign bracket. It is not yet certified: no root-isolation log or interval value check is supplied.
4. A2's rational-coordinate relative-amplitude identity is the most promising new analytic idea in Round 24, but it is not yet a theorem-level small-$\alpha$ KKT estimate. Its core identity should be audited and preserved; its constants, phase/first-lobe control, and gamma envelope remain open.
5. A1's allowed-side Airy/Langer propagation lemma is a valid conditional constant inequality. It still does not address the Frobenius-to-cut coefficient $\mathfrak C_c$, so it cannot close the bulk first-lobe theorem.
6. A3 is the most reliable Round 24 source for algebra. A4 provides useful $n=1$ convexity and Bessel-maximum hand checks, but its $n=2$ compactification and some numerical enclosures require correction.

The selected route remains the endpoint-cap first-lobe route, split into three certification tracks:

$$
\boxed{
\text{low-degree certificates}
+
\text{small-}\alpha\text{ rational-Bessel relative amplitude}
+
\text{bulk weighted Langer/Airy}.
}
$$

No new broad architecture should be introduced in Round 25 unless it delivers one of: a final $n=1$ certificate, an executed $n=2$ interval/root-isolation certificate, a theorem-level rational-Bessel constant inequality, or a concrete weighted DGS/Olver Langer inequality.

Literature status:

The core source remains Koornwinder--Kostenko--Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv record confirms the title, authors, and the link between Jacobi Bernstein estimates and dispersive estimates for generalized Laguerre operators.

Haagerup--Schlichtkrull remains relevant context, not a closure theorem. Their arXiv record states that they prove a Bernstein-type inequality for Jacobi polynomials, uniform for $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but the estimate is not the sharp KKT constant used here.

Landau's Bessel paper remains a legitimate dependency when a genuine Bessel reduction has been made. The bibliographic records give L. J. Landau, "Bessel Functions: Monotonicity and Bounds," *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`. The published-page metadata and abstract records state the order-monotonicity/bound context for Bessel suprema; this can support reducing $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|$ to the half-order case once the precise hypotheses are quoted.

Dunster--Gil--Segura are the correct modern turning-point error-bound sources. Their arXiv abstracts state that they derive explicit or computable sharp error bounds for Airy-type expansions of linear second-order equations with a simple turning point. The published records give "Simplified error bounds for turning point expansions," *Analysis and Applications* 19(4), 647--678 (2021), DOI `10.1142/S0219530520500104`, and "Sharp error bounds for turning point expansions," *Journal of Classical Analysis* 18(1), 49--81 (2021), DOI `10.7153/jca-2021-18-05`. These references support the bulk Langer route, but no Round 24 output instantiates their hypotheses and weights for the exact KKT residual $\Psi_B$.

Arb remains a suitable computational platform for interval certificates. Johansson describes Arb as a C library for arbitrary-precision midpoint-radius, or ball, interval arithmetic, supporting real/complex numbers, polynomials, power series, matrices, and many special functions; bibliographic records give the IEEE Transactions on Computers article and DOI `10.1109/TC.2017.2690633`. This validates the platform, not any unexecuted KKT certificate.

Gamma-ratio inequalities remain an active dependency. DLMF §5.6 lists gamma-function inequalities including Gautschi-type inequalities, and the literature chain includes Wendel's "Note on the Gamma function," *American Mathematical Monthly* 55(9), 563--564 (1948), DOI `10.2307/2304460`, and Kershaw's "Some extensions of W. Gautschi's inequalities for the gamma function," *Mathematics of Computation* 41 (1983), 607--611. The exact KKT four-gamma envelope is still not proved.

Selected main route:

The selected main route is the **endpoint-cap first-lobe route with low-degree certification and regime-split amplitude development**.

The certified proof skeleton is as follows.

Import the global modules:

- central branch-safe contour clearance;
- weighted-energy clearance;
- small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
- left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
- boundary treatment for $n=0$, $\alpha=0$, $\beta=0$, $\alpha=1/2$, no turning point, and no first critical point.

In the residual right-endpoint range

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

The endpoint cap is

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
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

where

$$
r_B=1-\frac{n+1}{B},\qquad
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

Thus, in the residual right-endpoint strip $\alpha>1/2$,

$$
K_B'(u)>\frac14.
$$

Forbidden-zone ascent says that if $K_B$ has no zero in the cap, the cap is controlled by monotone ascent and the central boundary estimate. If $K_B$ has a first zero $u_0$ in the cap, the regular Frobenius branch is positive and increasing on $(0,u_0)$. On the allowed side $K_B>0$, the Sonin functional

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

Therefore later allowed-zone extrema do not exceed the first allowed extremum. The remaining endpoint-cap theorem is:

$$
\boxed{
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}
}
$$

where $u_1$ is the first critical point after $u_0$, if it exists. This finite-$B$ first-lobe amplitude theorem remains open for $n\ge2$.

Round 24's strategic consequence is clear: the proof program should not be replaced by a global Laguerre inequality or a static Bessel comparison. The correct deliverables are now local and checkable.

Useful fragments by source:

### A1

A1 gives the cleanest theorem-package synthesis and the best state-update material.

Adopt A1's formal right endpoint cap theorem as the base lemma-bank text, with the exact hypotheses that the central-contour, energy, small-exponent, symmetry, and boundary modules have already cleared their regions. A1's statement of the endpoint ODE, cap length, $K_B$ quadratic, cap monotonicity, forbidden-zone ascent, Sonin ordering, and first-lobe reduction is consistent with the accumulated certified algebra.

A1 also gives the best corrected $n=2$ starting point. For $n=2$,

$$
B=\alpha+\beta+3,
\qquad
\frac12<\alpha<\alpha_E(2)=\frac{15}{7}.
$$

Use the compactified parameter

$$
\theta=\frac{\alpha+3}{B}\in[0,1],
$$

with $\theta=0$ the Laguerre face and $\theta=1$ the $\beta=0$ face. The cap endpoint is

$$
u_\sigma
=
\frac{2B}{B+1}
=
\frac{2(\alpha+3)}{\alpha+3+\theta}.
$$

The corrected endpoint polynomial is

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

The interval-stable critical equation is

$$
C_{\alpha,\theta}(u)
=
\left(\alpha(\alpha+3)-(\alpha+3-3\theta)u\right)P_{2,\alpha,\theta}(u)
+
2u\left((\alpha+3)-\theta u\right)P_{2,\alpha,\theta}'(u).
$$

Equivalently, in $B$-notation, the uncompactified cubic is

$$
C(u)
=
-\frac{(B+1)^2}{2B}u^3
+
\frac{(3B-1)\alpha+8B}{2}u^2
+
\frac{-3B\alpha^2-11B\alpha-10B+3\alpha^2+9\alpha+6}{2}u
+
\frac{B\alpha(\alpha+1)(\alpha+2)}2.
$$

A1's sign bracket

$$
C_{\alpha,\theta}(0)>0,\qquad C_{\alpha,\theta}(u_\sigma)<0
$$

is a genuine $n=2$ advance. It shows that the cap contains at least one critical point. It does not isolate the first allowed critical point and does not prove the $n=2$ KKT bound.

A1 also restates the allowed-side Airy propagation theorem. This is a real conditional inequality. For

$$
W''+\zeta W=\Psi(\zeta)W
$$

on $[\zeta_c,\zeta_1]\subset(0,\infty)$, if

$$
A(\zeta)=\operatorname{Ai}(-\zeta),\qquad
B_A(\zeta)=\operatorname{Bi}(-\zeta),
$$

and

$$
\mathfrak m(\zeta)^2=A(\zeta)^2+B_A(\zeta)^2,
$$

then, with Airy coefficient norm $\mathfrak C_c$ at the cut,

$$
|W(\zeta_1)|
\le
\mathfrak m(\zeta_1)\mathfrak C_c
\exp\left(
\pi
\int_{\zeta_c}^{\zeta_1}
\mathfrak m(\xi)^2|\Psi(\xi)|\,d\xi
\right).
$$

This theorem is accepted as allowed-side propagation. It is not a KKT closure because $\mathfrak C_c$ is not bounded from the Frobenius endpoint data.

### A2

A2's main contribution is the rational-coordinate relative-amplitude formulation.

Set

$$
z=\frac{Bu}{B-u}
$$

and

$$
Y(z)=z^{1/2}H(u(z)).
$$

The normal form is

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

where the exact residual is

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

Let

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz})
$$

be the regular Bessel-core solution and set

$$
h(z)=\frac{Y(z)}{W_1(z)}.
$$

Direct subtraction gives

$$
(W_1^2h')'
=
-\Delta Q(z)W_1^2h
=
|\Delta Q(z)|W_1^2h,
$$

provided $W_1$ has no zero on the interval considered. This identity is a strong candidate lemma. It avoids the old $J_\alpha Y_\alpha$ Wronskian kernel and may be the right small-$\alpha$ mechanism.

However, A2 overlabels its consequences. The following are not proved in Round 24:

- the bound $M_Q\le2.75$ uniformly on the residual strip;
- the scalar variation estimate

$$
\mathcal V_{\mathrm{Bess}}
\le
\frac{M_Q(t_1^*)^4}{64\Lambda_B^2}
$$

with correct interval endpoints;
- control that the true first critical point lies before the first zero of $W_1$ or inside an interval where the denominator $W_1^2$ is bounded away from zero;
- the phase shift between the Bessel reference first peak and the perturbed first critical point;
- the gamma-normalization envelope

$$
M_{n,\alpha,B}
\le
1+\frac{C}{n}
$$

or any equivalent bound strong enough for the KKT target;
- the threshold $\alpha\le1.56\sqrt n$ as a theorem.

Therefore A2's identity should be added as a proposed or algebra-certified lemma after A3 audits the endpoint constants. The claimed "small-$\alpha$ theorem" should not be added.

### A3

A3 is the strongest Round 24 algebra auditor.

The following A3 items should be the lemma-bank baseline:

1. affine endpoint ODE;
2. quadratic Sonin product;
3. cap length and cap monotonicity;
4. Frobenius coefficient;
5. Bessel normalization;
6. critical-point equation in $u$;
7. rational-coordinate equation and invariant product;
8. corrected $n=1$ critical quadratic;
9. corrected $n=2$ critical cubic;
10. Langer residual formula and removable value, pending archival CAS cancellation log.

The Frobenius coefficient should be recorded as

$$
A_{n,\alpha,B}=
\frac{B^{-\alpha/2}}{\Gamma(\alpha+1)}
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}.
$$

The Bessel matching normalization is

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

A3 also verifies the exact Langer residual. With

$$
H_{\tau\tau}+K(\tau)H=0,\qquad K(\tau)=K_B(u(\tau)),
$$

and the Langer map

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

one obtains

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

where

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

At a simple turning point,

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

This value is credible and repeatedly checked, but A3 correctly requests a CAS cancellation log before it becomes an archival lemma.

### A4

A4 contributes useful $n=1$ scalar-envelope work and a useful warning against unexecuted interval claims.

The convexity proof for

$$
E(\alpha)
=
\left(
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right)^2
$$

is valuable. Put

$$
L(\alpha)=\frac12\log E(\alpha).
$$

A4 computes

$$
L''(\alpha)
=
\frac1\alpha+\frac1{\alpha+1}
-\frac1{\alpha+2}
-\frac1{(\alpha+1)^2}
-\psi'(\alpha+2).
$$

Using

$$
\psi'(x)=\sum_{k=0}^\infty\frac1{(x+k)^2}
<
\frac1{x-1}
$$

for $x>1$, one obtains

$$
L''(\alpha)
>
\frac1\alpha-\frac1{\alpha+2}-\frac1{(\alpha+1)^2}
=
\frac{2}{\alpha(\alpha+2)}-\frac1{(\alpha+1)^2}
>0.
$$

Thus $L$ is convex on $[1/2,6/5]$, so $E$ is maximized at an endpoint. This is the right structural proof of the $n=1$ scalar bound.

A4's endpoint decimal estimates should not be entered as proof without repair. The displayed use of Gautschi to obtain $\Gamma(1.2)>0.91816$ is not justified as written. Also, A4's half-order Bessel proof has an inequality-direction problem: to prove

$$
f(1.165)=\sin(1.165)-2(1.165)\cos(1.165)<0,
$$

one needs an upper bound on $\sin(1.165)$ and a lower bound on $\cos(1.165)$; the displayed lower/upper choices do not prove the desired sign. The target bound itself is almost certainly correct, and the correction is routine by interval Newton or properly directed Taylor bounds. But the written proof should not be accepted verbatim.

A4's $n=2$ compactified coefficient expansion is not safe as implementation input. Use A1/A3's uncompactified cubic and rederive compactified coefficients from that baseline.

Rejected or risky ideas:

1. **Claiming Round 24 proves KKT.** Rejected. The arbitrary-degree finite-$B$ first-lobe amplitude theorem remains open.

2. **Claiming $n=2$ is certified.** Rejected. Round 24 provides a corrected cubic and sign bracket, not root isolation or value bounds.

3. **Treating the $n=1$ theorem as publication-ready without the endpoint enclosure.** Risky. The route is sound, but the final scalar inequalities at $\alpha=6/5$ must be made outward-rounded or Binet/Wendel-certified.

4. **Using A4's compactified $n=2$ coefficients without A3 audit.** Rejected. At least one coefficient appears to omit terms; implementation must use the A1/A3 baseline.

5. **Accepting A2's threshold $\alpha\le1.56\sqrt n$ as proved.** Rejected. It depends on unproved phase-shift, no-zero, gamma-normalization, and constant bounds.

6. **Rejecting A2's new relative-amplitude method by citing the old $J_\alpha Y_\alpha$ kernel.** Rejected. A2's method deliberately avoids the irregular Bessel solution. The method needs audit, not dismissal on the wrong kernel.

7. **Using static-frequency Bessel comparison as a proof route.** Rejected. Prior rounds found frequency-drop and amplitude-inflation problems in the $\alpha=O(n)$ strip.

8. **Using global Laguerre on $0\le u<\infty$ as the main target.** Demoted. The endpoint proof only requires the cap and then the first lobe.

9. **Citing Landau or DGS as if they prove the KKT amplitude theorem.** Rejected. They are external tools; they must be instantiated with KKT normalizations, domains, constants, and hypotheses.

10. **Simulated or floating interval logs.** Rejected. $n=2$ needs outward-rounded interval/Krawczyk/Sturm logs with boxes and margins.

Known gaps:

### G24.1: Arbitrary-degree finite-$B$ first-lobe amplitude theorem

For

$$
n\ge2,\qquad \frac12<\alpha<\alpha_E(n),\qquad \beta\ge0,
$$

prove, at the first critical point $u_1$ after the first zero $u_0$ of $K_B$ in the cap,

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This is the central open theorem.

### G24.2: Final $n=1$ scalar enclosure

The $n=1$ residual proof is reduced to endpoint bounds for $E(\alpha)$ on $[1/2,6/5]$. The convexity proof is solid; the endpoint estimate at $\alpha=6/5$ still needs a permanent outward-rounded or Binet/Wendel certificate.

### G24.3: $n=2$ root isolation and value certification

The corrected cubic and sign bracket are not enough. One must isolate all roots in the cap, identify the first allowed critical point after $u_0$, and prove the interval inequality

$$
H_2(u)^4<T_{2,\alpha,\theta}^4
$$

at the relevant root boxes and boundaries.

### G24.4: Rational-Bessel relative-amplitude constants

A2's identity needs theorem-level constants for:

$$
M_Q=\sup|\Delta Q|,
$$

the no-zero interval for $W_1$,

$$
\int_0^{z_{\max}}
\frac{\int_0^x W_1(s)^2\,ds}{W_1(x)^2}\,dx,
$$

the true perturbed critical point $z_1^*$, and the endpoint normalization $M_{n,\alpha,B}$.

### G24.5: Gamma-ratio envelope

The exact matching normalization

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

still lacks a regime-split upper bound strong enough for the rational-Bessel and Langer tracks.

### G24.6: Frobenius-to-Airy cut coefficient

A1's allowed-side Airy theorem depends on $\mathfrak C_c$. The missing bulk Langer ingredient is a bound transferring the endpoint Frobenius data through the forbidden/turning region to a positive allowed-side cut.

### G24.7: Langer removable value archival proof

The formula for $\Psi_B(0)$ is credible but needs a CAS cancellation log or hand Taylor derivation that explicitly cancels the singular terms.

### G24.8: Correct Landau and Bessel half-order certificate

The half-order maximum is below $0.680$, but Round 24's displayed Taylor proof needs corrected inequality directions or interval Newton. Landau must then be quoted precisely to extend from $\nu=1/2$ to $\nu\ge1/2$.

### G24.9: Boundary faces

The final proof must explicitly handle:

$$
\theta=0,\quad \theta=1,\quad \alpha=\frac12,\quad \beta=0,\quad n=1,\quad n=2,\quad u_0=u_\sigma,\quad u_1\text{ absent}.
$$

### G24.10: Semi-discrete specialization

The application needs $\beta\in\mathbb N_0$. No discrete monotonicity in $\beta$ has yet been proved, so the semi-discrete target remains a test subset, not a separate proof branch.

New lemmas to add:

### Lemma L24.1: Right endpoint cap first-lobe reduction

Add the full theorem R24.1 as stated above. Status: proved modulo imported global modules and boundary-case wording.

### Lemma L24.2: Degree-one scalar convexity

For

$$
E(\alpha)=
\left(
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right)^2
$$

and $L=\frac12\log E$,

$$
L''(\alpha)>0
\qquad
\left(\frac12\le\alpha\le\frac65\right).
$$

Status: proved.

### Lemma L24.3: Degree-one residual theorem

For

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,
$$

the residual right endpoint cap satisfies

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

Status: theorem-level, but enter as "proved" only after appending the certified endpoint enclosure for $E(6/5)$.

### Lemma L24.4: Correct degree-two endpoint polynomial

For $n=2$,

$$
P_2^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac{B+1}{2B}u^2.
$$

Status: proved.

### Lemma L24.5: Correct degree-two critical cubic

Use A1/A3's cubic displayed above. Status: proved.

### Lemma L24.6: Degree-two cap sign bracket

For

$$
\frac12\le\alpha\le\frac{15}{7},
\qquad
0\le\theta\le1,
$$

the corrected cubic satisfies

$$
C_{\alpha,\theta}(0)>0,\qquad C_{\alpha,\theta}(u_\sigma)<0.
$$

Status: proved if A1's endpoint negativity check is archived. Not a value certificate.

### Lemma L24.7: Allowed-side Airy envelope

Add A1's allowed-side propagation theorem. Status: proved conditional ODE lemma; not a KKT amplitude theorem.

### Lemma L24.8: Rational-Bessel relative-amplitude identity

For $Y$ and $W_1$ as above,

$$
(W_1^2h')'=|\Delta Q|W_1^2h,
\qquad h=Y/W_1.
$$

Status: proposed/certified algebra after A3 confirms Frobenius constants and sign conventions. Do not add A2's threshold as proved.

### Lemma L24.9: Rational-coordinate residual

With $z=Bu/(B-u)$ and $Y=z^{1/2}H$,

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
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

Status: certified algebra.

### Lemma L24.10: Langer residual and removable value

Add $\Psi_B$ and $\Psi_B(0)$ formula as "nearly certified; CAS log pending."

### Lemma L24.11: Half-order Bessel maximum

For

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

the first positive stationary point satisfies $\tan t=2t$, and the first maximum is approximately $0.6791921047<0.680$.

Status: true target; Round 24 proof needs a corrected interval sign argument. The extension to $\nu\ge1/2$ requires Landau.

Counterexample checks to run:

1. **$n=1$ endpoint enclosure.** Produce outward-rounded enclosures for $E(1/2)$ and $E(6/5)$, or a Binet/Wendel proof with rational remainders.

2. **A4 compactified $n=2$ coefficient audit.** Compare A4's $\tilde a_k$ against A1/A3's cubic after substituting $B=(\alpha+3)/\theta$. Reject all implementation formulas that do not match exactly.

3. **$n=2$ root isolation.** On at least one nontrivial sub-box of

$$
\alpha\in\left[\frac12,\frac{15}{7}\right],
\qquad
\theta\in[0,1],
$$

run interval Newton or Sturm sequence isolation for roots of $C_{\alpha,\theta}(u)$ in $[0,u_\sigma]$.

4. **$n=2$ value bound.** For isolated root boxes, interval-evaluate

$$
\frac{H_2(u)^4}{T_{2,\alpha,\theta}^4}-1
$$

using the corrected normalized expression, including the $\theta=0$ Laguerre face.

5. **Turning-point ordering in $n=2$.** Isolate $u_0$ from $K_B(u)=0$ and verify the first critical root after $u_0$.

6. **A2 relative-amplitude no-zero condition.** Verify that the interval used satisfies $W_1>0$, equivalently

$$
2\sqrt{\Lambda_B z}<j_{\alpha,1}
$$

or a correctly adapted bound.

7. **A2 variation integral.** Test

$$
I(z)=
\int_0^{z}
\frac{\int_0^x W_1(s)^2\,ds}{W_1(x)^2}\,dx
$$

against A2's claimed bound on sampled hard boxes and then by interval methods.

8. **Gamma envelope grid.** Numerically map $\log M_{n,\alpha,B}$ for $n\le200$, $\theta\in\{0,0.1,0.5,1\}$ and $\alpha$ in the residual strip. This is not proof; it identifies regimes for Binet/Wendel estimates.

9. **Half-order Bessel proof repair.** Redo the root enclosure for $\tan t=2t$ with directed inequalities or interval Newton. Then cite Landau to handle $\nu\ge1/2$.

10. **Langer residual cancellation.** Generate a CAS log expanding $K(\tau)$ and $\zeta(\tau)$ near $\tau_0$, showing cancellation of singular terms in $\Psi_B$.

Research strategy adjustment:

Round 25 should be a verification round, not an architecture round.

The main research priority order is:

1. **Finish the $n=1$ theorem as a permanent artifact.** This should be a short proof with no floating decimals: convexity plus endpoint enclosures. Once done, mark $n=1$ residual cap proved.

2. **Make $n=2$ computationally real.** Use A1/A3's corrected cubic, not A4's current compactified coefficients, and produce actual interval root-isolation and value logs. A single nontrivial certified sub-box is acceptable as a proof-of-concept; a full $n=2$ proof is better but should not be claimed unless boxes cover the entire domain.

3. **Audit A2's relative-amplitude method.** This is the only genuinely new analytic mechanism in Round 24. It may provide the small-$\alpha$ large-$n$ theorem, but only after A3 verifies the identity, positivity, no-zero interval, constants, and gamma normalization.

4. **Keep bulk Langer active but secondary for one round.** The allowed-side theorem is already available. The missing quantity is $\mathfrak C_c$ or a full DGS/Olver weighted theorem through the turning region. Do not restate the Langer framework again unless new constants are provided.

5. **Prioritize gamma ratios.** Both the rational-Bessel and Langer tracks need the same four-gamma envelope. Split the proof into $\alpha=O(1)$, $\alpha=O(\sqrt n)$, and $\alpha=cn$ regimes.

6. **Treat semi-discrete $\beta\in\mathbb N_0$ as a diagnostic subset.** Test it numerically and symbolically, but do not split the proof until a discrete monotonicity or positivity lemma is found.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 25 task is to write the permanent proof-state update and close the remaining presentation gaps around the low-degree artifacts. Do not introduce a new proof architecture.

Objectives:

1. Write the final lemma-bank theorem "Right endpoint cap and first-lobe reduction," with exact imported hypotheses:
   - central branch-safe contour module;
   - weighted-energy module;
   - small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
   - left-right symmetry;
   - boundary cases $n=0$, $\alpha=0$, $\beta=0$, $\alpha=1/2$, no turning point, no first critical point.

2. Write a publication-ready $n=1$ residual endpoint theorem. Use the exact normalization

$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(\beta+2)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2.
$$

Prove

$$
H_1(u)^4<T_{1,\alpha,\beta}^4
$$

for

$$
\frac12\le\alpha\le\frac65,\qquad \beta\ge0,\qquad 0\le u\le1.
$$

You must include a certified endpoint enclosure for $E(6/5)<0.39$. Decimal estimates are acceptable only if outward-rounded or derived from explicit rational inequalities.

3. State the corrected $n=2$ formulas in one stable notation:
   - $\theta=(\alpha+3)/B$;
   - $u_\sigma=2(\alpha+3)/(\alpha+3+\theta)$;
   - $P_{2,\alpha,\theta}(u)$;
   - $C_{\alpha,\theta}(u)$;
   - $T_{2,\alpha,\theta}^4=3/(\alpha+3-\alpha\theta)$.

4. Give the exact statement of the $n=2$ certification problem, including what root isolation must prove and what interval evaluation must prove.

5. Include a concise literature-status appendix with exact external theorem dependencies: KKT, Landau, Dunster--Gil--Segura, Wendel/Gautschi/Kershaw/Binet, Arb. Do not claim these external results imply KKT until instantiated.

Exploratory allocation:

Spend at most 20% on the audited alternatives from the human note: Airy relative-amplitude identity and Krasikov-style higher-order Sonin envelopes. State exact candidate functionals or failure tests; do not pivot.

Required output:

Use Stage A schema. Include sections titled "Permanent lemma-bank text," "Degree-one proof," "Corrected degree-two certificate target," "External theorem dependencies," and "What remains open."

For A2:

You are A2, the obstruction finder and rational-Bessel strategist. Your Round 25 task is to turn the relative-amplitude idea into a theorem with exact hypotheses, or to produce a bounded failure.

Objectives:

1. Start from the certified rational-coordinate normal form

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
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

2. Define

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z}),
\qquad
h(z)=Y(z)/W_1(z).
$$

Derive

$$
(W_1^2h')'=|\Delta Q|W_1^2h
$$

with full sign conventions and Frobenius constants. Prove explicitly that

$$
\lim_{z\to0}W_1(z)^2h'(z)=0.
$$

3. State the maximal interval on which $W_1>0$. Your theorem must include either

$$
2\sqrt{\Lambda_B z_{\max}}<j_{\alpha,1}
$$

or another precise no-zero condition.

4. Prove a rigorous bound for

$$
I(z_{\max})=
\int_0^{z_{\max}}
\frac{\int_0^x W_1(s)^2\,ds}{W_1(x)^2}\,dx.
$$

If you use monotonicity of $J_\alpha$ before its first peak, state the exact interval and justify the true critical point lies inside it. If the bound fails near the peak, report the failure explicitly.

5. Replace the heuristic $M_Q\le2.75$ with an exact expression or a proved rational bound over a stated parameter range.

6. Include the gamma-normalization hypothesis explicitly:

$$
M_{n,\alpha,B}
\le
1+\varepsilon_\Gamma(n,\alpha,B).
$$

Do not hide it. State exactly what $\varepsilon_\Gamma$ would have to be for the KKT target to follow.

7. Produce either:
   - a theorem-level rational-Bessel estimate on a clear subregime such as $\alpha\le C\sqrt n$ with explicit $C$, all assumptions proved; or
   - a bounded failure showing which constant or phase estimate prevents the theorem.

Exploratory allocation:

Spend at most 20% checking whether the rational-Bessel route becomes easier on the semi-discrete subset $\beta\in\mathbb N_0$. Look for monotonicity in $\beta$ or $B$, but do not claim it without proof.

Required output:

Use Stage A schema. Include sections titled "Relative-amplitude identity," "No-zero interval," "Variation bound," "Gamma dependency," "Final scalar inequality or failure," and "Obstruction audit."

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 25 task is to make Round 24 algebra archival and implementation-safe.

Objectives:

1. Verify the $n=1$ residual theorem under exact KKT normalization. Check:
   - $H_1(u)^2$ formula;
   - reduction to $u^\alpha(\alpha+1-u)^2/\Gamma(\alpha+2)$;
   - maximizing point $u_*=\alpha(\alpha+1)/(\alpha+2)$;
   - $T_{1,\alpha,\beta}^4\ge5/8$;
   - all gamma/digamma/trigamma inequalities used.

2. Derive the compactified $n=2$ cubic directly from

$$
C(u)
=
-\frac{(B+1)^2}{2B}u^3
+
\frac{(3B-1)\alpha+8B}{2}u^2
+
\frac{-3B\alpha^2-11B\alpha-10B+3\alpha^2+9\alpha+6}{2}u
+
\frac{B\alpha(\alpha+1)(\alpha+2)}2
$$

by substituting

$$
B=\frac{\alpha+3}{\theta}.
$$

Provide the polynomial coefficients after clearing denominators. Compare explicitly with A4's Round 24 coefficients and identify any missing terms.

3. Verify A1's $n=2$ compactified equation

$$
C_{\alpha,\theta}(u)
=
\left(\alpha(\alpha+3)-(\alpha+3-3\theta)u\right)P_{2,\alpha,\theta}(u)
+
2u\left((\alpha+3)-\theta u\right)P_{2,\alpha,\theta}'(u).
$$

4. Produce a CAS-style cancellation log for the Langer removable value. Starting from

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
$$

solve $K=\zeta\zeta_\tau^2$, expand $\Psi_B$, and show cancellation of singular terms.

5. Audit A2's relative-amplitude identity:
   - verify the rational normal form;
   - verify $\Delta Q<0$;
   - verify the Frobenius constants of $Y$, $W_1$, and $h$;
   - determine whether $W_1^2h'\to0$ at $0$.

6. Begin the gamma-ratio envelope in the two easiest regimes:
   - $\alpha=O(1)$;
   - $\alpha\le C\sqrt n$.

Use Binet's formula or Wendel/Gautschi/Kershaw inequalities with explicit remainders. A partial theorem is acceptable if the range and constants are explicit.

Exploratory allocation:

Spend at most 20% checking whether a Christoffel-Darboux or Turan identity gives a direct $n=2$ or first-critical-point bound. Mark it exploratory.

Required output:

Use Stage A schema. Include sections titled "Certified identities," "Corrected compactified $n=2$ cubic," "CAS cancellation log," "Relative-amplitude audit," "Gamma-ratio envelope," and "Rejected identities."

For A4:

You are A4, the technical lemma generator and certificate executor. Your Round 25 task is to deliver actual artifacts, not plans.

Objectives:

1. Repair the half-order Bessel maximum proof. Either:
   - use interval Newton to enclose the first root of $\tan t=2t$ and interval-evaluate $J_{1/2}$; or
   - use directed Taylor inequalities with the correct sign directions.

Then state precisely how Landau's theorem extends the bound to $\nu\ge1/2$, or explicitly leave that as an external theorem.

2. Produce outward-rounded endpoint enclosures for the $n=1$ scalar envelope:
   - $E(1/2)$;
   - $E(6/5)$.

Use Arb, MPFI, rational Taylor bounds, or another directed-rounding method. Provide the exact intervals and show they lie below $0.39$.

3. Build the corrected $n=2$ interval prototype using A3's coefficients, not your current compactified formulas unless A3 confirms them. Report at least one nontrivial sub-box with:
   - parameter box for $(\alpha,\theta)$;
   - interval for $u_\sigma$;
   - interval root isolation for $C_{\alpha,\theta}(u)=0$;
   - cap filtering;
   - interval evaluation of $H_2(u)^4/T_{2,\alpha,\theta}^4-1$;
   - margin interval;
   - unresolved boxes.

4. Implement a secondary Riccati validation for the same sub-box if feasible. Use

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)},
\qquad
p_BR_u+R^2+K_B=0.
$$

Do not step past a zero of $H$ without proof that $H>0$.

5. Correct the Round 24 rational-Bessel audit. Distinguish clearly between:
   - the old Wronskian kernel involving $J_\alpha Y_\alpha$;
   - A2's new relative-amplitude kernel involving $W_1^2$.

If you think A2's new method fails, provide a specific counterexample or a failed inequality in its own notation.

Exploratory allocation:

Spend at most 20% mapping the semi-discrete values $\beta=0,1,2,3,4,5,10$ in the corrected $n=2$ formulas, but label numerical maps as experimental unless outward-rounded.

Required output:

Use Stage A schema. Include sections titled "Executed $n=1$ enclosures," "Corrected Bessel maximum certificate," "$n=2$ interval logs," "Riccati validation," "Rational-Bessel audit correction," and "Failure boxes."

Confidence:

Confidence in the endpoint-cap ODE, cap length, $K_B$ quadratic, and cap monotonicity: **0.95**.

Confidence in forbidden-zone ascent and Sonin first-lobe reduction after boundary wording: **0.88**.

Confidence in A3's algebra as the Round 24 lemma-bank baseline: **0.90**.

Confidence that the $n=1$ residual theorem is mathematically correct: **0.90**.

Confidence that the $n=1$ theorem is publication-ready without the final scalar endpoint enclosure: **0.70**.

Confidence in the corrected $n=2$ polynomial and critical cubic: **0.92**.

Confidence that the $n=2$ theorem is true: **0.78**, but no proof yet.

Confidence that A2's relative-amplitude identity is algebraically correct after audit: **0.75**.

Confidence that A2's claimed $\alpha\le1.56\sqrt n$ KKT theorem is already proved: **0.25**.

Confidence that the allowed-side Airy propagation lemma is correct as an ODE estimate: **0.85**.

Confidence that the current Langer/Airy material proves the arbitrary-degree first-lobe theorem: **0.20**.

Confidence that a regime-split program combining low-degree certificates, rational-Bessel/Riccati small-$\alpha$ estimates, and weighted Langer/Airy bulk estimates can eventually close at least the semi-discrete target $\alpha\ge0$, $\beta\in\mathbb N_0$: **0.68**.

Confidence that the full real-parameter KKT conjecture is proved at this stage: **0.18**.

Overall judge decision:

Record Round 24 as a productive artifact-correction round, not a closure round. Freeze A3's endpoint-cap algebra and corrected low-degree equations as the lemma-bank baseline. Promote the $n=1$ residual theorem only after appending a rigorous endpoint enclosure. Retain A1's allowed-side Airy theorem as a conditional ODE lemma. Retain A2's relative-amplitude identity as a promising proposed rational-Bessel lemma, but reject its current threshold and closure claims. Reject A4's unsafe $n=2$ compactified coefficients until A3 rederives them. Round 25 should deliver permanent low-degree certificates and theorem-level constants, not more broad architecture.