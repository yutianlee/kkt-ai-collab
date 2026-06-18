Summary:


Round 20 is a formulation, obstruction, and algebra-consolidation round. It does **not** prove the real-parameter KKT conjecture, and it does **not** prove the finite-$B$ first-lobe amplitude theorem. Its value is that the amplitude problem is now split into more measurable subproblems:

1. a **bulk weighted Langer/Airy track**, which requires an instantiated Dunster--Gil--Segura or Olver weight system and an actual weighted variation integral;
2. a **small-$\alpha$ hard-edge rational-Bessel/Riccati track**, which requires a precise Bessel reference equation, a correct Volterra kernel, and gamma-normalization control;
3. a **low-degree certified-computation track**, which must replace simulated logs with outward-rounded interval certificates, starting with $n=1$.

The endpoint-cap first-lobe proof skeleton remains the selected main route. The reliable algebra is still the right endpoint reduction

$$
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
$$

the cap bound

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n,
$$

the endpoint equation

$$
(p_BH')'+q_BH=0,
$$

with

$$
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

and the quadratic product

$$
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2.
$$

The remaining target is still:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0,
$$

if $u_1$ is the first critical point of $H$ after the first zero $u_0$ of $K_B$ in the cap, prove

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Round 20 makes this target more operational but does not close it. The most reliable contribution is A3’s algebra audit. A1 gives a useful conditional weighted Airy/Langer theorem, but it still contains placeholder DGS/Olver weights. A2 gives an important Laguerre-face obstruction and rational-coordinate Bessel proposal, but several quantitative estimates remain conditional. A4 gives useful Riccati and interval-arithmetic scaffolding, but its interval logs are simulated and therefore cannot be counted as proof.

Literature status:

The core KKT source remains Koornwinder--Kostenko--Teschl, “Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator,” *Advances in Mathematics* 333 (2018), 796--821, DOI `10.1016/j.aim.2018.05.038`, arXiv `1602.08626`. The arXiv record confirms that the paper connects Bernstein-type estimates for Jacobi polynomials with dispersive estimates for the generalized Laguerre operator.

Landau’s Bessel monotonicity theorem remains a valid external dependency for the statement that $\sup_x |J_\nu(x)|$ decreases with $\nu>0$. The OUP/Cambridge abstracts state that the magnitude of $J_\nu$ at positive stationary points is strictly decreasing in the order and that $\sup_x |J_\nu(x)|$ strictly decreases from $1$ to $0$ as $\nu$ increases from $0$ to $\infty$. The bibliographic data are: L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215, 2000, DOI `10.1112/S0024610799008352`.

Dunster--Gil--Segura are the relevant turning-point error-bound sources. The 2020 arXiv record for “Sharp error bounds for turning point expansions” says it derives computable and sharp error bounds for asymptotic expansions of linear differential equations with a simple turning point, involving Airy functions and slowly varying coefficient functions. That is the right theorem family for the KKT Langer oscillator, but Round 20 does not instantiate its hypotheses or weights for the KKT residual $\Psi_B$.

Arb is an appropriate platform for interval certification, but using Arb in principle is not a certificate. Johansson’s Arb paper describes a C library for arbitrary-precision interval arithmetic using midpoint-radius, or ball, arithmetic; the DOI is `10.1109/TC.2017.2690633`. Round 20 contains no executed Arb output with outward-rounded boxes.

For gamma ratios, Wendel--Gautschi--Kershaw-type inequalities and Binet/Stirling remainder bounds remain relevant. The retrieved survey material documents the historical chain from Wendel, Gautschi, and Kershaw to later ratio inequalities, including Kershaw’s “Some extensions of W. Gautschi’s inequalities for the gamma function,” *Mathematics of Computation* 41 (1983), 607--611, DOI `10.2307/2007697`. This supports the literature direction, but it does not yet give the exact four-gamma envelope needed for $M_{n,\alpha,B}$.

Selected main route:

The selected main route is now a **regime-split endpoint-cap first-lobe proof**.

The proof should no longer be framed as a single global Laguerre theorem, a single monolithic global Langer theorem, or a single static Bessel comparison. The current evidence points to three necessary tracks.

**Track I: certified endpoint-cap reduction, already mostly stable.**

This is the structural core. It imports the earlier global modules:

- central-contour clearance;
- weighted-energy clearance;
- small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
- left-right symmetry;
- boundary cases $n=0$, $\alpha=0$, $\alpha=1/2$, no turning point, no critical point.

Inside the residual right cap, all work is on

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

The exact endpoint oscillator is

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

This oscillator remains the correct dynamic object. The first-lobe theorem is still the single decisive analytic target.

**Track II: bulk weighted Langer/Airy certificate.**

A1’s Round 20 formulation should be retained as a **conditional theorem**, not as a proof. Define the Langer variable by

$$
K(\tau)=\zeta(\tau)\zeta_\tau(\tau)^2,
\qquad
K(\tau)=K_B(u(\tau)),
$$

with $\zeta(\tau_0)=0$ at the first zero $u_0$ of $K_B$. Put

$$
H(\tau)=\zeta_\tau(\tau)^{-1/2}W(\zeta).
$$

Then the transformed equation is

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

The central Round 20 correction is that the proof cannot use a crude unweighted Airy matrix norm through the forbidden side. The $\operatorname{Bi}(-\zeta)$ component can inject exponential growth unless the norm is weighted in the Olver/Dunster--Gil--Segura sense. Thus the real proof object is a weighted variation

$$
\mathcal V_*
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\xi)|\omega_*(\xi)\,d\xi,
$$

where $\omega_*$ must be derived from a specific external theorem, not chosen ad hoc.

The conditional scalar endpoint estimate has the schematic form

$$
\zeta_\tau(\tau_1)^{-1/2}
\frac{
\mathfrak C_{*,\mathrm{cut}}(\rho)
\exp(\mathcal V_*(\zeta_{\mathrm{cut}},\zeta_1))
}{
\pi D_{1,*}
}
\le
T_{n,\alpha,\beta}.
$$

This is useful because every symbol is measurable or falsifiable. It is not yet useful as a proof because $\mathsf D_*$, $\omega_*$, $\mathfrak C_{*,\mathrm{cut}}$, and $D_{1,*}$ are not instantiated.

**Track III: small-$\alpha$ hard-edge rational-Bessel or Riccati certificate.**

A2’s obstruction analysis indicates that the Laguerre face at fixed $\alpha$ is dangerous for a monolithic Langer approach. Even if the local residual formula

$$
\Psi_\infty(0)\sim \frac{4^{2/3}}{140}\alpha^{-4/3}
$$

is ultimately certified, it implies that fixed $\alpha$ does not enjoy the same residual decay as a bulk $\alpha\to\infty$ regime. This argues for splitting off bounded or small $\alpha$.

The natural small-$\alpha$ objects are:

1. the rational coordinate

$$
v=\frac{Bu}{B-u},
$$

which removes some coordinate singularities and gives a more natural hard-edge geometry;

2. the Riccati variable

$$
v_R(u)=p_B(u)\frac{H'(u)}{H(u)},
$$

which satisfies

$$
p_B(v_R)_u+v_R^2+K_B=0,
$$

with regularized initialization

$$
v_R(u)=\frac{\alpha}{2}+u w(u),
\qquad
w(0)=-\frac{\Lambda_B}{\alpha+1}.
$$

A4’s regularization is algebraically useful, but the notation should avoid reusing $v$ for both the rational coordinate and the Riccati variable. I will use $z=Bu/(B-u)$ for the rational coordinate in the next-round prompts, and $R(u)=p_BH'/H$ for the Riccati variable.

This track requires exact normalization and exact Olver/Bessel kernels. A2’s claimed rational-coordinate residual

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}
$$

must be rederived from a fully specified reference equation. It cannot yet be entered as a proved lemma in the amplitude bank.

Useful fragments by source:

## A1

A1’s most useful contribution is the conditional weighted Airy theorem. Its value is not that it proves an estimate, but that it isolates the exact constants that must be measured. The key objects are:

$$
\mathcal V_*
=
\int |\Psi_B(\zeta)|\omega_*(\zeta)\,d\zeta,
$$

the cutoff coefficient

$$
\mathfrak C_{*,\mathrm{cut}}(\rho),
$$

and the weighted scalar denominator $D_{1,*}$ obtained from the critical-point condition $H_\tau(\tau_1)=0$.

A1 also correctly identifies that fixed or bounded $\alpha$ should probably not be attacked by a global Langer theorem. The better design is regime split:

- bounded/small $\alpha$: hard-edge Bessel or Riccati;
- growing $\alpha$: weighted Langer;
- low degree: interval.

A1’s limitations are clear. The DGS/Olver weight is not instantiated. The regime thresholds $A_0,A_1,\eta$ are design variables, not theorems. The cutoff coefficient may hide a large $\operatorname{Bi}$ contribution unless the DGS weight is explicitly built from the recessive Frobenius data. A1’s contribution should therefore be recorded as **conditional analytic framework**, not as a proof module.

## A2

A2’s most useful contribution is the obstruction analysis at the Laguerre face and the resulting split-track strategy. A2 correctly downgrades the monolithic unweighted Langer theorem: a fixed-$\alpha$ Laguerre boundary can produce an $O(1)$ obstruction to naive variation decay.

A2 also points to a rational-coordinate Bessel track for the hard-edge regime. This is valuable, but it is not yet proved. The reference equation, dependent-variable normalization, integration interval, and Bessel modulus kernel must be specified. Without those, claims such as

$$
\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)
$$

are not proof-level.

A2’s useful warning about piecewise Airy-to-Prüfer handoffs should remain in the gap register. The simplified buffer

$$
\zeta>4^{-2/3}
$$

is a local phase-model warning, not a universal theorem. It indicates that unbuffered handoffs near $\zeta=0$ are structurally risky.

A2’s “23.8% margin” comparison between $(1/2)^{1/4}$ and a Bessel maximum is only a sanity check. It does not include gamma normalization, matching constants, variation exponentials, or finite-$B$ corrections. It must not be used as a closure argument.

## A3

A3 is the strongest Round 20 source and should drive the lemma-bank update.

The following A3 material should be promoted or nearly promoted after minor cleanup:

1. endpoint ODE:

$$
(p_BH')'+q_BH=0;
$$

2. dynamic oscillator:

$$
H_{\tau\tau}+K_B(u(\tau))H=0;
$$

3. exact Prüfer equations on $K_B>0$:

$$
\frac{R_\tau}{R}
=
-\frac{K_{B,\tau}}{4K_B}\cos2\phi,
\qquad
\phi_\tau
=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi;
$$

4. $\tau$-derivative identities:

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

and the displayed formula for $K_{\tau\tau\tau}$;

5. Liouville normal forms with the correct $+1/4$:

$$
Y_u=p_B^{1/2}H
\quad\Longrightarrow\quad
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0,
$$

and

$$
Y_z=z^{1/2}H
\quad\Longrightarrow\quad
Y_z''+\frac{K_B(u(z))+1/4}{z^2}Y_z=0;
$$

6. compactified hypergeometric representation:

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
u^k;
$$

7. degree-one critical quadratic;

8. degree-two critical cubic, subject to final re-audit;

9. Riccati Taylor data through at least $v_3$;

10. entropy negativity of the leading function $f(c)$ on $0<c\le1$.

Two cautions apply. First, A3’s endpoint ODE proof contains a confusing unnecessary line about extra terms in $\kappa/B$. The identity is simply

$$
\frac{\kappa}{B}
=
n+\frac12-\frac{n+1}{2B}
=
c_B.
$$

The proof should be rewritten cleanly. Second, the Langer removable value is not yet certified until the CAS cancellation log is supplied.

## A4

A4’s useful contribution is scaffolding, not certification. The Riccati regularization

$$
R(u)=\frac{\alpha}{2}+u w(u)
$$

with

$$
w(0)=-\frac{\Lambda_B}{\alpha+1}
$$

and

$$
w'(0)=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}-\frac{\Lambda_B^2}{(\alpha+1)^2}
}{\alpha+2}
$$

is algebraically consistent and useful for interval IVP initialization.

A4 also correctly distinguishes simulated logs from proof. That honesty is important. However, the simulated $n=1$ log cannot be used. It includes a reported root near $u\approx1.45$ in an $n=1$ case, while

$$
u_\sigma=1
$$

for $n=1$. Any critical point outside the cap is irrelevant to the endpoint-cap certificate and should be filtered out before evaluation.

A4’s $n=2$ cubic rescaling contains an error in $a_3$. For $n=2$,

$$
B=\alpha+\beta+3,
$$

so

$$
\alpha+\beta+4=B+1.
$$

Since

$$
c_1=\frac{B+1}{2B},
$$

A3’s coefficient

$$
a_3=-c_1(\alpha+\beta+4)
$$

equals

$$
a_3=-\frac{(B+1)^2}{2B},
$$

not

$$
-\frac{(B+1)(B-1)}{2B}.
$$

The limiting rescaled coefficient still tends to $-1/2$, but the finite-$B$ interval computation would be wrong if it used A4’s displayed expression.

Rejected or risky ideas:

1. **Claiming Round 20 proves KKT.** Rejected. No finite-$B$ first-lobe amplitude theorem is proved.

2. **Treating A1’s conditional weighted Langer theorem as an established bound.** Rejected. It is a useful framework, but the DGS/Olver weight, cutoff constant, and weighted variation remain uninstantiated.

3. **Using a crude unweighted Airy matrix norm through the forbidden side.** Rejected as a main proof mechanism. The $\operatorname{Bi}$ component can be exponentially large, and the unweighted bound is likely too crude.

4. **Treating A2’s $\Psi_\infty(0)\sim 4^{2/3}\alpha^{-4/3}/140$ as certified.** Not yet. It is plausible and consistent with the algebra, but the CAS cancellation log must be produced.

5. **Treating the pointwise Langer residual value as a global obstruction theorem.** Rejected. The decisive quantity is the weighted variation integral with the actual DGS kernel.

6. **Treating rational-coordinate Bessel residual scaling as proved.** Rejected. The residual must be derived from a fully specified model, and the Olver kernel must be correct.

7. **Using Bessel maximum slack as final margin.** Rejected. Gamma normalization and perturbation constants may consume the margin.

8. **Using simulated interval logs.** Rejected. Only outward-rounded interval computation with explicit boxes, root isolation, cap filtering, boundary checks, and unresolved boxes is admissible.

9. **Using A4’s $n=2$ rescaling without correction.** Rejected because of the $a_3$ finite-$B$ error.

10. **Assuming semi-discrete $\beta\in\mathbb N_0$ gives monotonicity.** Rejected for now. Contiguous-relation or induction attempts remain sign-unstable because critical points and normalization move with $\beta$.

11. **Robbins factorial remainders as a complete gamma-ratio theorem.** Rejected. Robbins’ original factorial statement does not automatically handle arbitrary real gamma arguments. A real-gamma Binet/Kershaw/Gautschi theorem with hypotheses is needed.

Known gaps:

### G20.1: Finite-$B$ first-lobe amplitude theorem

The central open theorem remains:

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

if $u_1$ is the first critical point after $u_0$, prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Everything else in Round 20 is preparatory to this theorem.

### G20.2: DGS/Olver weighted Langer instantiation

A1 introduced the right conditional form, but the weight system is missing. The next proof must choose a specific theorem, specify the Airy modulus and weight functions, and derive the exact $\omega_*(\zeta)$ appearing in

$$
\mathcal V_*
=
\int |\Psi_B(\zeta)|\omega_*(\zeta)\,d\zeta.
$$

The theorem’s domain and hypotheses must be checked: simple turning point, regularity of $\Psi_B$, integrability from $\zeta_{\mathrm{cut}}$ to $\zeta_1$, and correct treatment of the forbidden-side cutoff.

### G20.3: Frobenius-to-Airy cutoff coefficient

The constant

$$
\mathfrak C_{*,\mathrm{cut}}(\rho)
$$

is not known. It must encode the regular Frobenius branch before the turning point and avoid introducing an artificial $\operatorname{Bi}$ coefficient. This is not a minor normalization issue; it may dominate the estimate.

### G20.4: Langer removable residual certification

The formula

$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}
$$

needs a CAS log showing cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms. Until then it is “cross-checked,” not certified.

### G20.5: Rational-Bessel model definition and Volterra bound

The rational hard-edge track needs a complete theorem. It must specify:

- independent variable $z=Bu/(B-u)$;
- dependent-variable normalization;
- reference fractional Bessel equation;
- residual $\Delta Q(z)$;
- Bessel modulus or Olver kernel;
- endpoint interval ending at the relevant first critical point or a validated upper envelope for it;
- an explicit inequality showing the variation fits the KKT margin.

### G20.6: Gamma-ratio envelope

The key normalization

$$
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}
$$

still lacks a finite-$n$ theorem. A3’s entropy negativity is useful for $\alpha=cn$ but does not cover fixed $\alpha$, mesoscopic $\alpha$, or finite $n$. The proof needs a regime split with real-gamma remainder bounds.

### G20.7: Low-degree interval certificates

No valid interval certificate exists in Round 20. The first genuine target is $n=1$ with cap filtering. The certificate must include:

- exact parameter boxes for $\alpha$ and $\theta$;
- stable evaluation formula;
- root isolation for critical points;
- exclusion of roots outside $0\le u\le u_\sigma$;
- boundary checks at $\alpha=1/2$, $\alpha=\alpha_E(1)$, $\theta=0$, $\theta=1$, $u=0$, and $u=u_\sigma$;
- outward-rounded interval values of $H^4-T^4$;
- unresolved boxes.

### G20.8: Correct $n=2$ cubic

A3’s $n=2$ cubic is plausible, but it must be rederived in compactified variables and checked against direct differentiation. A4’s rescaling has a finite-$B$ error in $a_3$, so no $n=2$ certificate should proceed until A3 finalizes the formula.

### G20.9: Central-contour dependency

The endpoint proof still imports central-contour clearance. The final proof must state the central module with exact endpoint handling at $u=u_\sigma$, likely by continuity if the original contour estimate is strict at $|x|<\sigma$.

### G20.10: Semi-discrete target

The semi-discrete case remains strategically important, but Round 20 gives no monotonicity or induction in integer $\beta$. It should be tested numerically and interval-wise, but not treated as a simpler theorem until a sign-stable discrete relation is found.

New lemmas to add:

### Lemma L20.1: Endpoint cap and dynamic oscillator package

Under the imported global reductions, the residual right endpoint cap is described by

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}2,\qquad
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n,
$$

and the endpoint function

$$
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
$$

satisfies

$$
(p_BH')'+q_BH=0,
$$

with

$$
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

and the displayed $q_B$. In the dynamic variable

$$
\tau=\log\frac{u}{B-u},
$$

one has

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Status: certified, after cleaning A3’s endpoint ODE derivation.

### Lemma L20.2: Exact Prüfer equations

On $K_B>0$, if

$$
H=R K_B^{-1/4}\sin\phi,
\qquad
H_\tau=R K_B^{1/4}\cos\phi,
$$

then

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

Status: certified algebraically; not an amplitude theorem.

### Lemma L20.3: Langer residual formula

With

$$
K=\zeta\zeta_\tau^2,
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

Status: algebraically derived; removable value at $\zeta=0$ needs CAS certification.

### Lemma L20.4: Conditional weighted Airy first-lobe theorem

Assume a weighted Olver/DGS coefficient propagation theorem gives

$$
\|Y_*(\zeta_1)\|_*
\le
\mathfrak C_{*,\mathrm{cut}}(\rho)
\exp(\mathcal V_*(\zeta_{\mathrm{cut}},\zeta_1)).
$$

Assume the critical-point denominator gives

$$
|W(\zeta_1)|
\le
\frac{\|Y_*(\zeta_1)\|_*}{\pi D_{1,*}}.
$$

If

$$
\zeta_\tau(\tau_1)^{-1/2}
\frac{
\mathfrak C_{*,\mathrm{cut}}(\rho)
\exp(\mathcal V_*)
}{
\pi D_{1,*}
}
\le
T_{n,\alpha,\beta},
$$

then

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

Status: proved as a conditional implication; all constants open.

### Lemma L20.5: Liouville normal forms with $+1/4$

The correct normal forms are

$$
Y_u=p_B^{1/2}H
\quad\Longrightarrow\quad
Y_u''+\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0,
$$

and, for $z=Bu/(B-u)$,

$$
Y_z=z^{1/2}H
\quad\Longrightarrow\quad
Y_z''+\frac{K_B(u(z))+1/4}{z^2}Y_z=0.
$$

Status: certified.

### Lemma L20.6: Compactified hypergeometric representation

For

$$
\theta=\frac{n+\alpha+1}{B},
$$

one has

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

Status: certified and interval-ready.

### Lemma L20.7: Degree-one critical equation

For $n=1$,

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u,
$$

and critical points satisfy

$$
(\alpha+\beta+2)u^2
-
\left[
\alpha(B+\alpha+1)+\beta(\alpha+1)+2B
\right]u
+
\alpha B(\alpha+1)
=
0.
$$

Status: certified. Interval proof still absent.

### Lemma L20.8: Degree-two critical cubic

With

$$
P_2(u)=A-b_1u+c_1u^2,
$$

where

$$
A=\frac{(\alpha+1)(\alpha+2)}2,\qquad
b_1=\alpha+2,\qquad
c_1=\frac{B+1}{2B},
$$

the critical equation

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0
$$

has the cubic coefficients given by A3. A4’s finite-$B$ rescaling must be corrected, in particular

$$
a_3=-\frac{(B+1)^2}{2B}
$$

after substituting $n=2$.

Status: nearly certified; re-audit before interval use.

### Lemma L20.9: Riccati regularization

For

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)},
$$

one has

$$
p_BR_u+R^2+K_B=0.
$$

The substitution

$$
R(u)=\frac{\alpha}{2}+u w(u)
$$

gives a regular initial value with

$$
w(0)=-\frac{\Lambda_B}{\alpha+1},
$$

and

$$
w'(0)=
\frac{
\Delta_B-\frac{\Lambda_B}{B(\alpha+1)}-\frac{\Lambda_B^2}{(\alpha+1)^2}
}{\alpha+2}.
$$

Status: certified algebraically; interval IVP not executed.

### Lemma L20.10: Gamma entropy leading negativity

For

$$
f(c)=(1+c)\log(1+c)-c-\frac c2\log\left(1+c+\frac{c^2}{2}\right),
$$

A3 gives a plausible proof that

$$
f(c)<0,\qquad 0<c\le1.
$$

Status: accepted as leading asymptotic lemma after final derivative-sign cleanup; not a finite-$n$ gamma-ratio envelope.

### Lemma L20.11: Landau half-order Bessel maximum dependency

Landau’s theorem supports monotonic decrease of $\sup_x |J_\nu(x)|$ with $\nu>0$. For $\nu=1/2$,

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
$$

and the first positive maximum satisfies

$$
\tan t=2t,
$$

with value approximately

$$
0.6791921047.
$$

Thus

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680
$$

is a valid literature-backed dependency once the Bessel reduction is actually in place.

Status: literature-backed dependency; not an amplitude theorem.

Counterexample checks to run:

1. **DGS weighted variation hard cases.** Compute

$$
\mathcal V_*
=
\int_{\zeta_{\mathrm{cut}}}^{\zeta_1}
|\Psi_B(\zeta)|\omega_*(\zeta)\,d\zeta
$$

for hard boxes:

$$
\theta\in\{0,0.1,0.5,1\},
\qquad
\alpha\in\{1/2,1,2,C\sqrt n,cn\},
\qquad
n\in\{10,50,100\}.
$$

Report the full final ratio, not merely $\mathcal V_*$.

2. **Langer residual CAS cancellation.** Expand $K(\tau)$ near $\tau_0$, compute $\zeta(\tau)$, substitute into $\Psi_B$, and verify cancellation of $\zeta^{-2}$ and $\zeta^{-1}$ terms. Extract the constant term.

3. **Rational-Bessel residual derivation.** Starting from $z=Bu/(B-u)$ and a specified dependent-variable transform, derive the exact Bessel core and residual. Then compute the correct Olver/Bessel Volterra integral. Test whether the scaling is $O(\alpha^3/n^2)$, $O(\alpha^4/n^2)$, or something else.

4. **Gamma normalization envelope.** For

$$
\log M_{n,\alpha,B}
=
\frac12[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)]
-\frac{\alpha}{2}\log(B\Lambda_B),
$$

derive a Binet/Kershaw/Gautschi upper bound with explicit remainder. Split fixed $\alpha$, $\alpha=C\sqrt n$, $\alpha=cn$, $\theta=0$, and $\theta=1$.

5. **$n=1$ interval certificate.** Use exact boxes in $(\alpha,\theta)$. Isolate roots of the certified quadratic. Filter roots to $0\le u\le u_\sigma=1$. Evaluate $H^4-T^4$ outward-rounded on each root and on cap boundaries. List unresolved boxes.

6. **$n=2$ cubic correction.** Recompute the cubic in compactified variables and fix A4’s $a_3$ error. Only after this should interval root isolation begin.

7. **Critical denominator collapse.** Search for parameter boxes where $D_1$ or $D_{1,*}$ becomes small. If this occurs, A1’s scalar Airy denominator theorem may not be useful without a different norm.

8. **Interior $\theta$ worst cases.** Do not assume the worst finite-$B$ behavior occurs at $\theta=0$ or $\theta=1$. Test interior $\theta$.

9. **Semi-discrete samples.** Evaluate $\beta=0,1,2,3,4,5,10$ separately and compare against continuous $\theta$ envelopes. This is diagnostic only.

10. **Cap filtering sanity check.** Every computational critical point must be filtered by $0\le u\le u_\sigma$. The $n=1$ simulated root outside $u_\sigma=1$ should be preserved as a warning case.

Research strategy adjustment:

Round 21 should be an execution round, not an architecture round.

The proof architecture is now sufficiently specified. New broad routes should be rejected unless they immediately yield a quantified inequality for one of:

$$
\mathcal V_*,
\qquad
\mathfrak C_{*,\mathrm{cut}},
\qquad
D_{1,*},
\qquad
\mathcal V_{\mathrm{Bess}},
\qquad
M_{n,\alpha,B},
\qquad
H(u_1)^4-T^4.
$$

The immediate target is not the full KKT conjecture. The Round 21 target is three verifiable artifacts:

1. certified Langer residual algebra, including the removable value $\Psi_B(0)$;
2. one explicit analytic variation bound, either weighted DGS or rational-Bessel;
3. one real low-degree interval certificate, preferably $n=1$.

The regime split should be adopted as a working strategy but not overformalized until constants are measured. A reasonable provisional split is:

- small/hard-edge track: $\alpha\le C\sqrt n$;
- bulk Langer track: $\alpha\ge C\sqrt n$;
- low-degree track: $n<N_0$ once an analytic threshold exists.

However, neither $C$ nor $N_0$ is currently known.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 21 task is to instantiate the weighted Langer theorem rather than restating it schematically.

Objectives:

1. Choose one specific external theorem for simple-turning-point Airy error bounds. Prefer Dunster--Gil--Segura 2020 if it supplies computable weights, or use a named Olver theorem. State the theorem with its hypotheses in the form needed here.

2. Map the exact KKT oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0
$$

to the theorem. Define:

$$
K(\tau)=K_B(u(\tau)),
\qquad
K=\zeta\zeta_\tau^2,
\qquad
H=\zeta_\tau^{-1/2}W,
$$

and

$$
W_{\zeta\zeta}+\zeta W=\Psi_BW.
$$

3. Derive the precise weighted error-control function. Do not write “$\omega_*$” as a placeholder. Give the actual expression from the theorem, including Airy modulus and weight functions.

4. Define the propagation interval exactly:

$$
[\zeta_{\mathrm{cut}},\zeta_1],
$$

where $u_{\mathrm{cut}}=\rho u_0$ or another explicitly justified cutoff, and $\zeta_1$ corresponds to the first critical point.

5. Derive a fully explicit conditional inequality of the form

$$
\mathcal R_{\mathrm{Lang}}(n,\alpha,\theta,\rho)\le1
$$

that implies

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

Every factor in $\mathcal R_{\mathrm{Lang}}$ must be either exact algebra or a named theorem constant.

6. State a falsification test: give one parameter box where your formula should be evaluated by A4, and state what numerical value would make the Langer track nonviable.

7. Do not introduce new proof routes. Spend at most 10% on literature notes, restricted to exact theorem citations.

Required output: Stage A schema, with sections titled “Instantiated DGS/Olver theorem,” “KKT hypothesis check,” “Weighted variation formula,” “Conditional inequality,” and “Falsification test.”

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 21 task is to make the rational-Bessel small-$\alpha$ track precise or downgrade it.

Objectives:

1. Use $z=Bu/(B-u)$ for the rational coordinate. Avoid reusing $v$ because $v$ is also used for Riccati variables in previous notes.

2. State the exact rational-coordinate differential equation and the dependent-variable normalization used to compare to a fractional Bessel model.

3. Define the Bessel reference equation explicitly. The model must contain the correct hard-edge singular term and normalization.

4. Re-derive the residual $\Delta Q(z)$ from the chosen reference equation. Verify or correct the claimed formula

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-
\frac{\Delta_BB^2}{(B+z)^2}.
$$

5. State the exact Olver or Volterra error integral. Include the real Bessel modulus or kernel, not an informal estimate. Determine whether the kernel behaves like $\sqrt z$, $z|J_\alpha Y_\alpha|$, or another quantity near $z=0$.

6. Prove or downgrade the claimed scaling

$$
\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2).
$$

If the scaling is actually $O(\alpha^4/n^2)$ or has a worse logarithmic factor, state that.

7. Specify the overlap condition with the Langer track. Give a symbolic threshold condition involving $C$ in $\alpha\le C\sqrt n$, but do not choose $C$ without constants.

8. Include a short self-audit of the Laguerre-face obstruction: separate pointwise residual asymptotics from integrated weighted variation.

Required output: Stage A schema with sections “Rational-coordinate Bessel model,” “Residual derivation,” “Volterra kernel,” “Scaling theorem or downgrade,” “Overlap condition,” and “Obstruction audit.”

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 21 task is to finalize the lemma-bank algebra and provide the missing symbolic certificates.

Objectives:

1. Rewrite the endpoint ODE proof cleanly. Use

$$
\frac{\kappa}{B}=n+\frac12-\frac{n+1}{2B}
$$

directly. Remove the confusing extra-cancellation line from Round 20.

2. Produce a CAS verification log for the removable Langer value. Starting from

$$
K(\tau)=\gamma t+a t^2+b t^3+O(t^4),
\qquad
t=\tau-\tau_0,
$$

derive

$$
\Psi_B(0)=
\frac{
10\gamma K_{\tau\tau\tau}(\tau_0)-9K_{\tau\tau}(\tau_0)^2
}{
140\gamma^{8/3}
}.
$$

The output must explicitly show cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms.

3. Recompute the $n=2$ critical cubic directly from the compactified polynomial. Correct A4’s $a_3$ error. Express the cubic in a stable form for $\theta\to0$.

4. Derive the real-gamma envelope theorem attempt for $M_{n,\alpha,B}$. You may use Binet’s formula, Kershaw, Gautschi, Wendel, or another named real-gamma ratio theorem, but you must state its hypotheses. Robbins’ factorial inequality alone is not enough.

5. Split the gamma analysis into at least:

$$
\alpha=O(1),\qquad
\alpha=C\sqrt n,\qquad
\alpha=cn,\qquad
\theta=0,\qquad
\theta=1.
$$

6. Keep the Riccati coefficients through $w'(0)$ and $w''(0)$ if available, but do not claim global Riccati monotonicity unless proved.

Required output: Stage A schema with sections “Lemma-bank text,” “CAS verification,” “Corrected $n=2$ cubic,” “Gamma-ratio envelope,” and “Open analytic estimates.”

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 21 task is to produce one genuine certificate instead of simulated logs.

Objectives:

1. Execute an actual outward-rounded interval certificate for $n=1$. If you cannot execute code in your environment, state that plainly and provide no simulated proof logs.

2. The $n=1$ certificate must include:

- exact parameter domain;
- box subdivision in $\alpha$ and $\theta$;
- root isolation for the quadratic critical equation;
- cap filtering using $0\le u\le u_\sigma=1$;
- boundary checks at $u=0$, $u=1$, $\alpha=1/2$, $\alpha=\alpha_E(1)$, $\theta=0$, and $\theta=1$;
- outward-rounded interval values for $H_1(u)^4-T^4$;
- unresolved boxes, if any.

3. Use the stable compactified formula for $H$ and include full normalization and endpoint weights. Do not evaluate roots outside the cap.

4. After the $n=1$ certificate, provide only algebraic preprocessing for $n=2$ until A3 finalizes the corrected cubic.

5. Separately compute diagnostic, not proof-level, values for:

$$
M_{n,\alpha,B},
\qquad
\Psi_B(0),
\qquad
\mathcal V_{\mathrm{Bess}},
\qquad
\mathcal V_*
$$

on one hard box selected by A1 or A2.

6. Preserve failure boxes. Do not hide unresolved boxes. If the computation cannot prove a box, report it.

Required output: Stage A schema with sections “Executed interval certificate,” “Root isolation logs,” “Boundary checks,” “Failure boxes,” “Diagnostic constants,” and “Certified versus experimental claims.”

Confidence:

Confidence in the endpoint-cap and dynamic algebra after A3’s Round 20 audit: **0.88**.

Confidence that the finite-$B$ first-lobe amplitude theorem is established by Round 20: **0.10**.

Confidence that A1’s weighted Langer framework is the right bulk formulation, conditional on DGS/Olver instantiation: **0.70**.

Confidence that A2’s rational-Bessel small-$\alpha$ track is promising after exact kernel correction: **0.62**.

Confidence that A2’s current $\mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)$ scaling is proof-level: **0.35**.

Confidence in A3’s compactified polynomial and Riccati algebra: **0.88**.

Confidence in A3’s gamma entropy leading term: **0.80**.

Confidence that A4’s current simulated interval claims are proof-level: **0.05**.

Confidence that an actual $n=1$ interval certificate is feasible: **0.75**.

Confidence that the endpoint-cap first-lobe route remains the best main strategy: **0.80**.

Overall confidence that the full real-parameter KKT conjecture is established at this stage: **0.08**.

Overall judge decision:

Record Round 20 as a productive formulation-and-obstruction round. Promote A3’s cleaned algebra to the lemma bank after correcting the endpoint ODE proof and verifying the Langer removable value. Add A1’s weighted Airy/Langer theorem only as a conditional theorem with open constants. Add A2’s rational-Bessel route as a proposed small-$\alpha$ track, not as a proved estimate. Add A4’s Riccati regularization and interval plan as useful scaffolding, but reject its simulated interval logs as proof.

Round 21 must deliver concrete artifacts: certified Langer residual algebra, one explicit variation bound, and one genuine low-degree interval certificate. Until those are produced, the conjecture remains open in this workflow.

