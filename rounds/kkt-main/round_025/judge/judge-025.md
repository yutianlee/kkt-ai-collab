Summary:

Source packet acknowledged: Round 25 uploaded judge packet and agent/review bundle.

Round 25 is a productive artifact-consolidation round, not a proof-closure round. The real-parameter KKT conjecture remains unproved. The arbitrary-degree finite-$B$ first-lobe amplitude theorem remains unproved. The endpoint-cap reduction remains the correct main route, and the round made concrete progress on three narrow artifacts:

1. The residual $n=1$ endpoint theorem is now essentially reduced to a final arithmetic appendix. The proof structure is sound: reduce $H_1(u)^4$ to a scalar envelope $E(\alpha)$, prove convexity of $\frac12\log E(\alpha)$ on $[1/2,6/5]$, check endpoint values, and compare with $T_{1,\alpha,\beta}^4\ge5/8$. The remaining issue is not conceptual. It is the need for a permanent outward-rounded or Binet/Stirling certificate proving $E(6/5)<0.39$, equivalently a safe lower bound such as $\Gamma(16/5)>121/50$ plus the stated rational comparison.

2. A2 produced the most useful new analytic identity: the rational-coordinate Bessel relative-amplitude identity. With $z=Bu/(B-u)$ and $Y=z^{1/2}H$, the normal form is
$$
Y''+
\left(
\frac{\Lambda_B}{z}+\frac{1-\alpha^2}{4z^2}+\Delta Q(z)
\right)Y=0,
$$
where
$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$
Using the Bessel-core solution
$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z}),
$$
and $Y=hW_1$, A2 obtains
$$
(W_1^2h')'=|\Delta Q|W_1^2h
$$
on intervals where $W_1>0$. This is a useful sign-definite relative-amplitude equation. However, A2 overextends it. The clean Volterra integral bound using monotonicity of $J_\alpha$ is valid only up to the first Bessel peak $j'_{\alpha,1}$. It does not yet control the true perturbed first critical point unless that point is proved to lie before $j'_{\alpha,1}$, or unless a zero-safe kernel bound is derived up to a point strictly before $j_{\alpha,1}$.

3. A3 remains the algebra baseline. The endpoint ODE, cap length, quadratic $K_B$, cap monotonicity, Frobenius coefficient, Bessel normalization, rational-coordinate normal form, and Liouville sign correction are reliable. A3 should now freeze these into lemma-bank text and audit the corrected $n=2$ compactified coefficients before A4 uses them for interval work.

A4 provided useful scaffold material but still did not deliver the main requested executed certificate. Its $n=1$ convexity argument is useful. Its half-order Bessel calculation is conceptually correct but still needs outward-rounded numerical details if it is to be called a certificate. Its $n=2$ compactification requires A3 audit before use. A4's habit of labeling scaffolded or assumed claims as "[PROVED]" should be corrected.

The Round 25 strategy should remain execution-focused. Do not pivot to a new global proof architecture. The next round should close the $n=1$ arithmetic appendix, produce a corrected $n=2$ interval/root-isolation certificate, repair the rational-Bessel phase/denominator problem, and archive the A3 algebra.

Literature status:

Verified references:

1. The source paper is Koornwinder--Kostenko--Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv record confirms the title, authors, and the connection between Bernstein-type estimates for Jacobi polynomials and dispersive estimates for the generalized Laguerre operator.

2. Haagerup--Schlichtkrull remains useful real-parameter context but not a closure theorem for the sharp KKT constant. Their arXiv record states a Bernstein-type inequality for Jacobi polynomials uniform in $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but it does not provide the exact KKT constant needed here.

3. Landau's Bessel theorem is a legitimate dependency only after a genuine Bessel reduction has been made. The relevant result is L. J. Landau, "Bessel Functions: Monotonicity and Bounds," *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`. The OUP abstract states that the magnitude of $J_\nu$ at positive stationary points is strictly decreasing in $\nu>0$, and that $\sup_x|J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$.

4. Dunster--Gil--Segura remains the right reference family for computable simple-turning-point Airy error bounds. Their 2020 arXiv record states that they derive computable and sharp error bounds for asymptotic expansions of linear differential equations with a simple turning point, involving Airy functions and slowly varying coefficient functions. Their 2019 "Simplified error bounds for turning point expansions" record states that they give explicit error bounds simplifying Olver-type bounds. These references support the bulk Langer/Airy route, but no Round 25 agent instantiated their theorem with the exact KKT residual and constants.

5. Arb is an appropriate tool for interval certification. Johansson describes Arb as a C library for arbitrary-precision midpoint-radius, or ball, interval arithmetic. The bibliographic records give Johansson, "Arb: efficient arbitrary-precision midpoint-radius interval arithmetic," *IEEE Transactions on Computers* 66(8), 1281--1292 (2017), DOI `10.1109/TC.2017.2690633`. This validates the computational platform, not any unexecuted KKT certificate.

6. Gamma-ratio inequalities remain active dependencies. DLMF §5.6 records gamma-function inequalities including Gautschi and Kershaw inequalities, and Wendel/Gautschi/Kershaw-type inequalities are relevant to the four-gamma envelope. These tools do not yet supply the required arbitrary-degree KKT gamma envelope without a tailored derivation.

Unverified theorem needs:

1. An exact real-Gamma Binet/Stirling/Wendel appendix for $\Gamma(16/5)>121/50$ or a direct outward-rounded interval enclosure proving $E(6/5)<0.39$.

2. A zero-safe Bessel-kernel theorem for the rational-coordinate relative-amplitude route. The current bound is clean before $j'_{\alpha,1}$ but not after it.

3. A regime-split gamma envelope for
$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

4. An instantiated Dunster--Gil--Segura or Olver theorem for
$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
$$
including exact Airy modulus/weight functions, residual variation, and final scalar inequality.

5. A CAS-archived Laurent cancellation log for the removable Langer residual value
$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

Selected main route:

The selected main route remains the **endpoint-cap first-lobe route with low-degree certification and regime-split amplitude development**.

The proof skeleton is unchanged and should now be treated as the permanent spine.

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

The cap is
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
K_B(u)=p_B(u)q_B(u)
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
Thus in the residual right-endpoint strip $\alpha>1/2$ one has
$$
K_B'(u)>\frac14.
$$

Forbidden-zone ascent controls the region before the first zero $u_0$ of $K_B$. Sonin ordering controls later local extrema on $q_B>0$ through
$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}
$$
and
$$
S_B'(u)=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Therefore the residual cap estimate reduces to the first allowed extremum. If $u_1$ is the first critical point after $u_0$, the only active arbitrary-degree theorem is
$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

The current route to this theorem is split:

1. Low-degree certification: finish $n=1$ and then $n=2$.
2. Small-$\alpha$ rational-Bessel/Riccati track: use the exact rational-coordinate residual and relative-amplitude identity, but only after phase and denominator safety are proved.
3. Bulk weighted Langer/Airy track: instantiate an actual DGS/Olver theorem with KKT residuals and constants.
4. Exploratory structural fallback: test one Krasikov-style higher-order Sonin envelope, but only as a bounded side task.

Useful fragments by source:

### A1

A1 supplied the cleanest proof-state update.

The valuable fragments are:

1. A lemma-bank-ready endpoint cap and first-lobe reduction, including exact hypotheses, cap endpoint, endpoint ODE, $K_B$ quadratic, derivative lower bound, forbidden-zone ascent, and Sonin ordering.

2. A nearly complete $n=1$ residual theorem. A1's formula
$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(\beta+2)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2
$$
is correct for
$$
B=\alpha+\beta+2,
$$
because
$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u.
$$

3. The reduction
$$
H_1(u)^2\le
F_\alpha(u):=
\frac{u^\alpha(\alpha+1-u)^2}{\Gamma(\alpha+2)}
$$
using
$$
\frac{\Gamma(B)}{\Gamma(\beta+2)}\le B^\alpha
$$
and
$$
\left(1-\frac{u}{B}\right)^\beta\le1.
$$
This gamma-ratio bound follows from the standard digamma inequality $\psi(t)<\log t$.

4. The scalar maximum
$$
\max_{0\le u\le1}F_\alpha(u)
=
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
$$
at
$$
u_*=\frac{\alpha(\alpha+1)}{\alpha+2},
$$
valid on $1/2\le\alpha\le6/5$ because $u_*\le1$.

5. The scalar envelope
$$
E(\alpha)=
\left(
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right)^2.
$$

6. A convexity proof for
$$
L(\alpha)=\frac12\log E(\alpha).
$$
The derivative
$$
L''(\alpha)
=
\frac1\alpha+\frac1{\alpha+1}-\frac1{\alpha+2}
-\frac1{(\alpha+1)^2}
-\psi'(\alpha+2)
$$
is bounded below using a trigamma upper bound. The conclusion is $L''>0$ on $[1/2,6/5]$, so $E$ reaches its maximum at an endpoint.

7. Endpoint comparisons:
$$
E(1/2)<0.39,
\qquad
E(6/5)<0.39,
$$
where the second is reduced to rational comparison plus a gamma lower bound
$$
\Gamma(16/5)>121/50.
$$

A1's limitation is that the final gamma endpoint enclosure is still not archived as a permanent outward-rounded or rational Binet appendix. Therefore the $n=1$ theorem should be marked "near-certified; proof complete after arithmetic appendix," not as unqualified permanent lemma-bank proof.

A1 also gives the safest $n=2$ formulation: use the compactified variables
$$
\theta=\frac{\alpha+3}{B}\in[0,1]
$$
and
$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$
The critical equation should be stored in factored form:
$$
C_{\alpha,\theta}(u)
=
\left(
\alpha(\alpha+3)-(\alpha+3-3\theta)u
\right)P_{2,\alpha,\theta}(u)
+
2u\left((\alpha+3)-\theta u\right)
P_{2,\alpha,\theta}'(u).
$$
This is better than storing potentially error-prone expanded coefficients.

### A2

A2 supplied the best new analytic mechanism in Round 25.

The adopted algebra is:

Set
$$
z=\frac{Bu}{B-u},
\qquad
Y(z)=z^{1/2}H(u(z)).
$$
Then
$$
Y''+
\frac{K_B(u(z))+1/4}{z^2}Y=0.
$$
Since
$$
K_B(u)=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
\qquad
u=\frac{Bz}{B+z},
$$
one obtains
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

The residual is negative and regular at $z=0$. The Bessel reference
$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z})
$$
solves
$$
W_1''+
\left(
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
\right)W_1=0.
$$
With
$$
Y=hW_1,
$$
the exact identity is
$$
(W_1^2h')'=-\Delta Q\,W_1^2h=|\Delta Q|W_1^2h.
$$

The Frobenius initialization is
$$
h(0)=M_{n,\alpha,B},
$$
where
$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

A2's useful crude residual bound is
$$
M_Q:=\sup_{z\ge0}|\Delta Q(z)|
=
\frac{\Lambda_B}{B}+\Delta_B
\le 2.75.
$$
The exact constant may be sharpened, but $2.75$ is credible as a universal crude bound.

A2's useful Volterra integral computation is valid up to the first Bessel derivative zero $j'_{\alpha,1}$. If
$$
T=2\sqrt{\Lambda_B z}
$$
and $T\le j'_{\alpha,1}$, then monotonicity of $J_\alpha$ on $[0,T]$ gives
$$
\int_0^z
\frac{1}{W_1(y)^2}
\int_0^y W_1(x)^2\,dx\,dy
\le
\frac{T^4}{64\Lambda_B^2}.
$$
This yields
$$
h(z)\le
M_{n,\alpha,B}
\exp\left(
M_Q\frac{T^4}{64\Lambda_B^2}
\right)
$$
for $T\le j'_{\alpha,1}$.

Rejected or unproved parts of A2:

- The statement that this already proves a small-$\alpha$ KKT regime is too strong.
- The true first critical point is not yet proved to satisfy $T_1^*\le j'_{\alpha,1}$.
- If the true critical point lies after $j'_{\alpha,1}$, the monotonicity cancellation no longer works.
- The denominator $W_1^2$ degenerates at $j_{\alpha,1}$, so a zero-safe bound is required if the interval extends beyond $j'_{\alpha,1}$.
- The gamma-normalization envelope is still open.
- The claimed phase-shift contribution of $O(n^{-3})$ or similar order is not proved.

A2's rational-Bessel method should therefore be retained as a conditional small-$\alpha$ theorem, not as a completed regime proof.

### A3

A3 is the most reliable Round 25 source for algebra and should be treated as the lemma-bank baseline.

Freeze the following A3 identities:

1. Endpoint ODE:
$$
(p_BH')'+q_BH=0,
$$
with
$$
p_B=u(1-u/B),
\qquad
q_B=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}.
$$

2. Cap endpoint:
$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

3. Quadratic product:
$$
K_B=p_Bq_B
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

4. Cap monotonicity:
$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

5. Dynamic oscillator:
$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

6. Frobenius coefficient:
$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
$$
where
$$
A_{n,\alpha,B}
=
\frac{B^{-\alpha/2}}{\Gamma(\alpha+1)}
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}.
$$

7. Bessel normalization:
$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

8. Correct affine Liouville normal form. With $Y_u=p_B^{1/2}H$,
$$
Y_u''+
\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$
The sign is $K_B+1/4$, not $K_B-1/4$.

9. Rational-coordinate normal form and residual, as stated above.

10. Critical-point equation in endpoint coordinates:
$$
2(r_Bu-\alpha)P_n\left(1-\frac{2u}{B}\right)
+
4u\left(1-\frac uB\right)
P_{n-1}^{(\alpha+1,\beta+1)}
\left(1-\frac{2u}{B}\right)=0.
$$

A3's open algebra tasks:

- Archive a CAS-style Laurent cancellation log for $\Psi_B(0)$.
- Audit the expanded $n=2$ compactified cubic coefficients.
- Produce machine-safe formula conventions for interval implementation.
- Start the real-Gamma Binet/Wendel/Kershaw envelope in the regime $\alpha\le C\sqrt n$.

### A4

A4 supplied useful technical scaffolding but should not be treated as certificate-level unless actual enclosures are supplied.

Useful fragments:

1. A4's convexity proof for the $n=1$ envelope agrees with A1's proof:
$$
L''(\alpha)
=
\frac1\alpha+\frac1{\alpha+1}
-\frac1{\alpha+2}
-\frac1{(\alpha+1)^2}
-\psi'(\alpha+2).
$$
Using a trigamma upper bound such as $\psi'(x)<1/(x-1)$ for $x>1$ gives $L''>0$ on the residual interval.

2. A4 correctly identifies the need to certify the half-order Bessel maximum. For
$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$
positive critical points satisfy
$$
\tan t=2t.
$$
The first positive maximum is approximately
$$
0.6791921047<0.680.
$$
Landau then supports the global Bessel supremum bound once a true Bessel reduction has been established.

3. A4's Robbins/Binet gamma-ratio scaffold is useful as a computational plan, but Robbins' factorial remainder cannot simply be quoted for arbitrary real Gamma arguments unless the real-argument Binet/Stirling version is stated and proved or cited. A4 should replace "Robbins" by a precise real-Gamma Binet bound when working with noninteger arguments.

4. A4's compactified $n=2$ formula requires A3 audit. Expanded coefficients are error-prone; the factored $P_{2,\alpha,\theta}$ and $C_{\alpha,\theta}$ formulation should be used until the expansion is verified.

Rejected or risky ideas:

1. **Claiming Round 25 proves KKT.** Rejected. The arbitrary-degree first-lobe amplitude theorem is still open.

2. **Marking $n=1$ as unqualified proved without the arithmetic appendix.** Risky. The mathematical proof is essentially complete, but the permanent artifact still needs a rigorous endpoint enclosure for $\Gamma(16/5)$ or $E(6/5)$.

3. **Using A2's Volterra bound beyond $j'_{\alpha,1}$.** Rejected unless an additional proof is supplied. The inequality
$$
\int_0^t w^3J_\alpha(w)^2\,dw
\le
J_\alpha(t)^2\frac{t^4}{4}
$$
uses monotonicity of $J_\alpha$ up to $t$. It is valid for $t\le j'_{\alpha,1}$, not after the first peak.

4. **Assuming the true perturbed critical point lies before the Bessel peak.** Open. This is a central missing piece in the rational-Bessel track.

5. **Ignoring the denominator singularity at the first Bessel zero.** Rejected. Any kernel bound past $j'_{\alpha,1}$ must keep a certified distance from $j_{\alpha,1}$ or use a different reference solution.

6. **Treating Landau as a Jacobi theorem.** Rejected. Landau is only a Bessel maximum dependency after a true Bessel comparison is already established.

7. **Treating generic DGS/Olver references as a KKT proof.** Rejected. A DGS theorem must be instantiated in the exact KKT notation, including weight functions, residual, cut, and constants.

8. **A4's "proved" labels for scaffolded interval tasks.** Rejected. An interval certificate requires actual outward-rounded intervals, not a proposed Newton interval or high-level script.

9. **Unverified expanded $n=2$ coefficients.** Risky. Store factored equations first; expand only after A3 audit.

10. **Global Laguerre replacement.** Rejected as the main route. The endpoint proof needs the cap first lobe, not a global $u\in[0,\infty)$ Laguerre theorem.

11. **Uncontrolled exploratory pivots.** Rejected. The human Round 25 strategy audits are advisory. Krasikov/SOS, Airy relative-amplitude, Ermakov-Pinney, Darboux, transmutation, and Wigner continuation are exploratory only until they produce explicit candidate inequalities with checkable constants.

Known gaps:

### G25.1: Final arithmetic appendix for $n=1$

The $n=1$ residual theorem needs a permanent certificate for
$$
E(6/5)<0.39.
$$
A clean route is to prove
$$
R<151/100,
\qquad
\Gamma(16/5)>121/50,
$$
where
$$
R=
4\left(\frac65\right)^{6/5}
\left(\frac{11}{16}\right)^{16/5}.
$$
The first can be reduced to an exact integer comparison after raising to the fifth power. The second needs a Binet/Stirling or outward-rounded Arb enclosure.

### G25.2: Corrected $n=2$ certificate

The $n=2$ residual theorem is not proved. The corrected polynomial and critical equation define the task, but the proof requires root isolation and value enclosures over
$$
\alpha\in[1/2,15/7],
\qquad
\theta\in[0,1].
$$
The Laguerre face $\theta=0$ must be handled by its limiting expression, not unstable finite-$B$ powers.

### G25.3: Rational-Bessel phase and zero-safety

The rational-Bessel relative-amplitude identity is useful only on intervals where the Bessel reference solution is nonzero. The current Volterra bound is clean up to $j'_{\alpha,1}$; the true first critical point may lie after that. The next theorem must either prove the true critical point lies within the monotone interval or derive a zero-safe kernel bound up to a certified point below $j_{\alpha,1}$.

### G25.4: Gamma normalization for rational-Bessel

The relative-amplitude route starts with
$$
h(0)=M_{n,\alpha,B}.
$$
No current output proves a sufficiently sharp envelope for $M_{n,\alpha,B}$ in the required regimes. This must be split into at least:
$$
\alpha=O(1),\qquad
\alpha\le C\sqrt n,\qquad
\alpha=cn.
$$

### G25.5: Bulk weighted Langer/Airy constants

The Langer route still lacks an instantiated theorem with exact KKT weights. The needed object is not another formal transform; it is a scalar inequality involving the DGS/Olver modulus or weight functions and the exact residual $\Psi_B$.

### G25.6: Langer removable value archive

The formula for $\Psi_B(0)$ is plausible and repeatedly cited, but it should be archived with a CAS Laurent cancellation log verifying cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms.

### G25.7: Imported module compatibility

The final proof must restate the central contour, weighted energy, small-exponent, symmetry, and boundary modules with exact hypotheses. The cap proof assumes these modules clear their regions; it does not reprove them.

### G25.8: Higher-order Sonin/Krasikov exploratory route

A higher-order quadratic envelope
$$
V=A(u)H^2+B(u)H'^2+C(u)HH'
$$
could bypass the turning-point pole, but no candidate functional has passed positivity, derivative-sign, endpoint-normalization, and boundary-face tests. This is a side task only.

New lemmas to add:

### Lemma L25.1: Endpoint cap and first-lobe reduction

Status: certified modulo imported global modules and final boundary wording.

Statement: In the residual right endpoint range $n\ge1$, $\alpha>1/2$, $\beta\ge0$, the right endpoint cap satisfies $0\le u\le u_\sigma\le n$, the endpoint ODE and $K_B$ formulas above hold, $K_B'(u)\ge\alpha/2$, forbidden-zone ascent excludes pre-turning maxima, and allowed-zone Sonin ordering reduces any residual cap failure to the first critical point after the first zero of $K_B$.

### Lemma L25.2: Degree-one exact cap formula

Status: certified.

For $n=1$,
$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(\beta+2)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2.
$$

### Lemma L25.3: Degree-one scalar envelope

Status: certified.

For $1/2\le\alpha\le6/5$ and $0\le u\le1$,
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

### Lemma L25.4: Convexity of the degree-one scalar envelope

Status: certified after citing the trigamma bound.

Let $L(\alpha)=\frac12\log E(\alpha)$. Then
$$
L''(\alpha)>0
$$
on $[1/2,6/5]$. Hence the maximum of $E$ on this interval occurs at an endpoint.

### Lemma L25.5: Degree-one endpoint enclosure

Status: near-certified; requires arithmetic appendix.

The needed inequalities are
$$
E(1/2)<0.39,
\qquad
E(6/5)<0.39.
$$
The first is elementary:
$$
E(1/2)=\frac{3456}{3125\pi}<0.39.
$$
The second should be proved by an outward-rounded or Binet/Stirling certificate.

### Lemma L25.6: Rational-coordinate Bessel residual

Status: certified algebraically.

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
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

### Lemma L25.7: Relative-amplitude identity

Status: certified on intervals where $W_1>0$.

Let
$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz})
$$
and $Y=hW_1$. Then
$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

### Lemma L25.8: Volterra bound up to the first Bessel peak

Status: certified only for $T\le j'_{\alpha,1}$.

If $T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1}$, then
$$
h(z)\le
M_{n,\alpha,B}
\exp\left(
M_Q\frac{T^4}{64\Lambda_B^2}
\right),
$$
with
$$
M_Q=\sup|\Delta Q|\le2.75.
$$

### Lemma L25.9: Correct $n=2$ compactified polynomial

Status: certified in factored form; expanded coefficients pending A3 audit.

For $n=2$ and $\theta=(\alpha+3)/B$,
$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

### Lemma L25.10: Correct $n=2$ critical equation

Status: certified in factored form; expanded cubic pending audit.

Critical points in the cap satisfy
$$
C_{\alpha,\theta}(u)=0,
$$
where
$$
C_{\alpha,\theta}(u)
=
\left(
\alpha(\alpha+3)-(\alpha+3-3\theta)u
\right)P_{2,\alpha,\theta}(u)
+
2u\left((\alpha+3)-\theta u\right)
P_{2,\alpha,\theta}'(u).
$$

### Lemma L25.11: Half-order Bessel maximum

Status: elementary calculation; global order reduction depends on Landau.

For
$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$
the first maximum satisfies
$$
\tan t=2t,
$$
and the value is approximately
$$
0.6791921047<0.680.
$$
Landau's theorem supports the extension to $\nu\ge1/2$ after the proof genuinely reduces to a Bessel supremum.

### Lemma L25.12: Langer removable value

Status: proposed/cross-checked, but pending CAS archive.

If
$$
K(\tau)=\gamma(\tau-\tau_0)+\frac12K_{\tau\tau}(\tau_0)(\tau-\tau_0)^2+\frac16K_{\tau\tau\tau}(\tau_0)(\tau-\tau_0)^3+\cdots,
$$
then
$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

Counterexample checks to run:

1. **$n=1$ endpoint arithmetic.** Prove
$$
\Gamma(16/5)>121/50
$$
with rational Binet/Stirling bounds or Arb intervals. Then evaluate $E(6/5)$ outward-rounded and record a hard upper bound below $0.39$.

2. **$n=2$ root isolation.** Use the factored $P_{2,\alpha,\theta}$ and $C_{\alpha,\theta}$ formulas. Cover
$$
\alpha\in[1/2,15/7],\qquad\theta\in[0,1],
$$
isolate all roots in
$$
0\le u\le u_\sigma=
\frac{2(\alpha+3)}{\alpha+3+\theta},
$$
and evaluate
$$
H_2(u)^4/T_{2,\alpha,\theta}^4-1
$$
on root boxes.

3. **$\theta=0$ Laguerre face.** Check this face using the limiting formula
$$
H_{2,\alpha,0}(u)^2
=
\frac{2}{\Gamma(\alpha+3)}
u^\alpha e^{-u}
\left(
\frac{(\alpha+1)(\alpha+2)}2-(\alpha+2)u+\frac{u^2}{2}
\right)^2,
$$
not unstable finite-$B$ powers.

4. **Rational-Bessel true critical point.** For sampled regimes $\alpha=O(1)$ and $\alpha=C\sqrt n$, compare the true perturbed first critical point $T_1^*$ with $j'_{\alpha,1}$ and $j_{\alpha,1}$. If $T_1^*>j'_{\alpha,1}$, quantify how much larger the exact Volterra kernel becomes.

5. **Volterra integral beyond $j'_{\alpha,1}$.** Numerically and then rigorously bound
$$
\int
\frac{1}{tJ_\alpha(t)^2}
\int_0^t w^3J_\alpha(w)^2\,dw\,dt
$$
on intervals extending beyond the first peak but staying below the first zero. This is the main test of A2's small-$\alpha$ route.

6. **Gamma envelope sampling.** Evaluate $M_{n,\alpha,B}$ with rigorous or high-precision arithmetic in regimes $\alpha=O(1)$, $\alpha=C\sqrt n$, and $\alpha=cn$. Locate whether $M>1$ and how much slack remains.

7. **Langer residual CAS log.** Archive symbolic expansion showing cancellation of $\zeta^{-2}$ and $\zeta^{-1}$ in $\Psi_B$ at the turning point.

8. **DGS/Olver instantiation test.** Choose one explicit theorem from Dunster--Gil--Segura or Olver, write its hypotheses, and map the KKT equation into its variables. If the KKT residual fails a hypothesis, record that failure.

9. **Higher-order Sonin trial.** Test a low-degree ansatz
$$
V=A(u)H^2+B(u)H'^2+C(u)HH'
$$
for $n=1$ and $n=2$. Demand positivity of the quadratic form, derivative sign, and endpoint normalization. If it fails, record the exact obstruction.

10. **Semi-discrete diagnostic.** Test $\beta\in\{0,1,2,3,4,5,10\}$ separately to see whether worst continuous-$\theta$ boxes occur at integer $\beta$. This is diagnostic, not proof.

Research strategy adjustment:

Round 26 should be an execution and formalization round. No new broad route should be introduced unless it produces a concrete, checkable theorem or certificate. The near-term priorities are:

1. **Close $n=1$ permanently.** This is the highest-probability deliverable. The proof is structurally complete. It needs only the arithmetic appendix.

2. **Make $n=2$ real.** A corrected compactified equation is now available. A4 should execute root isolation and value checks, not write another plan.

3. **Repair A2's rational-Bessel theorem.** The relative-amplitude identity is valuable; the current extension to the true first critical point is not. The next theorem must include phase/zero safety.

4. **Freeze the algebra.** A3 should write lemma-bank text once, with convention-safe formulas, and stop the collaboration from re-deriving the same identities.

5. **Keep Langer/DGS as the bulk path but demand constants.** Another Langer transform without an instantiated external theorem and scalar inequality is low value.

6. **Allow one bounded structural exploratory slot.** The best exploratory alternative is a Krasikov-style higher-order Sonin envelope. It must produce an explicit candidate $V$, positivity, derivative sign, endpoint normalization, and low-degree tests. Otherwise it remains a note.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 26 task is to turn Round 25's near-certificates into permanent proof-state artifacts. Do not introduce a new proof architecture.

Objectives:

1. Write the final lemma-bank version of the endpoint-cap first-lobe theorem. Include exact hypotheses, imported-module dependencies, boundary cases, cap ODE, $K_B$ quadratic, cap monotonicity, forbidden-zone ascent, Sonin ordering, and the precise remaining first-lobe amplitude theorem.

2. Complete the $n=1$ residual theorem unless A4 supplies a stronger executed appendix. Use the scalar envelope
$$
E(\alpha)=
\left(
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right)^2,
$$
the convexity of $L=\frac12\log E$, and endpoint comparisons. The deliverable must include a rigorous proof of $E(6/5)<0.39$, either by Binet/Stirling rational enclosures or by citing A4's outward-rounded interval output.

3. Rewrite A2's rational-Bessel result as a conditional theorem, not a closure. The theorem should state:
   - the interval on which $W_1>0$;
   - the exact Gronwall bound for $h$;
   - the restriction $T\le j'_{\alpha,1}$ for A2's $T^4/(64\Lambda_B^2)$ bound;
   - the missing phase/zero-safety and gamma-envelope hypotheses.

4. Produce a short literature-status appendix with exact theorem statements needed next:
   - Landau's Bessel order monotonicity;
   - a real-Gamma Binet/Stirling inequality sufficient for $\Gamma(16/5)>121/50$;
   - one DGS/Olver theorem candidate with its variables and hypotheses.

5. Keep one exploratory paragraph on Krasikov-style higher-order Sonin envelopes. Do not promote it to the main route. State the candidate-functional requirements explicitly.

Exploratory allocation:

Spend about 20% of your effort on whether a higher-order Sonin functional could be tested first in $n=1$ and $n=2$. The output should be a falsifiable checklist, not a new proof narrative.

Required output:

Use the Stage A schema. Include sections titled "Permanent artifacts," "Conditional rational-Bessel theorem," and "What remains unproved."

For A2:

You are A2, the obstruction finder and rational-Bessel strategist. Your Round 26 task is to repair or delimit the rational-coordinate relative-amplitude theorem.

Objectives:

1. Work in the rational coordinate
$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H.
$$
Start from the certified normal form
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
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

2. State a theorem for $h=Y/W_1$, where
$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_B z}).
$$
The theorem must include exact hypotheses ensuring $W_1>0$ on the entire integration interval.

3. Fix the peak-domain problem. Your previous bound
$$
I(T)\le\frac{T^4}{64\Lambda_B^2}
$$
is valid for $T\le j'_{\alpha,1}$. Determine whether the true first critical point satisfies $T_1^*\le j'_{\alpha,1}$. If yes, prove it. If no, derive a zero-safe replacement bound for $j'_{\alpha,1}<T<j_{\alpha,1}-\delta$.

4. Quantify phase shift. Use a displayed differential or integral inequality to bound the delay between the Bessel reference first critical point and the perturbed first critical point. Avoid unsupported asymptotic labels such as $O(n^{-3})$ unless the constant and hypotheses are stated.

5. Combine the Gronwall factor with the gamma normalization $M_{n,\alpha,B}$ symbolically. State exactly what gamma-envelope inequality is needed to fit inside the KKT target.

6. Produce a falsification test. For $\alpha=C\sqrt n$, compute the explicit inequality in $C$ that would make the rational-Bessel theorem succeed or fail.

Exploratory allocation:

Spend about 20% on the Airy relative-amplitude identity
$$
(a^2h')'=\Psi_Ba^2h.
$$
Only report it if you can state a zero-free Airy interval, sign condition for $\Psi_B$, or an absolute-variation bound. Otherwise record why it fails.

Required output:

Use the Stage A schema. Separate "proved identity," "conditional theorem," "open phase gap," and "falsification test." Do not claim a small-$\alpha$ KKT regime is proved unless all constants are included.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 26 task is to make the algebra archival and implementation-safe.

Objectives:

1. Write final lemma-bank text for:
   - endpoint ODE;
   - cap length;
   - quadratic $K_B$;
   - cap monotonicity;
   - forbidden-zone ascent prerequisites;
   - Sonin ordering;
   - dynamic oscillator;
   - Frobenius coefficient;
   - Bessel normalization;
   - rational-coordinate normal form and residual;
   - affine Liouville normal form with $K_B+1/4$.

2. Audit the $n=2$ compactification. Begin with the factored formulas
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
C_{\alpha,\theta}(u)
=
\left(
\alpha(\alpha+3)-(\alpha+3-3\theta)u
\right)P_{2,\alpha,\theta}(u)
+
2u\left((\alpha+3)-\theta u\right)
P_{2,\alpha,\theta}'(u).
$$
Then expand the cubic only after verifying the denominator-clearing factor. Report the exact coefficients and a substitution check back to the critical equation.

3. Produce a CAS-style Laurent cancellation log for the Langer residual. Start from
$$
K(\tau)=\gamma t+a t^2+b t^3+O(t^4),
\qquad t=\tau-\tau_0,
$$
solve
$$
K=\zeta\zeta_\tau^2
$$
as a series, and verify the cancellation in
$$
\Psi_B(\zeta)=
\frac{\zeta K_{\tau\tau}}{4K^2}
-\frac{5\zeta K_\tau^2}{16K^3}
+\frac{5}{16\zeta^2}.
$$

4. Audit A4's $n=1$ endpoint arithmetic. Either accept the Binet/Stirling enclosure or provide a clean rational proof of
$$
\Gamma(16/5)>121/50.
$$

5. Begin the gamma-envelope lemma for
$$
M_{n,\alpha,B}
$$
in the regime $\alpha\le C\sqrt n$. State the exact Binet or Wendel/Gautschi/Kershaw inequality used and its parameter restrictions.

Exploratory allocation:

Spend about 20% on a minimal higher-order Sonin/Krasikov ansatz. Try the smallest rational-polynomial form of
$$
V=A(u)H^2+B(u)H'^2+C(u)HH'
$$
that cancels the turning-point pole for $n=1$. Report whether positivity and derivative sign are feasible.

Required output:

Use the Stage A schema. Include "Certified identities," "Implementation-safe formulas," "Rejected formulas," and "CAS log or hand expansion."

For A4:

You are A4, the technical lemma generator and certificate executor. Your Round 26 task is to produce actual certificates, not plans or pseudo-code.

Objectives:

1. Complete the $n=1$ arithmetic appendix. Provide one of:
   - Arb/MPFI/interval output with version, precision, rounding mode, and raw intervals proving $E(6/5)<0.39$; or
   - a fully written rational Binet/Stirling proof of $\Gamma(16/5)>121/50$ and the associated rational comparison.

2. Report exact endpoint enclosures:
$$
E(1/2)<0.39,
\qquad
E(6/5)<0.39.
$$
Do not use decimal-only claims unless backed by outward-rounded intervals.

3. After A3 audits the $n=2$ coefficients, produce at least one genuine $n=2$ interval root/value certificate. Minimum acceptable artifact:
   - one nontrivial parameter box in $(\alpha,\theta)$;
   - interval isolation of all roots of $C_{\alpha,\theta}(u)$ in the cap;
   - interval evaluation of $H_2^4/T_2^4-1$ on those root boxes;
   - boundary checks for that box;
   - explicit unresolved boxes, if any.

4. Produce a small certified appendix for the half-order Bessel maximum:
   - interval for the first root of $\tan t=2t$;
   - interval for $J_{1/2}(t)$ at that root;
   - explicit upper bound below $0.680$.
This is auxiliary; do not present it as a Jacobi theorem.

5. Test A2's rational-Bessel peak mismatch numerically with interval or high-precision evidence:
   - compare the true first critical point with $j'_{\alpha,1}$ and $j_{\alpha,1}$ in several small-$\alpha$ boxes;
   - compute the exact Volterra kernel integral up to the relevant point;
   - report whether A2's $T^4/(64\Lambda_B^2)$ bound remains valid or fails.

Exploratory allocation:

Spend about 20% testing a higher-order Sonin ansatz on $n=1$ or $n=2$ only after the $n=1$ endpoint appendix is complete. If no candidate works, report the failure conditions.

Required output:

Use the Stage A schema. Include "Executed certificates," "Raw intervals," "Unresolved boxes," and "Claims not certified." Do not label a computation as certified unless it is outward-rounded or analytically enclosed.

Confidence:

Confidence in the endpoint cap ODE, cap length, and quadratic $K_B$ formula: **0.95**.

Confidence in cap monotonicity and the first-lobe reduction, conditional on imported modules and boundary wording: **0.90**.

Confidence that the residual $n=1$ theorem is true: **0.93**.

Confidence that the residual $n=1$ theorem is permanent lemma-bank ready without the arithmetic appendix: **0.78**.

Confidence in the corrected factored $n=2$ polynomial and critical equation: **0.90**.

Confidence that the full $n=2$ residual theorem is true: **0.75**, but no proof yet.

Confidence in A2's rational-coordinate residual and relative-amplitude identity: **0.88**.

Confidence in A2's Volterra bound up to $j'_{\alpha,1}$: **0.85**.

Confidence in A2's extension to the true first critical point: **0.25**.

Confidence that a rational-Bessel route will close a small-$\alpha$ regime after phase and gamma issues are solved: **0.45**.

Confidence that a bulk weighted Langer/DGS route will close the complementary large-$\alpha$ regime: **0.50**.

Confidence that Round 25 proves the arbitrary-degree finite-$B$ first-lobe theorem: **0.12**.

Confidence that Round 25 proves the full real-parameter KKT conjecture: **0.15**.

Overall confidence that the endpoint-cap first-lobe route remains the best main strategy: **0.90**.

Overall judge decision:

Record Round 25 as a successful artifact-consolidation round. Add the endpoint-cap reduction and A3's implementation-safe algebra to the lemma bank. Mark the $n=1$ residual theorem as "near-certified; final arithmetic appendix required." Add the rational-coordinate Bessel residual and relative-amplitude identity as conditional lemmas. Do not mark A2's small-$\alpha$ regime as proved. Do not mark A4's interval or gamma scaffolds as certified unless raw outward-rounded enclosures are supplied. Round 26 should close the $n=1$ arithmetic appendix, execute a corrected $n=2$ certificate, and repair the rational-Bessel peak/zero-safety gap.