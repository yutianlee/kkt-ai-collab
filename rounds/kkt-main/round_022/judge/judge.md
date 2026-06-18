Summary:

Source packet: Round 22 uploaded judge packet and agent/review bundle.

Round 22 is a productive execution round, not a proof-closure round. No active agent proves the real-parameter KKT conjecture, and no active agent proves the uniform finite-$B$ first-lobe amplitude theorem for arbitrary $n$. This is the correct posture. The round’s value is that it converts several previously vague analytic bottlenecks into explicit scalar inequalities, exact residual formulas, and low-degree certification targets.

The selected main route remains the endpoint-cap first-lobe route. The global Laguerre inequality on $0\le u<\infty$, static Bessel comparison, and product-formula speculation should remain secondary. The proof is still organized around the already established cap reduction:

$$
u=\frac{B(1-x)}2,\qquad B=n+\alpha+\beta+1,
$$

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n,
$$

and the exact endpoint equation

$$
(p_BH')'+q_BH=0,
\qquad
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

with

$$
K_B(u):=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

The cap Sonin monotonicity and forbidden-zone ascent still reduce the residual endpoint problem to the first critical point $u_1$ after the first cap turning point $u_0$, if such a point exists. The active analytic target is still

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

The new Round 22 progress is fourfold.

First, A1 made a serious advance on the bulk Langer track. The previously undefined Frobenius-to-Airy connection coefficient is now reduced to computable one-dimensional quantities: a renormalized forbidden-side action $C_0$, a nominal recessive Airy coefficient $\mathfrak C_-=\sqrt{2\pi\alpha}A_F e^{C_0}$, and Volterra functionals $E_0(\zeta_c)$ and $G_0(\zeta_c)$ that control the Airy coefficient norm at a positive cut. This is not a proof of the amplitude theorem, but it sharply localizes the bulk Langer obstruction.

Second, A2 developed the rational-coordinate Bessel track into a more concrete conditional route. In the rational coordinate

$$
z=\frac{Bu}{B-u},
$$

the Liouville normal form has the exact Bessel-core residual

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

This residual is algebraically exact and regular at the hard edge. However, A2 overlabels several asymptotic claims: the residual is not pointwise small at $z=0$, the kernel sign claim needs proof, and the scaling $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ still lacks explicit constants and theorem hypotheses.

Third, A3 supplied the strongest algebra audit. Its endpoint ODE, cap identities, dynamic oscillator, Prüfer equations, rational-coordinate normal form, compactified hypergeometric representation, corrected $n=2$ critical cubic, and Riccati Taylor coefficients should be promoted to the lemma bank after formatting and a final CAS-style convention audit for the Langer residual. A3’s gamma-ratio support lemma for the $n=1$ certificate via Wendel’s inequality is also useful.

Fourth, A4 supplied the most concrete near-certificate: the residual $n=1$ theorem. The argument reduces the whole $n=1$ cap to a one-variable scalar envelope

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

The route is strong, but A4’s numerical bound $E<0.380$ is false; direct evaluation gives approximately $0.383396$ at $\alpha=6/5$. This does not endanger the theorem because the target lower bound is $5/8=0.625$. The $n=1$ theorem is therefore very likely correct, but I will not mark it certified until the scalar envelope bound is given with rigorous outward-rounded or analytic enclosures.

Round 23 should be an artifact-completion round. The highest-priority deliverable is a formally certified $n=1$ residual theorem. The second priority is final lemma-bank text for the algebra. The third is a corrected $n=2$ interval or Riccati-IVP certificate. The rational-Bessel and bulk Langer tracks remain important, but they should not consume the next round unless they produce explicit constants, not just scaling narratives.

Literature status:

Verified references:

1. Koornwinder--Kostenko--Teschl remains the source problem. The bibliographic record confirms *Jacobi polynomials, Bernstein-type inequalities and dispersion estimates for the discrete Laguerre operator*, *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`. This is the source of the integer-parameter theorem and Conjecture 6.1.

2. Haagerup--Schlichtkrull remains useful context, not a closure theorem. Their paper gives a Bernstein-type inequality for Jacobi polynomials uniform in $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but it is not the sharp KKT constant needed here.

3. Landau’s Bessel theorem is a usable external dependency. The bibliographic records state L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215, 2000, DOI `10.1112/S0024610799008352`; the abstract and records identify monotonicity with respect to Bessel order for stationary-point magnitudes. This supports reducing a global $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|$ question to $\nu=1/2$ once the exact theorem hypotheses are instantiated.

4. The half-order Bessel maximum remains correctly computed by elementary calculus:

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

and positive critical points satisfy

$$
\tan t=2t.
$$

The first positive maximum is approximately $0.6791921047$, not $2/\pi$.

5. Dunster--Gil--Segura are relevant for the global Langer/Airy track. Their “Sharp error bounds for turning point expansions” derives computable sharp error bounds for Airy-type expansions of linear differential equations with a simple turning point. This supports the route but does not yet instantiate the KKT oscillator, the KKT residual $\Psi_B$, or the KKT constants.

6. Wendel’s gamma-ratio inequality is the right small gamma-ratio tool for the $n=1$ certificate. Secondary bibliographic records identify J. G. Wendel, “Note on the Gamma function,” *American Mathematical Monthly* 55(9), 563--564, 1948. Before final publication, cite Wendel’s original note or a standard gamma-inequality source rather than a secondary webpage.

7. Arb is an appropriate platform for future interval certificates. Johansson’s paper describes Arb as arbitrary-precision midpoint-radius, or ball, interval arithmetic; the bibliographic records give *IEEE Transactions on Computers* 66(8), 1281--1292, 2017. This validates the computational framework, not any unexecuted KKT certificate.

Unverified theorem needs:

1. A precise Dunster--Gil--Segura theorem statement must be mapped to the KKT Langer residual. The proof must define the exact independent variable, dependent-variable transform, Airy normalization, residual control function, and weighted variation integral.

2. A precise Landau theorem statement must be quoted before using the global bound $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680$. Landau gives monotonicity in order at stationary points; the project must state exactly how that implies the required supremum over all $t$.

3. The Watson/Nicholson Bessel-product bounds invoked by A2 require exact statement, hypotheses, and constants before the rational-Bessel Volterra route can be treated as theorem-level.

4. Wendel/Gautschi inequalities are sufficient for the $n=1$ gamma-ratio lemma, but the broader gamma envelope for $M_{n,\alpha,B}$ still needs Binet or Stirling remainder control across regimes.

Source-search tasks assigned to A1/A2:

A1 should locate exact theorem statements for Landau and Dunster--Gil--Segura and write them in KKT notation. A2 should locate the exact Bessel product/interlacing bounds required for the rational-Bessel kernel and determine whether they cover the endpoint and first-peak interval without sign gaps.

Selected main route:

The selected main route is:

**Endpoint-cap first-lobe route, with immediate low-degree certification and conditional two-track large-$n$ amplitude development.**

The proof skeleton remains:

1. Import the global modules: central-contour clearance, weighted-energy clearance, small-exponent theorem for $0\le\alpha\le1/2$, left-right symmetry, and base-case treatment for $n=0$, $\alpha=0$, $\alpha=1/2$, $\beta=0$, no turning point, and no critical point.

2. In the residual right endpoint range

$$
n\ge1,\qquad \frac12<\alpha<\alpha_E(n),\qquad \beta\ge0,
$$

with

$$
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3},
$$

work on

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

3. Use the exact endpoint equation and Sonin product

$$
(p_BH')'+q_BH=0,\qquad K_B=p_Bq_B,
$$

with

$$
K_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

4. Use the derivative lower bound

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

In the residual right endpoint strip, this is at least $1/4$.

5. Use forbidden-zone ascent before the first cap turning point. Since $K_B(0)=-\alpha^2/4<0$ for $\alpha>0$, the regular Frobenius branch is positive and increasing until the first zero $u_0$ of $K_B$, if such a zero lies in the cap.

6. Use Sonin ordering on $K_B>0$:

$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)},
$$

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Later cap extrema do not exceed the first allowed extremum.

7. Reduce the residual endpoint estimate to the first critical point $u_1$ after $u_0$:

$$
|H(u_1)|\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

The strategic adjustment after Round 22 is that the next step should not be another broad attempt at this theorem for all $n$. It should be a staged proof program:

**Track C: Low-degree certificates.**
Finish $n=1$ immediately. Then start $n=2$ with the corrected cubic and compactified variables. This provides proof artifacts and validates the endpoint-cap machinery.

**Track B: Rational-coordinate Bessel theorem.**
Use A2’s exact residual formula to develop a hard-edge theorem. This track is plausible for small or intermediate $\alpha$, but it needs exact kernel sign, exact Volterra constants, and a correct threshold.

**Track A: Bulk Langer/Airy theorem.**
Use A1’s Frobenius-to-Airy coefficient and A3’s Langer residual. This track should handle larger $\alpha$, but only after DGS/Olver weights and the cut issue are made rigorous.

Useful fragments by source:

### A1

A1’s main contribution is the forbidden-side Langer initialization. This addresses a real missing object from earlier rounds: the Airy coefficient vector at the allowed-side cut.

The endpoint regular branch has

$$
H(u)\sim A_Fu^{\alpha/2},
$$

where

$$
A_F
=
B^{-\alpha/2}
\frac{1}{\Gamma(\alpha+1)}
\left(
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
\right)^{1/2}.
$$

A1 defines the forbidden-side action

$$
I(u)=\int_u^{u_0}\frac{\sqrt{-K_B(t)}}{p_B(t)}\,dt,
$$

and the finite renormalized action

$$
C_0
=
\lim_{u\downarrow0}
\left[
I(u)+\frac{\alpha}{2}\log u
\right],
$$

equivalently

$$
C_0
=
\int_0^{u_0}
\left(
\frac{\sqrt{-K_B(t)}}{p_B(t)}
-\frac{\alpha}{2t}
\right)dt
+\frac{\alpha}{2}\log u_0.
$$

Matching to the recessive Airy asymptotic gives

$$
\mathfrak C_-=\sqrt{2\pi\alpha}\,A_Fe^{C_0}.
$$

This is a substantial advance. It replaces a vague matching coefficient by a finite, computable quantity.

A1 then writes the perturbed Airy equation

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

and, using

$$
\mathcal A(\zeta)=\operatorname{Ai}(-\zeta),
\qquad
W=\mathfrak C_-\mathcal A y,
$$

derives

$$
(\mathcal A^2y')'=\Psi_B\mathcal A^2y.
$$

For a cut $\zeta_c>0$ before the first zero of $\operatorname{Ai}(-\zeta)$, A1 defines

$$
E_0(\zeta_c)
=
\int_{-\infty}^{\zeta_c}
|\Psi_B(t)|\mathcal A(t)^2
\left[
\int_t^{\zeta_c}\mathcal A(s)^{-2}\,ds
\right]dt,
$$

and

$$
G_0(\zeta_c)
=
\int_{-\infty}^{\zeta_c}
|\Psi_B(t)|\mathcal A(t)^2\,dt.
$$

Then

$$
|y(\zeta_c)|\le e^{E_0},
\qquad
|y'(\zeta_c)|
\le
\mathcal A(\zeta_c)^{-2}G_0e^{E_0}.
$$

The Airy coefficient norm at the cut satisfies

$$
\mathfrak C_c
\le
\mathfrak C_-
e^{E_0}
\left[
\left(1+\pi\left|\frac{\mathcal B_c}{\mathcal A_c}\right|G_0\right)^2
+
(\pi G_0)^2
\right]^{1/2},
$$

where $\mathcal B(\zeta)=\operatorname{Bi}(-\zeta)$.

Adopt this as a conditional Langer-module statement. Do not mark it as a closing theorem until $C_0,E_0,G_0$, the allowed-side propagation, the cut, and the final scalar ratio are bounded uniformly.

A1’s main hidden risk is the cut. The proposed fixed $\zeta_c=1$ is fragile because the first critical point appears numerically close to $1$ in some hard boxes. Round 23 should not use a fixed cut unless it proves $\zeta_1>\zeta_c$ uniformly. An adaptive cut is safer.

### A2

A2’s valuable contribution is the rational-coordinate Bessel route. In the normal form with

$$
z=\frac{Bu}{B-u},\qquad Y(z)=z^{1/2}H,
$$

A2 and A3 agree on

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

This formula should be added to the lemma bank. It shows that the hard-edge singular structure is exactly the fractional Bessel reference equation, with a regular residual. The residual is strictly negative. It is not, however, necessarily pointwise small at $z=0$:

$$
\Delta Q(0)=-\frac{\Lambda_B}{B}-\Delta_B,
$$

which is generally $O(1)$ in the residual strip. Any smallness must come from the Volterra kernel, Bessel scaling, and the limited first-peak interval, not from pointwise residual size.

A2 also correctly warns that the KKT proof probably needs a regime split. A monolithic rational-Bessel proof fails when $\alpha$ is bulk-scale, because a scaling such as $\mathcal V_{\mathrm{Bess}}\sim \alpha^3/n^2$ would grow if $\alpha=cn$. A monolithic unweighted Langer proof also appears weak for fixed $\alpha$ at the Laguerre face, because the unweighted residual variation need not decay with $n$.

A2’s weak points are proof labeling and thresholds. The sign-definite Volterra kernel is not proved yet. The $O(\alpha^3/n^2)$ scaling lacks constants. The threshold is inconsistently described as $Cn^{2/3}$ and $C\sqrt n$. It must be derived from an actual scalar inequality comparing Bessel Volterra error, Bessel maximum, gamma normalization, and KKT slack.

### A3

A3 is the strongest algebra source and should anchor the lemma-bank update.

Adopt the following as certified or nearly certified:

1. Endpoint ODE:

$$
(p_BH')'+q_BH=0.
$$

2. Sonin product:

$$
K_B(u)=p_Bq_B
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

3. Cap endpoint and monotonicity:

$$
u_\sigma=\frac{nB}{B+n-1}\le n,
$$

$$
K_B'(u)\ge
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}
\quad
(0\le u\le u_\sigma).
$$

4. Dynamic oscillator:

$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

5. Prüfer equations:

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi,
$$

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos2\phi,
\qquad
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

6. Langer residual away from the turning point:

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

7. Removable value at a simple turning point, pending a final convention/CAS audit:

$$
\Psi_B(0)
=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}},
\qquad
\gamma=K_\tau(\tau_0).
$$

8. Rational-coordinate normal form and residual $\Delta Q$ as above.

9. Compactified hypergeometric representation:

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]u^k,
$$

where

$$
\theta=\frac{n+\alpha+1}{B}.
$$

10. The $n=1$ critical quadratic and the $n=2$ corrected critical cubic.

11. Riccati Taylor coefficients for

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)}.
$$

A3’s Langer formula is credible, but it is sign- and convention-sensitive. Add it as “certified after CAS convention log,” not as an unqualified theorem until the transformation $H=\zeta_\tau^{-1/2}W$ or $W=\zeta_\tau^{1/2}H$ and the sign of the Airy equation are fixed line by line.

### A4

A4 gives the most concrete route to a completed theorem.

For $n=1$,

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u,
\qquad
B=\alpha+\beta+2,
\qquad
0\le u\le1.
$$

Using

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$

and

$$
\left(1-\frac{u}{B}\right)^\beta\le1,
$$

A4 obtains

$$
H_1(u)^2
\le
\frac{1}{\Gamma(\alpha+2)}
u^\alpha(\alpha+1-u)^2.
$$

The scalar function

$$
f(u)=u^\alpha(\alpha+1-u)^2
$$

has its unique positive critical point

$$
u_*=\frac{\alpha(\alpha+1)}{\alpha+2}.
$$

For $\alpha\in[1/2,6/5]$, this lies in $[0,1]$. Thus

$$
\max_{0\le u\le1}f(u)
=
\frac{4\alpha^\alpha(\alpha+1)^{\alpha+2}}
{(\alpha+2)^{\alpha+2}},
$$

and hence

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

The target satisfies

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

Therefore a proof of

$$
E(\alpha)<0.39
\qquad
\left(\frac12\le\alpha\le\frac65\right)
$$

would fully close the residual $n=1$ theorem with large margin.

A4’s reported value $E<0.380$ is incorrect; use $E(6/5)\approx0.383396$. This is not a fatal problem. What is missing is an outward-rounded or analytic proof of $E<0.39$. A4’s convexity argument for $h=\frac12\log E$ is plausible, since

$$
h''(\alpha)
=
\frac1\alpha+\frac1{\alpha+1}-\frac1{\alpha+2}
-\frac1{(\alpha+1)^2}
-\psi'(\alpha+2),
$$

and $\psi'$ can be bounded by its positive series. But the current proof uses non-rigorous numerical trigamma values. Round 23 should repair this.

Rejected or risky ideas:

1. **Claiming Round 22 proves KKT.** Rejected. The finite-$B$ first-lobe amplitude theorem remains open for arbitrary $n$.

2. **Marking A2’s asymptotic Bessel scaling as proved.** Rejected. The scaling $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ is conditional until Watson/Nicholson/Airy transition constants are stated and bounded.

3. **Calling the rational residual pointwise small.** Rejected. The residual is regular but can be $O(1)$ at the hard edge. The proof must rely on Volterra-weighted smallness.

4. **Using a fixed Langer cut $\zeta_c=1$ without proof.** Risky. The first critical point may be too close to $1$ in hard boxes. Use an adaptive cut or prove a uniform lower bound.

5. **Promoting the Langer removable value without convention audit.** Risky. The formula is credible, but Langer normalizations are sign-sensitive. A short CAS log and convention statement are required.

6. **Treating A4’s $n=1$ certificate as fully proved.** Not yet. The constants are wrong as written and the convexity/trigamma step is not outward-rounded. The theorem is likely true and close to certification, but it needs one clean scalar proof.

7. **Using Riccati variables without controlling zeros of $H$.** Risky. Since $R=pH'/H$, the IVP requires $H$ nonzero up to the first critical point or an equivalent regularized system avoiding division by $H$.

8. **Using interval arithmetic as a claim rather than an artifact.** Rejected. Future interval work must provide boxes, root isolation criteria, outward-rounded evaluations, and unresolved-box logs.

9. **Overclaiming semi-discrete simplification.** Open. The semi-discrete case $\beta\in\mathbb N_0$ remains strategically important, but Round 22 provides no proof that integer $\beta$ is easier in the residual cap.

Known gaps:

### G22.1: Uniform finite-$B$ first-lobe amplitude theorem

The main theorem remains open:

For

$$
n\ge1,\qquad
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

### G22.2: Certified $n=1$ scalar envelope

The $n=1$ theorem is near complete but not certified. Required:

1. prove $E(\alpha)<0.39$ on $[1/2,6/5]$;
2. use rigorous gamma/trigamma or outward-rounded interval bounds;
3. correct the false $E<0.380$ claim;
4. state the final theorem for all $\beta\ge0$.

### G22.3: Langer residual convention and removable value

A3’s formula

$$
\Psi_B(0)
=
\frac{10\gamma K_{\tau\tau\tau}-9K_{\tau\tau}^2}
{140\gamma^{8/3}}
$$

needs a short symbolic verification log and fixed sign convention. This is a small but important gap.

### G22.4: Frobenius-to-Airy uniform constants

A1 reduces the Airy coefficient to $C_0,E_0,G_0$, but no uniform bound over the residual strip is known. The project must bound

$$
C_0,\qquad E_0(\zeta_c),\qquad G_0(\zeta_c),
$$

and combine them with allowed-side propagation to produce a scalar inequality.

### G22.5: Langer cut safety

The proof must avoid the fragile assumption $\zeta_c=1$. Either prove $\zeta_1>1+\epsilon$ in the relevant range or choose an adaptive cut

$$
\zeta_c=\min(0.9,\zeta_1-\epsilon)
$$

with certified lower margin.

### G22.6: Rational-Bessel Volterra constants

The rational-Bessel route needs:

1. exact reference solutions and Wronskian;
2. a proved sign-definite or absolute kernel bound;
3. explicit transition-zone constants;
4. a final scalar inequality specifying the valid parameter range.

### G22.7: Gamma-ratio envelope beyond $n=1$

The $n=1$ Wendel lemma is narrow. The broader Bessel matching constant

$$
M_{n,\alpha,B}
=
\left(
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
\right)^{1/2}
(B\Lambda_B)^{-\alpha/2}
$$

still needs regime-split bounds.

### G22.8: $n=2$ low-degree certificate

The corrected cubic is available. Missing:

1. compactified implementation on $\alpha\in[1/2,15/7]$, $\theta\in[0,1]$;
2. root isolation for every cap critical point;
3. stable Laguerre-face treatment;
4. rigorous evaluation of $H_2^4-T^4$;
5. unresolved-box logs.

### G22.9: Riccati IVP validation

The Riccati route is promising, but it must prove either $H>0$ until $u_1$ or reformulate without division by $H$. It also needs a validated Taylor remainder and an interval ODE solver.

### G22.10: External theorem instantiation

Landau, Wendel, Watson/Nicholson, and Dunster--Gil--Segura must be stated with exact hypotheses before being used in proof.

New lemmas to add:

### Lemma L22.1: Endpoint cap algebra package

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
p_B(u)=u\left(1-\frac{u}{B}\right)
$$

and $q_B$ is the accepted endpoint potential. The product

$$
K_B=p_Bq_B
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2
$$

is a concave quadratic. Also

$$
u_\sigma=\frac{nB}{B+n-1}\le n,
$$

and

$$
K_B'(u)\ge
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}
$$

on the cap.

Status: certified.

### Lemma L22.2: Dynamic oscillator and Prüfer equations

With

$$
\tau=\log\frac{u}{B-u},
$$

one has

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

On $K_B>0$, the Prüfer variables

$$
H=RK_B^{-1/4}\sin\phi,\qquad
H_\tau=RK_B^{1/4}\cos\phi
$$

satisfy

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
\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

Status: certified.

### Lemma L22.3: Langer residual formula

For the convention

$$
K(\tau)=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

the transformed equation is

$$
W_{\zeta\zeta}+\zeta W=\Psi_BW,
$$

with

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

Status: certified away from the turning point; convention audit required.

### Lemma L22.4: Removable Langer value

At a simple turning point with $\gamma=K_\tau(\tau_0)>0$,

$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

Status: nearly certified; add after CAS-style convention verification.

### Lemma L22.5: Frobenius-to-Airy recessive coefficient

With

$$
C_0
=
\int_0^{u_0}
\left(
\frac{\sqrt{-K_B(t)}}{p_B(t)}
-
\frac{\alpha}{2t}
\right)dt
+
\frac{\alpha}{2}\log u_0,
$$

and

$$
A_F=
B^{-\alpha/2}
\frac{1}{\Gamma(\alpha+1)}
\left(
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
\right)^{1/2},
$$

the nominal recessive Airy coefficient is

$$
\mathfrak C_-=\sqrt{2\pi\alpha}A_Fe^{C_0}.
$$

Status: conditional theorem-level formula.

### Lemma L22.6: One-sided recessive Volterra initialization

For

$$
W=\mathfrak C_-\operatorname{Ai}(-\zeta)y,
$$

one has

$$
(\operatorname{Ai}(-\zeta)^2y')'
=
\Psi_B\operatorname{Ai}(-\zeta)^2y.
$$

The functionals $E_0,G_0$ above give an explicit upper bound for $\mathfrak C_c$.

Status: conditional; uniform constants missing.

### Lemma L22.7: Rational-coordinate Bessel residual

For

$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H,
$$

the normal form is

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

Status: certified algebra.

### Lemma L22.8: Compactified hypergeometric representation

For

$$
\theta=\frac{n+\alpha+1}{B},
$$

the stable finite expression is

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^{n}
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]u^k.
$$

Status: certified.

### Lemma L22.9: $n=1$ scalar envelope

For $n=1$, $1/2\le\alpha\le6/5$, $\beta\ge0$, and $0\le u\le1$,

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

If $E(\alpha)<0.39$ on this interval, then the residual $n=1$ KKT cap bound follows because

$$
T_{1,\alpha,\beta}^4\ge\frac58.
$$

Status: near-certified; scalar bound pending rigorous enclosure.

### Lemma L22.10: Wendel gamma-ratio lemma for $n=1$

For $B\ge\alpha+2$ and $1/2\le\alpha\le6/5$,

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha.
$$

Status: certified via Wendel after exact citation; A3/A4 proof accepted.

### Lemma L22.11: $n=2$ corrected critical cubic

For

$$
P_2(u)=A-b_1u+c_1u^2,
$$

with

$$
A=\frac{(\alpha+1)(\alpha+2)}2,
\qquad
b_1=\alpha+2,
\qquad
c_1=\frac{B+1}{2B},
$$

the critical equation is

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

Status: certified.

### Lemma L22.12: Riccati Taylor coefficients

For

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)},
$$

the equation is

$$
p_B R_u+R^2+K_B=0.
$$

The Taylor coefficients begin

$$
v_0=\frac{\alpha}{2},
\qquad
v_1=-\frac{\Lambda_B}{\alpha+1},
$$

$$
v_2=\frac{\Delta_B+v_1/B-v_1^2}{\alpha+2},
$$

$$
v_3=\frac{2v_2(1/B-v_1)}{\alpha+3},
$$

$$
v_4=\frac{3v_3/B-2v_1v_3-v_2^2}{\alpha+4}.
$$

Status: algebra certified; IVP proof still open.

Counterexample checks to run:

1. **$n=1$ scalar envelope.** Rigorously enclose $E(\alpha)$ on $[1/2,6/5]$. Confirm $E<0.39$. Record exact endpoint intervals and the method used.

2. **Convexity/trigamma proof.** Prove or replace A4’s convexity argument. A simple route is to use

$$
\psi'(x)=\sum_{k=0}^{\infty}\frac{1}{(x+k)^2}
$$

with rational tail bounds to enclose $h''(\alpha)$.

3. **Langer residual CAS log.** Verify the removable value $\Psi_B(0)$ from a symbolic expansion of $K(\tau)=\gamma t+at^2+bt^3+\cdots$ and $K=\zeta\zeta_\tau^2$.

4. **Fixed versus adaptive Langer cut.** Numerically and then rigorously enclose $\zeta_1-\zeta_c$ on hard boxes. Test whether $\zeta_c=1$ ever fails. If so, implement adaptive cut.

5. **A1 Volterra integrals.** Bound $C_0,E_0,G_0$ in representative hard boxes. Use interval quadrature rather than floating diagnostics.

6. **Rational-Bessel kernel sign.** Prove or disprove the sign-definite Volterra kernel before relying on non-oscillatory absolute estimates.

7. **Rational-Bessel constants.** Compute the explicit constant in the Volterra bound and derive an actual parameter threshold. Do not accept $O(\alpha^3/n^2)$ without constants.

8. **$n=2$ interval certificate.** Use $\theta\in[0,1]$, scale the cubic coefficients by $B^{-2}$ near $\theta=0$, isolate roots, evaluate $H_2^4-T^4$, and log unresolved boxes.

9. **Riccati IVP alternative.** Verify $H$ has no zero before the first critical point or switch to a regular two-dimensional IVP that avoids division by $H$.

10. **Semi-discrete samples.** Test $\beta\in\{0,1,2,3,4,5,10\}$ separately, but do not infer monotonicity without proof.

Research strategy adjustment:

Round 23 should narrow sharply. The project has enough architecture. The next round should produce at least one finished theorem-level artifact.

The highest priority is the $n=1$ residual theorem. It is small, clean, and likely within reach. Finishing it would be the first complete residual endpoint theorem produced by the workflow and would validate the low-degree certificate strategy.

The second priority is lemma-bank consolidation. A3’s algebra should be frozen so agents stop re-deriving the endpoint ODE, rational normal form, compactified polynomial, and low-degree critical equations.

The third priority is $n=2$. The corrected cubic plus compactification gives a concrete interval target. A Riccati IVP should be explored in parallel, but only as a validation or alternative if it produces rigorous enclosures.

The bulk Langer and rational-Bessel tracks should continue, but with stricter output requirements. A1 and A2 must produce explicit scalar constants or theorem statements with hypotheses. More broad narratives about “DGS should handle this” or “Bessel variation is $O(\alpha^3/n^2)$” should be rejected unless converted into checkable inequalities.

Recommended Round 23 allocation:

1. A1: synthesize and finalize the $n=1$ theorem, plus update state and gap register.
2. A2: prove one rational-Bessel Volterra lemma with constants, or honestly report that constants are not yet sufficient.
3. A3: finalize lemma-bank algebra and give CAS-style Langer residual verification.
4. A4: execute scalar enclosures for $n=1$ and begin $n=2$ root isolation with actual interval logs.

Next-round prompts by agent:

For A1:

You are A1, broad strategist, proof synthesizer, and judge candidate. Your Round 23 task is to turn Round 22 into concrete proof-state artifacts, with priority on a complete $n=1$ residual theorem.

Objectives:

1. Write a theorem titled “Degree-one residual endpoint certificate.” It should state:

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,\qquad
0\le u\le1
$$

implies

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

2. Use the scalar reduction:

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

Then prove with explicit inequalities that

$$
E(\alpha)<0.39<\frac58\le T_{1,\alpha,\beta}^4.
$$

Do not rely on non-outward-rounded floating values. Use either rigorous trigamma/gamma bounds or explicit interval enclosures.

3. Correct the Round 22 constant: $E(6/5)\approx0.383396$, not $<0.380$.

4. Produce lemma-bank text for the certified algebraic modules from A3, but mark the Langer removable value as “pending CAS convention log” unless A3 supplies the log.

5. Write a conditional Langer theorem using A1’s own functionals $C_0,E_0,G_0$, but do not claim it closes any range unless uniform bounds are shown. Include the adaptive-cut issue explicitly.

6. Include a literature-status appendix: exact KKT reference, exact Landau dependency, Wendel citation, DGS theorem need, and Arb for interval computation.

Exploratory allocation:

Spend at most 20% comparing two possible next finite-degree strategies after $n=1$: corrected-cubic interval root isolation for $n=2$ versus Riccati-IVP enclosure. Recommend one primary route.

Required output:

Use the Stage A schema. Include sections titled “Certified $n=1$ theorem attempt,” “State-update material,” “Remaining analytic hypotheses,” and “What would falsify this route.”

For A2:

You are A2, obstruction finder and referee-style strategist. Your Round 23 task is to convert the rational-coordinate Bessel route from asymptotic narrative into one theorem-level Volterra lemma, or else identify the exact obstruction.

Objectives:

1. Work in the exact rational-coordinate normal form:

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

2. Define the exact Bessel reference solutions, their normalization, and their Wronskian. State the first critical point in the $z$ or Bessel argument variable.

3. Prove or retract the sign-definite Volterra kernel claim. If proving it, give a clean argument using Bessel zero interlacing or cylinder-function monotonicity with exact hypotheses. If retracting it, replace it by an absolute-value bound.

4. Produce an explicit bound for

$$
\int_0^{z_1}|\mathcal K(z,s)\Delta Q(s)|\,ds
$$

in a stated parameter range. Do not write only $O(\alpha^3/n^2)$. Provide constants, or state exactly which constants remain unevaluated.

5. Resolve the threshold inconsistency. Derive whether the rational-Bessel theorem plausibly covers $\alpha\le C\sqrt n$, $\alpha\le Cn^{2/3}$, or a different range. The threshold must come from a displayed scalar inequality involving KKT slack.

6. Explain explicitly why pointwise residual size does not need to be small at $z=0$, or else acknowledge it as an obstruction.

Exploratory allocation:

Spend 20% on the semi-discrete subset $\beta\in\mathbb N_0$. Test whether integer $\beta$ changes the rational-Bessel constants or critical point location. Do not claim a simplification without a proof.

Required output:

Use the Stage A schema with sections “Exact Volterra lemma,” “Kernel sign audit,” “Constants and threshold,” “Obstruction status,” and “What would falsify this route.”

For A3:

You are A3, algebra checker and endpoint-reduction auditor. Your Round 23 task is to produce final lemma-bank text and certify the remaining algebraic convention points.

Objectives:

1. Produce clean lemma-bank statements for:
   - endpoint ODE;
   - $K_B$ quadratic and cap monotonicity;
   - dynamic oscillator;
   - Prüfer equations;
   - rational-coordinate normal form and residual;
   - compactified hypergeometric representation;
   - $n=1$ critical equation;
   - $n=2$ corrected critical cubic;
   - Riccati Taylor coefficients.

2. Provide a CAS-style derivation of the Langer residual removable value. Fix the convention:

$$
K=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

or state the alternative convention if you use one. Derive

$$
\Psi_B(0)=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}.
$$

Show cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms.

3. Repair any statement that the rational residual is $O(1/B)$ pointwise. Distinguish pointwise residual size from Volterra-weighted residual size.

4. Finish the $n=1$ scalar proof if possible. Use Wendel’s inequality and rigorous trigamma/gamma bounds to prove

$$
E(\alpha)<0.39
$$

on $[1/2,6/5]$.

5. For $n=2$, give the scaled Laguerre-face limiting cubic obtained from the corrected coefficients. State exactly how to handle $\theta=0$ without evaluating $B=\infty$.

Exploratory allocation:

Spend 20% on deriving a validated Riccati system that avoids division by $H$ or proves $H>0$ until $u_1$ in the low-degree residual cases.

Required output:

Use the Stage A schema. Include “Certified identities,” “Convention-sensitive identities,” “Rejected identities,” “Low-degree certificate algebra,” and “Lemma-bank text.”

For A4:

You are A4, technical lemma generator and symbolic/numeric check planner. Your Round 23 task is to produce actual certified scalar enclosures for $n=1$ and begin a real $n=2$ certificate. Do not provide pseudo-code in place of results.

Objectives:

1. Finish the $n=1$ theorem. Provide outward-rounded interval or exact rational enclosures proving

$$
E(\alpha)<0.39
$$

for all

$$
\frac12\le\alpha\le\frac65.
$$

Acceptable methods:

- prove $h''>0$ for $h=\frac12\log E$ using a rigorous tail bound for $\psi'$ and then enclose $E(1/2)$ and $E(6/5)$; or
- run interval arithmetic over $\alpha$ with logged boxes and outward-rounded evaluations.

2. Correct the numerical record: report $E(6/5)$ with an interval containing approximately $0.383396$, not $<0.380$.

3. State the final $n=1$ theorem:

$$
H_1(u)^4<T_{1,\alpha,\beta}^4
$$

for the full residual strip and all $\beta\ge0$.

4. Begin the $n=2$ certificate. Use the corrected cubic and compactified variables

$$
\alpha\in[1/2,15/7],
\qquad
\theta\in[0,1].
$$

Do not evaluate $B=(\alpha+3)/\theta$ at $\theta=0$. Use the compactified polynomial and the scaled limiting cubic.

5. Provide at least one real interval root-isolation log for a nontrivial $n=2$ box. Include:
   - parameter box;
   - root interval;
   - Krawczyk or interval Newton inclusion;
   - interval value of $H_2^4-T^4$;
   - status: verified or unresolved.

6. Test the Riccati IVP alternative on $n=1$ as a validation. If it divides by $H$, state why $H$ is nonzero up to the first critical point; otherwise use a regularized system.

Exploratory allocation:

Spend 20% estimating the rational-Bessel Volterra constant requested by A2 on small test grids. Report numerical values as experimental unless outward-rounded.

Required output:

Use Stage A schema with sections “Certified $n=1$ enclosures,” “$n=2$ interval prototype,” “Failure boxes,” “Riccati validation,” and “Experimental versus certified claims.”

Confidence:

Confidence that Round 22 proves the full real-parameter KKT conjecture: **0.15**.

Confidence that the endpoint-cap first-lobe reduction remains the correct main route: **0.90**.

Confidence that A3’s endpoint and rational-coordinate algebra should be promoted to the lemma bank: **0.90**.

Confidence in A3’s Langer residual removable value before final convention/CAS audit: **0.78**.

Confidence in A1’s formula

$$
\mathfrak C_-=\sqrt{2\pi\alpha}A_Fe^{C_0}
$$

after the displayed matching derivation: **0.80**.

Confidence in A1’s one-sided recessive Volterra framework as a valid conditional bound: **0.75**.

Confidence that A1’s fixed cut $\zeta_c=1$ is safe without more proof: **0.30**.

Confidence that A2’s rational-coordinate residual formula is correct: **0.90**.

Confidence that A2’s sign-definite Volterra kernel and $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ scaling are theorem-level as written: **0.40**.

Confidence that the residual $n=1$ theorem is true and can be certified in Round 23: **0.90**.

Confidence that A4’s $n=1$ proof is already formally certified as written: **0.65**, lowered because of the false $E<0.380$ constant and non-rigorous trigamma enclosure.

Confidence that $n=2$ can be certified by corrected-cubic interval arithmetic after $n=1$: **0.65**.

Confidence that the rational-Bessel plus bulk-Langer regime split can eventually close a large-$n$ theorem: **0.55**.

Overall judge decision:

Record Round 22 as a successful precision round. Promote A3’s algebraic identities to the lemma bank after final formatting, with a convention-audit flag on the Langer residual removable value. Promote A1’s Frobenius-to-Airy connection formula and recessive Volterra initialization as conditional Langer lemmas, not as an amplitude theorem. Promote A2’s rational-coordinate residual formula but downgrade its Volterra scaling and kernel sign statements to conditional estimates. Mark A4’s $n=1$ proof as near-certified, not certified, until the scalar bound is repaired with rigorous enclosures.

Round 23 should focus on completing the $n=1$ residual theorem and consolidating the lemma bank. Broad new proof architecture should be deprioritized unless it delivers explicit constants or certified interval logs.
