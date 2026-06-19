Summary:

According to the Round 26 source document from 2026-06-18, this is a productive certification-and-audit round, not a proof-closure round. Source packet markers:. The real-parameter KKT conjecture remains unproved. The arbitrary-degree finite-$B$ first-lobe amplitude theorem remains unproved. The main route remains the endpoint-cap first-lobe route, now with one important low-degree closure and several sharper conditional artifacts.

The main certified advance of Round 26 is the residual $n=1$ right-endpoint certificate. A1 supplied a scalar-envelope proof reducing the cap estimate to

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
<0.39
\qquad
\left(\frac12\le\alpha\le\frac65\right),
$$

and then comparing it with

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}
\ge
\frac58.
$$

The Round 26 cross-review verifies the core integer/rational comparison behind $E(6/5)<0.39$, including the use of a strict Stirling/Robbins-type lower bound proving $\Gamma(16/5)>121/50$. I therefore mark the $n=1$ residual endpoint theorem as **certified modulo final lemma-bank copyediting of the named gamma lower bound**. This is the first residual endpoint theorem in the current workflow that should be treated as closed.

The main algebraic advance is consolidation rather than discovery. A3's endpoint ODE, quadratic Sonin product, cap length, cap monotonicity, Frobenius coefficient, Bessel normalization, rational-coordinate normal form, compactified hypergeometric representation, $n=2$ critical cubic, and Riccati Taylor coefficients should be frozen in the lemma bank. A3's final removable Langer value is still accepted, but the intermediate displayed Taylor coefficients in A3's reproducibility section must be corrected before archival use. The correct coefficient matching for $K=\zeta\zeta_\tau^2$ is:

$$
c_1=\gamma^{1/3},
\qquad
c_2=\frac{k_2}{10\gamma^{2/3}},
\qquad
c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}},
$$

when

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
\qquad
\zeta(t)=c_1t+c_2t^2+c_3t^3+O(t^4).
$$

Substituting the corrected coefficients still gives the accepted removable value

$$
\Psi_B(0)
=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}.
$$

A2's rational-Bessel work is useful but over-labeled. The exact rational-coordinate residual and relative-amplitude identity are good artifacts. The pre-peak Volterra bound is a valid conditional lemma under the hypothesis that the integration endpoint stays before the first Bessel peak $j'_{\alpha,1}$. The phase-shift estimate, zero-safety extension, threshold such as $\alpha\le1.56\sqrt n$, and final scalar KKT margin are not proved. They remain theorem candidates.

Selected main route:

The selected main route remains:

$$
\boxed{
\text{endpoint-cap first-lobe reduction}
+
\text{low-degree certification}
+
\text{small-}\alpha\text{ rational-Bessel/Riccati track}
+
\text{bulk weighted Langer/Airy track}.
}
$$

The proof skeleton is now stable.

Import the global modules:

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
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}2,\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

The cap is finite:

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

Thus in the residual right-endpoint strip $\alpha>1/2$,

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

Therefore any remaining cap failure must occur at the first critical point $u_1$ after $u_0$, if such a point exists. The active arbitrary-degree theorem remains:

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

Round 26 closes this theorem only for $n=1$ in the residual cap. It does not close it for $n\ge2$.

Literature status:

Verified references:

1. Koornwinder--Kostenko--Teschl remains the source problem: Tom Koornwinder, Aleksey Kostenko, Gerald Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv and repository records confirm the title, authors, and the link between Jacobi Bernstein estimates and dispersive estimates for the generalized Laguerre operator.

2. Haagerup--Schlichtkrull remains important context, not a closure theorem. Their arXiv record for "Inequalities for Jacobi polynomials" states that they prove a Bernstein-type inequality for Jacobi polynomials uniform for $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but this is not the sharp KKT constant used in the current proof target.

3. Landau's Bessel theorem is a valid external dependency once the proof genuinely reduces to a Bessel supremum. The article is L. J. Landau, "Bessel Functions: Monotonicity and Bounds," *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`. Bibliographic records confirm the title, venue, pages, DOI, and publication date; the usable statement is monotonicity of Bessel stationary magnitudes/suprema with respect to order.

4. Dunster--Gil--Segura remain the relevant modern turning-point error-bound references. "Simplified error bounds for turning point expansions" states that it gives explicit elementary error bounds for Airy-type expansions at a simple turning point; "Sharp error bounds for turning point expansions" states that it gives computable sharp error bounds for Airy-type expansions of linear differential equations with a simple turning point. Published records give Analysis and Applications 19(4), 647--678, DOI `10.1142/S0219530520500104`, and Journal of Classical Analysis 18(1), 49--81, DOI `10.7153/jca-2021-18-05`.

5. Arb remains a suitable platform for interval certification. Johansson's Arb paper describes arbitrary-precision midpoint-radius, or ball, interval arithmetic supporting real/complex numbers, polynomials, power series, matrices, and many special functions; bibliographic records give *IEEE Transactions on Computers* 66(8), 1281--1292 (2017), DOI `10.1109/TC.2017.2690633`.

Unverified theorem needs:

1. A KKT-instantiated Dunster--Gil--Segura or Olver theorem with exact variables, turning point, residual $\Psi_B$, modulus/weight functions, and final scalar inequality.

2. A rigorous gamma-ratio envelope for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

over the regimes needed by the rational-Bessel track.

3. A zero-safe rational-Bessel kernel theorem beyond the first Bessel peak, or a proof that the true first critical point lies in the pre-peak interval for the claimed small-$\alpha$ range.

4. A corrected and archived CAS log for the removable Langer residual value, using the corrected coefficient matching above.

Source-search tasks:

A1 should locate and quote one exact Dunster--Gil--Segura theorem suitable for KKT's Langer equation, including all hypotheses and the exact form of the error bound. A2 should locate precise Bessel zero/product/monotonicity facts needed for the zero-safe rational-Bessel kernel. A3 should locate or derive exact real-gamma inequalities adequate for $M_{n,\alpha,B}$ in the $\alpha\le C\sqrt n$ regime.

Useful fragments by source:

### A1

A1 supplied the strongest proof-state artifact in Round 26.

Adopt:

1. **Endpoint-cap theorem package.** A1's restatement of the endpoint-cap first-lobe reduction is lemma-bank ready, conditional on the imported global modules. It correctly separates the structural reduction from the open first-lobe amplitude theorem.

2. **Degree-one residual theorem.** A1's proof closes the residual right endpoint cap for

$$
n=1,\qquad \frac12\le\alpha\le\frac65,\qquad \beta\ge0.
$$

The key scalar envelope is

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

The convexity of

$$
L(\alpha)=\frac12\log E(\alpha)
$$

on $[1/2,6/5]$ reduces the proof to endpoints. At $\alpha=1/2$,

$$
E(1/2)=\frac{3456}{3125\pi}<0.39.
$$

At $\alpha=6/5$, the strict gamma lower bound $\Gamma(16/5)>121/50$ and exact rational comparisons give

$$
E(6/5)<0.39.
$$

Then

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}
=
\frac{2(\alpha+\beta+2)}{(\alpha+2)(\beta+2)}
\ge
\frac2{\alpha+2}
\ge
\frac58
>
0.39.
$$

Therefore

$$
H_1(u)^4<T_{1,\alpha,\beta}^4
$$

on the residual cap. This should be entered as a proved low-degree lemma after final copyediting of the gamma lower-bound citation.

3. **Conditional rational-Bessel theorem.** A1 correctly rewrites A2's rational-coordinate method as a conditional theorem. This is valuable because it keeps the exact algebra while isolating the missing phase/zero-safety and gamma-envelope hypotheses.

4. **Krasikov/SOS exploratory checklist.** A1's bounded exploratory proposal is useful only as a low-degree falsifiable test. It should not become a new main route until it provides an explicit positive functional with a derivative sign and endpoint normalization.

Caution:

A1's $n=1$ theorem depends on accepting the strict real-Stirling/Robbins-type gamma lower bound and the displayed rational inequalities. These have been cross-checked in Round 26, but the final lemma-bank entry should preserve the exact rational comparisons, not decimal summaries.

### A2

A2 supplied the most ambitious analytic development of the rational-Bessel track.

Adopt as certified or nearly certified:

1. **Rational normal form and residual.** With

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

This is certified algebra.

2. **Relative-amplitude identity.** Let

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz})
$$

solve the Bessel-core equation

$$
W_1''+
\left(
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
\right)W_1=0.
$$

On an interval where $W_1>0$, write

$$
Y=hW_1.
$$

Since $\Delta Q<0$, the exact equation is

$$
(W_1^2h')'
=
|\Delta Q|W_1^2h.
$$

This identity is valuable and should be added as certified algebra.

3. **Pre-peak Volterra bound.** On the interval

$$
T=2\sqrt{\Lambda_B z}\le j'_{\alpha,1},
$$

the monotonicity of $J_\alpha$ before its first positive maximum gives a clean integral estimate of the form

$$
\int_0^z
\frac{1}{W_1(x)^2}
\int_0^x
W_1(s)^2\,ds\,dx
\le
\frac{T^4}{64\Lambda_B^2}.
$$

This should be accepted only under the displayed pre-peak hypothesis.

Downgrade or reject:

1. A2's label "proved" for the true phase-shift estimate is too strong. A2 derives the correct **direction** that the true critical point occurs after the Bessel reference peak, but the displayed quantitative bound uses unverified Taylor remainders and Bessel-zero spacing constants. Mark it as proposed.

2. The threshold $\alpha\le1.56\sqrt n$ is not a theorem. It depends on the gamma envelope, the tail factor, the phase-shift bound, and several approximate constants.

3. A2's Airy relative-amplitude sign claim is not certified. The identity

$$
(a^2y_\zeta)_\zeta=\Psi_Ba^2y
$$

is algebraically correct, but the sign conclusion $\Psi_B(0)>0$ was based on approximate substitutions, not the exact $K_{\tau\tau}$ and $K_{\tau\tau\tau}$ formulas. This is a diagnostic, not a theorem.

### A3

A3 remains the algebra baseline for Round 26.

Adopt:

1. **Endpoint ODE.** The affine endpoint equation

$$
(p_BH')'+q_BH=0
$$

with the established $p_B,q_B$ is certified.

2. **Quadratic product.** The identity

$$
K_B(u)=p_Bq_B=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2
$$

and the cap monotonicity estimate

$$
K_B'(u)\ge\frac{\alpha}{2}
$$

in the residual strip are certified.

3. **Frobenius coefficient and Bessel normalization.** The coefficient

$$
A_{n,\alpha,B}
=
\frac{B^{-\alpha/2}}{\Gamma(\alpha+1)}
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
$$

and the matching constant

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

are certified algebraically, with no inequality attached.

4. **Critical-point equation.** The $u$-coordinate critical-point equation

$$
2(r_Bu-\alpha)P_n
+
4u\left(1-\frac uB\right)P_{n-1}^{(\alpha+1,\beta+1)}
=0
$$

is certified.

5. **Compactified hypergeometric representation.** With

$$
\theta=\frac{n+\alpha+1}{B},
$$

the stable finite polynomial is

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^{n}
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right)
\right]
u^k.
$$

This is the formula to use for interval certification.

6. **Degree-two polynomial.** For $n=2$,

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

The factored critical equation

$$
C_{\alpha,\theta}(u)
=
\bigl(\alpha(\alpha+3)-(\alpha+3-3\theta)u\bigr)P_{2,\alpha,\theta}(u)
+
2u\bigl((\alpha+3)-\theta u\bigr)P_{2,\alpha,\theta}'(u)
=0
$$

is the safest implementation formula.

7. **Riccati Taylor data.** For

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)},
$$

the Riccati equation

$$
p_BR_u+R^2+K_B=0
$$

has the local expansion

$$
R(u)=v_0+v_1u+v_2u^2+v_3u^3+O(u^4),
$$

where

$$
v_0=\frac{\alpha}{2},
\qquad
v_1=-\frac{\Lambda_B}{\alpha+1},
$$

$$
v_2=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}
-\frac{\Lambda_B^2}{(\alpha+1)^2}
}
{\alpha+2},
$$

and

$$
v_3=
\frac{2v_2}{\alpha+3}
\left(
\frac1B+\frac{\Lambda_B}{\alpha+1}
\right).
$$

This is suitable as a starting point for a validated Riccati IVP, provided positivity/no-zero conditions are supplied.

Correct before archiving:

A3's final Langer removable value is accepted, but the coefficient derivation in the reproducibility task must be corrected as stated in the Summary. The judge should not accept a permanent CAS log unless it explicitly expands

$$
\zeta\zeta_\tau^2
$$

and verifies the coefficient matching.

Rejected or risky ideas:

1. **Round 26 as a proof of full KKT.** Rejected. The $n=1$ residual theorem is certified, but $n\ge2$ and arbitrary-degree finite-$B$ first-lobe estimates remain open.

2. **A2's small-$\alpha$ theorem as proved.** Rejected. The rational-Bessel mechanism is promising but remains conditional on phase/zero-safety and gamma-envelope hypotheses. The claimed threshold $\alpha\le1.56\sqrt n$ is not lemma-bank ready.

3. **A2's Airy relative-amplitude positivity as proved.** Rejected as stated. The identity is correct; the sign analysis is not. Exact formulas for $K_{\tau\tau}$ and $K_{\tau\tau\tau}$ must be used.

4. **Unqualified $M_Q\le2.25$ as a decisive constant.** Risky. The residual bound is plausible and probably salvageable, but the proof should be formalized. A weaker certified constant is acceptable if it still fits the scalar margin.

5. **Using Landau to prove a Jacobi first-lobe theorem directly.** Rejected. Landau applies only after a genuine Bessel comparison, with normalization and phase safety handled.

6. **Using DGS/Olver by name only.** Rejected. A valid bulk theorem must map the KKT oscillator into the external theorem's variables and carry constants to the final inequality.

7. **Riccati IVP without no-zero control.** Risky. Since

$$
R=p_BH'/H
$$

is undefined when $H=0$, any Riccati certificate must prove the relevant interval has no zero of $H$ or use a non-dividing formulation.

8. **Higher-order Sonin/Krasikov as a new main route.** Rejected for now. It remains a bounded exploratory side task until an explicit functional passes low-degree tests.

Known gaps:

### G26.1: Arbitrary-degree first-lobe amplitude theorem

For

$$
n\ge2,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

prove at the first critical point $u_1$ after the first cap turning point $u_0$:

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This remains the central open theorem.

### G26.2: Degree-two certificate

The corrected $n=2$ polynomial and critical equation are available, but no complete root isolation or value certificate exists. The next concrete target is:

$$
\frac12<\alpha<\frac{15}{7},\qquad
0\le\theta\le1,\qquad
0\le u\le\frac{2B}{B+1}.
$$

One must isolate all roots of $C_{\alpha,\theta}(u)$ in the cap and interval-evaluate $H_2(u)^4/T_2^4-1$ at roots and boundaries.

### G26.3: Rational-Bessel phase and zero safety

The pre-peak Volterra estimate is safe only for

$$
T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1}.
$$

The true first critical point appears after the Bessel reference peak. A theorem must either prove it remains before $j_{\alpha,1}$ with margin or derive a zero-safe kernel valid beyond $j'_{\alpha,1}$.

### G26.4: Gamma envelope

The matching constant

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

must be bounded from above in the regimes used by rational-Bessel and Langer proofs. A global bound $M\le1$ is false. A regime split is required.

### G26.5: Langer residual and weighted variation

The formula

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

is accepted, but no DGS/Olver weighted variation integral has been instantiated with constants. The pointwise residual does not by itself settle the issue.

### G26.6: Reproducible Langer cancellation log

The removable value

$$
\Psi_B(0)
=
\frac{10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2}
{140\gamma^{8/3}}
$$

should be archived with corrected coefficient matching. A3's intermediate coefficients in Round 26 were not acceptable as written.

### G26.7: Boundary and imported modules

The $n=1$ residual cap is closed only after the imported global modules are accepted. The final proof state must still audit central-contour, energy, small-exponent, symmetry, and boundary modules if the project wants a self-contained proof.

New lemmas to add:

### Lemma L26.1: Degree-one residual endpoint certificate

For

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,
$$

the residual cap satisfies

$$
0\le u\le1,
$$

and

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

Proof uses the scalar envelope $E(\alpha)$, convexity of $L=\frac12\log E$, endpoint checks, $\Gamma(16/5)>121/50$, and exact rational comparisons.

Status: **certified**, pending final formatting of the gamma lower-bound citation.

### Lemma L26.2: Endpoint-cap first-lobe reduction

Under the imported global modules, the residual right endpoint problem reduces to the first critical point $u_1$ after the first zero $u_0$ of $K_B$ in the cap.

Status: **certified reduction**, not an amplitude theorem.

### Lemma L26.3: Rational-coordinate Bessel normal form

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
+\frac{1-\alpha^2}{4z^2}
+\Delta Q(z)
\right)Y=0,
$$

where

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

Status: **certified algebra**.

### Lemma L26.4: Rational-Bessel relative-amplitude identity

Let

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
$$

and suppose $W_1>0$ on $[0,z_*]$. If

$$
Y=hW_1,
$$

then

$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

Status: **certified algebra**, amplitude consequences conditional.

### Lemma L26.5: Pre-peak Volterra bound

If

$$
2\sqrt{\Lambda_Bz}\le j'_{\alpha,1},
$$

then

$$
\int_0^z
\frac{1}{W_1(x)^2}
\int_0^x
W_1(s)^2\,ds\,dx
\le
\frac{T^4}{64\Lambda_B^2},
\qquad
T=2\sqrt{\Lambda_Bz}.
$$

Status: **conditional theorem**, with pre-peak hypothesis essential.

### Lemma L26.6: Correct Langer coefficient matching

If

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4)
$$

and

$$
K=\zeta\zeta_\tau^2,
\qquad
\zeta=c_1t+c_2t^2+c_3t^3+O(t^4),
$$

then

$$
c_1=\gamma^{1/3},
\qquad
c_2=\frac{k_2}{10\gamma^{2/3}},
\qquad
c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}}.
$$

This matching leads to the removable value

$$
\Psi_B(0)=
\frac{10\gamma k_3-9k_2^2}{140\gamma^{8/3}}.
$$

Status: **certified after A2 review; archive CAS log required**.

### Lemma L26.7: Degree-two compactified polynomial and critical equation

For $n=2$,

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2,
$$

and the cap critical equation is

$$
C_{\alpha,\theta}(u)=0
$$

with

$$
C_{\alpha,\theta}(u)
=
\bigl(\alpha(\alpha+3)-(\alpha+3-3\theta)u\bigr)P_{2,\alpha,\theta}(u)
+
2u\bigl((\alpha+3)-\theta u\bigr)P_{2,\alpha,\theta}'(u).
$$

Status: **certified algebra; inequality proof open**.

Counterexample checks to run:

1. **$n=2$ root/value certificate.** Use $C_{\alpha,\theta}$ above. For every parameter box, isolate roots in

$$
0\le u\le u_\sigma=\frac{2B}{B+1},
\qquad
B=\frac{\alpha+3}{\theta}
$$

with separate handling at $\theta=0$. Evaluate

$$
\frac{H_2(u)^4}{T_2^4}-1
$$

on all root boxes and boundary boxes.

2. **Rational-Bessel peak mismatch.** For sample boxes in $\alpha=C\sqrt n$ and small $\alpha$, compare the true first critical point with $j'_{\alpha,1}$ and $j_{\alpha,1}$ in the variable

$$
T=2\sqrt{\Lambda_Bz}.
$$

Report whether $T_1^*\le j'_{\alpha,1}$ ever holds, and if not, how close $T_1^*$ is to $j_{\alpha,1}$.

3. **Zero-safe kernel test.** Numerically and symbolically test whether the Volterra kernel remains controlled on

$$
j'_{\alpha,1}<T<j_{\alpha,1}-\delta.
$$

4. **Gamma envelope grid.** Compute $\log M_{n,\alpha,B}$ over

$$
\theta\in\{0,0.1,0.5,1\},
\qquad
\alpha\in\left[\frac12,\alpha_E(n)\right],
\qquad
n\le200,
$$

and identify regime splits for Binet/Wendel/Kershaw estimates.

5. **Langer residual sign.** Use exact formulas for $K_{\tau\tau}$ and $K_{\tau\tau\tau}$ to decide whether $\Psi_B(0)$ has a stable sign in relevant regimes. Do not use approximate substitutions.

6. **Krasikov/SOS low-degree trial.** For $n=1$ and one nontrivial $n=2$ box, test a quadratic functional

$$
V=A(u)H^2+B(u)(p_BH')^2+C(u)Hp_BH'
$$

for positivity, derivative sign, and endpoint normalization.

7. **Semi-discrete diagnostic.** For $\beta\in\{0,1,2,3,4,5,10\}$, map the $n=2$ margin experimentally. Label all such maps as diagnostic unless outward-rounded.

Research strategy adjustment:

Round 27 should be an execution-and-certification round. The project has enough architecture. The near-term tasks should be finite, auditable, and assigned to active agents only.

The priority order is:

1. **Freeze the $n=1$ theorem.** The proof is essentially complete. A3 should independently verify the gamma lower-bound appendix and A1 should prepare final lemma-bank wording.

2. **Make $n=2$ real.** A1 and A3 should execute an actual root/value certificate using the corrected compactified cubic. A theorem for a nontrivial parameter subbox is useful; a full $n=2$ theorem is better; another plan is not useful.

3. **Repair A2's rational-Bessel theorem.** A2 should downgrade all post-peak and phase-shift claims until rigorous estimates are supplied. The pre-peak Volterra lemma is the base; the task is to extend or delimit it.

4. **Correct and archive the Langer residual CAS log.** A3 should output reproducible code or line-by-line algebra with the corrected $c_1,c_2,c_3$.

5. **Use bulk Langer only with weights.** A1 should instantiate a specific DGS/Olver theorem. Another unweighted Langer variation estimate is unlikely to be decisive.

6. **Keep one structural exploratory task.** The only exploratory task should be a Krasikov/SOS or higher-order Sonin trial in $n=1,2$ with falsifiable conditions. Do not pivot unless it produces a certificate.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 27 task is to convert Round 26 into permanent proof-state artifacts and begin a real $n=2$ certificate. Do not introduce a new proof architecture.

Objectives:

1. **Finalize the $n=1$ residual theorem.** Write a lemma-bank-ready proof for

$$
n=1,\qquad \frac12\le\alpha\le\frac65,\qquad \beta\ge0,
$$

showing

$$
H_1(u)^4<T_{1,\alpha,\beta}^4
$$

on the residual cap. Include the exact formula for $H_1(u)^2$, the scalar envelope $E(\alpha)$, the convexity proof for $L=\frac12\log E$, the endpoint checks, and the exact gamma lower-bound dependency proving $\Gamma(16/5)>121/50$. Use no decimal-only sign decisions.

2. **Write the permanent endpoint-cap theorem.** Include exact hypotheses, imported-module dependencies, cap ODE, $K_B$ quadratic, cap monotonicity, forbidden-zone ascent, Sonin ordering, and the precise remaining arbitrary-degree amplitude theorem. Mark the theorem as a reduction, not a proof of arbitrary degree.

3. **Begin the $n=2$ certificate.** Use

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2
$$

and the factored critical equation

$$
C_{\alpha,\theta}(u)=0.
$$

Produce at least one fully checked nontrivial parameter box with root isolation and value bounds. If a full proof is too long, provide a reproducible subdivision plan and one certified box.

4. **Instantiate one DGS/Olver theorem.** Quote one exact theorem statement, list its hypotheses, and map the KKT Langer equation

$$
W_{\zeta\zeta}+\zeta W=\Psi_BW
$$

into that theorem's notation. State the resulting weighted variation integral. Do not claim it closes a range unless a scalar inequality is proved.

5. **Exploratory allocation.** Spend at most 15% on a higher-order Sonin/Krasikov ansatz. Provide a candidate functional and failure criteria for $n=1,2$.

Required output:

Use the Stage A schema. Include sections titled "Certified $n=1$ theorem," "$n=2$ certificate attempt," "DGS/Olver instantiation," and "What remains unproved."

For A2:

You are A2, the obstruction finder and rational-Bessel strategist. Your Round 27 task is to repair or decisively delimit the rational-coordinate relative-amplitude theorem.

Objectives:

1. Start from the certified rational normal form

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
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H,
$$

and

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

2. State the relative-amplitude theorem for

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
\qquad
Y=hW_1.
$$

The theorem must state the exact interval on which $W_1>0$ and the exact Gronwall inequality for $h$.

3. Separate **proved pre-peak control** from **open post-peak control**. The bound

$$
\frac{T^4}{64\Lambda_B^2}
$$

is only valid under

$$
T\le j'_{\alpha,1}.
$$

Either prove that the true first critical point satisfies this condition in a specified parameter range, or explicitly state that it does not and derive a replacement estimate valid up to $j_{\alpha,1}-\delta$.

4. Quantify the phase shift with theorem-level rigor. Use exact inequalities for $J_\alpha$, $J_\alpha'$, and $J_\alpha''$ near $j'_{\alpha,1}$. No asymptotic $O(\cdot)$ may appear without a numerical constant and a parameter range.

5. Combine the Volterra factor with a symbolic gamma-envelope hypothesis. State exactly what bound on

$$
M_{n,\alpha,B}
$$

would make the KKT inequality follow. Do not assume $M\le1$.

6. Provide a falsification test for $\alpha=C\sqrt n$. Derive the explicit scalar inequality in $C$ and identify the largest $C$ supported by rigorous constants. If the constants fail before any useful $C$, report the failure.

7. **Exploratory allocation.** Analyze whether a Whittaker or confluent-hypergeometric reference equation would actually reduce the residual. You must display the transformed equation and residual. If no residual is computed, record it only as a literature note.

Required output:

Use the Stage A schema. Include sections titled "Certified pre-peak lemma," "Phase/zero-safety audit," "Gamma envelope dependency," "Failure criteria," and "Claims downgraded."

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 27 task is to make the algebra reproducible and to support the $n=2$ and gamma-envelope certificates.

Objectives:

1. **Archive the corrected Langer CAS log.** Starting with

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
$$

and

$$
K=\zeta\zeta_\tau^2,
$$

derive

$$
c_1=\gamma^{1/3},
\qquad
c_2=\frac{k_2}{10\gamma^{2/3}},
\qquad
c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}}.
$$

Then substitute into the Langer residual and prove cancellation of the $t^{-2}$ and $t^{-1}$ terms, leaving

$$
\Psi_B(0)=
\frac{10\gamma k_3-9k_2^2}{140\gamma^{8/3}}.
$$

Provide exact symbolic code or a line-by-line algebra derivation.

2. **Audit the $n=1$ gamma appendix.** Verify the use of the strict real-Stirling/Robbins bound at $x=16/5$, the lower bound $\Gamma(16/5)>121/50$, and the exact rational comparison proving $E(6/5)<0.39$.

3. **Prepare the $n=2$ interval formulas.** Provide implementation-safe formulas for $H_2(u)^4/T_2^4-1$ in variables $(\alpha,\theta,u)$, including the $\theta=0$ Laguerre face and $\theta=1$ finite-$\beta$ face. Use the factored critical equation whenever possible.

4. **Root isolation support.** Give exact derivative formulas for $C_{\alpha,\theta}(u)$ and a Sturm or interval-Newton criterion suitable for parameter boxes.

5. **Gamma envelope.** Develop a rigorous one-sided upper bound for $M_{n,\alpha,B}$ in at least one subregime, preferably $\alpha\le C\sqrt n$. State all Wendel/Gautschi/Kershaw/Binet hypotheses. If the bound is too weak for A2's rational-Bessel constants, report the quantitative failure.

6. **Riccati validation.** Extend the Riccati Taylor expansion at least through $v_4$ or provide a remainder bound after $v_3$. State the interval on which $H>0$ is guaranteed, or propose a non-dividing system.

7. **Exploratory allocation.** Test one higher-order Sonin/Krasikov ansatz in $n=1$ or a single $n=2$ box. Report the exact positivity or derivative-sign failure if it fails.

Required output:

Use the Stage A schema. Include sections titled "Corrected Langer CAS log," "$n=1$ arithmetic audit," "$n=2$ implementation formulas," "Gamma envelope subregime," "Riccati validation," and "Rejected identities."

Confidence:

| Statement | Confidence |
| --- | :---: |
| Endpoint-cap ODE, cap length, quadratic $K_B$, cap monotonicity | 0.95 |
| Forbidden-zone ascent and Sonin first-lobe reduction, conditional on imported modules | 0.90 |
| Residual $n=1$ theorem after Round 26 arithmetic audit | 0.90 |
| Publication readiness of $n=1$ theorem after final copyedit | 0.86 |
| Correct rational-coordinate normal form and residual $\Delta Q$ | 0.92 |
| Correct rational-Bessel relative-amplitude identity | 0.88 |
| A2's pre-peak Volterra lemma under $T\le j'_{\alpha,1}$ | 0.78 |
| A2's phase-shift and $\alpha\le1.56\sqrt n$ theorem as written | 0.18 |
| Corrected $n=2$ polynomial and critical equation | 0.92 |
| Full $n=2$ residual theorem true | 0.75 |
| Langer residual removable value after corrected coefficient audit | 0.88 |
| Current Langer/DGS material proves arbitrary degree | 0.18 |
| Gamma envelope for arbitrary degree available now | 0.25 |
| Regime-split program can eventually close at least the semi-discrete target | 0.68 |
| Full real-parameter KKT conjecture proved at this stage | 0.15 |
| Endpoint-cap first-lobe route remains the best main strategy | 0.90 |

Overall judge decision:

Record Round 26 as a successful low-degree certification and algebra-audit round. Add the $n=1$ residual endpoint theorem to the lemma bank as certified after final gamma-bound copyedit. Add the endpoint-cap first-lobe reduction, rational-coordinate normal form, rational-Bessel relative-amplitude identity, pre-peak Volterra lemma, compactified $n=2$ polynomial, Riccati Taylor data, and corrected Langer coefficient matching with the status qualifications above. Do not mark any arbitrary-degree first-lobe amplitude theorem, rational-Bessel small-$\alpha$ theorem, gamma-envelope theorem, or bulk Langer theorem as proved. Round 27 should prioritize final archiving of $n=1$, a real $n=2$ certificate, correction of the Langer CAS log, and theorem-level repair or delimitation of the rational-Bessel phase/zero-safety gap.