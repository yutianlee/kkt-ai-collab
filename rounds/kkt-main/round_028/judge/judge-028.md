Summary:

Source packet: uploaded Round 28 judge packet and agent/review bundle.

Round 28 is an execution-and-audit round, not a proof-closure round. The full real-parameter KKT conjecture remains unproved. The arbitrary-degree finite-$B$ first-lobe amplitude theorem remains unproved. The selected endpoint-cap first-lobe route remains the correct main route, and Round 28 makes useful but partial progress on the two most concrete near-term artifacts: the residual $n=1$ theorem and the residual $n=2$ certificate program.

The most reliable new Round 28 artifact is A1's exact arithmetic appendix for the residual $n=1$ right-endpoint theorem. The proof reduces the last scalar endpoint estimate to the gamma lower bound

$$
\Gamma\left(\frac{16}{5}\right)>\frac{121}{50}
$$

and the strict integer inequality

$$
200^{10}6^{12}11^{32}100^5
<
39^5 121^{10}5^{12}16^{32}.
$$

A2's cross-review independently verified the integer comparison and the symbolic $n=2$ cubic expansion by a SymPy audit. The $n=1$ theorem should now be marked "certified after archival insertion of the named gamma lower-bound proof." It is not necessary to rerun floating interval arithmetic for this endpoint.

The most important $n=2$ artifact is A1's compactified degree-two setup. For $n=2$,

$$
B=\alpha+\beta+3,
\qquad
\theta=\frac{\alpha+3}{B},
\qquad
0\le\theta\le1,
$$

with residual exponent range

$$
\frac12<\alpha<\alpha_E(2)=\frac{15}{7}.
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

The first-critical-point equation is the cubic

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

A2's review verifies that this cubic is exactly $2(\alpha+3)$ times the compactified factored critical equation. Since $2(\alpha+3)>0$ in the residual strip, this scalar factor does not affect root isolation, sign bracketing, or interval certification. This cubic should become the permanent starting point for all residual $n=2$ certificates.

A2 supplies the strongest new analytic contribution: exact rational-Bessel post-peak bookkeeping. The rational normal form is still

$$
Y''+
\left(
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
+
\Delta Q(z)
\right)Y=0,
\qquad
z=\frac{Bu}{B-u},
$$

with

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

If

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z}),
\qquad
Y=hW_1,
$$

then on zero-free intervals for $W_1$,

$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

Round 28 improves this by deriving the exact critical-point cancellation. At the true first critical point of $H$, the condition is not $Y'=0$ but

$$
Y'=\frac{1}{2z}Y.
$$

This cancels the $\frac{1}{2z}$ term in the logarithmic derivative of $W_1$ and gives the exact balance

$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)},
\qquad
T_1^*=2\sqrt{\Lambda_Bz_1^*}.
$$

Equivalently,

$$
-J_\alpha'(T_1^*)J_\alpha(T_1^*)
=
\frac{2}{T_1^*h(z_1^*)}
\int_0^{z_1^*}|\Delta Q|W_1^2h\,dz.
$$

This is useful and should be retained as a conditional zero-safety framework. It is not a proof of a small-$\alpha$ theorem yet, because explicit Bessel zero gaps, derivative-product lower bounds, a gamma-normalization envelope, and a final KKT scalar comparison are still missing.

A3 did not complete the assigned Round 28 algebra archival task. The response appears to have been generated under a compact fallback context and claims that formulas were missing, even though the state bundle contains the endpoint ODE, $p_B$, $q_B$, $K_B$, $\Lambda_B$, $\Delta_B$, $u_\sigma$, and the rational normal form. The correct conclusion is not that the algebra is unavailable; it is that A3's Round 28 output is not lemma-bank ready. A3's useful contribution is procedural: it reiterates the need for implementation-safe formulas, interval root isolation, outward-rounded checks, and a reproducible Langer Laurent cancellation log. The next A3 prompt must paste the definitions inline and require the actual derivation.

Human strategy input in Round 28 is valuable as a pressure test, not as a forced pivot. It correctly warns that quotient methods involving oscillatory Bessel references create zero-safety obligations. It also identifies global algebraic Sonin/Krasikov/SOS envelopes as the most actionable non-oscillatory alternative. The judge should not import the memo's stronger rhetoric. The main route should remain endpoint-cap certification, with exactly one exploratory allocation for a low-degree Sonin/Krasikov or SOS pilot on $n=2$.

Selected main route:

The selected main route remains

$$
\boxed{
\text{endpoint-cap first-lobe reduction}
+
\text{low-degree certification}
+
\text{small-}\alpha\text{ rational-Bessel/Riccati}
+
\text{bulk weighted Langer/Airy}.
}
$$

The permanent proof spine is unchanged.

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
B=n+\alpha+\beta+1,
\qquad
u=\frac{B(1-x)}2,
\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

The endpoint cap is finite:

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

Round 28 does not prove this theorem. It confirms the residual $n=1$ theorem, supplies a systematic $n=2$ certificate program, and sharpens the rational-Bessel zero-safety problem.

Literature status:

Verified references:

1. Koornwinder--Kostenko--Teschl remains the source problem: Tom Koornwinder, Aleksey Kostenko, Gerald Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv record confirms the title, authors, and the connection between Bernstein-type estimates for Jacobi polynomials and dispersive estimates for the generalized Laguerre operator.

2. Haagerup--Schlichtkrull remains useful context, not a closure theorem. Their arXiv record states that they obtain a Bernstein-type inequality for Jacobi polynomials uniform in $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but this is not the sharp KKT constant needed here.

3. Landau's Bessel theorem is a valid dependency only after a genuine Bessel reduction has been made. The relevant paper is L. J. Landau, "Bessel Functions: Monotonicity and Bounds," *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`. The OUP abstract states that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$. This supports reducing $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|$ to the half-order case when the Bessel comparison is legitimately in force.

4. Dunster--Gil--Segura remain the relevant modern turning-point error-bound sources. Their 2019 preprint "Simplified error bounds for turning point expansions" states that it provides explicit error bounds for Airy-type expansions of second-order linear equations with a simple turning point, simplifying classical Olver bounds; the published record gives *Analysis and Applications* 19(4), 647--678 (2021), DOI `10.1142/S0219530520500104`. Their "Sharp error bounds for turning point expansions" is listed as *Journal of Classical Analysis* 18(1), 49--81 (2021), DOI `10.7153/jca-2021-18-05`. These references support the bulk Langer/Airy route, but Round 28 still does not instantiate their theorems with the KKT residual and constants.

5. DLMF 2.8 is an appropriate general reference for parameter-dependent second-order equations and turning points. It identifies zeros of the coefficient function as turning points and discusses Airy-type expansions in simple-turning-point settings. DLMF 5.6 is an appropriate reference portal for gamma inequalities, including Gautschi-type inequalities, but the KKT gamma envelopes still require tailored derivations.

6. Arb remains an appropriate platform for certified interval work. Johansson describes Arb as a C library for arbitrary-precision interval arithmetic using midpoint-radius, or ball, arithmetic, supporting real and complex numbers, polynomials, power series, matrices, and many special functions. The journal citation is Fredrik Johansson, "Arb: Efficient Arbitrary-Precision Midpoint-Radius Interval Arithmetic," *IEEE Transactions on Computers* 66(8), 1281--1292 (2017), DOI `10.1109/TC.2017.2690633`. Johansson's separate rigorous hypergeometric computation paper states support for ${}_2F_1$ and, by extension, Jacobi polynomials in interval arithmetic.

Unverified theorem needs:

1. The proof of $\Gamma(16/5)>121/50$ must be archived in a permanent form, using Binet, Stirling/Robbins, Wendel, or an outward-rounded interval proof. Round 28 verifies the integer comparison conditional on this gamma bound; the final lemma-bank entry should include the gamma proof.

2. The exact Bessel zero-gap and derivative-product inequalities needed by A2 must be located or derived. Landau's monotonicity is not enough for the post-peak zero-safety theorem. Required facts include lower bounds for $j_{\alpha,1}-j'_{\alpha,1}$, lower bounds for $-J_\alpha'(T)J_\alpha(T)$ on a post-peak interval, and zero-safe upper bounds for $\int_0^T s^3J_\alpha(s)^2\,ds$.

3. The rational-Bessel gamma-normalization envelope for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

is still missing in the intended small-$\alpha$ range.

4. The Dunster--Gil--Segura or Olver Airy theorem must be instantiated with the exact KKT Langer residual $\Psi_B(\zeta)$ and the correct weight functions. No Round 28 agent supplied this instantiation.

5. A3 must produce an executable Langer Laurent cancellation log. The accepted target is still the cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms in

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}
$$

and the finite removable value

$$
\Psi_B(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

Useful fragments by source:

### A1

A1 gave the strongest Round 28 proof-state contribution.

Adopt the following A1 fragments:

1. **Residual $n=1$ arithmetic appendix.** The final scalar bound is reduced to $\Gamma(16/5)>121/50$ and the integer inequality

$$
200^{10}6^{12}11^{32}100^5
<
39^5 121^{10}5^{12}16^{32}.
$$

This is a durable arithmetic certificate. The $n=1$ theorem should be marked certified once the gamma lower-bound proof is pasted into the lemma bank.

2. **Degree-two compactification.** For $n=2$, use

$$
\theta=\frac{\alpha+3}{B},
\qquad
B=\alpha+\beta+3,
\qquad
0\le\theta\le1.
$$

The residual rectangle is

$$
\mathcal R_2=
\left[
\frac12,\frac{15}{7}
\right]\times[0,1].
$$

3. **Degree-two polynomial.** The interval implementation should use

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

4. **Degree-two critical cubic.** The first-critical-point equation should use $C_{\alpha,\theta}(u)=0$ with the displayed cubic. A2's cross-review verifies it symbolically against the compactified factored form. This is lemma-bank worthy.

5. **Degree-two target ratio.** For $\theta>0$,

$$
\begin{aligned}
\mathcal R_2(\alpha,\theta,u)
={}&
\frac{H_2(u)^4}{T_{2,\alpha,\theta}^4}\\
={}&
\left(
\frac{2\Gamma(B)}
{\Gamma(\alpha+3)\Gamma(B-\alpha)}
\right)^2
\left(\frac{u}{B}\right)^{2\alpha}
\left(1-\frac{u}{B}\right)^{2(B-\alpha-3)}
P_{2,\alpha,\theta}(u)^4
\frac{\alpha+3-\alpha\theta}{3}.
\end{aligned}
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

The $\theta=0$ formula is essential; interval code must not evaluate the Laguerre face by unstable limiting expressions.

6. **Box certificate criterion.** A1's proposed criterion is the right low-degree proof protocol: isolate $u_0$, isolate the first relevant root $u_1$ of $C_{\alpha,\theta}$, prove no earlier critical point after $u_0$, prove $P_{2,\alpha,\theta}>0$ on the root box when needed, and verify $\sup\log\mathcal R_2<0$.

7. **Exploratory Sonin/Krasikov ansatz.** The proposed low-degree envelope

$$
V=A(u)H^2+B(u)p_B^2H'^2+C(u)p_BHH'
$$

is a concrete exploratory direction. It should be tested on one certified $n=2$ box or one boundary face. It should not replace the interval/grid certificate unless it produces exact rational sign certificates.

Limitations of A1:

A1 does not prove the full $n=2$ residual theorem. Boundary faces $\theta=0$ and $\theta=1$ remain open. The interior grid is a program, not an executed certificate. The crude gamma bound $\Gamma(B)/\Gamma(B-\alpha)<B^\alpha$ may be insufficient on tight boxes. Root ordering is still a nontrivial implementation issue.

### A2

A2 supplied the strongest new analytic mathematics in Round 28.

Adopt the following A2 fragments:

1. **Post-peak critical-point cancellation.** At a true first critical point of $H$, the correct condition in rational normal form is

$$
Y'=\frac{1}{2z}Y.
$$

This cancels the $\frac{1}{2z}$ term in $W_1'/W_1$ and gives

$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)}.
$$

This is exact and directly addresses the zero-safety problem from Round 27.

2. **Exact post-peak balance.** Combining the relative-amplitude identity with the critical-point cancellation gives

$$
-J_\alpha'(T_1^*)J_\alpha(T_1^*)
=
\frac{2}{T_1^*h(z_1^*)}
\int_0^{z_1^*}|\Delta Q|W_1^2h\,dz.
$$

This should be recorded as a conditional lemma on intervals where $W_1>0$ and $h$ is positive.

3. **Viability of a small-$\alpha$ theorem.** A2's proposed threshold $\alpha\le Cn^{3/5}$ is not proved, but the structure is plausible: prove that the phase shift after the first Bessel peak is smaller than the zero gap $j_{\alpha,1}-j'_{\alpha,1}$.

4. **Whittaker demotion.** A2's audit that the Whittaker reference equation is probably not the simplest next step is accepted. Do not prioritize Whittaker unless an exact residual and zero-safety theorem are written.

5. **Ermakov-Pinney exploratory idea.** The non-dividing amplitude equation is useful only as a precise exploratory task. It could avoid Bessel zeros, but the comparison principle and normalization are nontrivial.

Limitations of A2:

A2 overlabels some claims as proved. The residual bound $M_Q\le2.75$ must be audited with exact cap maxima. The pre-peak Volterra bound is theorem-level only up to $T\le j'_{\alpha,1}$. The post-peak zero-safety bootstrap is conditional on missing Bessel constants and gamma envelopes. The final scalar KKT comparison is not present.

### A3

A3 did not deliver the requested algebra archive.

Useful parts:

1. A3 correctly emphasizes that certified computation requires explicit formulas, root isolation, boundary checks, failure boxes, and outward-rounded evaluation.

2. A3's warning that bare Bessel bounds do not automatically control the normalized Jacobi expression is valid when reframed correctly.

3. A3's insistence on reproducible CAS logs is aligned with the project standard.

Rejected or not accepted from A3:

1. The claim that core formulas were missing is not a mathematical obstruction. They were present in the broader state. The issue appears to be workflow-context truncation.

2. Any analysis of $\alpha<0$ is low relevance for the KKT target, which assumes $\alpha,\beta\ge0$, and for the residual strip, which has $\alpha>1/2$.

3. The output does not supply final lemma-bank text, does not verify A1's cubic from first principles, does not supply the Langer Laurent cancellation log, and does not give implementation-safe $n=2$ formulas. It should not be archived as a successful Round 28 algebra audit.

Rejected or risky ideas:

1. **Claiming Round 28 proves KKT.** Rejected. No arbitrary-degree first-lobe amplitude theorem is proved.

2. **Claiming full $n=2$ is proved.** Rejected. A1 supplies a systematic certificate program and one previously certified subbox template, not a full rectangle certificate.

3. **Using A3's Round 28 response as lemma-bank algebra.** Rejected. It is a generic verification checklist with serious context and notation problems.

4. **Treating A2's rational-Bessel bootstrap as proved.** Rejected. The core identities are valuable, but the theorem needs explicit constants for Bessel zero gaps, derivative-product lower bounds, the residual variation, and gamma normalization.

5. **Using the pre-peak Volterra estimate beyond the first Bessel peak.** Rejected unless a zero-safe extension is proved. The quotient $h=Y/W_1$ is meaningful only while $W_1$ is nonzero.

6. **Ignoring the Laguerre face $\theta=0$ in $n=2$.** Rejected. The formula for $\mathcal R_2(\alpha,0,u)$ must be certified directly.

7. **Using unstable $\theta\to0$ expressions in interval code.** Rejected. The Laguerre face must use the stable limiting expression with $e^{-2u}$.

8. **Replacing the endpoint-cap route by broad alternatives.** Rejected. Fractional integral lifting, Ermakov-Pinney envelopes, Carlson continuation, discrete Lyapunov recurrences, and spectral reverse engineering are exploratory until they produce exact inequalities with constants.

9. **Overusing crude gamma bounds.** Risky. The bound $\Gamma(B)/\Gamma(B-\alpha)<B^\alpha$ is safe but may be too weak; failure under this bound is not evidence against KKT.

10. **Conflating $u_\sigma$ with a critical point.** Rejected. $u_\sigma$ is the central/endcap interface, not generally a critical point of $H$.

Known gaps:

### G28.1: Full residual $n=2$ theorem

The residual $n=2$ theorem remains open on

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1.
$$

Required components:

- boundary face $\theta=0$;
- boundary face $\theta=1$;
- boundary $\alpha=1/2$ imported from small-exponent theorem;
- boundary $\alpha=15/7$ imported from energy theorem;
- interior rational box subdivision;
- root ordering relative to $u_0$;
- value comparison $\log\mathcal R_2<0$.

### G28.2: Root ordering in $n=2$

The cubic $C_{\alpha,\theta}$ may have multiple positive roots. A certificate must identify the first critical point after the first zero $u_0$ of $K_B$, not merely any root in the cap. It must also handle the no-turning-point and no-critical-point cases.

### G28.3: Gamma evaluation for $n=2$ boxes

Exact interval evaluation of

$$
\log\Gamma(B)-\log\Gamma(B-\alpha)-\log\Gamma(\alpha+3)
$$

is needed unless a sufficiently sharp rational gamma-ratio envelope is available. The crude digamma bound may not close all boxes.

### G28.4: A2 rational-Bessel zero-safety constants

The post-peak bootstrap needs:

- a lower bound for $j_{\alpha,1}-j'_{\alpha,1}$;
- a lower bound for $-J_\alpha'(T)J_\alpha(T)$ between $j'_{\alpha,1}$ and a safe post-peak cutoff;
- an upper bound for $\int_0^T s^3J_\alpha(s)^2\,ds$;
- a cap-sharp $M_Q$;
- a gamma envelope for $M_{n,\alpha,B}$;
- final scalar comparison with $T_{n,\alpha,\beta}$.

### G28.5: Langer Laurent cancellation log

The formula for $\Psi_B(0)$ remains accepted from prior rounds, but the project still lacks the requested executable expansion log. A3 must provide the coefficient matching and cancellation of singular terms.

### G28.6: Bulk weighted Langer theorem

No agent instantiates Dunster--Gil--Segura or Olver error bounds for the exact KKT Langer equation. This remains necessary for the large-$n$ bulk unless low-degree and rational-Bessel tracks unexpectedly cover everything.

### G28.7: Exploratory non-oscillatory envelopes

The human memo's Sonin/Krasikov/SOS and Ermakov-Pinney alternatives are not proof modules. They need exact ansatze, comparison principles, and sign certificates.

New lemmas to add:

### Lemma L28.1: Residual $n=1$ arithmetic certificate

For

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,
$$

the residual right endpoint cap satisfies the strong KKT estimate, provided the archived proof includes

$$
\Gamma\left(\frac{16}{5}\right)>\frac{121}{50}
$$

and

$$
200^{10}6^{12}11^{32}100^5
<
39^5 121^{10}5^{12}16^{32}.
$$

Status: certified after final insertion of the gamma lower-bound proof.

### Lemma L28.2: Degree-two compactified endpoint polynomial

For $n=2$, $B=\alpha+\beta+3$, and $\theta=(\alpha+3)/B$,

$$
P_2^{(\alpha,\beta)}
\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

Status: certified by finite hypergeometric expansion and cross-review.

### Lemma L28.3: Degree-two critical cubic

The critical points of $H_2(u)$ inside the cap satisfy $C_{\alpha,\theta}(u)=0$ with

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

This polynomial equals $2(\alpha+3)$ times the compactified factored critical equation. Status: certified as an algebraic identity from A1 and A2's symbolic audit.

### Lemma L28.4: Degree-two target ratio and Laguerre face

For $\theta>0$,

$$
\begin{aligned}
\mathcal R_2(\alpha,\theta,u)
={}&
\left(
\frac{2\Gamma(B)}
{\Gamma(\alpha+3)\Gamma(B-\alpha)}
\right)^2
\left(\frac{u}{B}\right)^{2\alpha}
\left(1-\frac{u}{B}\right)^{2(B-\alpha-3)}\\
&\times
P_{2,\alpha,\theta}(u)^4
\frac{\alpha+3-\alpha\theta}{3}.
\end{aligned}
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

Status: certified as the formula to audit; final proof requires interval/rational bounding.

### Lemma L28.5: Degree-two box certificate criterion

Let $Q$ be a rational box in $(\alpha,\theta)$ and $U_1$ a rational interval. If:

1. $K_B$ has no cap zero on $Q$, or the first zero $u_0$ is enclosed in $U_0$ with $U_0<U_1$;
2. $C_{\alpha,\theta}$ has exactly one root in $U_1$ and no relevant earlier root after $u_0$;
3. $U_1\subset(0,u_\sigma)$;
4. all denominator and sign conditions for $\log\mathcal R_2$ are certified;
5. $\sup_{Q\times U_1}\log\mathcal R_2<0$;

then the residual $n=2$ cap estimate is proved on $Q$.

Status: theorem-level certificate criterion, pending formal proof text.

### Lemma L28.6: Rational-Bessel critical-point balance

On an interval where $W_1=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz})$ is positive and $Y=hW_1$, the true $H$-critical condition implies

$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)}.
$$

Consequently,

$$
-J_\alpha'(T_1^*)J_\alpha(T_1^*)
=
\frac{2}{T_1^*h(z_1^*)}
\int_0^{z_1^*}|\Delta Q|W_1^2h\,dz.
$$

Status: certified algebra conditional on zero-free interval and positivity hypotheses.

### Warning W28.1: A3 Round 28 output not archive-ready

A3's Round 28 response should not enter the lemma bank. It must be replaced by a repaired algebra audit with definitions pasted inline.

### Warning W28.2: Quotient Bessel method requires zero safety

Any proof using $h=Y/W_1$ must stop before the first zero of $W_1$ or prove a zero-safe continuation. Pre-peak estimates do not control post-peak behavior automatically.

Counterexample checks to run:

1. **Degree-two Laguerre face.** On $\theta=0$, certify all $\alpha\in[1/2,15/7]$ using the limiting ratio

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

Use root isolation for $C_{\alpha,0}$ and interval/log-gamma bounds.

2. **Degree-two finite face.** On $\theta=1$ or $\beta=0$, certify the one-dimensional boundary. Since

$$
T_{2,\alpha,1}^4=\frac{3}{3}=1,
$$

the target has larger slack than in some finite-$\theta$ cases, but root ordering still must be checked.

3. **Known subbox replay.** Reproduce the Round 27 certified subbox

$$
1\le\alpha\le\frac{11}{10},
\qquad
\frac12\le\theta\le\frac35
$$

using the Round 28 cubic and log-ratio formula.

4. **Interior grid.** Cover

$$
\frac12\le\alpha\le\frac{15}{7},
\qquad
0\le\theta\le1
$$

by rational boxes. For each box, run Sturm or interval Newton isolation for $C_{\alpha,\theta}$ and verify $\log\mathcal R_2<0$.

5. **Root-order stress test.** Identify boxes where $C_{\alpha,\theta}$ has more than one positive root in the cap. These boxes require explicit first-root and post-turning-point ordering.

6. **Gamma slack stress test.** Compare the crude gamma bound with Arb/log-gamma interval evaluation on hard boxes. Record whether failures are real or artifacts of the crude bound.

7. **A2 zero-safety tests.** Numerically test the post-peak bootstrap inequality in parameter scalings $\alpha\sim n^{1/2}$, $\alpha\sim n^{3/5}$, and $\alpha\sim n^{2/3}$. Record where the proposed phase-shift bound approaches the Bessel zero gap.

8. **Langer cancellation audit.** Expand $K(\tau)=\gamma t+k_2t^2/2+k_3t^3/6+O(t^4)$ and $\zeta(t)=c_1t+c_2t^2+c_3t^3+O(t^4)$, substitute into $\Psi_B$, and verify cancellation of $\zeta^{-2}$ and $\zeta^{-1}$ terms.

9. **SOS/Krasikov pilot.** On the known $n=2$ subbox, search for rational $A,B,C$ in

$$
V=A(u)H^2+B(u)p_B^2H'^2+C(u)p_BHH'
$$

such that the quadratic form is positive and $V'$ has a controlled sign. If degree-two coefficients fail on this subbox, demote the SOS route.

Research strategy adjustment:

The next round should remain execution-focused. The collaboration has enough architecture. The correct adjustment is not to broaden the search; it is to force durable artifacts.

1. **A1 should focus on $n=2$ completion.** The immediate deliverables are boundary faces, a rational interior subdivision algorithm, root isolation logs, and a certificate table. A1 should not add a new global proof route.

2. **A2 should either prove or falsify the rational-Bessel zero-safety bootstrap.** The deliverable must contain constants. A theorem with symbolic $c_1,c_2,C_\Gamma,M_Q$ placeholders is not enough.

3. **A3 should repair the algebra archive.** A3 must be given the definitions inline and asked for reproducible identities, not broad verification advice.

4. **One exploratory allocation is allowed.** The best candidate is a low-degree Sonin/Krasikov/SOS certificate on $n=2$. Fractional integral lifting is a literature task only. Ermakov-Pinney is a formalization task only. Carlson continuation and spectral reverse engineering are not near-term proof routes.

5. **Do not downgrade the main route because A3 failed.** A3's failure is a workflow/context failure, not an algebraic disproof. The endpoint-cap reduction remains the proof spine.

6. **Do not overstate the $n=1$ theorem.** It is effectively closed, but the lemma-bank proof must include the exact gamma lower-bound appendix.

7. **Do not overstate the $n=2$ program.** A1's cubic and ratio formula are certified inputs. The full rectangle is still open.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 29 task is to turn the Round 28 $n=2$ certificate program into executed certificate artifacts. Do not introduce a new proof architecture.

Objectives:

1. Write a formal residual $n=2$ theorem statement with exact hypotheses:

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1,
\qquad
B=\frac{\alpha+3}{\theta}
$$

for $\theta>0$, with $\theta=0$ treated as the Laguerre face.

2. Derive the compactified polynomial from the finite hypergeometric formula, not merely by citing prior rounds:

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

3. Derive the critical cubic $C_{\alpha,\theta}$ from the condition

$$
\left(\alpha(B-u)-\beta u\right)P(u)
+
2u(B-u)P'(u)=0.
$$

State explicitly that the expanded cubic is $2(\alpha+3)$ times the compactified factored equation.

4. Certify the boundary faces:

- $\theta=0$ Laguerre face;
- $\theta=1$ finite face;
- $\alpha=1/2$ via imported small-exponent theorem, but state the exact handoff;
- $\alpha=15/7$ via imported energy theorem, but state the exact handoff.

For $\theta=0$ and $\theta=1$, provide actual root-isolation intervals and value bounds, or identify the unresolved boxes.

5. Execute at least one new interior rational subdivision beyond the Round 27 subbox. Each certified box must include:

- parameter box $Q$;
- root interval $U_1$;
- proof that $U_1$ contains the correct first critical point after $u_0$;
- sign or Sturm evidence excluding earlier roots;
- upper bound for $\log\mathcal R_2$;
- statement of gamma bound used.

6. Produce a status table:

| Region | Status | Method | Max bound | Remaining issue |
|---|---|---|---|---|

7. Include a compact final statement: which part of $n=2$ is proved after Round 29, and which boxes remain open.

Exploratory allocation:

Use at most 20% of the response to test a low-degree Sonin/Krasikov/SOS ansatz on one certified or hard $n=2$ box. The ansatz must be explicit:

$$
V=A(u)H^2+B(u)p_B^2H'^2+C(u)p_BHH'.
$$

If no rational sign certificate appears, report failure and return to interval subdivision.

For A2:

You are A2, the obstruction finder and rational-Bessel strategist. Your Round 29 task is to convert the Round 28 post-peak identity into either a theorem with explicit constants or a failure report. Do not claim a small-$\alpha$ theorem without the final scalar inequality.

Objectives:

1. Restate the rational normal form with exact definitions:

$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H,
$$

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

2. Prove or correct the cap residual bound. If you use

$$
M_Q=\sup|\Delta Q|,
$$

derive the sharpest bound available on the cap and do not rely on the unverified value $2.75$ unless you prove it.

3. State the pre-peak theorem precisely. It should apply only while

$$
T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1}
$$

and $W_1>0$.

4. Prove the post-peak balance identity carefully from

$$
H'=0
\iff
Y'=\frac{1}{2z}Y.
$$

Then derive the exact inequality needed to prove

$$
T_1^*<j_{\alpha,1}.
$$

5. Supply explicit Bessel constants. You must either cite exact theorem statements or derive interval-certified constants for:

$$
j_{\alpha,1}-j'_{\alpha,1}\ge c_1\alpha^{1/3},
$$

a lower bound for $-J_\alpha'(T)J_\alpha(T)$ on a post-peak interval, and an upper bound for

$$
\int_0^T s^3J_\alpha(s)^2\,ds.
$$

6. Supply the gamma-normalization dependency. State the exact bound required for $M_{n,\alpha,B}$ in the target range, and indicate whether A3's available gamma tools can prove it.

7. End with one of two artifacts:

**Theorem artifact:** A range

$$
\alpha\le C n^\eta
$$

with explicit $C,\eta$ and constants proving the KKT first-lobe bound.

**Failure artifact:** A parameter scaling or box showing that the proposed constants cannot close the KKT margin.

Exploratory allocation:

Spend at most 20% formalizing the Ermakov-Pinney non-dividing amplitude idea. State the exact equation, the comparison direction, and the endpoint normalization needed. Do not promote it unless those are explicit.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 29 task is repair and archival execution. The Round 28 A3 output was not lemma-bank ready. This prompt gives the necessary formulas inline; use them and produce executable algebra.

Objectives:

1. Write final lemma-bank text for the endpoint cap:

$$
B=n+\alpha+\beta+1,
\qquad
u=\frac{B(1-x)}2,
$$

$$
(p_BH')'+q_BH=0,
\qquad
p_B(u)=u\left(1-\frac uB\right),
$$

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

2. Write final lemma-bank text for

$$
K_B(u)=p_Bq_B
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

with

$$
r_B=1-\frac{n+1}{B},
\qquad
c_B=n+\frac12-\frac{n+1}{2B},
$$

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
$$

3. Verify the cap length and monotonicity:

$$
u_\sigma=\frac{nB}{B+n-1}\le n,
$$

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

4. Provide the forbidden-zone/no-turning-point clause precisely. Do not call $u_\sigma$ a critical point. Distinguish:

- no zero of $K_B$ in the cap;
- first zero $u_0$ exists;
- first critical point $u_1$ absent;
- $u_0=u_\sigma$.

5. Produce the Langer Laurent cancellation log. Start with

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
$$

$$
\zeta(t)=c_1t+c_2t^2+c_3t^3+O(t^4),
$$

and verify

$$
c_1=\gamma^{1/3},
\qquad
c_2=\frac{k_2}{10\gamma^{2/3}},
\qquad
c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}}.
$$

Substitute into $\Psi_B$ and show cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms, ending with

$$
\Psi_B(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

6. Verify A1's $n=2$ compactified polynomial and cubic from first principles. Start from the finite hypergeometric formula for $P_2^{(\alpha,\beta)}(1-2u/B)$ and derive $C_{\alpha,\theta}$.

7. Provide implementation-safe formulas for $\mathcal R_2$ and $\log\mathcal R_2$ in $(\alpha,\theta,u)$, including the $\theta=0$ face.

8. Audit A2's post-peak derivative cancellation and identify every hypothesis needed for the quotient $h=Y/W_1$.

9. Provide one usable gamma-envelope lemma in a clearly stated subregime, or explain quantitatively why the standard Wendel/Gautschi/Kershaw tools are too weak.

Exploratory allocation:

Use at most 20% to implement a low-degree Sonin/Krasikov/SOS pilot on one $n=2$ box. The deliverable must be an explicit ansatz or a clear failure reason.

Confidence:

Confidence in the endpoint-cap ODE, cap length, quadratic $K_B$, and cap monotonicity: $0.89$.

Confidence in forbidden-zone ascent and Sonin first-lobe reduction, conditional on imported modules and boundary wording: $0.88$.

Confidence that the residual $n=1$ theorem is certified after insertion of the gamma lower-bound appendix: $0.89$.

Confidence in A1's $n=2$ compactified polynomial: $0.89$.

Confidence in A1's $n=2$ critical cubic after A2's symbolic audit: $0.89$.

Confidence in the $n=2$ target-ratio formulas, including the Laguerre face: $0.84$ pending A3's first-principles audit.

Confidence that the full residual $n=2$ theorem is true: $0.75$.

Confidence that Round 28 proves the full residual $n=2$ theorem: $0.15$.

Confidence in A2's rational-Bessel post-peak identity as algebra: $0.85$.

Confidence that A2's rational-Bessel zero-safety theorem can be closed with explicit constants in a useful small-$\alpha$ range: $0.55$.

Confidence that A3's Round 28 output is lemma-bank ready: $0.10$.

Confidence that a low-degree Sonin/Krasikov/SOS pilot may produce useful $n=2$ certificates: $0.50$.

Confidence that the full real-parameter KKT conjecture is proved at this stage: $0.08$.

Overall judge decision:

Record Round 28 as a productive execution round with no global closure. Add the $n=1$ arithmetic certificate after the gamma appendix, add the $n=2$ compactified polynomial and critical cubic as certified algebra after A3's final audit, add A2's rational-Bessel critical-point balance as a conditional lemma, and reject A3's Round 28 response as an archival algebra audit. Round 29 should remain focused on exact artifacts: full $n=2$ boundary and grid certificates, a rational-Bessel zero-safety theorem or failure report, executable Langer cancellation logs, and one regime-specific gamma envelope.