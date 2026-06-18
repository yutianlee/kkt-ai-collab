Summary:

Source packet: Round 19 uploaded judge packet `judge_19.md`; local uploaded-file citation token:

Round 19 is a useful execution-and-measurement round, but it is not a closure round. No active agent proves the finite-$B$ first-lobe amplitude theorem, and therefore no active agent proves the real-parameter KKT conjecture. The selected proof architecture remains the endpoint-cap first-lobe route:

1. import central-contour clearance, weighted-energy clearance, small-exponent clearance, and symmetry;
2. reduce the residual right endpoint to the cap $0\le u\le u_\sigma\le n$;
3. use the exact endpoint equation and monotone Sonin product $K_B=p_Bq_B$;
4. reduce the cap maximum to the first critical point $u_1$ after the first endpoint turning point $u_0$;
5. prove the single remaining estimate

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Round 19 makes three concrete advances.

First, A1 derives a sharper conditional Airy/Langer endpoint certificate using the first-critical-point condition $H_\tau(\tau_1)=0$. This gives an exact scalar denominator $D_1$ built from Airy functions and their derivatives. The algebra is sound and worth adding as a conditional lemma. However, it does not by itself control the coefficient norm transported from the forbidden side. In particular, it does not fix the large overestimate caused by a crude unweighted Airy matrix norm.

Second, A2 gives a serious Laguerre-face warning. At the $\theta=0$ face, for fixed $\alpha$, the removable Langer residual near the turning point does not appear to decay with $n$; locally it tends to an order-one scale proportional to $\alpha^{-4/3}$. This refutes any proof strategy that assumes a uniform $\mathcal O(n^{-4/3})$ Langer variation over the entire residual strip. The warning is real, but not a no-go theorem: the proof-relevant quantity is a weighted Airy/Olver/Dunster--Gil--Segura variation integral, not just the local value $\Psi(0)$.

Third, A3 supplies the best reusable algebra. The exact dynamic oscillator, Prüfer equations, Langer residual, removable turning-point value, $\tau$-derivative identities, Liouville normal-form sign, compactified hypergeometric coefficient, degree-one and degree-two critical equations, and Riccati Taylor coefficients are now essentially lemma-bank ready, with a few cleanup requirements. A4 gives useful low-degree and Riccati interval scaffolding, but does not meet the Round 19 execution standard because it supplies pseudo-code and heuristic tables rather than outward-rounded interval logs.

The research strategy should now split. A monolithic global Langer theorem over the whole residual strip is too optimistic unless DGS/Olver weights demonstrably remove the Laguerre-face obstruction. The next round should run three tracks in parallel:

- a weighted global Langer/Airy track for the bulk regime;
- a Riccati/Frobenius/Bessel track for small $\alpha$ and low degrees;
- actual interval certificates for $n=1,2$ and then for finite $n<N_0$ once a large-$n$ theorem exists.

Literature status:

The core KKT reference is Koornwinder--Kostenko--Teschl, “Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator,” *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`. The arXiv record confirms the title, authors, and the connection between Jacobi Bernstein-type inequalities and dispersive estimates for generalized Laguerre operators; the UvA repository record confirms the DOI and final published venue.

Landau’s Bessel theorem is a valid auxiliary dependency only after a genuine Bessel reduction is established. The relevant statement, from Landau’s abstract and bibliographic records, is that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$; the article is L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`.

Dunster--Gil--Segura are the right reference family for the weighted turning-point error theorem needed here. Their “Sharp error bounds for turning point expansions” derives computable sharp error bounds for Airy-function expansions of second-order ODEs with a simple turning point. Their “Simplified error bounds for turning point expansions” gives explicit elementary error bounds simplifying Olver-type bounds. These papers are relevant but not yet instantiated for the exact KKT residual $\Psi_B(\zeta)$.

Arb is an appropriate platform for certified computation. Johansson describes Arb as arbitrary-precision midpoint-radius, or ball, interval arithmetic supporting real and complex numbers, polynomials, power series, matrices, and many special functions; the Arb documentation cites Johansson, “Arb: efficient arbitrary-precision midpoint-radius interval arithmetic,” *IEEE Transactions on Computers* 66(8), 1281--1292 (2017), DOI `10.1109/TC.2017.2690633`. This validates the tool, not any unexecuted KKT certificate.

Selected main route:

The selected main route is the **endpoint-cap first-lobe route with a regime-split amplitude program**.

The proof skeleton is now fixed.

In the residual right endpoint range

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

The exact equation is

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
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

with

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
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}
>
\frac14.
$$

The forbidden-zone ascent and allowed-zone Sonin ordering reduce the remaining estimate to the first critical point $u_1$ after the first zero $u_0$ of $K_B$, if $u_1$ exists. If $u_1$ is absent, if $K_B$ has no zero in the cap, or if $u_0=u_\sigma$, the cap is controlled by monotonicity plus the imported central boundary estimate.

The remaining theorem is exactly:

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Round 19 clarifies that this theorem should not be attacked by a single crude Airy matrix norm over the whole residual strip. The route should split as follows.

**Track A: weighted global Langer/Airy for the bulk.**

Use

$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Let $\zeta$ satisfy

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2,
\qquad
K(\tau)=K_B(u(\tau)),
\qquad
\zeta(\tau_0)=0.
$$

Then

$$
H(\tau)=\zeta_\tau^{-1/2}W(\zeta)
$$

gives

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
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

The crude variation norm

$$
\int|\Psi_B(\zeta)|\Omega_A(\zeta)\,d\zeta
$$

is probably too lossy. The next theorem must use DGS/Olver modulus and weight functions, with exact KKT constants and no hidden exponential inflation from $\operatorname{Bi}$ in the forbidden zone.

**Track B: Riccati/Frobenius/Bessel for small $\alpha$ and low degrees.**

Define

$$
v(u)=p_B(u)\frac{H'(u)}{H(u)}.
$$

Then

$$
p_Bv_u+v^2+K_B=0.
$$

The Taylor initialization is now algebraically available. This route avoids Airy matrix conditioning and is the preferred computational path for $n=1,2$ and possibly a small-$\alpha$ strip.

**Track C: interval certification.**

The compactification

$$
\theta=\frac{n+\alpha+1}{B}\in[0,1]
$$

must be used consistently, with $\theta=0$ the Laguerre face and $\theta=1$ the $\beta=0$ face. The finite hypergeometric coefficient

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right)
$$

is the interval-stable expression.

Useful fragments by source:

### A1

A1’s main Round 19 contribution is the critical-point scalar Airy envelope.

At the first critical point $u_1$, the condition

$$
H_\tau(\tau_1)=0
$$

implies, after the Langer substitution, that

$$
W_\zeta(\zeta_1)=d_1W(\zeta_1),
$$

where

$$
d_1=
\frac{\zeta_{\tau\tau}(\tau_1)}{2\zeta_\tau(\tau_1)^2}.
$$

With

$$
a(\zeta)=\operatorname{Ai}(-\zeta),
\qquad
b(\zeta)=\operatorname{Bi}(-\zeta),
$$

and

$$
(W,W_\zeta)^T=\mathsf A(\zeta)Z,
\qquad
\mathsf A(\zeta)=
\begin{pmatrix}
a(\zeta)&b(\zeta)\\
a'(\zeta)&b'(\zeta)
\end{pmatrix},
$$

the critical condition imposes

$$
A_1(a'(\zeta_1)-d_1a(\zeta_1))
+
B_1(b'(\zeta_1)-d_1b(\zeta_1))=0.
$$

Define

$$
D_1=
\max\left(
|a'(\zeta_1)-d_1a(\zeta_1)|,\,
|b'(\zeta_1)-d_1b(\zeta_1)|
\right).
$$

Using the Airy Wronskian

$$
a(\zeta)b'(\zeta)-a'(\zeta)b(\zeta)=-\frac1\pi,
$$

A1 obtains the exact conditional estimate

$$
|W(\zeta_1)|
\le
\frac{\|Z(\zeta_1)\|_\infty}{\pi D_1}.
$$

This is correct as algebra. It should be added to the lemma bank as a **conditional Airy coefficient lemma**, not as an amplitude theorem. Its usefulness depends entirely on how $\|Z(\zeta_1)\|$ is transported from the forbidden side. If the transport uses a crude unweighted $\infty$-norm, the coefficient norm may already be too inflated.

A1 also defines the finite-cutoff certificate. With

$$
u_{\mathrm{cut}}=\rho u_0,\qquad 0<\rho<1,
$$

and

$$
\mathcal V_A
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\xi)|\Omega_A(\xi)\,d\xi,
$$

one sufficient condition is

$$
\zeta_\tau(\tau_1)^{-1/2}
\frac{
\mathfrak C_A(\rho)
(1+\varepsilon_{\mathrm{tail}}(\rho))
e^{\mathcal V_A(\rho,\zeta_1)}
}{
\pi D_1
}
\le
T_{n,\alpha,\beta}.
$$

This is a useful measurable inequality. It is not verified.

### A2

A2’s main contribution is obstruction analysis at the Laguerre face.

At $\theta=0$, the limiting frequency product is

$$
K_\infty(u)
=
-\frac{\alpha^2}{4}
+
\Lambda_\infty u
-
\frac{u^2}{4},
\qquad
\Lambda_\infty=n+\frac{\alpha+1}{2}.
$$

The first turning point is

$$
u_0
=
2\Lambda_\infty
-
2\sqrt{\Lambda_\infty^2-\alpha^2/4}
\sim
\frac{\alpha^2}{4\Lambda_\infty}.
$$

At that turning point, A2 derives

$$
\gamma=K_\tau(\tau_0)=\frac{\alpha^2-u_0^2}{4},
$$

$$
K_{\tau\tau}(\tau_0)=\frac{\alpha^2-3u_0^2}{4},
$$

and

$$
K_{\tau\tau\tau}(\tau_0)=\frac{\alpha^2-7u_0^2}{4}.
$$

Substituting these into the removable Langer residual value

$$
\Psi(0)
=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)
-
9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}
$$

gives, for fixed $\alpha$ and $n\to\infty$,

$$
\Psi_\infty(0)
\sim
\frac{4^{2/3}}{140}\alpha^{-4/3}.
$$

This is an important diagnostic. It shows that a proof based on the assertion “the Langer variation is uniformly $\mathcal O(n^{-4/3})$” is false or at least unsupported. It does not prove that the weighted DGS variation is too large. The local value $\Psi(0)$ is not the same as the global weighted variation integral.

A2’s further warnings are adopted with caution:

- piecewise Airy-to-Prüfer handoff is delicate because suppressing boundary terms pushes the handoff beyond the purely local linear Airy layer;
- static Bessel/Frobenius comparison may be better for small $\alpha$;
- a heuristic threshold such as $\alpha\sim n^{3/5}$ or $\alpha\sim C\sqrt n$ should be treated as a design hypothesis, not as a theorem.

### A3

A3 is the most reliable source for lemma-bank algebra this round.

Adopt the following as certified or nearly certified.

1. **Dynamic oscillator.**

$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

2. **Prüfer equations on $K_B>0$.**

With

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi,
$$

one has

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

3. **Langer residual.**

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
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

4. **Removable turning-point value.**

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

This is algebraically well supported but should receive one final CAS Taylor-cancellation check before being labeled certified.

5. **$\tau$-derivative identities.**

For $K_B(u)=-\alpha^2/4+\Lambda_Bu-\Delta_Bu^2$,

$$
K_\tau=p_BK_B',
$$

$$
K_{\tau\tau}
=
p_B\left(1-\frac{2u}{B}\right)K_B'
-
2\Delta_Bp_B^2,
$$

and

$$
K_{\tau\tau\tau}
=
p_B\left[
\left(\left(1-\frac{2u}{B}\right)^2-\frac{2p_B}{B}\right)K_B'
-
6\Delta_Bp_B\left(1-\frac{2u}{B}\right)
\right].
$$

6. **Correct Liouville normal-form sign.**

With $Y_u=p_B^{1/2}H$,

$$
Y_u''
+
\frac{K_B(u)+1/4}{p_B(u)^2}Y_u
=
0.
$$

With $v=Bu/(B-u)$ and $Y_v=v^{1/2}H$,

$$
Y_v''
+
\frac{K_B(u(v))+1/4}{v^2}Y_v
=
0.
$$

Therefore the Liouville-normal turning point $K_B=-1/4$ is not the Sonin/Sturm turning point $K_B=0$.

7. **Compactified hypergeometric coefficient.**

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
u^k.
$$

8. **Degree-one critical quadratic and corrected target.**

For $n=1$,

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)=0,
$$

and

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

9. **Degree-two critical cubic.**

For $n=2$, write

$$
P_2(u)=A-b_1u+c_1u^2,
$$

where

$$
A=\frac{(\alpha+1)(\alpha+2)}2,
\qquad
b_1=\alpha+2,
\qquad
c_1=\frac{B+1}{2B}.
$$

Then the critical equation is

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0,
$$

with the cubic coefficients supplied by A3. This should be independently rechecked before A4 uses it for interval proof.

10. **Riccati Taylor data.**

If

$$
v(u)=p_B(u)\frac{H'(u)}{H(u)}
$$

and

$$
v(u)=v_0+v_1u+v_2u^2+v_3u^3+\cdots,
$$

then

$$
v_0=\frac{\alpha}{2},
$$

$$
v_1=-\frac{\Lambda_B}{\alpha+1},
$$

$$
v_2=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}
-\frac{\Lambda_B^2}{(\alpha+1)^2}
}{
\alpha+2
},
$$

and

$$
v_3=
\frac{2v_2}{\alpha+3}
\left(
\frac1B+\frac{\Lambda_B}{\alpha+1}
\right).
$$

Equivalently, $v_u(0)=v_1$ and $v_{uu}(0)=2v_2$. Future notes must avoid confusing coefficient notation with derivative notation.

A3 also begins the gamma-ratio program. The correct object is

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B).
$$

The leading entropy negativity for $\alpha=cn$, $\beta=0$ is promising, but the finite-$n$ Binet/Robbins envelope remains open.

### A4

A4’s most useful contribution is low-degree and Riccati computational planning. It is not certificate-level because it does not include executed outward-rounded logs.

The useful pieces are:

1. **Correct face terminology.** With $\theta=(n+\alpha+1)/B$, $\theta=0$ is the Laguerre face $B\to\infty$, while $\theta=1$ is the $\beta=0$ finite face.

2. **Degree-one boundary formulas.** For the Laguerre face with $n=1$,

$$
\ell_1^{(\alpha)}(u)
=
\frac{1}{\sqrt{\Gamma(\alpha+2)}}
u^{\alpha/2}e^{-u/2}(\alpha+1-u)
$$

in the KKT normalization, equivalently as written in the local Laguerre normalization after simplification. The critical equation is

$$
u^2-(2\alpha+3)u+\alpha(\alpha+1)=0,
$$

with the smaller physical root

$$
u_1=\frac{2\alpha+3-\sqrt{8\alpha+9}}2.
$$

For $\theta=1$, $\beta=0$, $B=\alpha+2$ and

$$
H_1(u)=\left(\frac{u}{B}\right)^{\alpha/2}(\alpha+1-u).
$$

The first critical point is

$$
u_1=\frac{\alpha(\alpha+1)}{\alpha+2},
$$

and

$$
H_1(u_1)^4
=
\left(
\frac{\alpha(\alpha+1)}{(\alpha+2)^2}
\right)^{2\alpha}
\frac{16(\alpha+1)^4}{(\alpha+2)^4}.
$$

At $\alpha=1/2$, this equals $0.248832$, far below $T^4=1$. These computations are useful but not a proof over the full $\alpha$ interval until monotonicity or interval enclosure is supplied.

3. **Riccati IVP route.** A4 correctly emphasizes that validated Riccati integration can bypass Langer singularities for finite low degrees. This should become the main computational route for $n=1,2$.

4. **Refutation of unweighted matrix-norm optimism.** A4 is right that a crude Airy coefficient $\infty$-norm does not respect the recessive Frobenius initial data and can artificially import the growing $\operatorname{Bi}$ component. This does not refute A1’s scalar denominator identity; it refutes using that identity after an unweighted over-large coefficient transport.

Rejected or risky ideas:

1. **Claiming Round 19 proves KKT.** Rejected. No agent proves the first-lobe amplitude theorem, no interval certificate is executed, and no global weighted Langer theorem with constants is instantiated.

2. **Using the scalar Airy denominator as a closure.** Risky. A1’s denominator $D_1$ is algebraically correct, but if $\|Z(\zeta_1)\|$ is propagated using a crude unweighted matrix norm, the result may remain far too large. The scalar denominator is a sharpening, not a proof.

3. **Treating A2’s local $\Psi(0)$ computation as a global no-go theorem.** Rejected. A2 correctly shows non-vanishing local residual scale at the Laguerre face, but the proof-relevant object is the weighted variation integral with correct Airy modulus and recessive initial data.

4. **Continuing with crude $\Omega_A$ over the forbidden zone.** Rejected as the primary route. It does not exploit recessive boundary data and likely overestimates by following the growing Airy branch.

5. **Calling A4’s pseudo-code an interval certificate.** Rejected. The Round 19 prompt asked for execution. A4 supplies formulas, pseudo-code, and heuristic tables, not a reproducible certified artifact.

6. **Promoting the $n=1$ boundary-face computations as full $n=1$ certification.** Risky. The boundary faces are useful and appear to have large margins, but the interior $\theta\in(0,1)$ and the proof of the maximum over $\alpha$ remain unchecked by outward-rounded intervals.

7. **Gamma-ratio closure by leading entropy alone.** Rejected. The $\alpha=cn$ entropy is only one regime. The mesoscopic regime $\alpha=C\sqrt n$, fixed $\alpha$, and finite-$n$ transition all require explicit Binet/Robbins remainder envelopes.

8. **Semi-discrete induction via contiguous relations.** Keep exploratory only. The moving critical point, normalization changes, and sign irregularity obstruct a straightforward induction in integer $\beta$.

9. **Misstating the endpoint ODE chain-rule factor.** The final endpoint formulas are correct, but the lemma-bank proof must use

$$
\frac{d}{dx}\left((1-x^2)g_x\right)
=
B(p_BH')',
$$

not an erroneous $B/2$ factor.

10. **Confusing coefficient and derivative notation in Riccati Taylor data.** If $v=v_0+v_1u+v_2u^2+\cdots$, then $v_{uu}(0)=2v_2$. This must be explicit in any interval initialization.

Known gaps:

### G19.1: Finite-$B$ first-lobe amplitude theorem

The main theorem remains open:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point after the first zero $u_0$ of $K_B$ in the residual cap. Prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

### G19.2: Weighted Langer theorem with exact constants

The global Langer route needs a theorem of the following type.

For the KKT residual

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2},
$$

prove an explicit weighted Airy error bound

$$
\mathcal V_{DGS}
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\zeta)|\Omega_{DGS}(\zeta)\,d\zeta
\le
\mathcal E_{n,\alpha,\beta},
$$

with $\mathcal E_{n,\alpha,\beta}$ small enough after all normalization factors to imply the first-lobe target. The actual DGS theorem, weight functions, regularity hypotheses, and norm-conversion constants are not yet instantiated.

### G19.3: Laguerre-face obstruction versus weighted resolution

A2 shows that the local residual at $\theta=0$ and fixed $\alpha$ may remain order-one. The open question is whether the **weighted** variation remains within the available KKT margin. This must be measured and then proved or split off.

### G19.4: Cutoff coefficient and Frobenius-to-Airy normalization

A1 proposes

$$
\mathfrak C_A^0
=
\sqrt{2\pi\alpha}\,
A_{n,\alpha,B}
e^{\mathcal C_B},
$$

where

$$
\mathcal C_B
=
\lim_{u\downarrow0}
\left[
\int_u^{u_0}
\frac{\sqrt{-K_B(t)}}{p_B(t)}\,dt
+
\frac{\alpha}{2}\log u
\right].
$$

This is not certified. The exact branch conventions, normalization constants, and cutoff tail error $\varepsilon_{\mathrm{tail}}$ must be audited.

### G19.5: Gamma-ratio envelope

The proof still lacks a rigorous finite-$n$ upper envelope for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

A3’s entropy analysis is promising for $\alpha=cn$, but fixed $\alpha$, $\alpha=C\sqrt n$, $\theta=0$, $\theta=1$, and finite transition boxes remain open.

### G19.6: Low-degree certificates

The $n=1$ and $n=2$ interval certificates are not executed. Boundary formulas exist, but the proof needs isolated critical roots and certified signs of $H^4-T^4$ over compactified boxes.

### G19.7: Riccati IVP certification

The Riccati equation

$$
p_Bv_u+v^2+K_B=0
$$

has useful Taylor data. A certificate still requires:

- rigorous Taylor remainder at the starting point $u=\epsilon$;
- interval ODE integration with outward rounding;
- proof that $H>0$ before the first critical point;
- isolation of the first zero of $v$;
- certified evaluation of $H(u_1)^4-T^4$.

### G19.8: Symbolic cancellation of the Langer residual

The removable value $\Psi_B(0)$ depends on delicate cancellation of singular terms. It is highly plausible and cross-checked, but should be verified by a reproducible CAS expansion before it is the basis of a published lemma.

### G19.9: Semi-discrete target

The semi-discrete case $\beta\in\mathbb N_0$ remains strategically important for the Laguerre dispersive application, but Round 19 does not find a simple integer-$\beta$ monotonicity or induction. It should be tested, not assumed.

New lemmas to add:

### Lemma L19.1: Critical-point scalar Airy envelope

Let $W$ solve

$$
W_{\zeta\zeta}+\zeta W=\Psi W.
$$

Let

$$
a(\zeta)=\operatorname{Ai}(-\zeta),
\qquad
b(\zeta)=\operatorname{Bi}(-\zeta),
$$

and write

$$
(W,W_\zeta)^T=\mathsf A(\zeta)Z(\zeta).
$$

If, at $\zeta=\zeta_1$,

$$
W_\zeta=dW,
$$

then

$$
|W(\zeta_1)|
\le
\frac{\|Z(\zeta_1)\|_\infty}{\pi D},
$$

where

$$
D=
\max\left(
|a'(\zeta_1)-da(\zeta_1)|,\,
|b'(\zeta_1)-db(\zeta_1)|
\right).
$$

Status: certified algebraically from the Airy Wronskian. It is not an amplitude theorem until $\|Z(\zeta_1)\|$ is controlled sharply.

### Lemma L19.2: Critical derivative condition for the KKT first maximum

At the first critical point $u_1$ of $H$,

$$
W_\zeta(\zeta_1)
=
d_1W(\zeta_1),
$$

where

$$
d_1=
\frac{\zeta_{\tau\tau}(\tau_1)}{2\zeta_\tau(\tau_1)^2}.
$$

Status: certified by differentiating $W=\zeta_\tau^{1/2}H$ and using $H_\tau(\tau_1)=0$.

### Lemma L19.3: Langer residual formula

For the dynamic oscillator $H_{\tau\tau}+K(\tau)H=0$, with

$$
K(\tau)=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

one has

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
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

Status: algebraically derived and cross-checked; require final CAS Taylor verification before marking certified.

### Lemma L19.4: Removable turning-point value

At a simple turning point $\tau_0$ with

$$
\gamma=K_\tau(\tau_0)>0,
$$

the residual has the removable value

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

Status: proposed/cross-checked. Promote after CAS verification.

### Lemma L19.5: Laguerre-face local residual scale

At $\theta=0$ and fixed $\alpha$, the local turning-point residual satisfies

$$
\Psi_\infty(0)
\sim
\frac{4^{2/3}}{140}\alpha^{-4/3}
\qquad(n\to\infty).
$$

Status: derived under the Laguerre-face model. Use as an obstruction diagnostic, not as a global variation theorem.

### Lemma L19.6: Correct Liouville normal forms

With $Y_u=p_B^{1/2}H$,

$$
Y_u''
+
\frac{K_B(u)+1/4}{p_B(u)^2}Y_u
=
0.
$$

With $v=Bu/(B-u)$ and $Y_v=v^{1/2}H$,

$$
Y_v''
+
\frac{K_B(u(v))+1/4}{v^2}Y_v
=
0.
$$

Status: certified.

### Lemma L19.7: Compactified hypergeometric representation

For $\theta=(n+\alpha+1)/B$,

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
u^k.
$$

Status: certified and interval-ready.

### Lemma L19.8: Degree-one critical equation and target

For $n=1$, the critical points satisfy

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)
=
0,
$$

and

$$
T_{1,\alpha,\beta}^4=
\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

Status: certified.

### Lemma L19.9: Degree-two critical cubic

For $n=2$, with

$$
P_2(u)=A-b_1u+c_1u^2,
$$

where

$$
A=\frac{(\alpha+1)(\alpha+2)}2,\qquad
b_1=\alpha+2,\qquad
c_1=\frac{B+1}{2B},
$$

the critical equation is

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0.
$$

Status: algebraically derived; recheck before interval proof.

### Lemma L19.10: Riccati Taylor initialization

For

$$
v=p_BH'/H,
$$

one has

$$
p_Bv_u+v^2+K_B=0.
$$

If

$$
v(u)=v_0+v_1u+v_2u^2+v_3u^3+\cdots,
$$

then

$$
v_0=\frac{\alpha}{2},
$$

$$
v_1=-\frac{\Lambda_B}{\alpha+1},
$$

$$
v_2=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}
-\frac{\Lambda_B^2}{(\alpha+1)^2}
}{
\alpha+2
},
$$

and

$$
v_3=
\frac{2v_2}{\alpha+3}
\left(
\frac1B+\frac{\Lambda_B}{\alpha+1}
\right).
$$

Status: certified algebraically. Future code must distinguish coefficients from derivatives.

### Lemma L19.11: Gamma-ratio entropy candidate

For

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B),
$$

the leading $\alpha=cn,\beta=0$ entropy appears negative on $0<c\le1$.

Status: leading asymptotic only. Finite-$n$ Binet/Robbins envelope remains open.

Counterexample checks to run:

1. **DGS weighted variation at $\theta=0$.** Compute

$$
\mathcal V_{DGS}
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\zeta)|\Omega_{DGS}(\zeta)\,d\zeta
$$

for $\theta=0$ and scalings $\alpha=1/2$, $\alpha=1$, $\alpha=2$, $\alpha=C\sqrt n$, and $\alpha=cn$. Compare it with crude $\mathcal V_A$ and with the full KKT margin.

2. **Critical denominator measurement.** For the same grid compute

$$
D_1=
\max(|a'-d_1a|,|b'-d_1b|)
$$

and the ratio

$$
\mathcal R_{\mathrm{crit}}
=
\frac{
\zeta_\tau(\tau_1)^{-1/2}
\mathfrak C_A(1+\varepsilon_{\mathrm{tail}})
e^{\mathcal V}
}{
\pi D_1T
}.
$$

Flag any sample with $\mathcal R_{\mathrm{crit}}\ge1$.

3. **Cutoff optimization.** Test $\rho=1/2,1/4,1/8,1/16$ for

$$
u_{\mathrm{cut}}=\rho u_0.
$$

Measure $\|Z_{\mathrm{cut}}\|$, $\varepsilon_{\mathrm{tail}}$, $\mathcal V$, $D_1$, and the final ratio.

4. **CAS cancellation check for $\Psi_B(0)$.** Starting from $K=\zeta\zeta_\tau^2$, expand near $\tau_0$ and verify the cancellation of the $t^{-2}$ and $t^{-1}$ terms. Produce a machine-readable symbolic certificate or a short exact derivation.

5. **Sample rational check.** Reproduce A3’s sample $(n,\alpha,\beta)=(10,5,0)$ and confirm exact values of $\Lambda_B,\Delta_B,u_0,\gamma,K_{\tau\tau},K_{\tau\tau\tau}$ and the interval for $\Psi_B(0)$.

6. **Gamma-ratio envelope scan.** Use real-argument Binet or a certified log-gamma interval method to enclose $\log M_{n,\alpha,B}$ over residual boxes. Split at least into fixed $\alpha$, $\alpha=C\sqrt n$, $\alpha=cn$, $\theta=0$, and $\theta=1$.

7. **$n=1$ full interval certificate.** Use the exact quadratic, isolate all roots in the cap, evaluate $H_1^4-T^4$ with outward rounding, and log all accepted/unresolved boxes over

$$
\alpha\in[1/2,\alpha_E(1)],
\qquad
\theta\in[0,1].
$$

8. **$n=2$ interval prototype.** Use the rescaled cubic in $w=u/B$, isolate critical points, and evaluate the KKT margin with outward rounding. Include both $\theta=0$ and $\theta=1$ faces.

9. **Riccati IVP validation.** Initialize $v$ with the Taylor coefficients above at $u=\epsilon$, integrate with interval ODE methods, isolate the first zero of $v$, and compare with exact polynomial roots for $n=1,2$.

10. **Semi-discrete subset.** For $\beta=0,1,2,3,4,5,10$, map the first-lobe ratio and compare with the continuous-$\theta$ worst cases. Do not infer monotonicity unless signs are certified.

Research strategy adjustment:

Round 20 should not create new architecture unless a new theorem immediately measures one of the constants above. The next round should be a certification-and-constant round.

The main strategic decisions are:

1. **Keep the endpoint-cap first-lobe route.** It remains the best proof skeleton. No alternative route in Round 19 approaches the same level of reduction.

2. **Demote crude unweighted Langer.** Use it only as a diagnostic. The actual analytic route must instantiate DGS/Olver weights or split away from the forbidden-side matrix norm.

3. **Adopt a regime split.** The likely split is:
   - weighted Langer for $\alpha$ sufficiently large relative to a threshold to be determined experimentally;
   - static Bessel/Frobenius/Riccati for fixed or small $\alpha$ and for the Laguerre face;
   - interval proof for low $n$.

4. **Promote Riccati computation for low degrees.** A4 should make this concrete. It is simpler than Langer for $n=1,2$ and uses the newly certified Taylor data.

5. **Make A3 the algebra gatekeeper.** No formula should enter the lemma bank unless A3 has either given a clean derivation or supplied an exact CAS/interval check.

6. **Make A4 produce artifacts.** The next A4 output should include actual code, actual interval logs, and unresolved boxes. Pseudo-code is no longer acceptable.

7. **Use literature surgically.** A1/A2 should not merely cite DGS/Olver. They must map each KKT quantity to the theorem’s hypotheses and constants.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 20 task is to turn the Round 19 conditional Langer ideas into a precise regime-split theorem package with only measurable constants.

Objectives:

1. Write a lemma-bank-ready statement titled “Conditional KKT first-lobe theorem from weighted Airy variation.” It must use the endpoint-cap first-lobe reduction and state the exact remaining hypothesis as a weighted DGS/Olver inequality.

2. Retain the scalar Airy denominator lemma, but downgrade it correctly. State that

$$
|W(\zeta_1)|\le\frac{\|Z(\zeta_1)\|}{\pi D_1}
$$

is algebraically valid, but useful only if $\|Z(\zeta_1)\|$ is propagated in a norm respecting recessive forbidden-zone data.

3. Define a weighted sufficient condition of the form

$$
\zeta_\tau(\tau_1)^{-1/2}
\frac{
\mathfrak C_{A,*}(\rho)
(1+\varepsilon_{\mathrm{tail},*}(\rho))
\exp(\mathcal V_*(\rho,\zeta_1))
}{
\pi D_1
}
\le
T_{n,\alpha,\beta},
$$

where $\mathcal V_*$ uses the actual DGS/Olver weight functions rather than the crude $\Omega_A$.

4. State a proposed regime split. You may use provisional thresholds such as fixed $\alpha$, $\alpha=C\sqrt n$, $\alpha=cn$, or $\alpha\ge A_0n^\eta$, but label them as design hypotheses unless proved.

5. Cleanly separate:
   - certified algebraic lemmas;
   - conditional external-theorem dependencies;
   - constants that A4 must measure;
   - analytic inequalities still open.

6. Include a short literature section with exact DGS theorem hypotheses that need checking. Do not merely cite the paper; state what the theorem must provide for this ODE.

Exploratory allocation: spend about 20% evaluating whether the Riccati certificate can be used not only for low degrees but for a uniform small-$\alpha$ strip.

Required output: Stage A schema, with sections titled “Weighted Airy theorem statement,” “Regime split,” “Constants to measure,” and “What would falsify this route.”

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 20 task is to convert the $\theta=0$ Laguerre-face warning into either a rigorous weighted obstruction or a resolved weighted bound.

Objectives:

1. Work at the $\theta=0$ Laguerre face first. Derive the exact weighted variation integral required by the DGS/Olver theorem, not just the local value $\Psi(0)$.

2. Distinguish three quantities:
   - local removable residual $\Psi(0)$;
   - crude unweighted variation $\mathcal V_A$;
   - DGS/Olver weighted variation $\mathcal V_{DGS}$.

3. Prove or disprove the claim that the weighted variation remains bounded by an explicit constant compatible with the KKT margin for fixed $\alpha\ge1/2$ as $n\to\infty$.

4. If a single weighted theorem cannot work at fixed $\alpha$, propose a mathematically explicit small-$\alpha$ fallback based on Frobenius/Bessel/Volterra or Riccati variables.

5. Audit the heuristic thresholds:
   - $\alpha=O(1)$;
   - $\alpha=C\sqrt n$;
   - $\alpha=cn$;
   - any proposed $n^\eta$ threshold.
   
   For each regime, state whether the residual, normalization, and target margins are increasing, decreasing, or unresolved.

6. Do not claim “the slack absorbs the error” until all multiplicative constants are displayed in one inequality.

Exploratory allocation: test whether the semi-discrete restriction $\beta\in\mathbb N_0$ creates any additional sign or monotonicity in the weighted residual or Riccati flow.

Required output: Stage A schema, with sections titled “Laguerre-face weighted variation,” “Obstruction status,” “Regime thresholds,” and “What would falsify this route.”

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 20 task is to finalize the Round 19 algebra into lemma-bank text and remove all notation ambiguities.

Objectives:

1. Rewrite the endpoint ODE derivation cleanly. Use the correct chain-rule identity

$$
\frac{d}{dx}\left((1-x^2)g_x\right)=B(p_BH')'.
$$

2. Produce final lemma-bank statements and proofs for:
   - dynamic oscillator;
   - Prüfer equations;
   - Langer residual formula;
   - removable turning-point value;
   - $\tau$-derivative identities;
   - Liouville normal forms with $K_B+1/4$;
   - compactified hypergeometric coefficient;
   - degree-one critical quadratic;
   - degree-two critical cubic;
   - Riccati Taylor coefficients through $v_3$.

3. Run or describe a reproducible CAS Taylor-cancellation proof for $\Psi_B(0)$. The goal is to upgrade its status from “proposed/cross-checked” to “certified.”

4. Recheck the degree-two cubic against direct differentiation of the compactified polynomial, including $\theta=0$ and $\theta=1$ faces.

5. Finalize the gamma-ratio program:
   - derive the $\alpha=cn,\beta=0$ leading entropy carefully;
   - prove $f(c)<0$ on $0<c\le1$;
   - write a Binet/Robbins finite-$n$ upper envelope with explicit remainder signs;
   - separately treat $\alpha=C\sqrt n$ and fixed $\alpha$.

6. Standardize Riccati notation. If using coefficients $v_0,v_1,v_2,v_3$, explicitly state $v_{uu}(0)=2v_2$.

Exploratory allocation: check whether the Riccati equation has monotonicity or comparison structure strong enough to cover a uniform small-$\alpha$ strip without interval subdivision.

Required output: Stage A schema, with sections titled “Lemma-bank text,” “CAS verification,” “Gamma-ratio envelope,” and “Open analytic estimates.”

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 20 task is execution. The Round 19 response did not meet the execution standard because it supplied pseudo-code and heuristic tables rather than certified output. In Round 20, provide actual reproducible artifacts or clearly state that execution was unavailable.

Objectives:

1. Execute the $n=1$ interval certificate over

$$
\alpha\in[1/2,\alpha_E(1)],
\qquad
\theta\in[0,1].
$$

Your output must include:
   - exact code or notebook content;
   - library name and version;
   - precision;
   - interval subdivision policy;
   - root-isolation method;
   - accepted boxes;
   - unresolved boxes;
   - certified interval margins for $H_1^4-T^4$.

2. Execute or partially execute the $n=2$ interval prototype using A3’s rescaled cubic. If incomplete, provide the unresolved boxes and exact reason for failure.

3. Implement the Riccati IVP prototype for $n=1$:
   - initialize using $v_0,v_1,v_2,v_3$;
   - give the Taylor remainder bound at $u=\epsilon$;
   - integrate with outward rounding;
   - isolate the first zero of $v$;
   - compare with the quadratic critical root.

4. Compute weighted Langer diagnostics on a small hard grid:
   - $\theta=0,1$ and at least one interior $\theta$;
   - $\alpha=1/2,1,2,C\sqrt n,cn$ samples;
   - $n=10,50,100$ at minimum.
   
   Report crude $\mathcal V_A$, any implemented weighted $\mathcal V_{DGS}$, $D_1$, $\zeta_\tau(\tau_1)$, and final ratio intervals if possible. Mark all non-outward-rounded values as experimental only.

5. Implement a gamma-ratio interval scan for $\log M_{n,\alpha,B}$ using a certified log-gamma or Binet remainder enclosure. Provide maximum observed boxes and candidate constants.

6. Do not label a heuristic computation as certified. Use labels:
   - certified interval;
   - high-precision experiment;
   - pseudo-code only;
   - unresolved box.

Exploratory allocation: test the semi-discrete subset $\beta\in\{0,1,2,3,4,5,10\}$ and compare with continuous $\theta$ samples. Report whether integer $\beta$ appears easier, harder, or neutral.

Required output: Stage A schema, with sections titled “Executed interval certificate,” “Riccati IVP logs,” “Weighted Langer diagnostics,” “Gamma scan,” and “Failure boxes.”

Confidence:

Confidence in the endpoint-cap first-lobe reduction as the correct proof skeleton: **0.90**.

Confidence in A1’s scalar critical-point Airy denominator as an algebraic lemma: **0.86**.

Confidence that A1’s scalar denominator alone closes the amplitude theorem with the crude matrix norm: **0.25**.

Confidence in A2’s fixed-$\alpha$ Laguerre-face local residual scaling: **0.80**.

Confidence that A2’s local residual scaling is already a no-go theorem for the weighted Langer route: **0.25**.

Confidence in A3’s dynamic oscillator, Prüfer equations, Liouville sign, compactified hypergeometric coefficient, and low-degree critical equations: **0.92**.

Confidence in A3’s Langer residual and removable value after one more CAS check: **0.86**.

Confidence in the Riccati Taylor coefficients through $v_3$: **0.88**.

Confidence that A4’s degree-one boundary-face formulas are useful: **0.78**.

Confidence that A4 has executed a valid interval certificate: **0.10**.

Confidence that a weighted DGS/Olver theorem plus regime split can eventually close the large-$n$ residual theorem: **0.55**.

Confidence that Riccati/interval methods can close degree-one and degree-two cases: **0.75**.

Confidence that Round 19 proves the full real-parameter KKT conjecture: **0.08**.

Overall judge decision:

Record Round 19 as a productive constant-measurement and algebra-refinement round, not as a proof round. Add A1’s critical-point scalar Airy lemma, A3’s algebraic identities, the compactified low-degree critical equations, and the Riccati Taylor initialization to the lemma bank with the statuses above. Do not add any global weighted Langer theorem, gamma-ratio envelope, low-degree interval certificate, or full first-lobe amplitude theorem as proved.

Round 20 must be stricter. A1 and A2 should instantiate the weighted DGS/Olver theorem and decide the regime split. A3 should finalize the lemma-bank algebra and gamma envelope. A4 must execute actual interval and numerical artifacts rather than providing pseudo-code.


