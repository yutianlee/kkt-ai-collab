# Adjusted Endpoint Strategy for the KKT Proof

This version replaces the earlier global Laguerre/Airy program with a sharper
endpoint-cap argument. The central Jacobi estimates already control the region
corresponding to large endpoint variable \(u\). Therefore the remaining endpoint
problem only needs a **finite-\(\beta\), first-lobe Bessel certificate**, propagated
by Sonin monotonicity.

The decisive simplification is:

$$
0 \le u \le u_\sigma \le n.
$$

Thus we do not need a global Laguerre theorem on \(0 \le u < \infty\), nor a
soft-edge Airy analysis.

#### Phase 1: Target and Global Reductions

Let

$$
G_n^{(\alpha,\beta)}(x)=
\left\{
\frac{\Gamma(n+1)\Gamma(n+\alpha+\beta+1)}
{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}
\right\}^{1/2}
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
P_n^{(\alpha,\beta)}(x).
$$

The KKT target is

$$
\left|G_n^{(\alpha,\beta)}(x)\right|
\le
\left\{
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right\}^{1/4}.
$$

By the already established central, energy, and small-exponent reductions, it is
enough to treat one endpoint. By symmetry, we take the right endpoint \(x=1\).
The remaining parameter strip is

$$
n\ge 1,\qquad
\frac12 \le \alpha \le \alpha_E(n),\qquad
\beta \ge 0,
$$

where

$$
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3}
= n+\frac{1}{2n+3}.
$$

The complementary ranges \(0\le \alpha\le 1/2\) and
\(\alpha\ge \alpha_E(n)\) are handled by the small-exponent and energy
estimates.

#### Phase 2: Endpoint Cap Localization

Set

$$
s=\alpha+\beta,\qquad
B=n+\alpha+\beta+1=n+s+1,
$$

and define

$$
\sigma=\frac{s}{s+2n}
=\frac{B-n-1}{B+n-1}.
$$

The central argument controls \(x\le \sigma\). The endpoint residual is therefore

$$
\sigma \le x \le 1.
$$

Introduce the endpoint variable and endpoint-normalized function

$$
u=\frac{B(1-x)}{2},\qquad
H_{n,\alpha,\beta}(u)
=G_n^{(\alpha,\beta)}
\left(1-\frac{2u}{B}\right).
$$

At the central/endcap interface,

$$
x=\sigma
\quad\Longleftrightarrow\quad
u=u_\sigma
=\frac{B(1-\sigma)}{2}
=\frac{nB}{B+n-1}
\le n.
$$

Hence the endpoint residual is the compact cap

$$
0\le u\le u_\sigma\le n.
$$

This observation removes the need for the outer Laguerre turning point, the last
Airy lobe, and a separate global Jacobi-to-Laguerre bridge.

#### Phase 3: Exact Endpoint Differential Equation

Define

$$
r_B=\frac{s}{B}=1-\frac{n+1}{B},\qquad
c_B=n+\frac{s}{2B}=n+\frac{r_B}{2}.
$$

Then \(H(u)=H_{n,\alpha,\beta}(u)\) satisfies the exact self-adjoint equation

$$
\left(p_B(u)H'(u)\right)' + q_B(u)H(u)=0,
$$

where

$$
p_B(u)=u\left(1-\frac{u}{B}\right)
$$

and

$$
q_B(u)
=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}.
$$

Equivalently,

$$
K_B(u):=p_B(u)q_B(u)
=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

with

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
$$

In the confluent limit \(B\to\infty\), this becomes the Laguerre endpoint
equation

$$
\left(uH'\right)'
+
\left(
n+\frac{\alpha+1}{2}
-\frac{u}{4}
-\frac{\alpha^2}{4u}
\right)H=0.
$$

Thus the finite-\(\beta\) endpoint equation is the correct object to analyze
directly.

#### Phase 4: Algebraic Monotonicity Lemma

The first required certificate is the elementary inequality

$$
K_B'(u)\ge \frac14
$$

for

$$
n\ge 1,\qquad
\frac12\le \alpha\le \alpha_E(n),\qquad
\beta\ge0,\qquad
0\le u\le u_\sigma.
$$

Since

$$
K_B'(u)=\Lambda_B-2\Delta_Bu,
$$

it is enough to prove

$$
\Lambda_B-2\Delta_Bu_\sigma \ge \frac14.
$$

Substituting

$$
u_\sigma=\frac{nB}{B+n-1},\qquad
r_B=1-\frac{n+1}{B},\qquad
c_B=n+\frac{r_B}{2},
$$

reduces the claim to a rational inequality in \(n,\alpha,B\), under

$$
n\ge1,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
B\ge n+\alpha+1.
$$

This should be proved once by clearing denominators. The expected extremal case
is

$$
\alpha=\frac12,\qquad
\beta=0,\qquad
B=n+\frac32,
$$

where the lower value is \(1/4\).

#### Phase 5: Sonin Reduction to the First Lobe

On every interval where \(K_B(u)>0\), define

$$
S_B(u)=
H(u)^2+
\frac{p_B(u)^2H'(u)^2}{K_B(u)}.
$$

Using the endpoint equation,

$$
S_B'(u)=
-\frac{p_B(u)^2K_B'(u)}{K_B(u)^2}H'(u)^2.
$$

By the monotonicity lemma, \(S_B'(u)\le0\) throughout the oscillatory part of the
endpoint cap.

Let \(u_1\) be the first positive critical point of \(H\). Since \(\alpha>0\),
\(H(0)=0\), and the regular solution is initially positive. Thus \(u_1\) is the
first local maximum, and the equation forces \(K_B(u_1)>0\).

For \(u_1\le u\le u_\sigma\),

$$
H(u)^2\le S_B(u)\le S_B(u_1)=H(u_1)^2.
$$

For \(0\le u\le u_1\), the definition of \(u_1\) gives monotonicity of \(H\).
Therefore

$$
\sup_{0\le u\le u_\sigma}
\left|H_{n,\alpha,\beta}(u)\right|
=H_{n,\alpha,\beta}(u_1).
$$

The entire endpoint problem is now reduced to bounding the first lobe.

#### Phase 6: First-Lobe Bessel Certificate

Near \(u=0\), the regular solution has Frobenius behavior

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
$$

where

$$
A_{n,\alpha,B}
=
\left\{
\frac{\Gamma(n+1)\Gamma(B)}
{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}
\right\}^{1/2}
B^{-\alpha/2}
\frac{\Gamma(n+\alpha+1)}
{\Gamma(\alpha+1)\Gamma(n+1)}.
$$

The corresponding Bessel model is

$$
\mathcal B_{n,\alpha,B}(u)
=M_{n,\alpha,B}
J_\alpha\left(2\sqrt{\Lambda_Bu}\right),
$$

with

$$
M_{n,\alpha,B}
=A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
$$

Equivalently,

$$
M_{n,\alpha,B}
=
\left\{
\frac{\Gamma(B)\Gamma(n+\alpha+1)}
{\Gamma(B-\alpha)\Gamma(n+1)}
\right\}^{1/2}
(B\Lambda_B)^{-\alpha/2}.
$$

The needed theorem is:

$$
\left|
H_{n,\alpha,\beta}(u)
\right|
\le
\left(1+\frac{C_\Gamma}{n+1}\right)
\left(
B_*+\frac{C_B}{n+1}
\right),
\qquad
0\le u\le u_1,
$$

where

$$
B_*=\sup_{\nu\ge1/2,\ t\ge0}|J_\nu(t)|<0.680.
$$

The constants \(C_\Gamma,C_B,N_0\) must be explicit and computable, with \(N_0\)
chosen so that

$$
\left(1+\frac{C_\Gamma}{n+1}\right)
\left(
B_*+\frac{C_B}{n+1}
\right)
<2^{-1/4}
\qquad (n\ge N_0).
$$

This theorem has three ingredients:

* **Gamma-ratio control:** prove
  \(M_{n,\alpha,B}\le 1+C_\Gamma/(n+1)\) uniformly for
  \(1/2\le\alpha\le\alpha_E(n)\) and \(B\ge n+\alpha+1\).
  This should use Binet's formula or a sharp Kershaw-type gamma-ratio
  inequality. The false shortcut \(M_{n,\alpha,B}\le1\) must not be used,
  because it fails slightly when \(1/2\le\alpha<1\).

* **Bessel maximum:** prove
  \(\sup_{\nu\ge1/2,\ t\ge0}|J_\nu(t)|<0.680\).
  A convenient route is a Landau-type bound for \(\nu\ge1\), plus rigorous
  interval verification for \(1/2\le\nu\le1\). The worst case is near
  \(\nu=1/2\).

* **Bessel perturbation:** after the Liouville-Bessel change
  \(t=2\sqrt{\Lambda_Bu}\),
  rewrite the endpoint equation as a Bessel equation plus a perturbation.
  Olver variation-of-constants estimates should give the computable bound
  \(|R_B(u)|\le C_B/(n+1)\) for \(0\le u\le u_1\).
  The constants need not be sharp; the gap \(2^{-1/4}-0.680\) is large enough
  for a moderately crude explicit remainder.

#### Phase 7: Endpoint Conclusion for Large Degrees

Assume the first-lobe theorem. Then

$$
H_{n,\alpha,\beta}(u_1)<2^{-1/4}
$$

for every \(n\ge N_0\) in the residual strip. By Sonin reduction,

$$
\sup_{0\le u\le u_\sigma}
|H_{n,\alpha,\beta}(u)|
<2^{-1/4},
$$

and therefore

$$
\sup_{0\le u\le u_\sigma}
|H_{n,\alpha,\beta}(u)|^4
<\frac12.
$$

On this strip the fourth-power KKT target satisfies

$$
T_{n,\alpha,\beta}^4
=
\frac{(n+1)B}
{(n+\alpha+1)(B-\alpha)}
\ge
\frac{n+1}{n+\alpha+1}.
$$

Since \(\alpha\le\alpha_E(n)=n+1/(2n+3)\),

$$
\frac{n+1}{n+\alpha+1}
\ge
\frac{n+1}{2n+1+\frac{1}{2n+3}}
=
\frac12+\frac{1}{4(n+1)}
>\frac12.
$$

Thus the endpoint cap is closed for all \(n\ge N_0\).

#### Phase 8: Finite Residual Verification

It remains to verify the finite set \(1\le n<N_0\). For each such \(n\), certify

$$
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\ge0,\qquad
0\le u\le u_\sigma.
$$

Compactify \(\beta\) by

$$
\theta=\frac{n+\alpha+1}{B}
=
\frac{n+\alpha+1}{n+\alpha+\beta+1}.
$$

Then \(0\le\theta\le1\), where \(\theta=0\) is the Laguerre confluent boundary
and \(\theta=1\) is \(\beta=0\). The finite residual region is compact:

$$
1\le n<N_0,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
0\le\theta\le1,\qquad
0\le u\le u_\sigma.
$$

The critical points may be isolated using either the endpoint equation
\(H'_{n,\alpha,\beta}(u)=0\) or the original Jacobi critical equation

$$
D_{n,\alpha,\beta}(x)=
\{\beta(1-x)-\alpha(1+x)\}P_n^{(\alpha,\beta)}(x)
+
(1-x^2)(n+\alpha+\beta+1)
P_{n-1}^{(\alpha+1,\beta+1)}(x).
$$

The finite verification should use strict interval arithmetic:

* Partition
  \(\alpha\in[1/2,\alpha_E(n)]\), \(\theta\in[0,1]\), and
  \(u\in[0,u_\sigma]\) into rational boxes.

* Enclose the Jacobi polynomial, gamma prefactor, and endpoint weight by ball
  arithmetic on each box.

* Use interval Sturm, Bernstein, or Taylor-model methods to isolate all boxes
  containing critical points.

* At every critical box, and at \(u=0,u_\sigma\), verify:

$$
|H_{n,\alpha,\beta}(u)|^4
-
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\le0.
$$

* Refine until all interval enclosures are strictly negative.

No tail estimate is required because the endpoint cap always satisfies
\(0\le u\le u_\sigma\le n\).

#### Phase 9: Full Proof Architecture

The complete proof should be organized into six modules:

| Module | Region | Tool |
| --- | --- | --- |
| I | Central region | Jacobi Sonin monotonicity |
| II | Energy-dominated region | Weighted Sobolev-energy identity |
| III | \(0\le\alpha\le1/2\) or \(0\le\beta\le1/2\) | Small endpoint exponent estimate |
| IV | Right endpoint residual | Endpoint ODE plus first-lobe Bessel certificate |
| V | Left endpoint residual | Symmetry \((\alpha,x)\leftrightarrow(\beta,-x)\) |
| VI | Finite leftover degrees | Certified interval arithmetic |

The endpoint residual theorem should be stated as:

$$
\sup_{0\le u\le u_\sigma}
\left|
G_n^{(\alpha,\beta)}
\left(1-\frac{2u}{B}\right)
\right|
<2^{-1/4}
$$

for every

$$
n\ge N_0,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\ge0.
$$

Its proof consists of:

* the algebraic monotonicity lemma \(K_B'(u)\ge1/4\);
* the Sonin reduction
  \(\sup_{0\le u\le u_\sigma}|H(u)|=H(u_1)\);
* the gamma-ratio estimate
  \(M_{n,\alpha,B}\le1+C_\Gamma/(n+1)\);
* the Bessel maximum estimate
  \(\sup_{\nu\ge1/2,\ t\ge0}|J_\nu(t)|<0.680\);
* the first-lobe perturbation bound
  \(|R_B(u)|\le C_B/(n+1)\).

#### Phase 10: Why This Strategy Is Preferable

The earlier global Laguerre strategy required uniform control on
\(0\le u<\infty\). That introduced unnecessary work:

* the full oscillatory bulk;
* the outer turning point;
* an Airy last-lobe estimate;
* a separate finite-\(\beta\) Jacobi-to-Laguerre bridge.

The endpoint cap identity \(0\le u\le u_\sigma\le n\) removes all of these.
The central Jacobi proof already controls the complementary region. Therefore
the only remaining endpoint maximum is the first lobe, and Sonin monotonicity
propagates that first-lobe bound through the whole cap.

The optimal complete-proof strategy is:

$$
\text{Prove a uniform finite-}\beta\text{ first-lobe Bessel theorem for the exact endpoint equation, then propagate it by Sonin monotonicity.}
$$

This is shorter, sharper, and more robust than the previous
Laguerre-plus-bridge approach.

#### Final Certificate

A complete proof should ultimately present the following certified chain:

1. central Jacobi Sonin estimate;
2. weighted energy estimate for the energy-dominated region;
3. small-exponent endpoint estimate;
4. right endpoint theorem by the first-lobe Bessel certificate;
5. left endpoint theorem by symmetry;
6. finite interval certificate for \(n<N_0\).

The only nonstandard analytic input still requiring careful execution is the
first-lobe Bessel perturbation theorem with explicit constants. All other
components are algebraic, monotonicity-based, or finite interval verification.

$$
\boxed{\text{The decisive remaining estimate is first-lobe Bessel control, not global Laguerre asymptotics.}}
$$
