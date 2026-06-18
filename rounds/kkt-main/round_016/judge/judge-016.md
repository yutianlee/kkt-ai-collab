Summary:

Source packet: Round 16 judge packet and agent/cross-review bundle, including the required judge-output schema and Round 16 instructions.

Round 16 is a useful quantitative-obstruction and algebra-consolidation round, not a closure round. No agent proves the real-parameter KKT conjecture, and no agent proves the finite-$B$ first-lobe amplitude theorem. The strongest certified progress remains the endpoint-cap first-lobe reduction plus the exact dynamic oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0,
\qquad
\tau=\log\frac{u}{B-u}.
$$

The most important Round 16 advance is not a new proof but a sharper identification of what the next proof must actually estimate. The piecewise Airy-to-Prüfer handoff now looks structurally weak: A2 and A4 identify an Airy-handoff boundary term of size approximately $a^{-3/2}$, and pushing $a$ large enough to make that term compatible with KKT-level slack pushes the handoff outside the range where the local linear Airy approximation is clearly controlled. This does not disprove every possible Airy/Prüfer method, but it strongly suggests that the primary analytic route should be a global Langer/Airy theorem rather than a local handoff followed by Prüfer drift.

A1 supplied the cleanest conditional theorem: once the finite-$B$ first-lobe amplitude lemma is proved, the strong KKT estimate follows from the imported central, energy, small-exponent, symmetry, cap, forbidden-zone, Sonin, and dynamic-oscillator modules. A2 supplied the strongest obstruction analysis and exact Langer/Prüfer residual framework. A3 supplied the strongest algebra audit, including the $n=2$ critical cubic and gamma-ratio entropy analysis. A4 supplied useful computational scaffolding, but its floating numerical rows and claimed small-degree checks are not certificate-level; at least one target formula in its $n=1$ prototype uses the wrong denominator.

The selected route for Round 17 should therefore be:

1. keep the endpoint-cap first-lobe reduction as the proof skeleton;
2. freeze the finite-$B$ first-lobe amplitude lemma as the only analytic hypothesis;
3. pivot the main amplitude effort from piecewise Airy-to-Prüfer handoff to a global Langer/Airy residual-variation theorem;
4. complete a rigorous gamma-ratio envelope with Binet/Robbins/Kershaw-style real-gamma bounds and explicit regime splitting;
5. execute, not merely plan, interval certificates for $n=1$ and $n=2$ using corrected formulas.

Literature status:

The core source remains Koornwinder--Kostenko--Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, Adv. Math. 333 (2018), 796--821. The arXiv record confirms the Jacobi Bernstein/discrete Laguerre connection and the authorship/date.

Haagerup--Schlichtkrull remain relevant only as nearby real-parameter Bernstein context, not as a sharp proof of the KKT constant. The current project should not cite their general uniform estimates as closing the conjecture.

Landau’s Bessel dependency is legitimate but must be used precisely. The relevant reference is L. J. Landau, “Bessel Functions: Monotonicity and Bounds,” *Journal of the London Mathematical Society* 61(1), 197--215, 2000, DOI 10.1112/S0024610799008352. The bibliographic records confirm the title, venue, pages, and DOI. The usable statement for this workflow is monotonicity of the Bessel maximum in the order, supporting reduction of $\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|$ to $\nu=1/2$ after hypotheses are stated exactly. It is not itself a first-lobe Jacobi amplitude theorem.

Dunster--Gil--Segura are now relevant references for explicit-error turning-point expansions: their 2019 paper gives simplified error bounds for simple-turning-point Airy expansions, and their 2020 paper gives sharp computable error bounds for such expansions. These references support the proposed global Langer/Airy route, but they still must be instantiated for the exact KKT oscillator and constants.

Arb remains an appropriate platform for certified computation. Johansson describes Arb as arbitrary-precision midpoint-radius, or ball, interval arithmetic supporting real/complex numbers, polynomials, power series, matrices, and many special functions; the Arb documentation gives the IEEE Transactions on Computers citation and DOI. This validates Arb as a tool, not any particular unexecuted KKT certificate.

Selected main route:

The selected main route remains the **endpoint-cap first-lobe route with global Langer/Airy amplitude control**.

The current proof skeleton is:

1. Use imported global modules:
   - central-contour clearance;
   - weighted-energy clearance;
   - small-exponent theorem for $0\le\alpha\le1/2$ on the right endpoint;
   - left-right symmetry under $(\alpha,\beta,x)\mapsto(\beta,\alpha,-x)$;
   - elementary handling of $n=0$, $\alpha=0$, $\beta=0$, and $\alpha=1/2$.

2. In the residual right-endpoint strip,

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
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

3. Work in the endpoint cap

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
$$

4. Use the exact endpoint equation

$$
(p_BH')'+q_BH=0,
$$

where

$$
p_B(u)=u\left(1-\frac{u}{B}\right)
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
4u\left(1-\frac{u}{B}\right)
}.
$$

5. Use the product

$$
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

with

$$
r_B=\frac{\alpha+\beta}{B}=1-\frac{n+1}{B},
$$

$$
c_B=n+\frac12-\frac{n+1}{2B},
$$

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

6. Use forbidden-zone ascent. Since

$$
K_B(0)=-\frac{\alpha^2}{4}<0
$$

for $\alpha>0$, if $K_B$ has no zero in the cap, then $K_B<0$ throughout the cap and the solution is controlled by ascent to the central boundary. If $K_B$ has a first zero $u_0$, then no local maximum occurs before $u_0$.

7. Use Sonin ordering on $K_B>0$. The Sonin functional

$$
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}
$$

satisfies

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2
\le0.
$$

Thus later local extrema in the allowed part of the cap do not exceed the first one.

8. Reduce the problem to the first critical point $u_1$ after $u_0$, if it exists. The remaining estimate is

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This finite-$B$ first-lobe amplitude theorem is the central active gap. It should not be replaced by the global Laguerre inequality on $0\le u<\infty$, nor by static-frequency Bessel comparison.

Useful fragments by source:

### A1

A1’s main contribution is a clean conditional theorem package. The theorem is worth adding to the best proof draft:

**Conditional KKT endpoint proof from first-lobe amplitude.**  
Assume the imported global modules, the endpoint cap reduction, forbidden-zone ascent, Sonin ordering, and the exact dynamic oscillator. If the finite-$B$ first-lobe amplitude hypothesis

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}
$$

holds in the residual right endpoint strip, then the strong KKT estimate follows for all real $\alpha,\beta\ge0$.

A1 also wrote the right object for dynamic amplitude control:

$$
\tau=\log\frac{u}{B-u},
\qquad
u(\tau)=\frac{Be^\tau}{1+e^\tau},
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

This oscillator has no first-derivative term and no artificial Schwarzian at this stage. It should remain the main amplitude object.

A1’s useful Airy setup is:

$$
u_0=\frac{\Lambda_B-\sqrt{\Lambda_B^2-\Delta_B\alpha^2}}{2\Delta_B},
$$

when the zero lies in the cap, and

$$
K_B'(u_0)=\sqrt{\Lambda_B^2-\Delta_B\alpha^2}.
$$

The Airy scale is

$$
\gamma
=
K_{B,\tau}(\tau_0)
=
p_B(u_0)K_B'(u_0)
=
u_0\left(1-\frac{u_0}{B}\right)K_B'(u_0).
$$

A1’s proposed Langer coordinate

$$
\frac23\zeta(u)^{3/2}
=
\int_{u_0}^{u}
\frac{\sqrt{K_B(t)}}{p_B(t)}\,dt
$$

on the allowed side, with the corresponding negative-side definition, is the correct global-turning-point object to audit.

A1’s limitation is that the Airy matching constant and Langer residual inequality remain formal. The conditional theorem is good; the actual amplitude lemma is still missing.

### A2

A2’s most valuable contribution is the obstruction analysis for piecewise Airy-to-Prüfer handoff. A2 identifies the following scaling tension:

- in a handoff at

$$
\tau_h=\tau_0+a\gamma^{-1/3},
$$

the boundary term produced by integrating the Prüfer drift by parts behaves like $O(a^{-3/2})$;

- to make that term as small as the KKT-level available slack, one is tempted to take $a$ growing with $n$;

- but if $a$ is too large, the local Airy linearization error is no longer controlled by the simple first-order model

$$
K_B(u(\tau))\approx \gamma(\tau-\tau_0).
$$

This is a serious obstruction to a **naive piecewise handoff**. It should be recorded as a warning theorem candidate after the constants are checked. It does not yet rule out every local handoff, every modified Prüfer gauge, or every Airy-normalized energy, but it does justify shifting the primary route to a global Langer theorem.

A2 also provides an exact Prüfer integration-by-parts framework. The starting identities are

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

The formal IBP must keep the exact denominator, not replace it prematurely by $\sqrt{K_B}$. Any term involving $\sin4\phi$ or denominator nonvanishing must be accounted for explicitly.

A2’s Langer residual formulas are useful but should be checked in one more algebra pass before being treated as lemma-bank certified. In particular, the apparent singularity at the turning point must be removed by a Taylor expansion at $u_0$ with the limiting value displayed.

A2’s gamma-ratio commentary should be downgraded unless it uses a precise real-gamma Binet theorem. Robbins’ factorial inequality by itself is not a theorem for arbitrary real gamma ratios.

### A3

A3 remains the strongest algebra source in Round 16.

The following A3 fragments should be accepted into the lemma bank after minor formatting:

1. Exact dynamic oscillator:

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

2. Exact Prüfer equations on $K_B>0$:

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

3. Airy scale:

$$
\zeta=
\left(p_B(u_0)K_B'(u_0)\right)^{1/3}(\tau-\tau_0)
$$

locally at a simple turning point.

4. No-zero correction:

For $\alpha>0$, if $K_B$ has no zero in the cap, then $K_B<0$ throughout the cap. The cap is therefore entirely forbidden and controlled by forbidden-zone ascent plus central-boundary clearance.

5. Stable compactified hypergeometric representation:

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]u^k,
$$

where

$$
\theta=\frac{n+\alpha+1}{B}.
$$

6. Degree-one critical quadratic:

For $n=1$,

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

7. Degree-two critical cubic:

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

Then the critical equation

$$
(\alpha(B-u)-\beta u)P_2(u)+2u(B-u)P_2'(u)=0
$$

has coefficients

$$
a_3=-c_1(\alpha+\beta+4),
$$

$$
a_2=\alpha(Bc_1+b_1)+\beta b_1+4Bc_1+2b_1,
$$

$$
a_1=-\alpha B b_1-(\alpha+\beta)A-2Bb_1,
$$

$$
a_0=\alpha BA.
$$

Equivalently, this matches A3’s expanded form and should supersede A4’s coefficient list.

8. Closed $u$-form of the Prüfer drift:

$$
\int_{\tau_h}^{\tau_1}
\frac{K_{B,\tau}}{K_B}\cos2\phi\,d\tau
=
\int_{u_h}^{u_1}
\frac{K_B'(u)}{K_B(u)}\cos2\phi(u)\,du.
$$

A3’s gamma-ratio leading entropy result is useful. The claimed negativity of

$$
f(c)
=
(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right)
$$

on $0<c\le1$ should be recorded as a leading-asymptotic lemma. It does **not** yet prove the desired uniform gamma envelope for finite $n$ or for the regimes $\alpha=O(1)$, $\alpha=O(\sqrt n)$, and small $n$.

One important sign audit: several Round 16 comments suggest the affine/rational Liouville normal form may involve $K_B-1/4$. Direct calculation gives the opposite under the convention

$$
Y=p_B^{1/2}H.
$$

For

$$
(pH')'+qH=0,\qquad K=pq,
$$

setting $Y=p^{1/2}H$ gives

$$
Y''+
\left(
\frac{q}{p}
-\frac{p''}{2p}
+\frac{(p')^2}{4p^2}
\right)Y=0.
$$

For

$$
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

one has

$$
-\frac{p_Bp_B''}{2}+\frac{(p_B')^2}{4}=\frac14.
$$

Thus

$$
Y_u''+
\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

Similarly, in rational variable $v$ with $Y_v=v^{1/2}H$,

$$
Y_v''+
\frac{K_B(u(v))+1/4}{v^2}Y_v=0.
$$

The earlier plus-sign formula should be kept. The exact dynamic oscillator is unaffected by this sign issue, but any Liouville-normal turning-point discussion must use the correct formula.

### A4

A4’s main value is computational scaffolding and a sharper list of what an interval proof must contain.

Useful A4 fragments:

1. The $n=1$ critical quadratic is correct.

2. The compactified hypergeometric representation is correct and stable.

3. The interval prototype structure is broadly correct: use interval variables $(\alpha,\theta)$, isolate critical roots, evaluate $H^4-T^4$, check boundary faces, and log unresolved boxes.

4. The warning about unregularized Prüfer drift is valuable. A4 correctly does not claim the drift is uniformly small without Airy/Langer regularization.

However, several A4 claims must be downgraded:

1. The $n=1$ interval prototype uses an incorrect target formula. For $n=1$,

$$
T^4
=
\frac{2B}{(\alpha+2)(B-\alpha)},
$$

not

$$
\frac{2B}{(\alpha+1)(B-\alpha)}.
$$

Therefore A4’s displayed $n=1$ numerical rows are experimental at best and cannot be recorded as “proved.”

2. A4’s $n=2$ cubic coefficients appear to contain an $E_2$ error. Use A3’s cubic after a final independent check.

3. A4’s “semi-discrete worst case at $\beta=0$” is heuristic, not a theorem.

4. A4’s Landau statement should be precise. Landau supports the Bessel maximum monotonicity needed for the $\nu\ge1/2$ supremum, but the half-order maximum should still be certified by interval bracketing of the first root of

$$
\tan t=2t.
$$

5. A4 still did not execute the requested full numerical grid or produce a real interval certificate. Plans and floating rows do not count as finite verification.

Rejected or risky ideas:

1. **Claiming Round 16 proves KKT.**  
Rejected. The finite-$B$ first-lobe amplitude theorem is still unproved.

2. **Naive piecewise Airy-to-Prüfer handoff as the primary route.**  
Demoted. The $a^{-3/2}$ boundary term and handoff scaling tension make this route risky. It may remain a local diagnostic or secondary method, but the main analytic route should be global Langer/Airy.

3. **Static Bessel comparison.**  
Rejected as the main route. Earlier rounds already showed the static-frequency approach injects too much distortion in the $\alpha=O(n)$ transition strip.

4. **Global Laguerre inequality as the main target.**  
Demoted. The cap only requires $0\le u\le u_\sigma\le n$ and then only the first critical point.

5. **Uncertified gamma-ratio envelope.**  
Rejected as proved. The leading entropy negativity is useful but not enough.

6. **Unexecuted interval arithmetic.**  
Rejected as proof. A valid interval certificate must include outward-rounded arithmetic, root isolation, margin enclosures, box logs, and unresolved boxes.

7. **Parameter monotonicity in $\beta$ or $\theta$.**  
Open. No monotonicity theorem exists yet. Continuous $\theta$ cannot be reduced to boundary checks.

8. **A4’s floating numerical table.**  
Rejected as certificate-level evidence because of wrong target denominator and lack of interval enclosures.

9. **A2/A4 overstatements about impossibility.**  
The handoff obstruction is strong, but not a theorem that no modified local method can work. Record it as an obstruction warning, not as a universal impossibility result.

10. **Ambiguous Liouville sign correction.**  
Any statement replacing $K_B+1/4$ by $K_B-1/4$ under $Y=p_B^{1/2}H$ is rejected. Direct calculation gives $K_B+1/4$.

Known gaps:

### G16.1: Finite-$B$ first-lobe amplitude theorem

For

$$
n\ge1,\qquad
\frac12<\alpha<\alpha_E(n),\qquad
\beta\ge0,
$$

let $u_0$ be the first zero of $K_B$ in the cap and $u_1$ the first critical point after $u_0$, if it exists. Prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This is still the central gap.

### G16.2: Global Langer residual bound

Define the Langer coordinate $\zeta$ by the exact integral relation from $K_B/p_B^2$. The transformed Airy equation has an error-control function, schematically

$$
W_{\zeta\zeta}+\zeta W=\Psi_B(\zeta)W.
$$

The project needs an explicit bound on the relevant Olver error-control variation over the first-lobe domain. A statement like $O(n^{-4/3})$ is not enough. The theorem must state constants and valid parameter ranges.

### G16.3: Removable singularity at $u_0$

The Langer residual has apparent singular terms at $K_B=0$. The next round must compute the Taylor expansion at $u_0$ and display the finite limiting value. This is a small but essential algebraic checkpoint.

### G16.4: Airy/Frobenius matching constant

The regular endpoint branch

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2}
$$

must be connected rigorously to the Airy-normalized solution through the forbidden zone. Formal WKB matching is not enough. A1’s constant should be derived from Olver’s theorem or a direct integral equation with a stated error bound.

### G16.5: Gamma-ratio envelope

The normalization

$$
M_{n,\alpha,B}
=
\left[
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
\right]^{1/2}
(B\Lambda_B)^{-\alpha/2}
$$

still needs a uniform upper bound. The proof must split at least into:

- $\alpha=O(1)$;
- $\alpha=O(\sqrt n)$ or intermediate $\alpha=o(n)$;
- $\alpha=cn$;
- $\beta=0$;
- $\beta>0$ or compactified $\theta<1$;
- small $n$.

### G16.6: Corrected interval certificates for $n=1$ and $n=2$

The $n=1$ and $n=2$ algebra is close to ready, but no interval proof has been executed. A4’s $n=1$ target denominator error must be corrected before any table or certificate is accepted.

### G16.7: Semi-discrete specialization

The application only needs $\beta\in\mathbb N_0$, but Round 16 gives no theorem exploiting integrality. A2’s shift-operator idea is worth a small exploratory allocation, but no discrete monotonicity or contraction has been proved.

### G16.8: Boundary and no-critical-point cases

The proof draft must retain explicit clauses for:

$$
n=0,\quad
\alpha=0,\quad
\alpha=\frac12,\quad
\beta=0,\quad
K_B \text{ has no zero in the cap},\quad
u_0=u_\sigma,\quad
u_1 \text{ absent}.
$$

These cases are easy to mishandle if the final proof assumes $K_B>0$ or uses singular Prüfer variables at the turning point.

New lemmas to add:

### Lemma L16.1: Conditional KKT endpoint proof from first-lobe amplitude

Status: certified conditional theorem.

Assume the central-contour, weighted-energy, small-exponent, symmetry, right endpoint cap, forbidden-zone ascent, Sonin ordering, and dynamic oscillator modules. If the finite-$B$ first-lobe amplitude theorem holds in the residual right endpoint strip, then the strong KKT estimate holds for all real $\alpha,\beta\ge0$.

### Lemma L16.2: Exact dynamic oscillator

Status: certified.

With

$$
\tau=\log\frac{u}{B-u},
$$

one has

$$
H_\tau=p_BH',
\qquad
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

### Lemma L16.3: Exact Prüfer equations on $K_B>0$

Status: certified algebraically; not a bound.

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

### Lemma L16.4: Airy scale at the first turning point

Status: certified local algebra.

If $u_0$ is a simple zero of $K_B$ in the cap, then

$$
K_B(u(\tau))
=
p_B(u_0)K_B'(u_0)(\tau-\tau_0)
+
O((\tau-\tau_0)^2),
$$

and the natural local Airy variable is

$$
\zeta=
\left(p_B(u_0)K_B'(u_0)\right)^{1/3}(\tau-\tau_0).
$$

### Lemma L16.5: Correct affine and rational Liouville normal forms

Status: certified algebraic sign correction.

For

$$
Y_u=p_B^{1/2}H,
$$

one has

$$
Y_u''+
\frac{K_B(u)+1/4}{p_B(u)^2}Y_u=0.
$$

For

$$
v=\frac{Bu}{B-u},
\qquad
Y_v=v^{1/2}H,
$$

one has

$$
Y_v''+
\frac{K_B(u(v))+1/4}{v^2}Y_v=0.
$$

### Lemma L16.6: Stable compactified hypergeometric representation

Status: certified.

For

$$
\theta=\frac{n+\alpha+1}{B},
$$

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]u^k.
$$

### Lemma L16.7: Degree-one critical equation

Status: certified algebraically; interval proof still open.

For $n=1$, critical points satisfy

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

The correct target is

$$
T^4=\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

### Lemma L16.8: Degree-two critical cubic

Status: certified after one final symbolic check.

For $n=2$, critical points satisfy

$$
a_3u^3+a_2u^2+a_1u+a_0=0,
$$

with

$$
a_3=-c_1(\alpha+\beta+4),
$$

$$
a_2=\alpha(Bc_1+b_1)+\beta b_1+4Bc_1+2b_1,
$$

$$
a_1=-\alpha B b_1-(\alpha+\beta)A-2Bb_1,
$$

$$
a_0=\alpha BA,
$$

where

$$
A=\frac{(\alpha+1)(\alpha+2)}2,
\qquad
b_1=\alpha+2,
\qquad
c_1=\frac{B+1}{2B}.
$$

### Lemma L16.9: No-zero cap case

Status: certified.

If $\alpha>0$ and $K_B$ has no zero in the cap, then $K_B<0$ throughout the cap. The endpoint solution is then controlled by forbidden-zone ascent and central-boundary clearance.

### Lemma L16.10: Leading entropy negativity for gamma normalization

Status: leading asymptotic certified, finite theorem open.

In the scaling $\alpha=cn$ with $0<c\le1$, the leading entropy exponent

$$
f(c)
=
(1+c)\log(1+c)-c-\frac{c}{2}\log\left(1+c+\frac{c^2}{2}\right)
$$

is negative. This supports decay of $M_{n,\alpha,B}$ in the deep transition strip. It does not yet provide a uniform finite-$n$ gamma-ratio theorem.

### Lemma L16.11: Piecewise Airy-to-Prüfer handoff warning

Status: obstruction warning, not impossibility theorem.

A naive handoff at

$$
\tau_h=\tau_0+a\gamma^{-1/3}
$$

produces a Prüfer IBP boundary contribution of order $a^{-3/2}$. Making this sufficiently small appears to conflict with maintaining a purely local linear Airy approximation. This points toward a global Langer theorem.

Counterexample checks to run:

1. **Liouville sign audit.**  
One last symbolic check should confirm the normal-form potentials

$$
\frac{K_B+1/4}{p_B^2}
\quad\text{and}\quad
\frac{K_B(u(v))+1/4}{v^2}.
$$

2. **Turning-point residual limit.**  
Compute

$$
\lim_{u\to u_0}\Psi_B(\zeta(u))
$$

from the Taylor expansion of $K_B(u(\tau))$ at $u_0$. This must be finite and explicitly bounded.

3. **Global Langer variation.**  
For hard samples such as

$$
\beta=0,\qquad \alpha=c n,\qquad c\in\{0.25,0.5,0.75,1\},
$$

numerically integrate the exact Langer error-control variation over the first lobe and determine whether it scales like $n^{-4/3}$, $n^{-1}$, or $O(1)$.

4. **Airy matching constant.**  
Derive the Frobenius-to-Airy matching constant from a theorem with explicit error terms. Check whether it contains hidden factors of $B$, $\Lambda_B$, or $\gamma$.

5. **Gamma-ratio scan and proof split.**  
Compute $\log M_{n,\alpha,B}$ over:

$$
n\le200,\quad
\frac12\le\alpha\le\alpha_E(n),\quad
\theta\in\{0,0.05,0.1,0.25,0.5,0.75,1\}.
$$

Then build rigorous Binet bounds in regimes $\alpha=O(1)$, $\alpha=O(\sqrt n)$, and $\alpha=cn$.

6. **Corrected $n=1$ interval certificate.**  
Use the correct target denominator $(\alpha+2)$ and the exact quadratic. Report outward-rounded boxes, margins, and unresolved boxes.

7. **$n=2$ cubic validation.**  
Validate the $n=2$ cubic coefficients by comparing roots against high-precision differentiation of $H_2$ for sample parameters, then run interval root isolation.

8. **Bessel half-order maximum.**  
Use interval Newton to enclose the first positive solution of

$$
\tan t=2t
$$

and evaluate

$$
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t
$$

to certify the numerical upper bound below $0.680$.

9. **Semi-discrete subset.**  
Test $\beta\in\{0,1,2,3,4,5,10\}$ separately. Do not infer monotonicity from samples.

10. **Failure search.**  
Look for $R^{(1)}\ge1$ using corrected formulas. Failure boxes should be preserved, not hidden.

Research strategy adjustment:

Round 17 should narrow further.

The project now has enough architecture, and Round 16 has shown that a local handoff may be too fragile. The next round should pivot from “derive more formal identities” to “bound one exact error-control object.”

The main track should be:

**Global Langer variation theorem for the exact oscillator**

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

This track should produce a theorem of the form:

If the Langer error-control variation satisfies

$$
\mathcal V_{n,\alpha,\beta}\le E_{n,\alpha,\beta}
$$

with explicit $E_{n,\alpha,\beta}$, and the gamma normalization satisfies

$$
M_{n,\alpha,B}\le G_{n,\alpha,\beta},
$$

then

$$
|H(u_1)|\le T_{n,\alpha,\beta}.
$$

The secondary track should be gamma-ratio certification. Without a usable gamma envelope, even an excellent Airy/Langer error estimate will not close the final inequality.

The computational track should stop presenting plans as results. A4’s next output must include either a genuine interval certificate or a precise list of failure boxes.

A small exploratory allocation should remain for the semi-discrete case $\beta\in\mathbb N_0$, especially through contiguous relations or shift operators. This should stay secondary unless it produces an explicit positivity or contraction inequality.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist, proof synthesizer, and judge candidate. Your Round 17 task is to convert the Round 16 conditional framework into a quantitative Langer theorem statement with named constants.

Objectives:

1. Restate the conditional endpoint proof as the current best proof skeleton. Keep exactly one main analytic hypothesis: the finite-$B$ first-lobe amplitude theorem.

2. Derive the Frobenius-to-Airy matching constant from first principles. Start with

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2}
$$

as $u\downarrow0$, transform to the $\tau$ variable, and connect it to the subdominant Airy branch through the forbidden region using a theorem with a stated error term.

3. Define the global Langer variable $\zeta$ by

$$
\frac23\zeta^{3/2}
=
\int_{u_0}^{u}\frac{\sqrt{K_B(t)}}{p_B(t)}\,dt
$$

on the allowed side and the corresponding forbidden-side formula. State the exact transformed equation and the residual $\Psi_B$.

4. Formulate a theorem of the form:

If

$$
\mathcal V_B \le V_{n,\alpha,\beta},
\qquad
M_{n,\alpha,B}\le G_{n,\alpha,\beta},
$$

and an explicit inequality involving $V_{n,\alpha,\beta}$, $G_{n,\alpha,\beta}$, and $T_{n,\alpha,\beta}$ holds, then the first-lobe amplitude bound follows.

5. Correctly state the affine/rational Liouville normal form with $K_B+1/4$, not $K_B-1/4$, under the convention $Y=p_B^{1/2}H$.

6. Include boundary clauses for no zero, $u_0=u_\sigma$, no critical point, $n=0$, $\alpha=0$, $\alpha=1/2$, and $\beta=0$.

Exploratory allocation: spend at most 15% on the semi-discrete case. Identify whether a contiguous relation in $\beta$ could yield a contraction inequality, but do not claim it without proof.

For A2:

You are A2, the obstruction finder and dynamic-amplitude strategist. Your Round 17 task is to turn the Langer residual into a measurable theorem or find a concrete obstruction.

Objectives:

1. Work only with the exact oscillator

$$
H_{\tau\tau}+K_B(u(\tau))H=0.
$$

Do not use static Bessel comparison.

2. Derive the global Langer equation cleanly, including the precise residual $\Psi_B(\zeta)$ and the exact Olver error-control variation required by the theorem you intend to use.

3. Compute the Taylor expansion of $\Psi_B$ at the turning point $u_0$ and display the finite removable value. This is mandatory.

4. For the scaling family

$$
\alpha=cn,\qquad \beta=0,\qquad 0<c\le1,
$$

estimate the Langer variation integral with explicit constants or give a numerical/interval-supported obstruction. State whether the variation looks like $n^{-4/3}$, $n^{-1}$, or $O(1)$.

5. Clarify the Airy-to-Prüfer handoff obstruction. Prove a precise lower-bound or incompatibility statement if possible; otherwise downgrade it to a warning and specify what modified handoff could still work.

6. Keep the Prüfer IBP denominator exact:

$$
\phi_\tau=
\sqrt{K_B}
+
\frac{K_{B,\tau}}{4K_B}\sin2\phi.
$$

Track all terms, including any $\sin4\phi$ term arising after differentiation.

Exploratory allocation: analyze the semi-discrete contiguous relation in $\beta$. State an exact induction inequality that would imply the $\beta\in\mathbb N_0$ case, or explain exactly why signs prevent it.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 17 task is to make the algebra and gamma normalization theorem-ready.

Objectives:

1. Perform a final symbolic audit of:
   - dynamic oscillator;
   - Prüfer equations;
   - Airy scale;
   - Langer residual formula;
   - Liouville normal forms with the correct $K_B+1/4$ sign;
   - compactified hypergeometric representation;
   - $n=1$ critical quadratic;
   - $n=2$ critical cubic.

2. Confirm the $n=2$ cubic coefficients by two independent derivations:
   - direct expansion of the logarithmic derivative;
   - differentiation of the compactified finite hypergeometric polynomial.

3. Complete the gamma-ratio bound attempt. Start from

$$
\log M_{n,\alpha,B}
=
\frac12\left[
\log\Gamma(n+\alpha+1)+\log\Gamma(B)
-\log\Gamma(n+1)-\log\Gamma(B-\alpha)
\right]
-\frac{\alpha}{2}\log(B\Lambda_B).
$$

Use a real-variable Binet formula with explicit remainder. Split into regimes:

$$
\alpha=O(1),\qquad
\alpha=O(\sqrt n),\qquad
\alpha=cn,\qquad
\beta=0,\qquad
0<\theta<1,\qquad
\theta=0.
$$

4. Turn the leading entropy negativity

$$
f(c)<0
$$

into a finite inequality with a stated threshold $N_0(c)$ or a uniform $N_0$ on compact subintervals.

5. Derive the exact $u$-form of the Langer residual and its Taylor limit at $u_0$ for A2/A4 to evaluate.

Exploratory allocation: test whether a Turán or Christoffel-Darboux identity gives a sharper first-critical-point estimate when $H'(u_1)=0$. Treat this as exploratory unless it gives the exact KKT constant.

For A4:

You are A4, the technical lemma generator and computational certificate planner. Your Round 17 task is to execute corrected numerical and interval work, not just plan it.

Objectives:

1. Correct the $n=1$ target formula:

$$
T^4=\frac{2B}{(\alpha+2)(B-\alpha)}.
$$

Recompute every $n=1$ numerical row from Round 16 and relabel all previous rows as invalid unless they agree with the corrected target.

2. Execute the $n=1$ interval prototype using outward-rounded ball arithmetic. Your output must include:
   - interval domain in $(\alpha,\theta)$;
   - subdivision sizes;
   - root isolation for the quadratic;
   - interval evaluation of $H_1(u_1)^4-T^4$;
   - boundary face checks;
   - unresolved boxes.

3. Execute the $n=2$ prototype using A3’s cubic. Before running intervals, validate the cubic numerically against high-precision differentiation for at least five parameter samples.

4. Implement the compactified polynomial

$$
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
\sum_{k=0}^n
\frac{(-n)_k}{(\alpha+1)_k k!}
\left[
\prod_{j=0}^{k-1}
\left(1+\frac{j\theta}{n+\alpha+1}\right)
\right]u^k
$$

with full gamma normalization and endpoint weights.

5. Numerically evaluate the global Langer variation integral on hard grids:

$$
n\in\{10,20,50,100,200,500\},
$$

$$
\alpha/\alpha_E(n)\in\{0.1,0.25,0.5,0.75,0.9,1\},
$$

$$
\theta\in\{0,0.05,0.1,0.25,0.5,0.75,1\}.
$$

Report observed scaling and failure cases.

6. Run a gamma-ratio scan for $M_{n,\alpha,B}$ and report the maximum of $M-1$ over the same grid. Compare it with candidate envelopes $C/(n+1)$.

7. Preserve failure boxes. Any interval box that fails to certify the margin is useful and must be reported.

Exploratory allocation: build a Riccati/Taylor-model prototype around $u_0$ for small and moderate $n$ as an alternative to Langer asymptotics.

Confidence:

Confidence in the endpoint-cap ODE, cap length, $K_B$ product, derivative monotonicity, forbidden-zone ascent, and Sonin first-lobe reduction: **0.90**.

Confidence in the exact dynamic oscillator and Prüfer equations: **0.90**.

Confidence in the corrected affine/rational Liouville normal form with $K_B+1/4$: **0.88**.

Confidence in A3’s $n=2$ cubic after one final audit: **0.82**.

Confidence that A4’s current numerical rows are certificate-level: **0.20**.

Confidence that the piecewise Airy-to-Prüfer handoff, as currently formulated, can close the proof by itself: **0.35**.

Confidence that a global Langer/Airy theorem is the best analytic route for the amplitude theorem: **0.70**.

Confidence that a rigorous gamma-ratio envelope can be obtained with regime-split Binet estimates: **0.58**.

Confidence that interval arithmetic will close $n=1$ and $n=2$ after corrected implementation: **0.75**.

Confidence that Round 16 proves the full real-parameter KKT conjecture: **0.10**.

Overall judge decision:

Record Round 16 as a strong obstruction-and-algebra round. Add the conditional endpoint theorem, exact dynamic oscillator, Prüfer identities, Airy scale, compactified hypergeometric representation, no-zero correction, degree-one critical quadratic, and degree-two critical cubic to the lemma bank with the statuses above. Add the global Langer residual and gamma entropy as proposed/partially certified lemmas, not as final amplitude theorems.

Do not add any first-lobe amplitude theorem, global Langer residual bound, gamma-ratio envelope, or interval certificate as proved.

Round 17 should focus on quantitative global Langer variation, rigorous Frobenius-to-Airy matching, gamma-ratio remainders, and corrected interval certificates for $n=1,2$.