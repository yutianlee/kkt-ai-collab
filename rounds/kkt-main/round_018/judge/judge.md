Summary:

Source packet acknowledged: Round 18 `judge_18.md`.

Round 18 is a productive measurement-and-certification round, not a closure round. The full real-parameter KKT conjecture is still unproved, and the finite-$B$ first-lobe amplitude theorem remains the live analytic gap. The main progress is that the previous “global Langer/Airy route” has been converted into a measurable finite-cutoff theorem with explicit named constants, exact Langer residual formulas, and concrete low-degree certification targets.

The selected route remains the endpoint-cap first-lobe strategy. The finite right endpoint cap, exact endpoint ODE, dynamic oscillator, Sonin ordering, and first-lobe reduction should be treated as certified or nearly certified state, conditional on the imported central-contour, energy, small-exponent, and symmetry modules. The Round 18 addition is sharper: the residual first-lobe estimate is now expressed through a finite-cutoff Airy/Langer certificate rather than an uncontrolled infinite-tail Volterra argument.

The most important mathematical object from Round 18 is A1’s finite-cutoff sufficient inequality. In the residual right endpoint problem, with first critical point $u_1$ and Langer coordinate $\zeta_1=\zeta(\tau_1)$, the KKT target would follow from a bound of the form

$$
\zeta_\tau(\tau_1)^{-1/2}
\left(
|\operatorname{Ai}(-\zeta_1)|+
|\operatorname{Bi}(-\zeta_1)|
\right)
\mathfrak C_A
(1+\varepsilon_{\mathrm{tail}})
\exp(\mathcal V_A)
\le
T_{n,\alpha,\beta}.
$$

This is not yet proved. Its value is that each factor has a defined mathematical role:

- $\mathfrak C_A$ is the Frobenius-to-Airy normalization;
- $\varepsilon_{\mathrm{tail}}$ measures finite-cutoff mismatch between the exact Frobenius solution and Airy Cauchy data;
- $\mathcal V_A$ is the finite Airy-kernel variation integral;
- the Airy factor controls the first-lobe value at the critical point.

A3 supplies the strongest algebra audit. The global Langer residual

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

is accepted with

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2},
$$

where $K(\tau)=K_B(u(\tau))$. The apparent singularity at the turning point is removable, with

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
\gamma=K_\tau(\tau_0)=p_B(u_0)K_B'(u_0).
$$

A3 also confirms the correct Liouville normal-form sign: with $Y_u=p_B^{1/2}H$,

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0,
$$

not a version with $K_B-1/4$. This distinction remains important because the Liouville-normal turning point $K_B=-1/4$ is not the original Sonin/Sturm turning point $K_B=0$.

A2’s most useful Round 18 contribution is obstruction analysis. A2 identifies the $\theta=0$ Laguerre face as a likely place where a monolithic global Langer variation bound may not decay. This is not yet a no-go theorem, but it is a serious warning. The synthesis should therefore not assume that one uniform Langer argument closes all parameter regimes. The route should split into a bulk Langer/Airy theorem, a small-$\alpha$ or near-Laguerre-face Frobenius/Bessel/Riccati certificate, and explicit low-degree interval certificates.

A4 provides useful symbolic and implementation scaffolding but no completed interval certificate. A4’s $n=1$ critical quadratic is valuable, and the Riccati IVP idea may become a practical low-degree certificate. However, the Arb sweeps, gamma-ratio scans, Riccati enclosures, and Langer variation tables remain unexecuted. They should be treated as implementation targets, not proof components.

Literature status:

The core KKT source remains Koornwinder--Kostenko--Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, Adv. Math. 333 (2018), 796--821; the arXiv record confirms the paper’s subject and its connection between Jacobi Bernstein-type inequalities and dispersive estimates for the generalized Laguerre operator.

Landau’s Bessel paper is still a valid external dependency for Bessel maximum monotonicity. Bibliographic records give L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI 10.1112/S0024610799008352. It should only be used where the proof genuinely reduces to a Bessel maximum; it is not a Jacobi first-lobe theorem.

Dunster--Gil--Segura are the relevant modern references for computable simple-turning-point Airy error bounds. Their 2020 “Sharp error bounds for turning point expansions” derives computable sharp error bounds for asymptotic expansions of linear differential equations with a simple turning point involving Airy functions and slowly varying coefficient functions. Their framework should be instantiated with the exact KKT residual $\Psi_B$, rather than cited generically.

Arb remains a suitable platform for interval certification. Johansson’s Arb paper describes a C library for arbitrary-precision interval arithmetic using midpoint-radius, or ball, arithmetic, supporting real/complex numbers, polynomials, power series, matrices, and many special functions. The Arb documentation cites the journal version: F. Johansson, “Arb: efficient arbitrary-precision midpoint-radius interval arithmetic,” IEEE Transactions on Computers 66(8), 1281--1292 (2017), DOI 10.1109/TC.2017.2690633. Arb validates the computational platform, not any unexecuted KKT certificate.

Selected main route:

The selected route for Round 19 is:

**Endpoint-cap first-lobe reduction with a split finite-cutoff Langer/Frobenius/Riccati certification program.**

The proof skeleton is now as follows.

First, import the established global modules:

1. central branch-safe contour clearance;
2. weighted-energy clearance;
3. small endpoint exponent theorem for $0\le\alpha\le1/2$ on the right endpoint;
4. left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
5. boundary-case separation for $n=0$, $\alpha=0$, $\alpha=1/2$, $\beta=0$, no turning point, and absent first critical point.

Second, in the residual right endpoint range

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),
\qquad
\beta\ge0,
$$

where

$$
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3},
$$

set

$$
B=n+\alpha+\beta+1,
\qquad
u=\frac{B(1-x)}2,
\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

The cap is

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

The endpoint ODE is

$$
(p_BH')'+q_BH=0,
\qquad
p_B(u)=u\left(1-\frac uB\right),
$$

with

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

The Sonin product is

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

The cap derivative lower bound is

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

Therefore $K_B'(u)>1/4$ throughout the residual cap when $\alpha>1/2$.

Third, forbidden-zone ascent and Sonin monotonicity reduce the endpoint cap to the first local extremum after the first turning point. If $u_0$ is the first zero of $K_B$ in the cap and $u_1$ is the first critical point of $H$ after $u_0$, the remaining theorem is

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

If $K_B$ has no zero in the cap, then since $K_B(0)<0$ for $\alpha>0$, one has $K_B<0$ throughout the cap, and forbidden-zone ascent plus central boundary clearance controls the cap. If $u_1$ is absent, the cap is likewise controlled by monotonicity and the central boundary estimate.

Fourth, use the exact dynamic variable

$$
\tau=\log\frac{u}{B-u},
\qquad
u(\tau)=\frac{Be^\tau}{1+e^\tau}.
$$

Then

$$
H_\tau=p_BH',
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Let $K(\tau)=K_B(u(\tau))$. Define the Langer coordinate by

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2,
\qquad
\zeta(\tau_0)=0,
$$

with $\zeta>0$ on the allowed side and $\zeta<0$ on the forbidden side. Equivalently,

$$
\frac23\zeta(\tau)^{3/2}
=
\int_{\tau_0}^{\tau}\sqrt{K(s)}\,ds
$$

on the allowed side, with the signed forbidden-side analogue.

With

$$
H(\tau)=\zeta_\tau(\tau)^{-1/2}W(\zeta),
$$

one obtains the exact Airy-perturbed equation

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W.
$$

Fifth, abandon a single monolithic Langer proof until the variation constants are measured. The evidence from A2 suggests that the route must split:

- **Bulk regime:** $\alpha$ at least mesoscopic, for example $\alpha\ge C\sqrt n$ after the threshold is measured. Use the finite-cutoff Langer/Airy theorem with Dunster--Gil--Segura or Olver-style weights.
- **Small-$\alpha$ or near-Laguerre-face regime:** $\alpha<C\sqrt n$ or any verified variation-barrier region. Use a separate Frobenius/Bessel or Riccati-based certificate.
- **Low degrees:** execute outward-rounded interval certificates for $n=1$ and $n=2$ using the exact critical equations and, if useful, the Riccati IVP.

Useful fragments by source:

### A1

A1’s principal contribution is the finite-cutoff Langer theorem. It converts the vague amplitude target into an explicit sufficient inequality involving $\mathfrak C_A$, $\varepsilon_{\mathrm{tail}}$, $\mathcal V_A$, and the Airy value at $\zeta_1$. This should become the main analytic target for the next round.

The useful definitions are:

1. Finite cutoff:

$$
0<u_{\mathrm{cut}}<u_0,
\qquad
\tau_{\mathrm{cut}}=\log\frac{u_{\mathrm{cut}}}{B-u_{\mathrm{cut}}},
\qquad
\zeta_{\mathrm{cut}}=\zeta(\tau_{\mathrm{cut}})<0.
$$

2. Frobenius endpoint form:

$$
H(u)=A_{n,\alpha,B}u^{\alpha/2}G_B(u),
\qquad
G_B(0)=1,
$$

where

$$
A_{n,\alpha,B}
=
B^{-\alpha/2}
\frac{\Gamma(n+\alpha+1)}
{\Gamma(\alpha+1)\Gamma(n+1)}
\sqrt{
\frac{\Gamma(n+1)\Gamma(B)}
{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}
}.
$$

3. Finite Airy data:

$$
W=\zeta_\tau^{1/2}H,
$$

and

$$
W_\zeta
=
\zeta_\tau^{-1/2}H_\tau
+
\frac12\zeta_{\tau\tau}\zeta_\tau^{-3/2}H.
$$

4. Airy coefficient evolution. If

$$
a(\zeta)=\operatorname{Ai}(-\zeta),
\qquad
b(\zeta)=\operatorname{Bi}(-\zeta),
$$

and

$$
\mathsf A(\zeta)
=
\begin{pmatrix}
a(\zeta)&b(\zeta)\\
a'(\zeta)&b'(\zeta)
\end{pmatrix},
$$

then the coefficient vector $Z=\mathsf A^{-1}(W,W_\zeta)^T$ satisfies a variation-of-constants bound controlled by

$$
\mathcal V_A=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\xi)|\Omega_A(\xi)\,d\xi,
$$

with

$$
\Omega_A(\zeta)
=
\left\|
\mathsf A(\zeta)^{-1}
\begin{pmatrix}
0&0\\
1&0
\end{pmatrix}
\mathsf A(\zeta)
\right\|_\infty.
$$

The caution is that this crude $\infty$-norm Airy matrix may be much too large on the forbidden side because of the $\operatorname{Bi}$ component. It is valid as a conditional theorem but likely not sharp enough for closure without Olver/Dunster--Gil--Segura weights or the critical-point sharpening.

A1’s best exploratory idea is the critical-point sharpening. At the actual first maximum,

$$
H_\tau(\tau_1)=0.
$$

In Airy variables this gives

$$
W_\zeta(\zeta_1)
=
\frac12
\frac{\zeta_{\tau\tau}(\tau_1)}
{\zeta_\tau(\tau_1)^2}
W(\zeta_1).
$$

This scalar relation should be used to reduce the crude $|\operatorname{Ai}|+|\operatorname{Bi}|$ bound. It may recover decisive slack.

### A2

A2’s most valuable contribution is the obstruction map for the Langer route. A2 argues that the residual variation behaves favorably in bulk scaling but may stagnate at $\mathcal O(1)$ on the $\theta=0$ Laguerre face. This is not yet a rigorous lower bound, but it is a serious diagnostic.

Adopt A2’s warnings as follows:

1. A global one-size-fits-all Langer theorem is probably false or at least too crude.
2. A delayed Prüfer handoff cannot occur arbitrarily close to the turning point. The denominator in the phase equation forces a buffer. A2’s scaling suggests a necessary geometric separation of order $n^{1/3}$ in difficult regimes.
3. The small-$\alpha$ boundary geometry may require a separate Frobenius/Bessel certificate rather than the same Airy variation theorem used for $\alpha=cn$.
4. The proposed semi-discrete contiguous relation is an exploratory route only. It may be useful for $\beta\in\mathbb N_0$, but it requires sign-regularity at shifted extrema. No contractivity theorem is proved.

A2 overlabels some scaling statements as “proved.” The synthesis records them as strong warnings or derived-under-assumptions, not as final theorems. In particular, the $\mathcal O(1)$ barrier at $\theta=0$ needs either a rigorous lower bound for the weighted variation integral or reproducible interval/numerical evidence showing the obstruction.

### A3

A3 is the most reliable Round 18 algebra source.

Accepted A3 contributions:

1. The exact global Langer transformation and residual:

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

2. The removable value:

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

3. The correct derivative chain:

$$
K_\tau=p_BK_B',
$$

$$
K_{\tau\tau}=p_Bp_B'K_B'+p_B^2K_B'',
$$

and

$$
K_{\tau\tau\tau}
=
p_B\left[
(p_B'^2+p_Bp_B'')K_B'
+
3p_Bp_B'K_B''
\right].
$$

For

$$
p_B(u)=u\left(1-\frac uB\right),
\qquad
K_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

this becomes

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
p_B
\left[
\left(
\left(1-\frac{2u}{B}\right)^2-\frac{2p_B}{B}
\right)K_B'
-
6\Delta_Bp_B
\left(1-\frac{2u}{B}\right)
\right].
$$

4. The correct Liouville normal forms:

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0,
\qquad
Y_u=p_B^{1/2}H,
$$

and

$$
Y_v''+\frac{K_B(u(v))+1/4}{v^2}Y_v=0,
\qquad
v=\frac{Bu}{B-u},
\qquad
Y_v=v^{1/2}H.
$$

5. The stable compactified hypergeometric representation. With

$$
\theta=\frac{n+\alpha+1}{B},
$$

one has

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right).
$$

6. The degree-one critical quadratic and degree-two critical cubic are accepted as algebraic inputs, with the caveat that the degree-two cubic must be rescaled near $\theta=0$ to avoid ill-conditioning.

7. A3 proves the leading entropy function

$$
f(c)=(1+c)\log(1+c)-c-\frac c2\log\left(1+c+\frac{c^2}{2}\right)
$$

is negative in the intended deep transition regime. This supports gamma normalization decay for $\alpha=cn$, but does not prove the finite-$n$ gamma envelope.

A3 also rejects two dangerous formulas: any $u$-form Langer residual giving a different removable value, and any Liouville normal form with $K_B-1/4$ under the convention $Y=p_B^{1/2}H$.

### A4

A4 contributes low-degree and interval-certificate scaffolding.

Useful fragments:

1. For $n=1$,

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u.
$$

The critical equation is

$$
\alpha(B-u)(\alpha+1-u)
-
\beta u(\alpha+1-u)
-
2u(B-u)
=0,
$$

or equivalently

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)
=0.
$$

2. For $n=1,\beta=0$, A4 gives a direct finite-face check. This is not the Laguerre face; it is the $\theta=1$ finite face because $\beta=0$ implies $B=n+\alpha+1$. The terminology must be corrected. The actual computation is still useful.

3. A4 gives an exact diagnostic sample for $n=10,\alpha=5,\beta=0$ with $u_0=16/27$ and $\gamma=4225/729$, after correcting an intermediate derivative slip. This is useful as a test case for $\Psi_B(0)$ and the Langer residual implementation, not as proof of a global theorem.

4. A4’s Riccati proposal is promising for low-degree certificates. If

$$
v(u)=p_B(u)\frac{H'(u)}{H(u)},
$$

then

$$
p_Bv_u+v^2+K_B=0.
$$

A3 gives the Frobenius initialization

$$
v(0)=\frac{\alpha}{2},
\qquad
v_u(0)=-\frac{\Lambda_B}{\alpha+1}.
$$

The next coefficient $v_{uu}(0)$ should be derived and used to initialize a validated interval ODE solver away from the singular endpoint.

A4’s pseudo-code and tables are not accepted as certificates. The synthesis requires exact source code, outward-rounded interval output, precision settings, subdivision logs, root-isolation certificates, boundary boxes, and archived failure boxes before any computational claim is promoted.

Rejected or risky ideas:

1. **Claiming Round 18 proves KKT.** Rejected. No first-lobe amplitude theorem is proved, no global Langer variation bound is certified, no gamma-ratio envelope is complete, and no interval certificate is executed.

2. **Using the crude Airy matrix norm as if it were sharp.** Risky. A1’s $\Omega_A$ bound is legitimate but may be far too large because $\operatorname{Bi}$ growth contaminates forbidden-side estimates. Replace it with Olver/Dunster--Gil--Segura weights or with critical-point sharpening.

3. **A monolithic global Langer theorem.** Risky. A2’s $\theta=0$ obstruction suggests that the same variation estimate may not close the small-$\alpha$ or Laguerre-face regime. Treat global Langer as the bulk route, not the universal route.

4. **Piecewise Airy-to-Prüfer handoff without a buffer.** Rejected as a primary route. The Prüfer equations are exact, but the handoff near $K_B=0$ is singular. A2’s buffer estimate and earlier $a^{-3/2}$ boundary term warning make an unbuffered handoff invalid.

5. **Semi-discrete induction in $\beta$ from a contiguous relation.** Risky. The contiguous relation is algebraically real, but it has sign and moving-extremum hazards. It is an exploratory route only until sign-regularity or contractivity is proved.

6. **Calling $\beta=0$ the Laguerre face.** Rejected. With $\theta=(n+\alpha+1)/B$, the Laguerre face is $\theta=0$, corresponding to $B\to\infty$ and usually $\beta\to\infty$. The finite face $\beta=0$ is $\theta=1$.

7. **Assuming $M_{n,\alpha,B}\le1$.** Rejected. A3 gives a counterexample around $n=1,\alpha=0.6,\beta=0$ with $M>1$. The gamma normalization needs a one-sided envelope, probably regime-split.

8. **Treating leading entropy negativity as a finite theorem.** Risky. $f(c)<0$ is useful asymptotic evidence for $\alpha=cn$, but finite-$n$ control requires Binet/Robbins/Kershaw-style remainders and transition-regime splitting.

9. **Unexecuted Arb certificates.** Rejected as proof. Arb is an appropriate tool, but no certificate exists until the output is reproducible and outward-rounded.

10. **Using an unaudited $u$-form Langer residual.** Rejected. A3 reports numerical discrepancy for a candidate $u$-form formula. The $\tau$-derivative formula is the accepted reference.

Known gaps:

### G18.1: Finite-$B$ first-lobe amplitude theorem

The central theorem remains:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point of $H$ after the first zero $u_0$ of $K_B$ in the cap. Prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Round 18 expresses this through finite-cutoff constants but does not prove the inequality.

### G18.2: Finite-cutoff Frobenius-to-Airy mismatch

A1 defines $\varepsilon_{\mathrm{tail}}$, but no one computes a rigorous bound. The cutoff must balance two competing effects: small $u_{\mathrm{cut}}$ gives better Frobenius control but worsens Airy matrix conditioning; larger $u_{\mathrm{cut}}$ improves Airy conditioning but worsens endpoint Taylor/Frobenius enclosure.

### G18.3: Airy-kernel variation bound

The variation

$$
\mathcal V_A=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\xi)|\Omega_A(\xi)\,d\xi
$$

must be bounded with explicit constants. The crude $\Omega_A$ may fail; proper Olver or Dunster--Gil--Segura modulus/weight functions should be tested.

### G18.4: $\theta=0$ variation barrier

A2’s warning that the Langer variation stagnates at $\mathcal O(1)$ on the Laguerre face must be confirmed or refuted. This is a decisive diagnostic: if true, the proof must split small-$\alpha$ and bulk regimes.

### G18.5: Gamma-ratio/Frobenius normalization envelope

The normalization factors in $\mathfrak C_A$ and related Bessel/Langer constants require a rigorous upper envelope. The leading entropy function is helpful, but finite-$n$ estimates remain open. The proof likely needs a regime split:

- $\alpha=O(1)$;
- $\alpha=O(\sqrt n)$;
- $\alpha=cn$;
- $\theta=0$ versus $\theta=1$;
- semi-discrete $\beta\in\mathbb N_0$ if treated separately.

### G18.6: Critical-point Airy sharpening

The crude Airy envelope may be too weak. The first critical condition

$$
H_\tau(\tau_1)=0
$$

must be exploited to reduce the $\operatorname{Bi}$ contamination. The scalar relation for $W_\zeta(\zeta_1)$ should be converted into a sharper peak bound.

### G18.7: Low-degree interval certificates

No degree-one or degree-two interval certificate has been executed. Exact algebra is available; proof requires outward-rounded evaluation, root isolation, boundary boxes, and failure logs.

### G18.8: Riccati IVP certificate

The Riccati method is promising, but it needs complete Frobenius Taylor initialization, including $v_{uu}(0)$ and an interval enclosure proving $H>0$ up to the first zero of $v$ or to the turning point. The singular endpoint cannot be handled by a naive IVP step.

### G18.9: Semi-discrete route

The semi-discrete target $\beta\in\mathbb N_0$ remains strategically important, but no monotonicity or induction in $\beta$ has been proved. The contiguous relation must be tested for sign and extremum-shift hazards.

### G18.10: Imported global modules

Round 18 does not re-audit the central contour, weighted-energy, small-exponent, and symmetry modules. They remain imported assumptions in any conditional theorem.

New lemmas to add:

### Lemma L18.1: Exact Langer coordinate and residual

Let $K(\tau)=K_B(u(\tau))$ and define $\zeta$ by

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2.
$$

With

$$
H(\tau)=\zeta_\tau(\tau)^{-1/2}W(\zeta),
$$

the exact dynamic oscillator

$$
H_{\tau\tau}+K(\tau)H=0
$$

becomes

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

Status: certified algebraically by A3.

### Lemma L18.2: Removable turning-point value

If $u_0$ is a simple zero of $K_B$ in the cap, $\tau_0=\tau(u_0)$, and

$$
\gamma=K_\tau(\tau_0)=p_B(u_0)K_B'(u_0)>0,
$$

then the Langer residual has removable value

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

Status: certified algebraically, with final numerical spot checks still recommended.

### Lemma L18.3: $\tau$-derivative identities

For

$$
p_B(u)=u\left(1-\frac uB\right)
$$

and

$$
K_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

one has

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
p_B
\left[
\left(
\left(1-\frac{2u}{B}\right)^2-\frac{2p_B}{B}
\right)K_B'
-
6\Delta_Bp_B
\left(1-\frac{2u}{B}\right)
\right].
$$

Status: certified algebraically.

### Lemma L18.4: Finite-cutoff Airy coefficient bound

Let $W$ satisfy

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W
$$

on $[\zeta_{\mathrm{cut}},\zeta_1]$. With

$$
\mathsf A(\zeta)
=
\begin{pmatrix}
\operatorname{Ai}(-\zeta)&\operatorname{Bi}(-\zeta)\\
\operatorname{Ai}'(-\zeta)&\operatorname{Bi}'(-\zeta)
\end{pmatrix},
$$

define $Z=\mathsf A^{-1}(W,W_\zeta)^T$ and

$$
\Omega_A(\zeta)
=
\left\|
\mathsf A(\zeta)^{-1}
\begin{pmatrix}
0&0\\
1&0
\end{pmatrix}
\mathsf A(\zeta)
\right\|_\infty.
$$

Then

$$
\|Z(\zeta_1)\|_\infty
\le
\exp\left(
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\xi)|\Omega_A(\xi)\,d\xi
\right)
\|Z(\zeta_{\mathrm{cut}})\|_\infty.
$$

Status: valid conditional theorem by variation of constants and Gronwall; sharpness open.

### Lemma L18.5: Finite-cutoff first-lobe sufficient condition

If all constants are rigorously enclosed and

$$
\zeta_\tau(\tau_1)^{-1/2}
\left(
|\operatorname{Ai}(-\zeta_1)|+
|\operatorname{Bi}(-\zeta_1)|
\right)
\mathfrak C_A
(1+\varepsilon_{\mathrm{tail}})
e^{\mathcal V_A}
\le
T_{n,\alpha,\beta},
$$

then

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

Status: accepted as a conditional sufficient condition; not yet numerically or analytically verified.

### Lemma L18.6: Frobenius-to-Airy normalization candidate

Define

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

Then the recessive Airy normalization should be

$$
\mathfrak C_A
=
\sqrt{2\pi\alpha}\,
A_{n,\alpha,B}\,
e^{\mathcal C_B}.
$$

Status: derived but requires final audit of constants and branch conventions before being promoted.

### Lemma L18.7: Correct Liouville normal-form sign

With $Y_u=p_B^{1/2}H$,

$$
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

With $v=Bu/(B-u)$ and $Y_v=v^{1/2}H$,

$$
Y_v''+\frac{K_B(u(v))+1/4}{v^2}Y_v=0.
$$

Status: certified; versions with $K_B-1/4$ are rejected.

### Lemma L18.8: Compactified hypergeometric coefficient

For

$$
\theta=\frac{n+\alpha+1}{B},
$$

the endpoint polynomial can be evaluated using

$$
\frac{(B)_k}{B^k}
=
\prod_{j=0}^{k-1}
\left(
1+\frac{j\theta}{n+\alpha+1}
\right).
$$

Status: certified and recommended for interval arithmetic.

### Lemma L18.9: Degree-one critical quadratic

For $n=1$,

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u,
$$

and the critical points satisfy

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)=0.
$$

Status: certified algebraically.

### Lemma L18.10: Riccati low-degree certificate equation

Let

$$
v(u)=p_B(u)\frac{H'(u)}{H(u)}
$$

on a positivity interval. Then

$$
p_Bv_u+v^2+K_B=0.
$$

The Frobenius initialization begins with

$$
v(0)=\frac{\alpha}{2},
\qquad
v_u(0)=-\frac{\Lambda_B}{\alpha+1}.
$$

Status: promising; requires $v_{uu}(0)$ and validated integration before certification.

### Lemma L18.11: Gamma entropy negativity

For

$$
f(c)=(1+c)\log(1+c)-c-\frac c2\log\left(1+c+\frac{c^2}{2}\right),
$$

A3’s proof that $f(c)<0$ in the intended range supports exponential decay of the leading gamma normalization for $\alpha=cn$.

Status: accepted as leading asymptotic information; not a finite-$n$ gamma theorem.

Counterexample checks to run:

1. **Confirm the $\theta=0$ Langer variation barrier.** For $\theta=0$, compute the weighted variation using both the crude $\Omega_A$ and Dunster--Gil--Segura/Olver weights. Decide whether it remains $\mathcal O(1)$ or decays after correct weighting.

2. **Bulk scaling map.** For $\alpha=cn$, $\beta=0$, and representative $c\in(0,1]$, compute $\mathcal V_A$, $n\mathcal V_A$, and $n^{4/3}\mathcal V_A$.

3. **Mesoscopic scaling map.** For $\alpha=C\sqrt n$, compute the same quantities and locate the transition between Langer-feasible and small-$\alpha$ regimes.

4. **Cutoff optimization.** Test

$$
u_{\mathrm{cut}}=\rho u_0,
\qquad
\rho\in\left\{\frac12,\frac14,\frac18,\frac1{16}\right\},
$$

and record

$$
\varepsilon_{\mathrm{tail}},
\qquad
\mathcal V_A,
\qquad
(1+\varepsilon_{\mathrm{tail}})e^{\mathcal V_A}.
$$

5. **Critical-point Airy sharpening.** Replace the crude coefficient envelope by the critical-point relation and measure whether the $\operatorname{Bi}$ contamination collapses enough to fit the KKT margin.

6. **Gamma envelope scan.** Compute rigorous or high-precision interval values of $\mathfrak C_A/T$ and $M_{n,\alpha,B}$ over the standard hard grid. Record all cases with $M>1$ and test candidate bounds.

7. **Binet-remainder certification.** Build a real-gamma Binet bound for

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B).
$$

8. **Degree-one interval certificate.** Execute outward-rounded interval verification for $n=1$ over $\alpha\in[1/2,\alpha_E(1)]$ and $\theta\in[0,1]$. Include boundary faces $\theta=0$ and $\theta=1$ separately.

9. **Degree-two interval certificate.** Use the rescaled cubic in $w=u/B$ near $\theta=0$. Isolate roots with interval Newton or Krawczyk, evaluate the margin, and log all unresolved boxes.

10. **Riccati IVP prototype.** Derive $v_{uu}(0)$, initialize at a small interval $u=\epsilon$ using a Frobenius Taylor model, integrate with outward-rounded intervals, and compare the first zero of $v$ with the polynomial critical roots for $n=1,2$.

11. **Semi-discrete contiguous relation test.** For $\beta\in\mathbb N_0$, test whether the contiguous relation produces sign-regular or contractive behavior at the first endpoint maximum. If sign changes occur, abandon the induction route.

12. **A4 diagnostic sample.** Recompute $\Psi_B(0)$ for $n=10,\alpha=5,\beta=0$, $u_0=16/27$, $\gamma=4225/729$, using exact rational arithmetic to validate the Langer implementation.

Research strategy adjustment:

Round 19 should be an execution round, not another architecture round. The project now has enough formal structure. The next round should measure constants, execute low-degree certificates, and decide whether the Langer route needs a strict regime split.

The strategy should be:

1. **Keep endpoint-cap first-lobe reduction as the proof skeleton.** Do not revisit global Laguerre, static Bessel, or product-formula speculation unless it produces a concrete inequality relevant to the first-lobe theorem.

2. **Adopt A1’s finite-cutoff Langer theorem as the main analytic target.** The theorem should be refined using proper Airy error weights and the critical-point condition. The crude matrix norm is only a baseline.

3. **Use A2’s $\theta=0$ warning to force a regime split.** Until proved otherwise, assume the global Langer theorem may only work for bulk or mesoscopic $\alpha$. Allocate a separate small-$\alpha$ certificate path.

4. **Treat A3 as lemma-bank authority for Round 18 algebra.** Add the exact Langer residual, removable value, derivative chain, Liouville sign, compactified polynomial, and low-degree critical equations to the lemma bank.

5. **Force A4 to execute, not plan.** The next A4 deliverable must include actual interval artifacts or explicit failure boxes. Pseudo-code is no longer sufficient.

6. **Elevate the Riccati route for low degrees.** The Riccati IVP may bypass global Langer difficulties for $n=1,2$ and possibly finite $n<N_0$. It should be tested as a serious certificate path.

7. **Do not use the semi-discrete contiguous relation as proof.** It is exploratory until sign-regularity and extremum-shift stability are established.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 19 task is to refine the finite-cutoff Langer theorem into a sharper, measurable first-lobe certificate.

Objectives:

1. Restate the finite-cutoff Langer theorem with exact hypotheses:
   - imported central, energy, small-exponent, symmetry modules;
   - residual strip $n\ge1$, $1/2<\alpha<\alpha_E(n)$, $\beta\ge0$;
   - cap $0\le u\le u_\sigma$;
   - first turning point $u_0$;
   - first critical point $u_1$;
   - finite cutoff $u_{\mathrm{cut}}=\rho u_0$.

2. Replace the crude Airy coefficient bound where possible. Use the critical-point condition

$$
H_\tau(\tau_1)=0
$$

to derive a sharper scalar Airy envelope at $\zeta_1$. Give the exact denominator that could become small, and state what parameter test would falsify the sharpening.

3. State the theorem using both:
   - the crude matrix norm $\Omega_A$;
   - a sharper Olver/Dunster--Gil--Segura weight version.

4. Define $\mathfrak C_A$, $\varepsilon_{\mathrm{tail}}$, and $\mathcal V_A$ in fully checkable form. If $\mathfrak C_A$ still depends on an unevaluated integral $\mathcal C_B$, state that integral exactly.

5. Determine which constants must be measured by A4 and which can be bounded analytically.

6. Give an explicit proposed regime split, even if provisional:
   - bulk $\alpha\ge C\sqrt n$;
   - small $\alpha<C\sqrt n$;
   - low degrees $n\le N_0$.

7. Include a “failure modes” section: crude Airy matrix too large, $\theta=0$ barrier, gamma normalization too large, critical-point denominator small, finite cutoff mismatch too large.

Required output: Stage A schema. Do not claim closure. Produce theorem statements ready for lemma-bank inclusion.

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 19 task is to decide whether the $\theta=0$ Langer variation barrier is real.

Objectives:

1. Work with the exact residual

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

2. Analyze the Laguerre face $\theta=0$ carefully. Use the correct meaning of $\theta=0$ as $B\to\infty$, not $\beta=0$.

3. Provide either:
   - a rigorous lower-bound argument showing that the weighted Langer variation has an $\mathcal O(1)$ obstruction in some small-$\alpha$ scaling; or
   - a correction showing that proper Airy weights remove the apparent obstruction.

4. Quantify the transition threshold. Estimate or prove a function $\alpha_{\mathrm{thresh}}(n)$ separating the feasible Langer bulk from the boundary regime.

5. Revisit the Prüfer buffer. Derive the exact condition under which

$$
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi
$$

has a stable positive lower bound. Translate it into $u$-distance from $u_0$.

6. Evaluate the semi-discrete contiguous route only as an exploratory task. State whether the relation has any sign-regularity at first endpoint extrema. If not, recommend dropping it.

Required output: Stage A schema with sections “proved obstruction,” “heuristic obstruction,” “corrected estimates,” and “what would falsify this warning.”

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 19 task is to finalize the lemma-bank algebra and push the gamma/Riccati calculations forward.

Objectives:

1. Produce final lemma-bank text for:
   - Langer residual formula;
   - removable turning-point value;
   - $\tau$-derivative identities;
   - Liouville normal-form sign;
   - compactified hypergeometric coefficient;
   - $n=1$ critical quadratic;
   - $n=2$ critical cubic.

2. Derive the stable rescaled $n=2$ cubic using $u=Bw$ and $\theta=(n+\alpha+1)/B$. Ensure coefficients remain bounded at $\theta=0$.

3. Derive $v_{uu}(0)$ for the Riccati variable

$$
v=p_B\frac{H'}{H}.
$$

The known initial terms are

$$
v(0)=\frac{\alpha}{2},
\qquad
v_u(0)=-\frac{\Lambda_B}{\alpha+1}.
$$

Compute the next coefficient with exact dependence on $\alpha,\beta,n,B$.

4. Build a rigorous Binet/Robbins gamma theorem attempt for $\log M_{n,\alpha,B}$. Split regimes:
   - fixed $\alpha$;
   - $\alpha\le C\sqrt n$;
   - $\alpha=cn$;
   - $\theta=0$ and $\theta=1$ faces.

5. Convert entropy negativity $f(c)<0$ into an explicit finite-$n$ inequality in at least one subregime. State the remaining finite threshold if one appears.

6. Audit A4’s $n=10,\alpha=5,\beta=0$ rational sample and compute $\Psi_B(0)$ exactly or with certified rational interval arithmetic.

Required output: Stage A schema with “Certified identities,” “Rejected identities,” “Gamma-ratio theorem attempt,” “Riccati Taylor data,” and “Interval-ready formulas.”

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 19 task is execution. Do not provide pseudo-code alone.

Objectives:

1. Execute a reproducible interval certificate prototype for $n=1$:
   - variables $\alpha\in[1/2,\alpha_E(1)]$ and $\theta\in[0,1]$;
   - correct interpretation of $\theta=0$ and $\theta=1$;
   - exact critical quadratic;
   - boundary face checks;
   - outward-rounded evaluation of $H_1^4-T^4$;
   - list all resolved boxes and unresolved boxes.

2. Execute the $n=2$ critical-root prototype using the rescaled cubic supplied by A3. If not all boxes resolve, provide the failure boxes and explain which dependency causes failure.

3. Compute high-precision and, where possible, interval values of:
   - $\mathcal V_A$;
   - $\varepsilon_{\mathrm{tail}}$;
   - $\mathfrak C_A/T$;
   - the critical-point sharpened Airy envelope;
   on the standard grids $\alpha=cn$, $\alpha=C\sqrt n$, $\theta=0$, $\theta=1$.

4. Use Arb or another outward-rounded interval platform. Report:
   - exact code version;
   - library version;
   - precision;
   - subdivision policy;
   - root-isolation method;
   - accepted boxes;
   - unresolved boxes;
   - raw interval margins.

5. Execute the Riccati IVP for $n=1$ after A3 supplies $v_{uu}(0)$. Compare its first-zero prediction with the quadratic critical root.

6. Correct terminology. Do not call $\beta=0$ the Laguerre face; call it the $\theta=1$ finite face. Call $\theta=0$ the Laguerre face.

Required output: Stage A schema with “Executed interval output,” “Failure boxes,” “Numerical cartography,” “Reproducibility details,” and “Certified versus experimental claims.”

Confidence:

Confidence in the endpoint-cap ODE, cap length, Sonin product, forbidden-zone ascent, and first-lobe reduction architecture: **0.90**.

Confidence in A3’s Round 18 algebraic Langer residual formula and removable value: **0.86**.

Confidence in the correct Liouville normal-form sign $K_B+1/4$: **0.92**.

Confidence that A1’s finite-cutoff Langer theorem is valid as a conditional theorem: **0.82**.

Confidence that the crude Airy matrix norm is sharp enough to close KKT: **0.30**.

Confidence that a sharper Olver/Dunster--Gil--Segura weighted error theorem can close a bulk large-$n$ theorem: **0.55**.

Confidence that A2’s $\theta=0$ obstruction is a serious warning: **0.72**.

Confidence that A2 has proved a no-go theorem for all global Langer approaches: **0.25**.

Confidence that A3’s entropy negativity result is correct as leading asymptotic information: **0.88**.

Confidence that the full gamma-ratio envelope is proved: **0.15**.

Confidence that A4’s interval and Riccati scaffolding will become useful after actual execution: **0.72**.

Confidence that A4’s current interval work is already a certificate: **0.10**.

Confidence that Round 18 proves the full real-parameter KKT conjecture: **0.08**.

Overall judge decision:

Record Round 18 as a successful finite-cutoff formulation and algebra-audit round. Add the Langer residual formula, removable turning-point value, derivative identities, Liouville sign correction, compactified coefficient, low-degree critical equations, and finite-cutoff sufficient theorem to the lemma bank with the statuses above. Do not add any global Langer variation bound, gamma-ratio envelope, low-degree interval certificate, or first-lobe amplitude theorem as proved.

Round 19 should be an execution-and-measurement round. No new proof architecture is needed unless it directly measures or replaces one of the constants in the finite-cutoff Langer theorem.
