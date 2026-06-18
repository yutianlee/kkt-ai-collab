Summary:

Source packet for this synthesis: Round 21 uploaded judge packet and agent/cross-review bundle, including the Round 21 Stage A outputs from A1, A2, A3, A4 and Stage B cross-reviews.

Round 21 is a productive execution-and-audit round, but it is still not a proof of the real-parameter KKT conjecture. It also does not prove the finite-$B$ first-lobe amplitude theorem. The conjecture remains open in this workflow.

The main reliable progress is threefold.

First, A1 replaced the previous schematic weighted-Langer placeholder by an explicit allowed-side Airy-envelope propagation theorem. For the Langer-transformed equation

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W,
$$

on an allowed interval $[\zeta_c,\zeta_1]\subset(0,\infty)$, A1 gave the concrete bound

$$
|W(\zeta_1)|
\le
\mathfrak m(\zeta_1)\mathfrak C_c
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}
\mathfrak m(\xi)^2|\Psi_B(\xi)|\,d\xi
\right),
$$

where

$$
\mathfrak m(\zeta)^2=\operatorname{Ai}(-\zeta)^2+\operatorname{Bi}(-\zeta)^2.
$$

This is a real theorem-level allowed-side propagation estimate. It is not a first-lobe theorem, because the cut coefficient $\mathfrak C_c$ remains unbounded from the endpoint/Frobenius data.

Second, A2 and A3 clarified the rational-coordinate Bessel track. With

$$
z=\frac{Bu}{B-u},
\qquad
Y(z)=z^{1/2}H(u(z)),
$$

the normal form is

$$
Y''+\frac{K_B(u(z))+1/4}{z^2}Y=0.
$$

Separating the Bessel core

$$
\frac{\Lambda_B}{z}+\frac{1-\alpha^2}{4z^2}
$$

gives the exact residual

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

This is a useful certified algebraic object: it is nonsingular at the origin and should be retained as the basis for the small-$\alpha$ Bessel/Riccati track. The claimed variation scaling $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ is only derived under extra Bessel-kernel assumptions and is not yet proof-level.

Third, A3’s algebra audit is now the best lemma-bank source. A3 certifies the endpoint ODE, quadratic Sonin product, cap length, cap monotonicity, Frobenius coefficient, Bessel normalization, compactified hypergeometric representation, dynamic oscillator, Prüfer equations, Riccati coefficients, and corrected $n=2$ critical cubic. A3’s correction of the $n=2$ coefficient is important: for

$$
P_2(u)=A-b_1u+c_1u^2,
\qquad
A=\frac{(\alpha+1)(\alpha+2)}2,
\qquad
b_1=\alpha+2,
$$

the correct coefficient is

$$
c_1=\frac{B+1}{2B},
$$

not $\frac{B+1}{4B}$. Hence the cubic leading coefficient is

$$
a_3=-c_1(\alpha+\beta+4)=-\frac{(B+1)^2}{2B}
$$

for $n=2$, since then $\alpha+\beta+4=B+1$.

A4 did not produce an actual outward-rounded interval certificate. That failure should be recorded plainly. However, A4 made a useful pivot: instead of simulating Arb logs, A4 proposed an analytic $n=1$ certificate candidate. The candidate is promising, but it still needs two formal checks: a correct gamma-ratio inequality over $1/2\le\alpha\le6/5$, and a certified scalar bound for the one-variable envelope. The $n=1$ case is now a near-term target, not yet a certified lemma.

Selected main route:

The selected main route remains the endpoint-cap first-lobe route, now split into three disciplined tracks:

1. **Bulk Langer/Airy track.** Use the exact dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u},
$$

and the Langer map

$$
K(\tau)=K_B(u(\tau)),
\qquad
K=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

which gives

$$
W_{\zeta\zeta}+\zeta W=\Psi_BW.
$$

Round 21 now has an explicit allowed-side Airy-envelope propagation bound. The missing part is the Frobenius-to-Airy connection coefficient $\mathfrak C_c$ at the cut.

2. **Small-$\alpha$ rational-Bessel/Riccati track.** Use the rational coordinate $z=Bu/(B-u)$ and the nonsingular residual

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}
$$

to build a Bessel Volterra theorem for $\alpha\le C\sqrt n$, or alternatively use the Riccati equation

$$
p_BR_u+R^2+K_B=0,
\qquad
R=p_B\frac{H'}{H},
$$

with regular endpoint Taylor data. This track is necessary because the unweighted Langer residual appears structurally weak near the Laguerre face for fixed or small $\alpha$.

3. **Low-degree analytic/interval track.** Convert the $n=1$ analytic certificate candidate into a complete proof, then attack $n=2$ using A3’s corrected cubic. This should replace requests for simulated interval logs. If actual interval computation is available, use it; otherwise produce rigorous scalar envelopes and derivative/monotonicity proofs.

The central active theorem remains unchanged:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0,
$$

let $u_1$ be the first critical point after the first zero $u_0$ of $K_B$ in the endpoint cap, if such a point exists. Prove

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Nothing in Round 21 proves this theorem.

Literature status:

The core KKT source remains Koornwinder--Kostenko--Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`. The article is also available as arXiv `1602.08626`, and the source establishes the integer-parameter result and states the real-parameter conjectural extension.

Landau’s Bessel dependency is legitimate but must be used precisely. The relevant paper is L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215, 2000, DOI `10.1112/S0024610799008352`. Bibliographic records confirm the title, journal, pages, and DOI. The usable statement for this project is that the order-dependent Bessel supremum is monotone in the required direction; when combined with the half-order maximum near $0.6791921047$, it supports

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
$$

This remains a dependency only; it does not by itself imply the Jacobi first-lobe amplitude theorem.

Dunster--Gil--Segura are relevant for explicit-error simple-turning-point Airy expansions. The 2019 arXiv preprint “Simplified error bounds for turning point expansions” states that it provides explicit error bounds for Airy-type simple-turning-point expansions; the published version is *Analysis and Applications* 19(4), 647--678, 2021, DOI `10.1142/S0219530520500104`. Their “Sharp error bounds for turning point expansions” appears in *Journal of Classical Analysis* 18(1), 49--81, 2021, DOI `10.7153/jca-2021-18-05`. These references justify the search direction, but no Round 21 agent has yet instantiated a DGS theorem with all KKT hypotheses, weight functions, domains, and constants.

DLMF §2.8 is an appropriate reference for parameter-dependent differential equations and turning points; it explicitly identifies zeros of the coefficient function as turning points and points to Airy-type expansions in simple-turning-point settings. DLMF §5.6 is relevant for gamma-ratio inequalities and references Gautschi/Kershaw-type inequalities. These references support the theorem-search tasks for A1/A3, but they do not replace the missing gamma-ratio envelope.

Arb remains an appropriate platform for certified computation. Johansson’s Arb paper is “Arb: Efficient Arbitrary-Precision Midpoint-Radius Interval Arithmetic,” *IEEE Transactions on Computers* 66(8), 1281--1292, 2017, DOI `10.1109/TC.2017.2690633`; Arb documentation states this citation and describes Arb as arbitrary-precision midpoint-radius, or ball, interval arithmetic. This validates the tool class, not any unexecuted certificate.

Haagerup--Schlichtkrull remains nearby context for uniform Jacobi polynomial estimates, but the available uniform Bernstein estimates are not the sharp KKT constant and should not be cited as closing the conjecture. The Round 21 proof route should not pivot back to this general estimate.

Useful fragments by source:

### A1

A1’s best contribution is the allowed-side Airy-envelope theorem. It is a genuine mathematical artifact.

Let

$$
A(\zeta)=\operatorname{Ai}(-\zeta),
\qquad
B_A(\zeta)=\operatorname{Bi}(-\zeta),
$$

and

$$
\mathfrak m(\zeta)^2=A(\zeta)^2+B_A(\zeta)^2.
$$

For a solution of

$$
W''+\zeta W=\Psi(\zeta)W
$$

on $[\zeta_c,\zeta_1]\subset(0,\infty)$, define Airy coefficients $a_c,b_c$ at $\zeta_c$ by

$$
W(\zeta_c)=a_cA(\zeta_c)+b_cB_A(\zeta_c),
$$

$$
W'(\zeta_c)=a_c\dot A(\zeta_c)+b_c\dot B_A(\zeta_c),
$$

where

$$
\dot A(\zeta)=-\operatorname{Ai}'(-\zeta),
\qquad
\dot B_A(\zeta)=-\operatorname{Bi}'(-\zeta).
$$

Then

$$
\mathfrak C_c=(a_c^2+b_c^2)^{1/2}
$$

and the Volterra/Gronwall argument gives

$$
|W(\zeta_1)|
\le
\mathfrak m(\zeta_1)\mathfrak C_c
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}
\mathfrak m(\xi)^2|\Psi(\xi)|\,d\xi
\right).
$$

This is accepted as a proved allowed-side lemma. The Wronskian sign convention should still be checked in the permanent lemma-bank version, but the structure is correct.

A1 also states the conditional Langer first-lobe ratio

$$
\mathcal R_{\mathrm{Lang}}
=
\frac{
\zeta_\tau(\tau_1)^{-1/2}
\mathfrak m(\zeta_1)
\mathfrak C_c
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}
\mathfrak m(\xi)^2|\Psi_B(\xi)|\,d\xi
\right)
}{
T_{n,\alpha,\beta}
}.
$$

If

$$
\mathcal R_{\mathrm{Lang}}\le1,
$$

then the KKT first-lobe estimate follows.

This implication is correct. The inequality itself is open.

A1’s limitation is decisive: $\mathfrak C_c$ is exact but unbounded. The cut $[\zeta_c,\zeta_1]$ avoids the turning-point singularity but transfers the hard problem into the Frobenius-to-Airy initialization. Future work must not merely restate this allowed-side theorem; it must bound $\mathfrak C_c$ or replace the cut theorem by a full DGS/Olver theorem through the turning point.

A1’s proposed test box

$$
n=100,\qquad 45\le\alpha\le50,\qquad 0.05\le\theta\le0.10,\qquad \zeta_c=1
$$

is useful as a diagnostic, but it must first verify that $\zeta_1>\zeta_c$ throughout the box. If $\zeta_1\le1$ anywhere, that test setup is invalid or must use a smaller cut.

### A2

A2’s best contribution is the rational-Bessel derivation. It is the clearest small-$\alpha$ analytic track produced so far.

With

$$
z=\frac{Bu}{B-u},
\qquad
u=\frac{Bz}{B+z},
$$

one has

$$
p_B(u(z))=\frac{B^2z}{(B+z)^2},
$$

and the endpoint equation becomes

$$
(zH_z')'+\widehat q_B(z)H=0.
$$

After setting

$$
Y(z)=z^{1/2}H(z),
$$

the normal form is

$$
Y''+
\left(
\frac{K_B(u(z))+1/4}{z^2}
\right)Y=0.
$$

Using

$$
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

one obtains

$$
Q_z(z)=
\frac{1-\alpha^2}{4z^2}
+
\frac{\Lambda_B}{z}
-
\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

Thus the residual relative to the reference Bessel equation

$$
Y''+\left(\frac{\Lambda_B}{z}+\frac{1-\alpha^2}{4z^2}\right)Y=0
$$

is

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

This is accepted as a lemma-bank algebraic identity after one final A3 transcription check.

A2’s Wronskian calculation is also accepted:

$$
W\left(
\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
\sqrt z\,Y_\alpha(2\sqrt{\Lambda_Bz})
\right)=\frac1\pi.
$$

The rational-Bessel Volterra kernel should therefore be based on the product $J_\alpha Y_\alpha$, not on a generic loose modulus.

A2’s claimed scaling

$$
\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)
$$

is not yet accepted. It uses a Nicholson/Watson-type product estimate before the transition $x=\alpha$ and does not fully control the tail from the Bessel turning region to the first peak. It is a credible asymptotic guide, not a theorem.

A2’s Laguerre-face warning is useful: a monolithic unweighted Langer theorem probably fails or becomes too weak for fixed/small $\alpha$ near $\theta=0$. This supports a regime split with rational-Bessel or Riccati methods covering $\alpha\le C\sqrt n$. This is a calibrated warning, not an impossibility theorem.

### A3

A3 is the strongest technical source in Round 21. The following A3 fragments should be moved to the lemma bank as certified or nearly certified.

The endpoint ODE is

$$
(p_BH')'+q_BH=0,
$$

where

$$
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

and

$$
q_B(u)=
n+\frac12-\frac{n+1}{2B}
-
\frac{
\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2
}{
4u(1-u/B)
}.
$$

The product is

$$
K_B(u)=p_B(u)q_B(u)
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

The cap length is

$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

The derivative identity is

$$
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
=
\frac{\alpha}{2}+\frac{\beta(n+1)}{2B}.
$$

Since $K_B$ is concave, this gives

$$
K_B'(u)\ge\frac{\alpha}{2}
$$

on the cap, hence $K_B'(u)>1/4$ in the residual range $\alpha>1/2$.

The dynamic oscillator is

$$
\tau=\log\frac{u}{B-u},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

The exact Prüfer equations on $K_B>0$ are

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

The Langer residual formula is

$$
\Psi_B(\zeta)
=
\frac{\zeta K_{\tau\tau}}{4K^2}
-
\frac{5\zeta K_\tau^2}{16K^3}
+
\frac{5}{16\zeta^2}.
$$

Round 21 gives strong manual support for the removable value

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

A4’s review independently derived this via the Schwarzian expansion. I accept the formula as manually verified, but I still recommend preserving a CAS log before permanent lemma-bank promotion, because the cancellation of $\zeta^{-2}$ and $\zeta^{-1}$ terms is high-risk.

The corrected $n=2$ cubic from A3 is accepted. A4’s conflicting coefficient $c_1=(B+1)/(4B)$ is rejected. The correct polynomial is

$$
P_2(u)=A-b_1u+c_1u^2,
$$

with

$$
A=\frac{(\alpha+1)(\alpha+2)}2,
\qquad
b_1=\alpha+2,
\qquad
c_1=\frac{B+1}{2B}.
$$

The critical equation

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0
$$

has cubic coefficients

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

For $n=2$, $B=\alpha+\beta+3$, so

$$
a_3=-\frac{(B+1)^2}{2B}.
$$

The Riccati coefficients are also accepted. For

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)}
$$

satisfying

$$
p_BR_u+R^2+K_B=0,
$$

the expansion

$$
R(u)=v_0+v_1u+v_2u^2+v_3u^3+\cdots
$$

has

$$
v_0=\frac{\alpha}{2},
$$

$$
v_1=-\frac{\Lambda_B}{\alpha+1},
$$

$$
v_2=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}-\frac{\Lambda_B^2}{(\alpha+1)^2}
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

These are interval-IVP initialization data; they do not by themselves prove a maximum bound.

### A4

A4’s most useful contribution is the $n=1$ analytic certificate candidate.

For $n=1$,

$$
B=\alpha+\beta+2,
\qquad
u_\sigma=1,
$$

and

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u.
$$

The exact squared endpoint function is

$$
H_1(u)^2
=
\frac{\Gamma(B)}
{\Gamma(\alpha+2)\Gamma(B-\alpha)}
\left(\frac{u}{B}\right)^\alpha
\left(1-\frac{u}{B}\right)^\beta
(\alpha+1-u)^2.
$$

A4’s majorization uses

$$
\left(1-\frac{u}{B}\right)^\beta\le1
$$

and the gamma-ratio bound

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha.
$$

Then

$$
H_1(u)^2
\le
\frac{1}{\Gamma(\alpha+2)}
u^\alpha(\alpha+1-u)^2.
$$

The scalar maximum of

$$
u^\alpha(\alpha+1-u)^2
$$

on $0\le u\le1$ occurs at

$$
u_*=\frac{\alpha(\alpha+1)}{\alpha+2}
$$

for $1/2\le\alpha\le6/5$, and has value

$$
V(\alpha)
=
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}
}.
$$

Thus

$$
H_1(u)^4
\le
\left(\frac{V(\alpha)}{\Gamma(\alpha+2)}\right)^2.
$$

The target satisfies

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

As $B$ increases this decreases to

$$
\frac{2}{\alpha+2},
$$

so

$$
T_{1,\alpha,\beta}^4\ge\frac2{\alpha+2}.
$$

Numerically, the envelope

$$
\left(\frac{V(\alpha)}{\Gamma(\alpha+2)}\right)^2
$$

is about $0.352$ at $\alpha=1/2$ and about $0.3834$ at $\alpha=6/5$, while the lower target at $\alpha=6/5$ is $0.625$. The margin is substantial.

This is promising enough that Round 22 should prioritize certifying $n=1$. But as judge I do not yet mark it proved, because the scalar envelope maximum and gamma-ratio inequality need a written proof with exact hypotheses or an outward-rounded interval enclosure. The $n=1$ certificate is near-certified, not certified.

A4’s $n=2$ material is not reliable where it uses $c_1=(B+1)/(4B)$. All $n=2$ work must be redone using A3’s coefficient

$$
c_1=\frac{B+1}{2B}.
$$

A4’s high-precision diagnostic constants are useful as diagnostics only. They are not interval enclosures and should not be treated as proof.

Rejected or risky ideas:

1. **Claiming Round 21 proves KKT.** Rejected. No first-lobe amplitude theorem is proved.

2. **Treating A1’s allowed-side theorem as a full Langer theorem.** Rejected. The coefficient $\mathfrak C_c$ is unbounded from endpoint data. The theorem starts after the turning point and does not solve the Frobenius-to-Airy connection.

3. **Treating the rational-Bessel residual as an amplitude theorem.** Rejected. The residual is clean, but amplitude control requires a complete Volterra inequality, kernel bounds including the Bessel transition/tail, normalization control, and comparison with the KKT target.

4. **Promoting $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ to theorem status.** Rejected. The pre-transition integral is plausible, but the tail beyond $x=\alpha$ is not rigorously bounded with finite constants.

5. **Using a monolithic unweighted Langer theorem across all $\alpha$.** Rejected as a main closure route. The Laguerre-face fixed-$\alpha$ obstruction suggests small $\alpha$ must be handled by rational-Bessel or Riccati methods.

6. **Accepting A4’s $n=1$ certificate without the two scalar checks.** Rejected. The margin is large, but the proof must still certify the gamma-ratio inequality and the scalar maximum.

7. **Using A4’s $n=2$ cubic as written.** Rejected. The coefficient $c_1$ is wrong by a factor of $2$ in the displayed derivation. Use A3’s cubic.

8. **Requiring API agents to invent interval logs.** Rejected. A4 correctly refused to simulate Arb. Future prompts should request analytic certificates or reproducible code/box specifications, not pretend logs.

9. **Assuming semi-discrete induction in $\beta$.** Rejected for now. Contiguous relations introduce moving critical points and mixed signs. No monotonicity theorem exists.

10. **Using product-formula or Christoffel routes without exact positivity and normalization.** Keep as long-term exploration only. No Round 21 result makes these competitive with the endpoint-cap route.

Known gaps:

### G21.1: Finite-$B$ first-lobe amplitude theorem

The main theorem remains open:

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

No Round 21 agent proves it.

### G21.2: Frobenius-to-Airy connection coefficient

A1’s allowed-side theorem depends on

$$
\mathfrak C_c=(a_c^2+b_c^2)^{1/2}.
$$

This must be bounded from the endpoint Frobenius data

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2}
$$

through the forbidden-to-allowed turning layer. This is the primary missing piece in the bulk Langer track.

### G21.3: Weighted DGS/Olver theorem instantiation

Dunster--Gil--Segura and Olver provide relevant simple-turning-point machinery, but the exact KKT transformation must be mapped to a theorem with all hypotheses and weights stated. The current Airy-envelope theorem is explicit but weaker and begins after the turning point.

### G21.4: Langer residual global variation bound

Even with

$$
\Psi_B(\zeta)
$$

and the removable value at $\zeta=0$, no one has bounded

$$
\int |\Psi_B|\Omega(\zeta)\,d\zeta
$$

with a DGS/Olver weight over the full first-lobe interval. A1 gives an allowed-side integral with $\mathfrak m^2$, but it does not close.

### G21.5: Rational-Bessel tail and finite constants

The residual

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}
$$

is known. The Volterra kernel must be bounded not only for $x<\alpha$ but through the transition and tail up to the first relevant peak. Constants must be explicit enough to compare to KKT slack.

### G21.6: Gamma-ratio envelope for $M_{n,\alpha,B}$

The exact normalization

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

still lacks a uniform finite-$n$ upper bound. Regime splitting via Binet/Wendel/Gautschi/Kershaw remains necessary.

### G21.7: Degree-one certificate formalization

For $n=1$, the proof is close but not completed. The needed checks are:

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$

for $B\ge\alpha+2$, $1/2\le\alpha\le6/5$, and

$$
\left[
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right]^2
<
\frac2{\alpha+2}
$$

on $[1/2,6/5]$. A stronger version with the numerical bounds $<0.390$ and $\ge0.625$ is enough.

### G21.8: Correct degree-two certificate

The $n=2$ cubic is corrected by A3, but no $n=2$ certificate exists. A4’s $n=2$ preprocessing must be discarded or rewritten.

### G21.9: Riccati truncation error

Riccati coefficients through $v_3$ are known. A validated IVP proof needs a bound on the omitted Taylor remainder at the initialization point and a rigorous integration or comparison argument to the first critical point.

### G21.10: Imported global modules

Round 21 does not re-audit the central-contour, weighted-energy, small-exponent, and symmetry modules. They remain imported dependencies. Any final proof must state their exact hypotheses.

New lemmas to add:

### Lemma L21.1: Allowed-side Airy-envelope propagation

Let $W$ solve

$$
W''+\zeta W=\Psi(\zeta)W
$$

on $[\zeta_c,\zeta_1]\subset(0,\infty)$. Define

$$
\mathfrak m(\zeta)^2=\operatorname{Ai}(-\zeta)^2+\operatorname{Bi}(-\zeta)^2,
$$

and let $\mathfrak C_c$ be the Euclidean norm of the Airy coefficient vector at $\zeta_c$. Then

$$
|W(\zeta_1)|
\le
\mathfrak m(\zeta_1)\mathfrak C_c
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}\mathfrak m(\xi)^2|\Psi(\xi)|\,d\xi
\right).
$$

Status: proved by Volterra/Gronwall. Add to lemma bank.

### Lemma L21.2: Conditional Langer first-lobe certificate

In the KKT endpoint-cap setting, if

$$
\mathcal R_{\mathrm{Lang}}
=
\frac{
\zeta_\tau(\tau_1)^{-1/2}
\mathfrak m(\zeta_1)
\mathfrak C_c
\exp\left(
\pi\int_{\zeta_c}^{\zeta_1}
\mathfrak m(\xi)^2|\Psi_B(\xi)|\,d\xi
\right)
}{
T_{n,\alpha,\beta}
}
\le1,
$$

then the first-lobe KKT bound holds.

Status: proved conditional theorem. The inequality $\mathcal R_{\mathrm{Lang}}\le1$ remains open.

### Lemma L21.3: Rational-coordinate Bessel residual

With

$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H,
$$

the normal form is

$$
Y''+
\left[
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
+
\Delta Q(z)
\right]Y=0,
$$

where

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

Status: certified algebraic identity after final transcription check.

### Lemma L21.4: Bessel Wronskian in rational coordinate

For

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
\qquad
W_2(z)=\sqrt z\,Y_\alpha(2\sqrt{\Lambda_Bz}),
$$

one has

$$
W(W_1,W_2)=\frac1\pi.
$$

Status: certified.

### Lemma L21.5: Langer residual formula

With

$$
K=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

one obtains

$$
W_{\zeta\zeta}+\zeta W=\Psi_BW,
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

Status: algebraically certified away from $\zeta=0$; permanent lemma-bank version should include sign convention.

### Lemma L21.6: Removable Langer value

If

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
\qquad
t=\tau-\tau_0,
$$

then

$$
\Psi_B(0)
=
\frac{10\gamma k_3-9k_2^2}{140\gamma^{8/3}}.
$$

Status: manually verified in Round 21 by Taylor/Schwarzian expansion; require CAS log for permanent repository certification.

### Lemma L21.7: Correct $n=2$ critical cubic

For $n=2$,

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

The critical equation is

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0,
$$

with coefficients

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

For $n=2$,

$$
a_3=-\frac{(B+1)^2}{2B}.
$$

Status: certified; A4’s conflicting coefficient is rejected.

### Lemma L21.8: Riccati Taylor data

For

$$
R=p_B\frac{H'}{H},
\qquad
p_BR_u+R^2+K_B=0,
$$

one has

$$
R(u)=v_0+v_1u+v_2u^2+v_3u^3+\cdots
$$

with

$$
v_0=\frac{\alpha}{2},
$$

$$
v_1=-\frac{\Lambda_B}{\alpha+1},
$$

$$
v_2=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}-\frac{\Lambda_B^2}{(\alpha+1)^2}
}{
\alpha+2
},
$$

$$
v_3=
\frac{2v_2}{\alpha+3}
\left(
\frac1B+\frac{\Lambda_B}{\alpha+1}
\right).
$$

Status: certified algebraic initialization; Taylor remainder bound still needed.

### Lemma L21.9: Degree-one analytic certificate candidate

For $n=1$ and $1/2\le\alpha\le6/5$, one has

$$
H_1(u)^4
\le
\left[
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right]^2
$$

assuming

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha.
$$

Also

$$
T_{1,\alpha,\beta}^4\ge\frac2{\alpha+2}.
$$

Thus it is enough to prove the scalar inequality

$$
\left[
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right]^2
\le
\frac2{\alpha+2}
$$

on $[1/2,6/5]$.

Status: promising candidate; not yet certified.

Counterexample checks to run:

1. **$n=1$ scalar certificate.** Prove or interval-enclose

$$
E(\alpha)
=
\left[
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right]^2
-
\frac2{\alpha+2}
<0
$$

for $1/2\le\alpha\le6/5$.

2. **Gamma-ratio inequality for $n=1$.** Prove

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$

for $B\ge\alpha+2$, $1/2\le\alpha\le6/5$. A direct route: use Wendel for $0<\alpha\le1$; for $\alpha=1+\delta$, $0<\delta\le1/5$, factor

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}
=
(B-1)\frac{\Gamma(B-1)}{\Gamma(B-1-\delta)}
$$

and apply Wendel to the remaining ratio.

3. **A1 allowed-side test box.** For

$$
n=100,\quad 45\le\alpha\le50,\quad 0.05\le\theta\le0.10,
$$

first verify $\zeta_1>1$ before evaluating the $\zeta_c=1$ bound.

4. **Airy coefficient sensitivity.** Compute $\mathfrak C_c$ at several cuts $\zeta_c\in\{0.25,0.5,1,2\}$ for representative hard points. Determine whether the product $\mathfrak C_c\exp(\mathcal V_A)$ has an optimum.

5. **DGS weighted variation.** Instantiate the DGS/Olver weight and compare it numerically against the crude Airy-envelope weight $\mathfrak m^2$ on both a bulk box and a Laguerre-face fixed-$\alpha$ box.

6. **Rational-Bessel tail.** For the Volterra integral based on

$$
\pi s|J_\alpha(2\sqrt{\Lambda_Bs})Y_\alpha(2\sqrt{\Lambda_Bs})|,
$$

split the integral into $x<\alpha$, Airy transition $x=\alpha+O(\alpha^{1/3})$, and oscillatory tail. Derive explicit finite constants.

7. **Gamma normalization scan.** Evaluate $\log M_{n,\alpha,B}$ with interval Binet remainders in regimes $\alpha=O(1)$, $\alpha=C\sqrt n$, $\alpha=cn$, $\theta=0$, and $\theta=1$.

8. **Correct $n=2$ interval-ready cubic.** Rewrite A3’s cubic in terms of $(\alpha,\theta,u)$ or a stable scaled variable and preserve the $\theta=0$ limiting polynomial.

9. **Riccati remainder bound.** Derive a rigorous bound on the remainder after the $v_3$ term in the Riccati expansion at $u=\varepsilon$.

10. **Semi-discrete subset.** Continue testing $\beta\in\{0,1,2,3,4,5,10\}$ as diagnostics, but do not assume monotonicity in $\beta$.

Research strategy adjustment:

Round 22 should not be another broad architecture round. The architecture is now sufficiently clear. The next round should deliver one completed theorem-level artifact.

The highest-priority artifact is the $n=1$ analytic certificate. It is narrow, plausibly close, and independent of the unresolved large-$n$ Langer/Bessel constants. Certifying $n=1$ would be the first genuine low-degree closure in the current normalized workflow.

The second priority is the rational-Bessel theorem statement with complete tail control. This is the likely small-$\alpha$ large-$n$ route. A2’s residual formula is good; now it needs a real Volterra inequality with named Bessel-product bounds and constants.

The third priority is the Frobenius-to-Airy connection coefficient $\mathfrak C_c$. A1’s allowed-side theorem is useful, but it will remain a conditional shell until this coefficient is bounded. A1 should focus on $\mathfrak C_c$, not on restating $\mathcal R_{\mathrm{Lang}}$.

The fourth priority is cleaning all $n=2$ algebra into an interval-ready form. A4’s wrong $c_1$ makes this urgent.

Do not assign any agent to product-formula speculation in Round 22 unless it produces a positivity theorem with exact KKT normalization. Do not ask A4 for simulated interval logs. Ask for either an executable proof script, a scalar analytic certificate, or an exact failure report.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 22 task is to close or sharply delimit the Frobenius-to-Airy connection coefficient in the bulk Langer track.

Objectives:

1. Start from the exact KKT dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

Use the Langer map

$$
K=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

so that

$$
W_{\zeta\zeta}+\zeta W=\Psi_BW.
$$

2. Do not merely restate the allowed-side bound. Your main target is the cut coefficient

$$
\mathfrak C_c=(a_c^2+b_c^2)^{1/2}.
$$

Derive an explicit upper bound for $\mathfrak C_c$ from the endpoint Frobenius data

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2}.
$$

You may use one of:
   - an instantiated Dunster--Gil--Segura or Olver theorem through the turning point;
   - a direct Volterra theorem on $(-\infty,\zeta_c]$ using the recessive Airy branch;
   - a rigorous Riccati-to-Airy matching estimate.

3. State the exact theorem used, including hypotheses, weight functions, and constants. If you use DGS, write the actual DGS error-control weight, not a placeholder.

4. Produce a theorem of the form:

If explicit quantities $E_{\mathrm{init}}$ and $E_{\mathrm{prop}}$ satisfy a displayed inequality, then

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

Here $E_{\mathrm{prop}}$ may be A1’s allowed-side integral, but $E_{\mathrm{init}}$ must be new and must bound $\mathfrak C_c$.

5. Test the theorem symbolically on the box

$$
n=100,\qquad 45\le\alpha\le50,\qquad 0.05\le\theta\le0.10.
$$

Before using $\zeta_c=1$, prove or numerically justify that $\zeta_1>\zeta_c$ on the box. If not, choose a smaller adaptive cut.

6. Include a section “What would falsify the bulk Langer track.” Give a concrete parameter box and a measurable condition such as $\inf\mathcal R_{\mathrm{Lang}}>1$ or an initialization blowup.

Exploratory allocation: spend at most 15% comparing this full connection approach with a phase-aware critical-point Airy estimate using $H_\tau(u_1)=0$. Do not open new proof routes.

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 22 task is to turn the rational-coordinate Bessel track into a theorem with constants or downgrade its range.

Objectives:

1. Work in the rational coordinate

$$
z=\frac{Bu}{B-u},
\qquad
Y=z^{1/2}H.
$$

Use the certified normal form

$$
Y''+
\left[
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
+
\Delta Q(z)
\right]Y=0,
$$

where

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

2. State the Bessel reference solution and its normalization:

$$
Y_0(z)=C\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz})
$$

with the exact Frobenius matching constant. Verify the connection to $M_{n,\alpha,B}$.

3. Derive a complete Volterra inequality for the relative error. Use the Wronskian $1/\pi$ and the kernel involving $J_\alpha Y_\alpha$. Do not use a generic Olver constant if the explicit kernel is sharper.

4. Split the Bessel integral into:
   - pre-transition region $0<x<\alpha$;
   - transition region $x=\alpha+O(\alpha^{1/3})$;
   - oscillatory tail to the first Bessel peak or the relevant first critical point.

State exact bounds in each region. If you use Nicholson/Watson/Airy asymptotics, state the theorem and its parameter restrictions.

5. Determine whether the final variation bound is really

$$
O\left(\frac{\alpha^3}{n^2}\right),
$$

or whether the tail changes it to

$$
O\left(\frac{\alpha^{8/3}}{n^2}\right),
$$

or another scale. Give constants, not just order notation.

6. State an overlap condition with the bulk Langer track of the form

$$
\alpha\le C\sqrt n
$$

or a corrected threshold. Do not choose $C$ without constants.

7. Include a failure mode section: identify a specific regime where the rational-Bessel track becomes too weak, and say which track should cover it.

Exploratory allocation: spend at most 15% on whether Riccati methods can replace Bessel Volterra for $\alpha=O(1)$.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 22 task is to produce permanent lemma-bank text and exact symbolic certificates.

Objectives:

1. Write final lemma-bank text for:
   - endpoint ODE;
   - $K_B$ quadratic;
   - cap length;
   - cap monotonicity;
   - dynamic oscillator;
   - Prüfer equations;
   - rational-coordinate Bessel residual;
   - Bessel Wronskian;
   - compactified hypergeometric representation;
   - Riccati Taylor coefficients.

2. Produce a CAS-style derivation, in text form, of the removable Langer value. Show the expansion

$$
K(\tau)=\gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
$$

solve for

$$
\zeta(t)=c_1t+c_2t^2+c_3t^3+O(t^4),
$$

then compute the Schwarzian or the explicit $\Psi_B$ formula and show cancellation of $\zeta^{-2}$ and $\zeta^{-1}$. End with

$$
\Psi_B(0)=
\frac{10\gamma k_3-9k_2^2}{140\gamma^{8/3}}.
$$

3. Correct all $n=2$ formulas. Use

$$
c_1=\frac{B+1}{2B}
$$

and derive the interval-ready cubic in variables $(\alpha,\theta,u)$, including the $\theta=0$ Laguerre-face limit. Explicitly reject the $c_1=(B+1)/(4B)$ variant.

4. Certify the $n=1$ gamma-ratio inequality needed by A4:

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$

for $B\ge\alpha+2$, $1/2\le\alpha\le6/5$.

Use Wendel/Gautschi with exact hypotheses. For $\alpha=1+\delta$, show the factorization step precisely.

5. Attempt a general finite-$n$ gamma envelope for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

Split into $\alpha=O(1)$, $\alpha=C\sqrt n$, $\alpha=cn$, $\theta=0$, and $\theta=1$. If no useful bound follows, state the obstruction quantitatively.

6. Provide a Riccati Taylor remainder bound through order $u^4$ or state exactly what derivative bound is missing.

Exploratory allocation: spend at most 10% on a Turán/Christoffel shortcut only if it produces a concrete inequality at the first critical point.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 22 task is to convert the $n=1$ analytic certificate candidate into a certified proof, then prepare corrected $n=2$ work.

Objectives:

1. Do not claim to execute Arb unless you can actually execute outward-rounded interval arithmetic. If code execution is unavailable, produce analytic scalar certificates only.

2. Prove the $n=1$ residual case. Work with

$$
1/2\le\alpha\le6/5,
\qquad
\beta\ge0,
\qquad
B=\alpha+\beta+2,
\qquad
0\le u\le1.
$$

Use

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u.
$$

3. Incorporate A3’s gamma-ratio lemma:

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha.
$$

Then derive

$$
H_1(u)^4
\le
\left[
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right]^2.
$$

4. Certify the one-variable inequality

$$
\left[
\frac{
4\alpha^\alpha(\alpha+1)^{\alpha+2}
}{
(\alpha+2)^{\alpha+2}\Gamma(\alpha+2)
}
\right]^2
<
0.390
$$

for $1/2\le\alpha\le6/5$.

Use either:
   - a derivative-sign proof using digamma bounds; or
   - an interval subdivision proof with explicit boxes and outward rounding; or
   - a monotone-envelope bound with a named inequality for $\Gamma$.

5. Prove

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}
\ge
\frac2{\alpha+2}
\ge
\frac58=0.625.
$$

Then conclude

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

6. After the $n=1$ proof, prepare $n=2$ only using A3’s corrected polynomial

$$
P_2(u)=
\frac{(\alpha+1)(\alpha+2)}2
-
(\alpha+2)u
+
\frac{B+1}{2B}u^2.
$$

Discard any previous $n=2$ cubic derived from $c_1=(B+1)/(4B)$.

7. If you cannot close the scalar inequality, preserve the exact subintervals or derivative-sign obstruction. Do not hide failure boxes.

Exploratory allocation: spend at most 15% testing whether a Riccati barrier can give a cleaner $n=2$ proof than direct cubic root isolation.

Confidence:

Confidence in the endpoint-cap algebra, cap monotonicity, and first-lobe reduction inherited into Round 21: **0.92**.

Confidence in A1’s allowed-side Airy-envelope propagation lemma: **0.85**.

Confidence that A1’s current Langer ratio proves the first-lobe theorem without bounding $\mathfrak C_c$: **0.10**.

Confidence in the rational-coordinate residual formula: **0.88**.

Confidence in the claimed rational-Bessel scaling $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ as a theorem with finite constants: **0.35**.

Confidence in A3’s corrected endpoint algebra and $n=2$ cubic: **0.88**.

Confidence in the removable Langer value formula after manual Round 21 verification: **0.78** until an archival CAS-style derivation is written.

Confidence in the $n=1$ analytic certificate candidate: **0.80**.

Confidence that $n=1$ can be certified in the next round: **0.85**.

Confidence that a monolithic unweighted Langer theorem can cover fixed small $\alpha$ near the Laguerre face: **0.25**.

Confidence that a regime split among Langer, rational-Bessel/Riccati, and low-degree certificates is the correct strategy: **0.80**.

Confidence that Round 21 proves the real-parameter KKT conjecture: **0.08**.

Overall judge decision:

Record Round 21 as a productive non-closing round. Promote A1’s allowed-side Airy-envelope propagation lemma, A2’s rational-coordinate residual, A3’s endpoint and dynamic algebra, A3’s corrected $n=2$ cubic, and the Riccati Taylor coefficients to the lemma bank with the status qualifications above. Do not promote any first-lobe amplitude theorem, global Langer theorem, rational-Bessel variation theorem, gamma-ratio envelope, or interval certificate as proved.

The next round should prioritize one near-term closure: certify the $n=1$ analytic certificate. In parallel, A1 should attack $\mathfrak C_c$, A2 should finish the rational-Bessel tail constants, and A3 should write permanent symbolic certificates. The conjecture remains open, but Round 21 meaningfully sharpened the proof obligations into checkable artifacts.
