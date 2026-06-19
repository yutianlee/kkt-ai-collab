Summary:

According to the Round 27 packet and reviews from 2026-06-19, especially the A2/A3 cross-review summaries and confidence statements, Round 27 is a productive execution-and-certification round, not a closure round.

The full real-parameter KKT conjecture is **not proved**. The arbitrary-degree finite-$B$ first-lobe amplitude theorem is also **not proved**. The endpoint-cap first-lobe route remains the selected main route, and Round 27 materially improves its low-degree and implementation state.

The main advances are:

1. **Residual $n=1$ right-endpoint theorem is now essentially certified.** A1 supplied a rational-arithmetic proof of the scalar envelope bound, including a non-decimal lower bound for $\Gamma(16/5)>121/50$. I independently accept the structure and the exact arithmetic as checkable. The only remaining action is archival: paste the rational gamma appendix and final integer comparison into the lemma bank in a form that can be re-run.

2. **A nontrivial $n=2$ subbox is certified, conditional on the endpoint-cap first-lobe reduction.** A1 proves the subbox
$$
1\le\alpha\le\frac{11}{10},
\qquad
\frac12\le\theta\le\frac35,
\qquad
\theta=\frac{\alpha+3}{B},
$$
with first critical point bracket
$$
\frac14<u_1<\frac25
$$
and a rational value comparison
$$
\frac{H_2(u_1)^4}{T_{2,\alpha,\theta}^4}
\le
\frac{
3292108758616678122791
}{
3906332006400000000000
}
<1.
$$
This is a real certificate template, not a full $n=2$ theorem.

3. **A2 sharply delimits the rational-Bessel track.** The relative-amplitude identity
$$
(W_1^2h')'=|\Delta Q|W_1^2h
$$
is algebraically exact on intervals where $W_1>0$. The pre-peak Volterra bound is valid only up to $T\le j'_{\alpha,1}$. A2's sign analysis indicates the true perturbed first critical point is expected after the Bessel reference peak, so any proof that assumes $T_1^*\le j'_{\alpha,1}$ is unsafe. The proposed zero-safety threshold near $\alpha\lesssim n^{3/5}$ remains a theorem candidate, not a theorem.

4. **A3 successfully consolidates the algebra but does not supply the requested CAS Langer cancellation log.** A3's endpoint ODE, quadratic $K_B$, cap length, cap monotonicity, Frobenius coefficient, Bessel normalization, critical-point equations, half-order Bessel maximum statement, and rational-coordinate normal form are lemma-bank ready. However, the removable Langer residual value still needs an executable Laurent cancellation transcript showing the $\zeta^{-2}$ and $\zeta^{-1}$ terms vanish.

5. **The human strategy memo is useful as an idea source but does not force a pivot.** It correctly warns that quotient methods involving an oscillatory Bessel reference have a zero-safety burden. Its strongest actionable alternative is a bounded Krasikov/SOS or higher-order Sonin test in low degrees. Ermakov-Pinney, Whittaker, fractional transmutation, spectral reverse engineering, and Carlson continuation remain exploratory until they produce exact inequalities with constants.

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

The permanent proof spine is:

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

with

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

Round 27 closes this theorem for $n=1$ and one explicit $n=2$ subbox. It does not close it for arbitrary $n$ or for the full $n=2$ residual domain.

Round 27 proof-state classification:

**Certified or ready to certify after copyedit**

1. The endpoint-cap first-lobe reduction theorem, conditional on the imported global modules.

2. The residual $n=1$ right-endpoint theorem:
$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,
$$
on the cap $0\le u\le1$.

3. A3's lemma-bank algebra:
$$
(p_BH')'+q_BH=0,
$$
$$
K_B=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$
$$
u_\sigma=\frac{nB}{B+n-1}\le n,
$$
$$
K_B'(u)\ge
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

4. The rational-coordinate normal form:
$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H(u(z)),
$$
$$
Y''+
\left(
\frac{\Lambda_B}{z}
+\frac{1-\alpha^2}{4z^2}
+\Delta Q(z)
\right)Y=0,
$$
with
$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

5. The relative-amplitude identity on $W_1>0$ intervals:
$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
\qquad
Y=hW_1,
$$
$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

6. The allowed-side Airy propagation lemma:
if
$$
W''+\zeta W=\Psi(\zeta)W
$$
on $[\zeta_c,\zeta_1]\subset(0,\infty)$, and
$$
\mathfrak m(\zeta)^2=\operatorname{Ai}(-\zeta)^2+\operatorname{Bi}(-\zeta)^2,
$$
then
$$
|W(\zeta_1)|
\le
\mathfrak m(\zeta_1)\|c(\zeta_c)\|_2
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}\mathfrak m(\xi)^2|\Psi(\xi)|\,d\xi
\right).
$$
This is a propagation theorem, not a KKT closure theorem.

**Certified subdomain**

The nontrivial $n=2$ subbox

$$
1\le\alpha\le\frac{11}{10},
\qquad
\frac12\le\theta\le\frac35
$$

is accepted as a certified subbox modulo final independent symbolic verification of the displayed monotonicity polynomials. It should be recorded as a local certificate, not extrapolated.

**Conditional or proposed**

1. A2's post-peak phase-shift estimate.

2. A2's zero-safety threshold near $\alpha\lesssim n^{3/5}$.

3. Any small-$\alpha$ rational-Bessel theorem.

4. Any gamma envelope for $M_{n,\alpha,B}$.

5. Any bulk weighted Langer/DGS closure theorem.

**Open**

1. The full $n=2$ residual theorem:
$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1.
$$

2. The arbitrary-degree finite-$B$ first-lobe theorem.

3. The semi-discrete target $\alpha\ge0$, $\beta\in\mathbb N_0$.

4. The full real-parameter KKT conjecture.

Useful fragments by source:

### A1

A1 gave the strongest Round 27 deliverable.

The $n=1$ proof is now sufficiently explicit to become a lemma-bank theorem. The key chain is:

For $n=1$,

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u,
\qquad B=\alpha+\beta+2.
$$

The KKT-normalized cap expression satisfies

$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(\beta+2)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2.
$$

Using

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha,
\qquad B-\alpha=\beta+2,
$$

one gets

$$
H_1(u)^2
\le
F_\alpha(u)
=
\frac{u^\alpha(\alpha+1-u)^2}{\Gamma(\alpha+2)}.
$$

The maximum of $F_\alpha$ on $0\le u\le1$ occurs at

$$
u_*=\frac{\alpha(\alpha+1)}{\alpha+2}
$$

for $1/2\le\alpha\le6/5$, giving

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

Writing

$$
L(\alpha)=\frac12\log E(\alpha),
$$

A1 obtains

$$
L''(\alpha)
=
\frac1\alpha+\frac1{\alpha+1}-\frac1{\alpha+2}
-\frac1{(\alpha+1)^2}
-\psi'(\alpha+2).
$$

The bound

$$
\psi'(x)<\frac1{x^2}+\frac1x
$$

implies

$$
L''(\alpha)>
\frac{\alpha^3+5\alpha^2+7\alpha+4}
{\alpha(\alpha+1)^2(\alpha+2)^2}>0.
$$

Thus $E$ is log-convex and the maximum on $[1/2,6/5]$ occurs at an endpoint. At $\alpha=1/2$,

$$
E\left(\frac12\right)=\frac{3456}{3125\pi}<\frac{39}{100}.
$$

At $\alpha=6/5$, A1 gives an exact Taylor-integral certificate proving

$$
\Gamma\left(\frac{16}{5}\right)>\frac{121}{50}.
$$

This yields

$$
E\left(\frac65\right)<\frac{39}{100}.
$$

Finally,

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}
\ge
\frac2{\alpha+2}
\ge
\frac58
>
\frac{39}{100}.
$$

Hence

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

I accept this as the first closed residual endpoint theorem, with the minor archival requirement that the exact rational proof of $\Gamma(16/5)>121/50$ be copied into the lemma bank.

A1's $n=2$ work is also valuable. With

$$
\theta=\frac{\alpha+3}{B},
$$

the compactified endpoint polynomial is

$$
P_{2,\alpha,\theta}(u)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

The critical equation is

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

A1 proves a subbox, not the full $n=2$ domain. The subbox proof should become the template for a systematic rational subdivision.

A1's allowed-side Airy lemma is correct as a Volterra/Gronwall estimate, but it is too crude to close the bulk theorem without a bound on $\|c(\zeta_c)\|_2$ and without replacing the unweighted $\mathfrak m^2$ factor by the correct DGS/Olver weight system.

### A2

A2's strongest contribution is not a proof but a delimitation of the rational-Bessel route.

In rational coordinates, the Bessel-core residual is

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}<0.
$$

With

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
\qquad
Y=hW_1,
$$

the exact identity

$$
(W_1^2h')'=|\Delta Q|W_1^2h
$$

shows that, as long as $W_1>0$ and $h>0$, the relative amplitude is increasing. This gives the pre-peak Volterra bound

$$
h(z)
\le
M_{n,\alpha,B}
\exp\left(
M_Q\frac{T^4}{64\Lambda_B^2}
\right),
\qquad
T=2\sqrt{\Lambda_Bz},
$$

but only for

$$
T\le j'_{\alpha,1}.
$$

The restriction is essential. At the true first critical point $u_1$, translated to $z_1^*$ and $T_1^*$, A2 derives

$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)}.
$$

If $h'>0$ and $J_\alpha(T_1^*)>0$, this forces

$$
J_\alpha'(T_1^*)<0,
$$

so the critical point lies after the Bessel reference peak $j'_{\alpha,1}$, unless regularity or positivity has already failed. This is a serious obstruction to any pre-peak-only proof.

A2's proposed phase-shift estimate,

$$
\delta=T_1^*-j'_{\alpha,1}
\lesssim
\frac{M_Q (T_1^*)^3}
{16\Lambda_B^2\left(1-\alpha^2/(j'_{\alpha,1})^2\right)},
$$

is a theorem candidate. It needs:

- a lower bound for
$$
F'(T)=-J_\alpha''(T)J_\alpha(T)-J_\alpha'(T)^2
$$
on $[j'_{\alpha,1},T_1^*]$;
- explicit Bessel zero-gap inequalities for $j_{\alpha,1}-j'_{\alpha,1}$;
- a cap-sharp bound on $M_Q$;
- a gamma envelope for $M_{n,\alpha,B}$;
- an explicit proof that $T_1^*<j_{\alpha,1}$ in the target range.

The Whittaker/confluent-hypergeometric core exploration is downgraded. Absorbing the constant term leaves a residual that is still order one near the origin; no immediate advantage over the Bessel reference is established.

### A3

A3 should be treated as the algebra gatekeeper.

The following lemma-bank items should be retained from A3:

**L27.1 Endpoint ODE.**
For

$$
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
$$

$$
(p_BH')'+q_BH=0,
\qquad
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

$$
q_B(u)=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)},
$$

where

$$
c_B=n+\frac12-\frac{n+1}{2B},
\qquad
r_B=1-\frac{n+1}{B}.
$$

**L27.2 Quadratic product.**
$$
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

with

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
$$

**L27.3 Cap length.**
$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

**L27.4 Cap monotonicity.**
$$
K_B'(u)\ge
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

**L27.5 Frobenius coefficient.**
$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
$$

with

$$
A_{n,\alpha,B}
=
\frac{B^{-\alpha/2}}{\Gamma(\alpha+1)}
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}.
$$

**L27.6 Bessel normalization.**
$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

**L27.7 Critical-point equations.**
In $x$:

$$
\left(\beta(1-x)-\alpha(1+x)\right)P_n^{(\alpha,\beta)}(x)
+
B(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)=0.
$$

In $u$:

$$
2(r_Bu-\alpha)P_n
+
4u\left(1-\frac{u}{B}\right)P_{n-1}^{(\alpha+1,\beta+1)}=0.
$$

**L27.8 Bessel maximum dependency.**
The half-order computation is elementary, and Landau's order-monotonicity theorem supplies the required order monotonicity once quoted precisely. The project must still archive a short appendix for the first root of $\tan t=2t$ and the value $J_{1/2}<0.680$.

**L27.9 Rational-coordinate normal form.**
As displayed above.

A3's failure: the requested CAS-style Laurent cancellation log for the Langer residual was not delivered. The formula

$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
},
\qquad
\gamma=K_\tau(\tau_0),
$$

remains accepted as mathematically credible from prior checks, but it is not yet archival. The next A3 output should include the executable or hand-checkable series expansion showing the $\zeta^{-2}$ and $\zeta^{-1}$ cancellations.

Rejected or risky ideas:

1. **Claiming full KKT closure.** Rejected. Round 27 does not prove the arbitrary-degree finite-$B$ first-lobe theorem and therefore does not prove the full conjecture.

2. **Extrapolating the $n=2$ subbox.** Rejected. The box
$$
1\le\alpha\le\frac{11}{10},
\qquad
\frac12\le\theta\le\frac35
$$
is useful, but the likely hard faces are $\theta=0$, $\theta=1$, $\alpha=1/2$, and $\alpha=15/7$.

3. **Treating the rational-Bessel pre-peak estimate as a first-critical-point estimate.** Rejected. A2's own sign calculation shows that the true critical point is expected after $j'_{\alpha,1}$ if the quotient remains regular.

4. **Using a quotient through a Bessel zero without zero-safety.** Rejected. Any theorem using $h=Y/W_1$ must stop before $j_{\alpha,1}$ or use a zero-free reference or non-dividing system.

5. **Treating A2's $\alpha\lesssim n^{3/5}$ threshold as proved.** Rejected. It is a useful scaling warning but lacks Bessel zero-gap constants, a post-peak derivative lower bound, a cap-sharp residual bound, and gamma normalization.

6. **Treating generic DGS/Olver references as a KKT proof.** Rejected. The theorem must be instantiated with the exact KKT residual $\Psi_B$, weight functions, domain, normalization, cut, and constants.

7. **Treating Whittaker residual absorption as a pivot.** Rejected for now. The residual split does not show a vanishing hard-edge residual.

8. **Treating SOS/Krasikov as automatic.** Rejected. SOS is an exploratory route only after specifying degrees, variables, positivity region, derivative sign, and exact rational certificates.

9. **Treating recurrence or discrete Lyapunov induction as immediate.** Rejected as a main route. It may be useful, but it must preserve the KKT normalization and target constant under the $n$-recurrence.

Known gaps:

### G27.1: Full $n=2$ residual theorem

The full domain is

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1.
$$

Round 27 proves only one interior rectangle. The next certificate must cover boundary faces first:

$$
\theta=0,\qquad
\theta=1,\qquad
\alpha=\frac12,\qquad
\alpha=\frac{15}{7}.
$$

A successful $n=2$ proof must include root isolation for the first critical point, filtering relative to the first cap turning point, a value bound for $H_2^4/T^4$, and recorded unresolved boxes.

### G27.2: Rational-Bessel zero-safety

The identity

$$
(W_1^2h')'=|\Delta Q|W_1^2h
$$

is usable only while $W_1>0$. The proof must either show

$$
T_1^*<j_{\alpha,1}
$$

with an explicit margin, or replace the quotient method.

### G27.3: Gamma envelope

A proof of a small-$\alpha$ rational-Bessel theorem needs a regime-specific upper bound on

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

No such envelope is proved in Round 27.

### G27.4: Langer residual archival log

The Langer residual

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}
$$

has a removable turning-point value. The final formula is credible, but the project still needs a reproducible Laurent cancellation log.

### G27.5: DGS/Olver instantiation

The exact external theorem must be stated and mapped to the KKT equation. The current allowed-side Airy lemma is not enough, because it leaves $\|c(\zeta_c)\|_2$ and forbidden-side weighting uncontrolled.

### G27.6: Half-order Bessel appendix

The project needs a small permanent appendix:

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

critical points solve

$$
\tan t=2t,
$$

and the first maximum is below $0.680$. Then quote Landau precisely to pass from $\nu=1/2$ to all $\nu\ge1/2$.

### G27.7: Imported global modules

Round 27 continues to assume central-contour, energy, small-exponent, symmetry, and boundary modules. That is acceptable for the round, but the final proof draft must restate their hypotheses exactly.

New lemmas to add or update:

### Lemma L27.10: Degree-one residual endpoint theorem

For

$$
n=1,\qquad
\frac12\le\alpha\le\frac65,\qquad
\beta\ge0,
$$

after the imported global reductions have placed the problem in the right residual endpoint cap, one has

$$
H_1(u)^4<T_{1,\alpha,\beta}^4
\qquad
(0\le u\le1).
$$

Status: certified, pending final archival exact-rational appendix.

### Lemma L27.11: Degree-two certified subbox

For

$$
1\le\alpha\le\frac{11}{10},
\qquad
\frac12\le\theta\le\frac35,
$$

the first critical point satisfies

$$
\frac14<u_1<\frac25,
$$

and

$$
H_2(u_1)^4<T_{2,\alpha,\theta}^4.
$$

Status: certified subbox, pending independent symbolic replay of A1's monotonicity inequalities.

### Lemma L27.12: Allowed-side Airy propagation

For the Airy-perturbed equation

$$
W''+\zeta W=\Psi W
$$

on $[\zeta_c,\zeta_1]\subset(0,\infty)$,

$$
|W(\zeta_1)|
\le
\mathfrak m(\zeta_1)\|c(\zeta_c)\|_2
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}\mathfrak m(\xi)^2|\Psi(\xi)|\,d\xi
\right).
$$

Status: proved as an allowed-side propagation estimate; insufficient for KKT closure.

### Lemma L27.13: Pre-peak rational-Bessel Volterra bound

With $T=2\sqrt{\Lambda_Bz}$, the Volterra bound

$$
h(z)\le M_{n,\alpha,B}
\exp\left(
M_Q\frac{T^4}{64\Lambda_B^2}
\right)
$$

is valid on intervals satisfying

$$
T\le j'_{\alpha,1}.
$$

Status: conditional lemma. Do not use at $u_1$ until $T_1^*\le j'_{\alpha,1}$ is proved, and current evidence points in the opposite direction.

### Lemma candidate L27.14: Rational-Bessel zero-safety bootstrap

Target statement for a future round:

Assume explicit constants $C_1,C_2,C_3$ such that:

1. $M_Q$ is bounded on the cap;
2. $j_{\alpha,1}-j'_{\alpha,1}$ is bounded below;
3. $F'(T)$ is bounded below on $[j'_{\alpha,1},j'_{\alpha,1}+\delta]$;
4. $M_{n,\alpha,B}$ is bounded in the target regime.

Then prove

$$
T_1^*<j_{\alpha,1}
$$

and close a small-$\alpha$ rational-Bessel estimate. Status: open.

Literature status:

Verified references:

1. Koornwinder--Kostenko--Teschl is the source problem: Tom Koornwinder, Aleksey Kostenko, Gerald Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`. The arXiv and repository records confirm the title, authors, and the link between Jacobi Bernstein estimates and generalized Laguerre dispersive estimates.

2. Haagerup--Schlichtkrull remains relevant context, not a closure theorem. Their arXiv abstract states that they prove a Bernstein-type inequality for Jacobi polynomials uniform for all degrees $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$, but this is not the sharp KKT constant.

3. Landau's Bessel theorem is a valid dependency only after a true Bessel reduction. The published abstract states that $\sup_x|J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$.

4. Dunster--Gil--Segura are the right simple-turning-point references. Their 2020 "Sharp error bounds for turning point expansions" gives computable sharp error bounds for Airy-type expansions of linear differential equations with a simple turning point; their 2019 "Simplified error bounds for turning point expansions" gives explicit elementary error bounds simplifying Olver-type bounds.

5. Arb remains a valid interval-arithmetic platform. Johansson describes Arb as a C library for arbitrary-precision midpoint-radius, or ball, interval arithmetic supporting real and complex numbers, polynomials, power series, matrices, and many special functions.

6. Wendel and Kershaw/Gautschi-type gamma-ratio inequalities remain relevant for gamma envelopes. Wendel's "Note on the Gamma Function" is in *American Mathematical Monthly* 55(9), 563--564 (1948), DOI `10.2307/2304460`; Kershaw's 1983 paper concerns extensions of Gautschi inequalities for gamma ratios.

Unverified theorem needs:

1. Exact DGS/Olver theorem statement in KKT variables, including weights, error-control function, simple-turning-point hypotheses, and scalar amplitude inequality at $\zeta_1$.

2. Bessel zero-gap inequalities for $j_{\alpha,1}-j'_{\alpha,1}$ and lower bounds for
$$
1-\alpha^2/(j'_{\alpha,1})^2.
$$

3. A cap-sharp bound on
$$
M_Q=\sup_{0\le z\le z_\sigma}|\Delta Q(z)|.
$$

4. A regime-split gamma envelope for $M_{n,\alpha,B}$.

5. An exact positivity or failure certificate for a higher-order Sonin/Krasikov functional.

Source-search tasks assigned to A1/A2:

A1 should locate the exact DGS theorem and write the KKT mapping, not just cite the paper family.

A2 should locate or derive explicit Bessel zero-gap and post-peak derivative inequalities sufficient to make the rational-Bessel zero-safety bootstrap theorem checkable.

Research strategy adjustment:

Round 28 should remain execution-focused. The collaboration now has enough architecture. The next round should not add a new global route unless that route delivers one of the following exact artifacts:

1. a full $n=2$ root/value certificate;
2. a closed rational-Bessel zero-safety theorem in a named range;
3. a regime-specific gamma envelope with constants;
4. a fully instantiated DGS/Olver scalar inequality;
5. a successful low-degree Krasikov/SOS sign certificate.

The priority order is:

1. **Complete $n=2$.** The A1 subbox proof is the first real template. Expand it systematically, starting with boundary faces.

2. **Make rational-Bessel bootstrap formal or delimit it.** A2 must stop at a theorem with hypotheses and constants, or produce failure boxes showing the track cannot cover the desired small-$\alpha$ range.

3. **Make A3's algebra archival.** The lemma bank should not contain formulas that require readers to trust memory or prose. It needs reproducible series, exact polynomial formulas, and exact critical equations.

4. **Instantiate DGS/Olver.** The bulk track is plausible only with the exact external theorem mapped to $\Psi_B$ and a scalar inequality.

5. **Keep one exploratory task only.** The best exploratory allocation is a Krasikov/SOS or higher-order Sonin trial for $n=1$ or the certified $n=2$ subbox. If it does not yield exact positivity conditions, drop it.

Next-round prompts by agent:

### For A1

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 28 task is to turn the $n=2$ subbox into a systematic certificate program and close as much of $n=2$ as possible. Do not introduce new architecture.

Objectives:

1. Start from the compactified $n=2$ formulas:
$$
\theta=\frac{\alpha+3}{B},
$$
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
C_{\alpha,\theta}(u)=0
$$
as displayed in Round 27.

2. Prove boundary-face certificates before interior grids:
$$
\theta=0,\qquad
\theta=1,\qquad
\alpha=\frac12,\qquad
\alpha=\frac{15}{7}.
$$

3. State an exact rational subdivision algorithm for
$$
\frac12\le\alpha\le\frac{15}{7},
\qquad
0\le\theta\le1.
$$
For each box, the algorithm must specify:
   - how to bracket the first root of $C_{\alpha,\theta}(u)$;
   - how to verify it is after the first cap turning point;
   - how to exclude earlier critical points;
   - how to bound $P_{2,\alpha,\theta}$ on the root interval;
   - what gamma-ratio inequality is used;
   - how to compare $H_2^4/T_2^4$ with $1$.

4. Expand the Round 27 certified subbox only after the boundary faces are handled. If a box fails under the crude bound
$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha,
$$
try a rational Binet/Stirling or Wendel/Gautschi bound rather than weakening the target.

5. Include a short appendix with the final $n=1$ theorem text and exact rational gamma appendix, ready for lemma-bank insertion.

6. Exploratory allocation: test one explicit higher-order Sonin/Krasikov ansatz on the already-certified $n=2$ subbox. Specify the ansatz degree and report either a rational positivity certificate or the exact obstruction.

Required output: Stage A schema. Include sections titled "$n=2$ boundary faces," "Rational subdivision algorithm," "Certified boxes," "Failure boxes," "Gamma-ratio bound used," and "Exploratory Sonin/Krasikov test."

### For A2

You are A2, the obstruction finder and referee-style strategist. Your Round 28 task is to convert the rational-Bessel phase-shift analysis into a bootstrap theorem or a clear no-go/failure report.

Objectives:

1. Work in the rational coordinate
$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H.
$$

2. Start from the exact normal form:
$$
Y''+
\left(
\frac{\Lambda_B}{z}
+\frac{1-\alpha^2}{4z^2}
+\Delta Q(z)
\right)Y=0,
$$
with
$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

3. State the precise pre-peak theorem:
if $T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1}$, then
$$
h(z)\le M_{n,\alpha,B}
\exp\left(M_QT^4/(64\Lambda_B^2)\right),
$$
with all definitions and cap restrictions.

4. Then address the true critical point. Derive a bootstrap theorem of the following form:

Assume
$$
T_1^*\le j_{\alpha,1}-\eta,
$$
and explicit bounds on $M_Q$, $M_{n,\alpha,B}$, $j_{\alpha,1}-j'_{\alpha,1}$, and $F'(T)$ on the post-peak interval. Prove that the resulting phase shift satisfies
$$
T_1^*-j'_{\alpha,1}\le j_{\alpha,1}-j'_{\alpha,1}-\eta.
$$

This closes the bootstrap. If you cannot close it, report the exact missing inequality or a numerical failure box.

5. Produce explicit constants in at least one range, for example
$$
\alpha\le C\sqrt n
$$
or
$$
\alpha\le Cn^{3/5}.
$$
Do not state a threshold without constants.

6. Audit the Whittaker reference and explicitly decide whether it is worth retaining. If it is retained, provide a residual and kernel estimate; otherwise, recommend dropping it.

7. Exploratory allocation: formulate an Ermakov-Pinney or non-dividing amplitude alternative only if it gives a concrete inequality avoiding Bessel zeros. No broad narrative.

Required output: Stage A schema. Include sections titled "Pre-peak theorem," "Post-peak bootstrap," "Zero-safety constants," "Gamma normalization dependency," "Failure boxes," and "Recommendation on rational-Bessel viability."

### For A3

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 28 task is to make the algebra executable and implementation-safe.

Objectives:

1. Produce final lemma-bank text for L27.1--L27.9, with exact hypotheses and no ambiguous turning-point assumptions.

2. Correct the theorem wording around $u_0$: the residual strip in $\alpha$ does not by itself imply a cap turning point. Every theorem must say either:
   - if $K_B$ has no zero in the cap, the cap is controlled by forbidden-zone ascent and central boundary control; or
   - if $K_B$ has a first zero $u_0$, then the first-lobe theorem applies.

3. Provide the CAS Laurent cancellation log for the Langer residual. Show:
   - the expansion
$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4);
$$
   - the expansion
$$
\zeta(t)=c_1t+c_2t^2+c_3t^3+O(t^4);
$$
   - the coefficient matching
$$
c_1=\gamma^{1/3},
\qquad
c_2=\frac{k_2}{10\gamma^{2/3}},
\qquad
c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}};
$$
   - the cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms in $\Psi_B$;
   - the finite term
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

4. Verify A1's $n=2$ subbox formulas:
   - $P_{2,\alpha,\theta}$;
   - $C_{\alpha,\theta}(u)$;
   - $C(1/4)$ and $C(2/5)$ expansions;
   - sign of $C_u$ on $0\le u\le1/4$;
   - bound $P_{2,\alpha,\theta}(u)\le82519/32800$;
   - final rational value comparison.

5. Audit A2's logarithmic-derivative formula:
$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)}.
$$

6. Prove one real-gamma envelope lemma in a defined subregime, preferably:
$$
\alpha\le C\sqrt n
$$
or
$$
\alpha\le Cn^{3/5}.
$$
Use Binet, Wendel, Gautschi, or Kershaw with exact constants.

7. Exploratory allocation: test one low-degree Krasikov/SOS functional only after the executable algebra logs are complete.

Required output: Stage A schema. Include sections titled "Lemma-bank text," "Langer CAS cancellation log," "$n=2$ subbox audit," "A2 derivative audit," "Gamma envelope lemma," and "Rejected or unexecuted checks."

Confidence:

Confidence in the endpoint-cap ODE, cap length, quadratic $K_B$, and cap monotonicity: **0.89**.

Confidence in forbidden-zone ascent and Sonin first-lobe reduction, conditional on imported modules and boundary wording: **0.89**.

Confidence in the residual $n=1$ theorem after Round 27: **0.89**.

Confidence that the $n=1$ theorem is publication-ready after exact-arithmetic appendix insertion: **0.88**.

Confidence in the $n=2$ compactified polynomial and critical equation: **0.89**.

Confidence in A1's certified $n=2$ subbox: **0.82**.

Confidence that the full $n=2$ residual theorem is true: **0.76**.

Confidence in the rational-coordinate normal form and residual $\Delta Q$: **0.89**.

Confidence in the rational-Bessel relative-amplitude identity on $W_1>0$ intervals: **0.89**.

Confidence in the pre-peak Volterra bound under $T\le j'_{\alpha,1}$: **0.84**.

Confidence in A2's zero-safety threshold as a theorem: **0.22**.

Confidence in the allowed-side Airy propagation lemma: **0.89**.

Confidence that current Langer material proves arbitrary degree without DGS instantiation: **0.15**.

Confidence that a regime-split gamma envelope can be obtained: **0.55**.

Confidence that the higher-order Sonin/Krasikov exploratory route will produce useful certificates: **0.25**.

Confidence that Round 27 proves the arbitrary-degree finite-$B$ first-lobe theorem: **0.12**.

Confidence that Round 27 proves the full real-parameter KKT conjecture: **0.10**.

Confidence that the endpoint-cap first-lobe route remains the best main strategy: **0.89**.

Overall judge decision:

Record Round 27 as a successful low-degree execution and obstruction-delimitation round.

Add the following to the lemma bank:

1. endpoint-cap first-lobe reduction, with imported-module hypotheses;
2. residual $n=1$ theorem, after inserting the exact rational gamma appendix;
3. A3's endpoint ODE, $K_B$ product, cap length, cap monotonicity, Frobenius coefficient, Bessel normalization, critical-point equations, half-order Bessel maximum dependency, and rational normal form;
4. A2's rational-Bessel relative-amplitude identity and pre-peak Volterra lemma, explicitly limited to $T\le j'_{\alpha,1}$;
5. A1's allowed-side Airy propagation theorem as a conditional propagation lemma;
6. A1's $n=2$ subbox as a certified local certificate after independent symbolic replay.

Do not add as proved:

1. the arbitrary-degree first-lobe amplitude theorem;
2. the full $n=2$ theorem;
3. A2's post-peak phase-shift theorem or $n^{3/5}$ threshold;
4. any small-$\alpha$ rational-Bessel closure theorem;
5. any gamma-envelope theorem;
6. any bulk weighted Langer/DGS closure theorem;
7. any SOS/Krasikov or discrete-Lyapunov alternative.

Round 28 should focus on exact artifacts: full $n=2$ boundary and grid certificates, a rational-Bessel zero-safety bootstrap or failure report, executable Langer cancellation logs, and one regime-specific gamma envelope.