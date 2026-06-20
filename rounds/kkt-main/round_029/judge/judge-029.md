Summary:

According to a document from 2026-06-19, namely the uploaded Round 29 packet `judge_29.md`, Round 29 is a productive execution-and-audit round, not a proof-closure round. Source packet marker:

The full real-parameter KKT conjecture is still **not proved**. The arbitrary-degree finite-$B$ first-lobe amplitude theorem is also **not proved**. The endpoint-cap first-lobe route remains the selected main route.

The main new progress is narrower and checkable:

1. A1 produced a concrete residual $n=2$ compactification and a new provisional interior subbox certificate:
\[
Q_{\mathrm{new}}
=
\left[\frac32,\frac85\right]
\times
\left[\frac14,\frac3{10}\right],
\]
   with a first-critical-point bracket
$$
   \frac12<u_1<\frac35
$$
   and the rational comparison
$$
   \frac{H_2(u_1)^4}{T_{2,\alpha,\theta}^4}
   \le
   \frac{1122208144817949}{1181640625000000}
   <1.
$$
   This is a genuine candidate certificate, but it should enter the lemma bank as **provisional until the full Bernstein coefficient transcript or exact reproducibility script is archived**. The packet explicitly says this is not a full $n=2$ proof.

2. A1 and A3 agree on the compactified degree-two endpoint polynomial
$$
   P_{2,\alpha,\theta}(u)
   =
   \frac{(\alpha+1)(\alpha+2)}2
   -
   (\alpha+2)u
   +
   \frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2,
$$
   and on the expanded critical cubic
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
   The cubic is $2(\alpha+3)$ times the compactified factored critical equation, so the scalar factor does not affect root isolation or interval certification. This should now become the permanent algebraic starting point for the residual $n=2$ certificate program.

3. A2 substantially clarified the rational-coordinate Bessel track. The rational normal form remains
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
   \Delta Q(z)
   =
   -\frac{\Lambda_B}{B+z}
   -
   \frac{\Delta_BB^2}{(B+z)^2}.
$$
   If
$$
   W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
   \qquad
   Y=hW_1,
$$
   then on zero-free intervals for $W_1$,
$$
   (W_1^2h')'=|\Delta Q|W_1^2h.
$$
   The exact post-peak critical-point balance is useful, but it is not yet a small-$\alpha$ theorem because explicit Bessel zero-gap constants, derivative-product lower bounds, gamma normalization, and the final KKT scalar comparison remain missing.

4. A2's zero-safety analysis gives a serious warning for the quotient method. The phase-shift estimate has the form
$$
   \delta
   \lesssim
   \frac{M_Q\alpha^{11/3}}{25.8\Lambda_B^2},
$$
   and comparing this to the Bessel zero gap suggests a heuristic threshold
$$
   \alpha\lesssim C n^{3/5}.
$$
   This is a useful diagnostic, not a theorem. The packet itself separates exact identities from bootstrap estimates and states that the $n^{3/5}$ threshold still requires interval-enclosed Bessel zero bounds and Taylor remainders.

5. A3 provided a valuable algebra audit, especially the endpoint ODE, the quadratic Sonin product, the cap length, the cap derivative identity, and the $n=2$ implementation formulas. However, the Langer Laurent cancellation is still **not archival**. A3's Round 29 discussion uses a local variable in a way that risks confusing the affine variable $u-u_0$ with the selected dynamic variable $\tau=\log(u/(B-u))$. The accepted generic removable value is
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
   \gamma=K_\tau(\tau_0),
$$
   but it still needs an executable or hand-checkable series transcript showing the cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms in the exact normal form used by the selected Olver/Dunster--Gil--Segura theorem.

Round 29 therefore should be recorded as a **solid partial certification round**: it adds one new $n=2$ interior box candidate, consolidates the $n=2$ cubic and ratio formulas, and sharply delimits the rational-Bessel quotient route. It does not close the full $n=2$ domain, the arbitrary-degree first-lobe theorem, or the full real-parameter KKT conjecture.

Literature status:

The source problem remains Koornwinder--Kostenko--Teschl, "Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator," *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv record confirms the title, authors, and the link between Bernstein-type estimates for Jacobi polynomials and dispersive estimates for generalized Laguerre operators.

Haagerup--Schlichtkrull remains useful context but not a closure theorem. Their arXiv record states that they prove a Bernstein-type inequality for Jacobi polynomials uniform in $n\ge0$, real $\alpha,\beta\ge0$, and $x\in[-1,1]$. This does not give the sharp KKT constant required here.

Landau's Bessel result remains a legitimate external dependency only after a genuine Bessel reduction has been made. The relevant paper is L. J. Landau, "Bessel Functions: Monotonicity and Bounds," *Journal of the London Mathematical Society* 61(1), 197--215 (2000), DOI `10.1112/S0024610799008352`. The available abstract states monotonicity with respect to Bessel order at positive stationary points and gives the article metadata.

Dunster--Gil--Segura remain the relevant turning-point error-bound references. Their 2020 paper "Sharp error bounds for turning point expansions" gives computable sharp error bounds for simple-turning-point Airy expansions, and their 2019 "Simplified error bounds for turning point expansions" gives explicit elementary-function bounds simplifying Olver-type estimates. These references support the bulk Langer/Airy route, but no Round 29 output instantiates their theorem with the exact KKT residual, weight functions, domain, and constants.

Arb remains an appropriate platform for future interval certification. Johansson describes Arb as arbitrary-precision midpoint-radius, or ball, interval arithmetic supporting real/complex numbers, polynomials, power series, matrices, and many special functions. This validates the computational framework, not any unexecuted KKT certificate.

Gamma-ratio inequalities remain active dependencies. Wendel/Gautschi/Kershaw-type inequalities can support local gamma-ratio estimates, and Kershaw's 1983 article is a standard tighter source. However, the exact four-gamma envelope needed in the arbitrary-degree KKT normalization is still not available as a proved lemma. The Round 29 subbox uses only the simpler inequality
$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha,
$$
which is adequate on that subbox but too crude for a full covering.

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

The proof spine is unchanged.

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

The finite endpoint cap is

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

Round 29 advances this theorem only in low degree. The residual $n=1$ theorem is already certified in the prior state after insertion of the gamma appendix. For $n=2$, Round 29 adds one new provisional interior box and confirms the compactified algebra, but the full rectangle

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1
$$

remains open.

Useful fragments by source:

### A1

A1 supplied the most immediately useful certificate artifact of Round 29.

The compactification for $n=2$ is:

$$
B=\alpha+\beta+3,
\qquad
\theta=\frac{\alpha+3}{B},
\qquad
0\le\theta\le1.
$$

For $\theta>0$,

$$
B=\frac{\alpha+3}{\theta},
\qquad
\beta=\frac{(\alpha+3)(1-\theta)}{\theta}.
$$

The target is

$$
T_{2,\alpha,\theta}^4
=
\frac{3}{\alpha+3-\alpha\theta}.
$$

At the Laguerre face,

$$
T_{2,\alpha,0}^4
=
\frac{3}{\alpha+3}.
$$

A1's polynomial and cubic derivations are accepted after A3's independent audit:

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
\begin{aligned}
C_{\alpha,\theta}(u)
={}&
-(\alpha+\theta+3)^2u^3\\
&+(\alpha+3)(3\alpha^2-\alpha\theta+17\alpha+24)u^2\\
&-(\alpha+2)(\alpha+3)(3\alpha^2-3\alpha\theta+14\alpha-3\theta+15)u\\
&+\alpha(\alpha+1)(\alpha+2)(\alpha+3)^2.
\end{aligned}
$$

A1's new subbox is:

$$
\frac32\le\alpha\le\frac85,
\qquad
\frac14\le\theta\le\frac3{10}.
$$

A1's claimed root logic is:

- the cap contains the candidate root interval because $u_\sigma\ge15/8>3/5$;
- $C>0$ on $[0,1/2]$;
- $C(3/5)<0$;
- $C_u<0$ on $[1/2,3/5]$;
- $K_B(1/2)>0$;
- therefore the unique root in $(1/2,3/5)$ is after the first cap turning point.

The value bound uses

$$
\frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha,
$$

$$
\Gamma(\alpha+3)\ge\Gamma(9/2)>11,
$$

$$
u^{2\alpha}\le\left(\frac35\right)^3,
$$

$$
0<P_{2,\alpha,\theta}(u)\le\frac{1561}{500},
$$

and

$$
\frac{\alpha+3-\alpha\theta}{3}\le\frac75.
$$

It follows that

$$
\mathcal R_2(\alpha,\theta,u_1)
\le
\left(\frac{2}{11}\right)^2
\left(\frac35\right)^3
\left(\frac{1561}{500}\right)^4
\frac75
=
\frac{1122208144817949}{1181640625000000}<1.
$$

This is a strong artifact. The reason I do not mark it unconditionally certified is that A1 provides only summarized tensor-Bernstein coefficient extrema. The full coefficient lists or a reproducible exact script are required before this enters the lemma bank as a completed proof. The cross-review agrees that the structure is sound and that the final rational comparison is legitimate if the coefficient transcript is archived.

A1 also correctly distinguishes boundary-face status:

- $\alpha=1/2$ is covered by the imported small-exponent theorem;
- $\alpha=15/7$ is covered by the imported energy theorem if that theorem includes the closed boundary;
- $\theta=0$ is open and must use the Laguerre limiting formula;
- $\theta=1$ is open and must use a finite-face one-dimensional certificate;
- the full residual $n=2$ rectangle is open.

This status discipline is useful and should be adopted.

### A2

A2 supplied the strongest analytic obstruction work.

The exact rational normal form and residual are accepted:

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

$$
\Delta Q(z)=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

The residual is negative on $z\ge0$ and regular at the origin. On any zero-free interval of

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz}),
$$

the quotient $Y=hW_1$ satisfies

$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

A2's pre-peak Volterra lemma is accepted only under its exact hypothesis:

$$
T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1},
$$

and $W_1>0$. Under that restriction,

$$
h(z)
\le
M_{n,\alpha,B}
\exp\left(M_Q\frac{T^4}{64\Lambda_B^2}\right),
$$

where

$$
M_Q=\sup|\Delta Q|.
$$

The exact expression

$$
M_Q=\frac{\Lambda_B}{B}+\Delta_B
$$

is accepted when the supremum is over $z\ge0$. The numerical uniform bound $M_Q\le2.75$ should not yet enter the lemma bank until it is proved from the residual-strip inequalities. The exact expression is already enough for future boxwise interval work.

A2's post-peak critical-point balance is also accepted as algebra on a zero-free interval:

At the true critical point of $H$,

$$
H'=0
\iff
Y'=\frac{1}{2z}Y.
$$

Combining this with the quotient derivative gives

$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)},
\qquad
T_1^*=2\sqrt{\Lambda_Bz_1^*},
$$

equivalently,

$$
-J_\alpha'(T_1^*)J_\alpha(T_1^*)
=
\frac{2}{T_1^*h(z_1^*)}
\int_0^{z_1^*}|\Delta Q|W_1^2h\,dz.
$$

This identity clarifies why the true critical point is expected to lie after the Bessel reference peak. It also exposes the denominator problem: a quotient proof cannot pass through the first Bessel zero without zero safety. A2's $n^{3/5}$ threshold is a useful scaling warning, but it is not a theorem until the Bessel zero-gap and derivative-product constants are supplied.

A2's exploratory Ermakov-Pinney alternative is worth a small allocation because it avoids division by $W_1$, but it is not yet a proof route. It needs a comparison principle, initial amplitude matching, and a scalar inequality that implies the KKT target.

### A3

A3 is the main algebra auditor for Round 29. The following parts should be promoted after notation cleanup:

1. The endpoint ODE:
$$
   (p_BH')'+q_BH=0,
$$
   with
$$
   p_B(u)=u(1-u/B),
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
   4u(1-u/B)
   }.
$$

2. The quadratic product:
$$
   K_B(u)
   =
   -\frac{\alpha^2}{4}
   +\Lambda_Bu
   -\Delta_Bu^2.
$$

3. The cap length:
$$
   u_\sigma=\frac{nB}{B+n-1}\le n.
$$

4. The cap monotonicity:
$$
   K_B'(u)\ge K_B'(u_\sigma)
   =
   \frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

5. The $n=2$ polynomial, critical cubic, and stable ratio formulas:
$$
   \mathcal R_2(\alpha,\theta,u)
   =
   \frac{H_2(u)^4}{T_{2,\alpha,\theta}^4},
$$
   including the stable Laguerre face
$$
   \mathcal R_2(\alpha,0,u)
   =
   \left(\frac{2}{\Gamma(\alpha+3)}\right)^2
   u^{2\alpha}e^{-2u}
   P_{2,\alpha,0}(u)^4
   \frac{\alpha+3}{3}.
$$

A3 also correctly stresses that $K_B'(u)>0$ does not by itself prove $K_B(u_\sigma)>0$. For any box certificate, the endpoint sign of $K_B$ and the root ordering relative to the first solution-critical point must be checked separately. This distinction should be added to the gap register.

A3's Langer discussion should **not** be archived as complete. The formula-level coefficient matching is useful, but the transcript is not executable and the local-variable convention is potentially wrong for the selected dynamic oscillator. The next A3 output must start from the actual dynamic variable

$$
\tau=\log\frac{u}{B-u}
$$

and the actual equation

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

It must then derive the chosen Langer residual from the chosen dependent-variable transformation and show the cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms.

Rejected or risky ideas:

1. **Claiming Round 29 proves KKT.** Rejected. Round 29 does not prove the arbitrary-degree first-lobe amplitude theorem and does not prove the full real-parameter conjecture.

2. **Claiming full residual $n=2$ closure.** Rejected. Round 29 leaves $\theta=0$, $\theta=1$, and most interior boxes open. The new box is only one part of the rectangle.

3. **Promoting A1's new subbox without transcript.** Risky. The rational comparison is exact, but the Bernstein sign checks are summarized by extremal coefficients. The full tensor-Bernstein coefficient lists or an exact script must be archived before the box is marked archive-certified.

4. **Using $\theta>0$ formulas at $\theta=0$ by floating substitution.** Rejected. The Laguerre face must use the limiting formula
$$
   \mathcal R_2(\alpha,0,u)
   =
   \left(\frac{2}{\Gamma(\alpha+3)}\right)^2
   u^{2\alpha}e^{-2u}
   P_{2,\alpha,0}(u)^4
   \frac{\alpha+3}{3}.
$$

5. **Treating A2's pre-peak Bessel estimate as a first-critical-point estimate.** Rejected. It is only valid up to $T\le j'_{\alpha,1}$ unless a zero-safe post-peak extension is proved.

6. **Treating the $n^{3/5}$ zero-safety threshold as proved.** Rejected. It is a scaling heuristic supported by formal asymptotics. It still lacks explicit finite-$\alpha$ Bessel zero-gap constants, derivative-product lower bounds, cap-sharp residual bounds, gamma normalization, and final scalar comparison.

7. **Using the quotient $h=Y/W_1$ through a Bessel zero.** Rejected. Any quotient theorem must stop before the first zero of $W_1$, use a zero-free reference, or switch to a non-dividing formulation.

8. **Archiving the Round 29 Langer cancellation as complete.** Rejected. The exact dynamic variable and exact residual convention must be fixed first. In the selected dynamic variable, $K(\tau)=K_B(u(\tau))$ is generally not a quadratic in $\tau$, even though $K_B(u)$ is quadratic in $u$.

9. **Generic DGS/Olver citation as proof.** Rejected. The theorem must be instantiated with the exact KKT residual $\Psi_B$, weight functions, Airy normalization, domain, cut point, and constants.

10. **SOS/Krasikov optimism without coefficients.** Rejected as a main route. It remains exploratory until an explicit ansatz, positivity region, derivative sign, and rational certificate are produced.

Known gaps:

### G29.1: Full residual $n=2$ theorem

The active residual $n=2$ domain is

$$
\frac12<\alpha<\frac{15}{7},
\qquad
0\le\theta\le1.
$$

The currently covered or nearly covered regions are:

- $\alpha=1/2$: covered conditionally by the imported small-exponent theorem;
- $\alpha=15/7$: covered conditionally by the imported energy theorem;
- Round 27 box:
$$
  1\le\alpha\le\frac{11}{10},
  \qquad
  \frac12\le\theta\le\frac35;
$$
- Round 29 new box:
$$
  \frac32\le\alpha\le\frac85,
  \qquad
  \frac14\le\theta\le\frac3{10},
$$
  provisional until the Bernstein transcript is archived.

The faces $\theta=0$ and $\theta=1$ remain open as complete one-dimensional certificates. Most of the interior rectangle also remains open.

### G29.2: Boundary face $\theta=0$

At the Laguerre face, the formula is clean:

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

The open task is not algebra. It is a one-dimensional certificate over

$$
\alpha\in\left[\frac12,\frac{15}{7}\right].
$$

It must include root isolation for $C_{\alpha,0}$, filtering relative to the first cap turning point, and a value bound using log-gamma or Binet/Stirling intervals.

### G29.3: Boundary face $\theta=1$

At $\theta=1$, $\beta=0$ and

$$
T_{2,\alpha,1}^4=1.
$$

The numerical diagnostics show large slack, but the face is not a theorem. It needs a one-dimensional root/value certificate over the same $\alpha$ interval.

### G29.4: Archival status of the new subbox

The new box has a persuasive proof skeleton, but the permanent artifact must include:

- the full Bernstein coefficients for $C$ on $Q_{\mathrm{new}}\times[0,1/2]$;
- the full Bernstein coefficients for $C(3/5)$ on $Q_{\mathrm{new}}$;
- the full Bernstein coefficients for $C_u$ on $Q_{\mathrm{new}}\times[1/2,3/5]$;
- the numerator of $K_B(1/2)$ on $Q_{\mathrm{new}}$;
- the exact rational value comparison.

Without these, the box should remain "provisional, reproducible-transcript required."

### G29.5: Root ordering and cap turning point

For any future $n=2$ box, it is not enough to show $C_{\alpha,\theta}$ has a root in an interval. The certificate must also prove that the root is the first solution-critical point after the first $K_B$ zero $u_0$, or else handle the no-critical-point case at the cap boundary.

### G29.6: Rational-Bessel zero-safety

The rational-Bessel identities are exact, but the quotient method requires $W_1$ to stay nonzero. A2's own analysis shows the true critical point is expected after the Bessel reference peak. The proof must either:

- prove $T_1^*<j_{\alpha,1}$ with explicit constants;
- stop before the zero and hand off to a zero-free method;
- use a non-dividing amplitude method;
- or restrict the theorem to a verified small-$\alpha$ range.

### G29.7: Gamma normalization for rational-Bessel

The small-$\alpha$ rational-Bessel route needs a bound for

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
$$

Crude Wendel/Gautschi bounds can introduce artificial exponential inflation. A Binet/Stirling regime split is still needed.

### G29.8: Bulk Langer/DGS instantiation

The bulk route still lacks the exact theorem mapping:

- chosen DGS/Olver theorem;
- exact KKT independent variable;
- dependent-variable transformation;
- residual $\Psi_B$;
- Airy weight or modulus functions;
- variation integral;
- scalar endpoint inequality.

### G29.9: Langer Laurent cancellation transcript

The accepted formula

$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}
$$

needs a transcript in the dynamic variable $\tau=\log(u/(B-u))$. The Round 29 simplification treating $K_B$ as quadratic in the local variable is not sufficient for the chosen oscillator.

New lemmas to add:

### Lemma L29.1: Compactified residual $n=2$ endpoint polynomial

For $n=2$, $B=\alpha+\beta+3$, $\theta=(\alpha+3)/B$, and $u=B(1-x)/2$,

$$
P_2^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)(\alpha+2)}2
-(\alpha+2)u
+
\frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2.
$$

Status: certified algebra.

### Lemma L29.2: Compactified residual $n=2$ critical cubic

For $\theta>0$, critical points of $H_2$ are roots of

$$
C_{\alpha,\theta}(u)=0,
$$

where

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

This cubic is $2(\alpha+3)$ times the compactified factored critical equation. Since the factor is positive in the residual strip, it does not affect root isolation.

Status: certified algebra.

### Lemma L29.3: Residual $n=2$ target ratio

For $\theta>0$,

$$
\mathcal R_2(\alpha,\theta,u)
=
\left(
\frac{2\Gamma(B)}
{\Gamma(\alpha+3)\Gamma(B-\alpha)}
\right)^2
\left(\frac{u}{B}\right)^{2\alpha}
\left(1-\frac{u}{B}\right)^{2(B-\alpha-3)}
P_{2,\alpha,\theta}(u)^4
\frac{\alpha+3-\alpha\theta}{3},
$$

where $B=(\alpha+3)/\theta$.

At $\theta=0$,

$$
\mathcal R_2(\alpha,0,u)
=
\left(\frac{2}{\Gamma(\alpha+3)}\right)^2
u^{2\alpha}e^{-2u}
P_{2,\alpha,0}(u)^4
\frac{\alpha+3}{3}.
$$

Status: formula certified; interval use still pending.

### Lemma L29.4: Finite face target simplification

At $\theta=1$,

$$
\beta=0,
\qquad
T_{2,\alpha,1}^4=1.
$$

Status: certified algebra; face certificate open.

### Lemma L29.5: Provisional new $n=2$ interior box

For

$$
\frac32\le\alpha\le\frac85,
\qquad
\frac14\le\theta\le\frac3{10},
$$

the Round 29 A1 certificate claims

$$
\frac12<u_1<\frac35
$$

and

$$
\frac{H_2(u_1)^4}{T_{2,\alpha,\theta}^4}
\le
\frac{1122208144817949}{1181640625000000}
<1.
$$

Status: provisionally certified pending archival of full Bernstein coefficient lists or a reproducible exact script.

### Lemma L29.6: Rational-coordinate normal form

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

Status: certified algebra.

### Lemma L29.7: Rational-Bessel relative-amplitude equation

Let

$$
W_1(z)=\sqrt z\,J_\alpha(2\sqrt{\Lambda_Bz})
$$

and suppose $W_1$ has no zero on the interval under consideration. If $Y=hW_1$, then

$$
(W_1^2h')'=|\Delta Q|W_1^2h.
$$

Status: certified algebra conditional on the zero-free interval and Frobenius normalization.

### Lemma L29.8: Pre-peak Volterra bound

If

$$
T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1},
$$

and $W_1>0$ on the interval, then

$$
h(z)\le
M_{n,\alpha,B}
\exp\left(
M_Q\frac{T^4}{64\Lambda_B^2}
\right),
$$

where

$$
M_Q=\sup|\Delta Q|.
$$

Status: conditional lemma; proof depends on monotonicity of $J_\alpha$ before the first derivative zero. Add with the explicit restriction $T\le j'_{\alpha,1}$ only.

### Lemma L29.9: Post-peak critical-point balance

On a zero-free interval for $W_1$, at a true $H$-critical point,

$$
h'(z_1^*)
=
-h(z_1^*)\frac{2\Lambda_B}{T_1^*}
\frac{J_\alpha'(T_1^*)}{J_\alpha(T_1^*)}.
$$

Equivalently,

$$
-J_\alpha'(T_1^*)J_\alpha(T_1^*)
=
\frac{2}{T_1^*h(z_1^*)}
\int_0^{z_1^*}|\Delta Q|W_1^2h\,dz.
$$

Status: certified algebra conditional on zero-free and positivity hypotheses; not yet a zero-safety theorem.

### Warning W29.1: Quotient method zero-safety

Any theorem using $h=Y/W_1$ must prove that the relevant interval lies before the first zero of $W_1$, or else switch to a non-dividing formulation. The heuristic threshold $\alpha\lesssim Cn^{3/5}$ is not proved.

### Warning W29.2: Langer cancellation not archival

The removable Langer value is formula-level accepted from prior rounds, but the Round 29 transcript is not enough. The next proof must use the selected dynamic variable and the exact DGS/Olver residual.

Counterexample checks to run:

1. **Degree-two Laguerre face.** Certify $\theta=0$ on
$$
   \alpha\in\left[\frac12,\frac{15}{7}\right]
$$
   using $C_{\alpha,0}$, interval Newton or Sturm root isolation, and log-gamma/Binet bounds for $\Gamma(\alpha+3)$.

2. **Degree-two finite face.** Certify $\theta=1$ on the same $\alpha$ interval. Since $T_{2,\alpha,1}^4=1$, this face appears to have strong slack, but root ordering still needs proof.

3. **Archive A1's new box.** Reproduce exact tensor-Bernstein coefficient lists for:
   - $C$ on $Q_{\mathrm{new}}\times[0,1/2]$;
   - $C(3/5)$ on $Q_{\mathrm{new}}$;
   - $C_u$ on $Q_{\mathrm{new}}\times[1/2,3/5]$;
   - the numerator of $K_B(1/2)$ on $Q_{\mathrm{new}}$.

4. **Replay the Round 27 subbox.** Reproduce the earlier certificate for
$$
   1\le\alpha\le\frac{11}{10},
   \qquad
   \frac12\le\theta\le\frac35
$$
   using the finalized cubic and $\mathcal R_2$ formula.

5. **Interior grid extension.** Prioritize boxes adjacent to the certified/provisional regions:
$$
   \alpha\in\left[1,\frac32\right],
   \quad
   \theta\in\left[\frac14,\frac12\right],
$$
$$
   \alpha\in\left[\frac85,\frac{15}{7}\right],
   \quad
   \theta\in\left[\frac14,\frac3{10}\right],
$$
   and
$$
   \alpha\in\left[\frac32,\frac85\right],
   \quad
   \theta\in\left[\frac1{10},\frac14\right].
$$

6. **Gamma slack stress test.** Compare the crude bound
$$
   \frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$
   against outward-rounded log-gamma interval evaluation on hard boxes. Record whether failures are true ratio issues or artifacts of the crude bound.

7. **Bessel zero-safety constants.** For A2's rational-Bessel route, produce interval-certified constants for:
$$
   j_{\alpha,1}-j'_{\alpha,1},
$$
   a lower envelope for
$$
   -J_\alpha'(T)J_\alpha(T)
$$
   on a post-peak subinterval, and an upper envelope for
$$
   \int_0^T s^3J_\alpha(s)^2\,ds.
$$

8. **Cap versus Bessel zero.** For candidate small-$\alpha$ boxes, compute whether the endpoint cap itself ends before $j_{\alpha,1}$ in the $T$ variable. If so, the quotient singularity is irrelevant for those boxes.

9. **Dynamic Langer cancellation.** Using $\tau=\log(u/(B-u))$, expand
$$
   K(\tau)=K_B(u(\tau))
$$
   near $\tau_0$, define $\zeta$ by $K=\zeta\zeta_\tau^2$, substitute into the exact chosen $\Psi_B$, and print coefficients of $\zeta^{-2}$, $\zeta^{-1}$, and $\zeta^0$.

10. **Sonin/Krasikov pilot.** Test the explicit ansatz
$$
    V=A(u)H^2+B(u)p_B^2H'^2+C(u)p_BHH'
$$
    on one known $n=2$ box. If no rational sign certificate appears at low degree, demote the route.

Research strategy adjustment:

The next round should remain execution-focused. The collaboration already has enough architecture.

The priority order should be:

1. **Complete the residual $n=2$ certificate.** The immediate deliverables are one-dimensional face certificates for $\theta=0$ and $\theta=1$, archival replay of the Round 27 box, and transcript archival for the Round 29 new box.

2. **Build a rational interior subdivision program.** Use the $n=2$ cubic and $\mathcal R_2$ formulas as fixed inputs. Each box must report the parameter box, cap inclusion, first-root filtering, value bound, gamma bound, and unresolved boxes.

3. **Demote rational-Bessel to a conditional small-$\alpha$ route until constants exist.** A2 should either supply constants giving a real range or state a failure report. The exact identities are valuable, but the threshold is not yet usable.

4. **Keep weighted Langer/Airy as the bulk route, but require a theorem mapping.** A1 should instantiate one DGS/Olver theorem rather than citing turning-point theory generically.

5. **Use A3 as the algebra archive.** A3's Round 30 should be a formula-freezing and transcript round, not a broad strategy round.

6. **Exploratory allocation should stay below 20%.** The only worthwhile exploratory tasks are low-degree Sonin/Krasikov/SOS and non-dividing amplitude formulations. They must produce explicit inequalities or be marked as failed pilots.

Next-round prompts by agent:

For A1:

Your Round 30 task is to complete durable residual $n=2$ certificate artifacts. Do not introduce a new proof architecture.

Objectives:

1. **Face certificate for $\theta=0$.** Use the limiting formulas
$$
   P_{2,\alpha,0}(u)
   =
   \frac{(\alpha+1)(\alpha+2)}2
   -
   (\alpha+2)u
   +
   \frac12u^2
$$
   and
$$
   \mathcal R_2(\alpha,0,u)
   =
   \left(\frac{2}{\Gamma(\alpha+3)}\right)^2
   u^{2\alpha}e^{-2u}
   P_{2,\alpha,0}(u)^4
   \frac{\alpha+3}{3}.
$$
   Cover
$$
   \alpha\in\left[\frac12,\frac{15}{7}\right]
$$
   by rational intervals. For each interval, isolate the relevant root of $C_{\alpha,0}$, prove it is after the first $K_B$ turning point or handle the no-critical-point case, and prove $\mathcal R_2<1$ using log-gamma/Binet or outward-rounded interval bounds.

2. **Face certificate for $\theta=1$.** Use
$$
   T_{2,\alpha,1}^4=1
$$
   and the specialized cubic
$$
   \begin{aligned}
   C_{\alpha,1}(u)
   ={}&
   -(\alpha+4)^2u^3\\
   &+(\alpha+3)(3\alpha^2+16\alpha+24)u^2\\
   &-(\alpha+2)(\alpha+3)(3\alpha^2+11\alpha+12)u\\
   &+\alpha(\alpha+1)(\alpha+2)(\alpha+3)^2.
   \end{aligned}
$$
   Provide root-isolation intervals and value bounds over the full $\alpha$ segment. If a complete write-up is too long, give a partition table with certified and unresolved intervals.

3. **Archive the Round 29 new box.** Provide full tensor-Bernstein coefficient lists or a reproducible exact script for the four sign checks:
   - $C>0$ on $Q_{\mathrm{new}}\times[0,1/2]$;
   - $C(3/5)<0$ on $Q_{\mathrm{new}}$;
   - $C_u<0$ on $Q_{\mathrm{new}}\times[1/2,3/5]$;
   - $K_B(1/2)>0$ on $Q_{\mathrm{new}}$.

4. **Extend the subdivision.** Attempt at least two new rational boxes adjacent to the known and Round 29 boxes. Each box must include:
   - parameter box $Q$;
   - root interval $U_1$;
   - cap inclusion;
   - $u_0<U_1$;
   - no earlier solution-critical root;
   - explicit upper bound for $\mathcal R_2$ or $\log\mathcal R_2$;
   - gamma inequality used;
   - status: certified, provisional, or failed.

5. **Status table.** Provide a complete residual $n=2$ coverage table, including all certified, provisional, failed, and unresolved boxes.

Exploratory allocation:

Use at most 20% to test a low-degree Sonin/Krasikov certificate on one of the currently hard or already certified $n=2$ boxes. The ansatz must be explicit:
$$
V=A(u)H^2+B(u)p_B^2H'^2+C(u)p_BHH'.
$$
If no coefficient set works, give a clear failure reason and return to interval subdivision.

For A2:

Your Round 30 task is to convert the rational-Bessel quotient analysis into either a theorem with constants or a disciplined failure report. Do not claim a small-$\alpha$ theorem without the final scalar KKT inequality.

Objectives:

1. **Prove the residual bound $M_Q$.** Start from
$$
   M_Q=\frac{\Lambda_B}{B}+\Delta_B
   =
   \frac{2c_B}{B}
   +
   \frac{\alpha r_B}{2B}
   +
   \frac{r_B^2}{4}.
$$
   Derive a rigorous bound valid in the intended parameter range. If you use a numerical constant such as $2.75$, prove it by explicit inequalities from
$$
   n\ge1,\qquad
   \frac12<\alpha<\alpha_E(n),\qquad
   \beta\ge0.
$$

2. **State the pre-peak theorem precisely.** It must include:
$$
   T=2\sqrt{\Lambda_Bz}\le j'_{\alpha,1},
$$
   $W_1>0$, Frobenius initialization $h(0)=M_{n,\alpha,B}$, and the bound
$$
   h(z)\le
   M_{n,\alpha,B}
   \exp\left(M_Q\frac{T^4}{64\Lambda_B^2}\right).
$$

3. **Give Bessel constants.** Provide rigorous finite-$\alpha$ bounds for:
$$
   j_{\alpha,1}-j'_{\alpha,1},
$$
$$
   -J_\alpha'(T)J_\alpha(T)
$$
   on a post-peak interval, and
$$
   \int_0^T s^3J_\alpha(s)^2\,ds.
$$
   You may cite exact theorem statements or provide interval-enclosed constants, but asymptotic constants alone are insufficient.

4. **Finish or fail the zero-safety bootstrap.** Derive the exact scalar inequality needed to prove
$$
   T_1^*<j_{\alpha,1}.
$$
   Then either prove a nontrivial range
$$
   \alpha\le Cn^\eta
$$
   with explicit $C,\eta$, or state which constant prevents closure.

5. **Gamma normalization.** State the exact required bound on
$$
   M_{n,\alpha,B}
   =
   \sqrt{
   \frac{\Gamma(n+\alpha+1)\Gamma(B)}
   {\Gamma(n+1)\Gamma(B-\alpha)}
   }
   (B\Lambda_B)^{-\alpha/2}.
$$
   Do not use crude Wendel/Gautschi estimates if they produce artificial exponential slack loss. If necessary, restrict to a subregime and state it.

6. **Non-dividing alternative.** If the quotient proof fails, write a precise Ermakov-Pinney or Riccati amplitude theorem candidate. It must include the exact comparison principle required, not just the differential equation.

Exploratory allocation:

Spend at most 20% on a zero-free reference function or non-dividing amplitude formulation. The deliverable is either a clean comparison lemma or a clear obstruction.

For A3:

Your Round 30 task is algebra archival and transcript repair. Do not write broad proof strategy.

Objectives:

1. **Freeze the $n=2$ formulas.** Provide lemma-bank-ready derivations of:
$$
   P_{2,\alpha,\theta}(u)
   =
   \frac{(\alpha+1)(\alpha+2)}2
   -
   (\alpha+2)u
   +
   \frac12\left(1+\frac{\theta}{\alpha+3}\right)u^2,
$$
$$
   C_{\alpha,\theta}(u),
$$
$$
   \mathcal R_2(\alpha,\theta,u),
$$
   and
$$
   \mathcal R_2(\alpha,0,u).
$$

2. **Archive the critical equation derivation.** Start from
$$
   \left(\alpha(B-u)-\beta u\right)P(u)
   +
   2u(B-u)P'(u)=0.
$$
   Substitute $B=(\alpha+3)/\theta$ and prove explicitly that the expanded cubic is $2(\alpha+3)$ times the compactified factored equation.

3. **Root-order implementation notes.** Give an implementation-safe method to verify that a root interval contains the first solution-critical point after $u_0$. Include the tests:
   - $K_B$ sign at the lower root bracket;
   - no earlier roots of $C$ in the cap;
   - cap inclusion;
   - boundary/no-critical-point fallback.

4. **Dynamic Langer cancellation transcript.** Work in the selected dynamic variable
$$
   \tau=\log\frac{u}{B-u}.
$$
   Set
$$
   K(\tau)=K_B(u(\tau)).
$$
   Let $\tau_0$ be the turning point. Write
$$
   K(\tau)
   =
   \gamma t+\frac{k_2}{2}t^2+\frac{k_3}{6}t^3+O(t^4),
   \qquad
   t=\tau-\tau_0.
$$
   Solve
$$
   K=\zeta\zeta_\tau^2
$$
   to get
$$
   c_1=\gamma^{1/3},
   \qquad
   c_2=\frac{k_2}{10\gamma^{2/3}},
   \qquad
   c_3=\frac{25\gamma k_3-12k_2^2}{1050\gamma^{5/3}}.
$$
   Then substitute into the exact chosen Langer residual $\Psi_B$ and show:
   - the $\zeta^{-2}$ coefficient is zero;
   - the $\zeta^{-1}$ coefficient is zero;
   - the constant term is
$$
     \frac{
     10\gamma K_{\tau\tau\tau}(\tau_0)
     -
     9K_{\tau\tau}(\tau_0)^2
     }{
     140\gamma^{8/3}
     }.
$$
   Important: do **not** replace $K(\tau)$ by a quadratic in $u-u_0$ unless you explicitly transform derivatives. In the dynamic variable, $K_{\tau\tau\tau}$ is generally not zero.

5. **Audit A1's new box.** Independently reproduce the tensor-Bernstein sign checks for the new box:
$$
   \frac32\le\alpha\le\frac85,
   \qquad
   \frac14\le\theta\le\frac3{10}.
$$
   Return either:
   - full coefficient lists,
   - an exact script,
   - or a specific discrepancy.

6. **Gamma tools.** Provide one lemma in a precise subregime. A useful target is the simple bound
$$
   \frac{\Gamma(B)}{\Gamma(B-\alpha)}\le B^\alpha
$$
   under $B-\alpha\ge3$, with proof via $\psi(t)<\log t$, plus a note where this bound becomes too crude.

Exploratory allocation:

Spend at most 20% on a low-degree Sonin/Krasikov/SOS pilot for $n=2$. Use the exact ansatz
$$
V=A(u)H^2+B(u)p_B^2H'^2+C(u)p_BHH'.
$$
If no sign certificate appears, report the obstruction and do not continue the route.

Confidence:

Confidence in the endpoint-cap ODE, cap length, quadratic $K_B$, and cap monotonicity: **0.89**.

Confidence in forbidden-zone ascent and Sonin first-lobe reduction, conditional on imported modules and boundary wording: **0.88**.

Confidence that the residual $n=1$ theorem is certified after insertion of the gamma lower-bound appendix: **0.89**.

Confidence in the compactified $n=2$ polynomial: **0.89**.

Confidence in the compactified $n=2$ critical cubic and its scaling factor: **0.89**.

Confidence in the $n=2$ target-ratio formulas, including the Laguerre face: **0.88**.

Confidence that A1's new interior subbox certificate is valid once the Bernstein transcript is archived: **0.84**.

Confidence that the full residual $n=2$ theorem is true and reachable by rational subdivision: **0.70**.

Confidence that Round 29 proves the full residual $n=2$ theorem: **0.20**.

Confidence in A2's rational normal form and post-peak balance as algebra: **0.89**.

Confidence in A2's $n^{3/5}$ zero-safety threshold as a rigorous theorem: **0.35**.

Confidence that the rational-Bessel quotient route can prove a useful small-$\alpha$ range after constants are supplied: **0.50**.

Confidence that the bulk weighted Langer/Airy route is already proved for arbitrary $n$: **0.12**.

Confidence that a low-degree Sonin/Krasikov/SOS pilot may produce useful $n=2$ certificates: **0.45**.

Confidence that Round 29 proves the full real-parameter KKT conjecture: **0.10**.

Overall judge decision:

Record Round 29 as a strong partial-execution round. Add the compactified $n=2$ polynomial, critical cubic, and ratio formulas to the lemma bank as certified algebra. Add A1's new subbox as "provisional certificate pending full Bernstein transcript." Add A2's rational-coordinate normal form, relative-amplitude equation, pre-peak Volterra bound, and post-peak critical-point balance as conditional lemmas with explicit zero-free hypotheses. Do not add A2's $n^{3/5}$ threshold as a theorem. Do not add the Langer Laurent cancellation as archival until it is redone in the dynamic variable with an executable or hand-checkable series transcript.

Round 30 should focus on: completing the $\theta=0$ and $\theta=1$ residual $n=2$ faces; archiving the new subbox transcript; expanding the $n=2$ interior subdivision; proving or failing the rational-Bessel zero-safety constants; and repairing the Langer cancellation log.