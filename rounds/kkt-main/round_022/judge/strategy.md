# Round 23 Strategy

Based on the Round 22 judge synthesis dated 2026-06-11, the next round should be an artifact-completion round, not another architecture round.

Round 22 did not prove the KKT conjecture, and it did not prove the uniform finite-$B$ first-lobe amplitude theorem. The active target remains the first-critical-point bound

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

The selected main route remains the endpoint-cap first-lobe route. Broad Laguerre inequalities, static Bessel comparison, and product-formula arguments should stay secondary unless they produce explicit constants or certified inequalities.

## Round 23 Objective

Round 23 should have one main objective:

$$
\boxed{
\text{Complete the } n=1 \text{ residual endpoint theorem and freeze the lemma bank.}
}
$$

The judge ranks the priorities as follows:

1. Finish the $n=1$ residual theorem.
2. Consolidate A3's algebra into the lemma bank.
3. Begin the $n=2$ certificate using the corrected cubic and compactification.
4. Continue the bulk Langer and rational-Bessel tracks only if they produce theorem statements, explicit constants, or certified logs.

The key scalar certificate is

$$
H_1(u)^4 \le E(\alpha),
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

For $n=1$,

$$
T_{1,\alpha,\beta}^4
=
\frac{2B}{(\alpha+2)(B-\alpha)}
=
\frac{2(\alpha+\beta+2)}{(\alpha+2)(\beta+2)}
\ge
\frac58.
$$

Thus it is enough to prove

$$
E(\alpha)<0.39
\qquad
\left(\frac12\le\alpha\le\frac65\right).
$$

The judge notes that $E(6/5)\approx 0.383396$, so the earlier claim $E<0.380$ is false but harmless. The remaining task is to give a rigorous analytic proof or an outward-rounded interval proof of $E<0.39$.

## A1: Synthesize and Close the $n=1$ Theorem

A1 should take the main theorem-synthesis role.

### Prompt For A1

You are A1, broad strategist, proof synthesizer, and judge candidate. Your Round 23 task is to produce the first complete residual endpoint theorem of the workflow.

Deliverables:

1. State and prove a theorem titled **Degree-One Residual Endpoint Certificate**.

   The theorem should assert that

   $$
   n=1,\qquad
   \frac12\le\alpha\le\frac65,\qquad
   \beta\ge0,\qquad
   0\le u\le1
   $$

   implies

   $$
   H_1(u)^4<T_{1,\alpha,\beta}^4.
   $$

2. Use the scalar reduction

   $$
   H_1(u)^4\le E(\alpha)
   $$

   and prove

   $$
   E(\alpha)<0.39<\frac58\le T_{1,\alpha,\beta}^4.
   $$

   Floating-point estimates alone are not acceptable. Use rigorous trigamma/gamma inequalities or explicit outward-rounded interval enclosures. Correct the Round 22 numerical record: $E(6/5)\approx0.383396$, not $E<0.380$.

3. Add a state-update section:

   - Mark $n=1$ as certified only if the scalar envelope is rigorously enclosed.
   - Otherwise mark it as near-certified and identify the remaining scalar obstruction.

4. Include a gap register with:

   - the $n=2$ corrected-cubic certificate;
   - the uniform finite-$B$ first-lobe amplitude theorem;
   - A1's Langer constants $C_0,E_0,G_0$;
   - the adaptive Langer cut issue;
   - the rational-Bessel Volterra constants.

5. Produce a conditional Langer theorem using A1's $C_0,E_0,G_0$ functionals, but do not claim that any range is closed unless uniform constants are actually proved.

The judge says A1's Frobenius-to-Airy formula and recessive Volterra initialization should be promoted only as conditional Langer lemmas, not as an amplitude theorem.

**A1 success criterion:** a clean theorem-level proof of the $n=1$ case, or a precise explanation of the one remaining scalar obstruction.

## A2: Produce One Rational-Bessel Volterra Lemma With Constants

A2 should not write another broad obstruction essay. The task is to convert the rational-coordinate Bessel route into one theorem-level Volterra lemma, or state exactly why the constants do not work.

### Prompt For A2

You are A2, obstruction finder and referee-style strategist. Your Round 23 task is to turn the rational-coordinate Bessel route from asymptotic narrative into one checkable lemma.

Work in the exact rational-coordinate normal form

$$
Y''
+
\left(
\frac{\Lambda_B}{z}
+
\frac{1-\alpha^2}{4z^2}
+
\Delta Q(z)
\right)Y
=0,
$$

with

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}.
$$

Deliverables:

1. Define the Bessel reference solutions, their normalization, and their Wronskian.

2. State the first critical point in $z$ or in the Bessel argument variable.

3. Prove or retract the sign-definite Volterra kernel claim. If it is false or not yet provable, replace it by an absolute-value kernel estimate.

4. Bound

   $$
   \int_0^{z_1}
   |\mathcal K(z,s)\Delta Q(s)|\,ds
   $$

   in a stated parameter range. The output must include constants. The judge rejects statements such as

   $$
   \mathcal V_{\mathrm{Bess}}=O(\alpha^3/n^2)
   $$

   unless Watson/Nicholson/Airy transition constants and hypotheses are displayed.

5. Resolve the threshold. Determine whether this method plausibly covers

   $$
   \alpha\le C\sqrt n,\qquad
   \alpha\le Cn^{2/3},
   $$

   or a different range. The threshold must come from a displayed scalar inequality involving KKT slack.

6. Explain why $\Delta Q(z)$ need not be pointwise small at $z=0$, or acknowledge that as an obstruction.

The judge explicitly says the rational residual is regular but can be $O(1)$ at the hard edge. The proof must rely on Volterra-weighted smallness, not pointwise smallness.

**A2 success criterion:** one rigorous Volterra lemma with constants, or a clearly bounded failure showing why the rational-Bessel track does not yet cover even a small-$\alpha$ range.

## A3: Freeze the Algebra and Audit Langer Conventions

A3 should be the algebra gatekeeper. The judge gives A3 high confidence and says A3's endpoint and rational-coordinate algebra should be promoted to the lemma bank, with a convention-audit flag on the Langer removable value.

### Prompt For A3

You are A3, algebra checker and endpoint-reduction auditor. Your Round 23 task is to produce final lemma-bank text and certify convention-sensitive algebra.

Deliverables:

1. Produce clean lemma-bank statements for:

   - endpoint ODE;
   - the $K_B$ quadratic and cap monotonicity;
   - dynamic oscillator;
   - Prufer equations;
   - rational-coordinate normal form and residual;
   - compactified hypergeometric representation;
   - the $n=1$ critical equation;
   - the $n=2$ corrected critical cubic;
   - Riccati Taylor coefficients.

The judge specifically says A3's endpoint ODE, cap identities, dynamic oscillator, Prufer equations, rational-coordinate normal form, compactified hypergeometric representation, corrected $n=2$ cubic, and Riccati Taylor coefficients should be promoted after formatting and final convention audit.

2. Provide a CAS-style derivation of the Langer residual removable value. Fix the convention

   $$
   K=\zeta\zeta_\tau^2,
   \qquad
   H=\zeta_\tau^{-1/2}W,
   $$

   and derive

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

   The derivation must show cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ terms. The judge calls this sign/convention-sensitive and requires a short CAS log before promotion.

3. Repair any claim that the rational residual is $O(1/B)$ pointwise. Distinguish pointwise residual size from Volterra-weighted residual size.

4. Support the $n=1$ scalar proof if possible using Wendel plus rigorous trigamma/gamma bounds.

5. For $n=2$, write the scaled Laguerre-face limiting cubic in compactified variables and state how to handle $\theta=0$ without evaluating $B=\infty$.

**A3 success criterion:** lemma-bank text that other agents can paste without re-deriving algebra, plus a certified or explicitly flagged Langer residual convention audit.

## A4: Produce Actual Certified Enclosures

A4 should produce computation artifacts, not plans. The judge says A4's $n=1$ proof is near-certified but not formally certified because the $E<0.380$ constant is false and the trigamma enclosure is not rigorous.

### Prompt For A4

You are A4, technical lemma generator and symbolic/numeric certificate agent. Your Round 23 task is to produce actual certified scalar enclosures for $n=1$ and begin a real $n=2$ certificate. Do not provide pseudo-code in place of results.

Deliverables:

1. Finish the $n=1$ theorem by proving

   $$
   E(\alpha)<0.39
   \qquad
   \left(\frac12\le\alpha\le\frac65\right)
   $$

   with outward-rounded interval or exact rational enclosures.

   Acceptable methods:

   - prove a convexity/monotonicity statement for $h=\frac12\log E$ using a rigorous tail bound for $\psi'$, then enclose endpoint values;
   - run interval arithmetic over $\alpha$ with logged boxes and outward-rounded evaluations.

2. Correct the numerical record: report $E(6/5)$ inside an outward-rounded interval containing approximately $0.383396$, not below $0.380$.

3. State the final theorem

   $$
   H_1(u)^4<T_{1,\alpha,\beta}^4
   $$

   for the full residual $n=1$ strip and all $\beta\ge0$, only if the enclosure is actually rigorous.

4. Begin $n=2$ using the corrected cubic and compactified variables

   $$
   \alpha\in[1/2,15/7],
   \qquad
   \theta\in[0,1].
   $$

   Do not evaluate $B=(\alpha+3)/\theta$ at $\theta=0$. Use compactified polynomial formulas and the scaled limiting cubic.

5. Provide at least one real interval root-isolation log for a nontrivial $n=2$ box:

   - parameter box;
   - root interval;
   - Krawczyk or interval Newton inclusion;
   - interval value of $H_2^4-T^4$;
   - status: verified or unresolved.

6. Test Riccati IVP as a validation path. If it uses $R=pH'/H$, prove $H\ne0$ up to the first critical point; otherwise use a regularized two-dimensional system.

The judge flags unguarded Riccati division by $H$ as risky.

**A4 success criterion:** certified $n=1$ enclosure plus at least one genuine $n=2$ interval root-isolation log. No simulated logs.

## Recommended Allocation

| Agent | Primary job | Secondary job | Must not do |
| --- | --- | --- | --- |
| **A1** | Finalize the $n=1$ theorem and state update | Conditional Langer theorem with $C_0,E_0,G_0$ | Claim Langer closes a range without uniform constants |
| **A2** | One rational-Bessel Volterra lemma with constants | Semi-discrete exploratory check, at most 20% | Repeat $O(\alpha^3/n^2)$ without constants |
| **A3** | Freeze lemma bank and CAS-audit Langer residual | $n=1$/$n=2$ algebra support | Let unaudited formulas enter the lemma bank |
| **A4** | Certified $n=1$ enclosures | Begin $n=2$ interval root isolation | Provide pseudo-code or floating tables as proof |

## Bottom Line

The next move is not to try another broad proof architecture. It is:

$$
\boxed{
\text{Round 23 = certify } n=1,\ \text{freeze algebra, start } n=2,\ \text{and require constants from A1/A2.}
}
$$

This is the highest-probability step because it creates the first finished residual theorem and prevents another round from drifting into broad but non-closing architecture.
