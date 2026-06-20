Based on a synthesis of the Round 29 reports from the AI agents (A1, A2, A3), here is a calibrated evaluation of the current KKT proof architecture for Jacobi polynomials, followed by concrete mathematical alternatives to test against the identified obstructions.

---

### Part 1: Critical Evaluation of the Current Strategy

The multi-agent audit reveals that the current strategy is proceeding on two parallel tracks: a global analytic bounding method for arbitrary $n$ (using a Volterra integral and Bessel quotient) and an exact computational parameter-tiling method for the residual $n=2$ rectangle. While the algebraic foundations are highly mature, both tracks face severe scaling bottlenecks.

**1. The "Zero-Safety" Obstruction in the Global Track (Serious for large $\alpha$)**
Agent A2 has given a strong diagnostic argument that the general-$n$ "rational-Bessel quotient track" is structurally unsafe in the bulk parameter regime unless a zero-safe continuation theorem is added.

* **The Mechanism:** The global Volterra integral bound relies on the relative amplitude quotient $h(z) = Y(z)/W_1(z)$. Because the residual potential $\Delta Q(z)$ is strictly negative, the true perturbed critical point $T_1^*$ is delayed relative to the Bessel reference peak $j'_{\alpha,1}$.
* **The Breakdown:** The proposed phase shift estimate scales as $O(\alpha^{11/3}/n^2)$. In the bulk transition strip ($\alpha \sim cn$), this estimate can exceed the gap to the first Bessel root $j_{\alpha,1}$. If that happens before the true critical point is reached, the denominator $W_1$ vanishes and the quotient \(h(z)\) is no longer a valid comparison variable.
* **Conclusion:** The rational-Bessel quotient track should be treated as a small-$\alpha$ or diagnostic method until A2 supplies explicit zero-gap, derivative-product, Volterra, residual, and gamma-normalization constants. It should not be treated as a uniform global proof in its present form.

**2. The Brittleness of Rational Subdivision ($n=2$)**
Agent A1's derivation of the compactified critical cubic $C_{\alpha,\theta}(u)$ and the provisional certification of the interior box $Q_{\mathrm{new}}$ using exact tensor-Bernstein sign checks is rigorous. However, the subdivision strategy is brittle:

* **Crude Envelopes:** The use of global Gamma-ratio inequalities (e.g., $\Gamma(B)/\Gamma(B-\alpha) \le B^\alpha$) may introduce artificial inflation that could destroy the required $\mathcal R_2 < 1$ margin in harder parameter regions.
* **1D Boundary Gaps:** The crucial boundary faces--the Laguerre face ($\theta=0$) and the finite face ($\theta=1$)--remain uncertified, as they cannot be resolved by 2D boxes and require dedicated 1D interval root isolation.

**3. Unexecuted Analytic Obligations**
Agent A3 notes that key foundational lemmas remain placeholders:

* **Langer CAS Cancellation:** The exact symbolic cancellation of the $\zeta^{-2}$ and $\zeta^{-1}$ singular terms to yield the finite error potential $\Psi_B(0)$ has not been executed in an archived Python/CAS script.
* **Olver Instantiation:** The explicit $O(1/n)$ perturbation constants and weight-function integrability checks for the Olver/Dunster-Gil-Segura theorem have not been calculated.

---

### Part 2: Alternative Strategies To Test

To address these obstructions, the proof architecture should keep the endpoint-cap route as the main spine while testing alternatives that avoid singular quotients and overly crude bounding inequalities. Here are four candidate strategies:

#### Alternative 1: The Ermakov-Pinney Non-Dividing Track (Promising Global Candidate)

To rescue the continuous asymptotic track without hitting the Bessel zero-crossing singularity, abandon the quotient $h = Y/W_1$ entirely.

* **The Method:** Define a strictly positive amplitude $A(z)$ and phase $\theta(z)$ such that $Y(z) = A(z) \sin \theta(z)$, subject to $\theta'(z) = 1/A(z)^2$. The Liouville normal form $Y'' + P(z)Y = 0$ translates exactly to the nonlinear Ermakov-Pinney equation: $A'' + P(z)A = A^{-3}$.
* **Why it may work:** Let $A_0(z)$ be the amplitude of the Bessel reference. Because the exact residual $\Delta Q(z) < 0$, one has \(P(z)<P_0(z)\) in the rational normal form. This suggests a possible differential comparison for the amplitudes. Crucially, the Ermakov-Pinney amplitude is strictly positive, so it avoids division by zeros of an oscillatory reference. The missing task is to prove the comparison principle with the correct initial normalization and to show that the resulting envelope is strong enough for the KKT target.

#### Alternative 2: Sonin-Krasikov Sum-of-Squares (SOS) Envelope (Concrete $n=2$ Candidate)

Instead of piecemeal computational tiling of the $n=2$ parameter space, deploy a single global algebraic Lyapunov function directly on the endpoint-cap ODE.

* **The Method:** Construct a polynomial envelope $V(u) = A(u)H^2 + B(u)(p_B H')^2 + C(u)H(p_B H')$ parameterized by low-degree rational polynomial coefficients $A, B, C$.
* **The Execution:** Compute the Lie derivative $V'(u)$ along the exact ODE flow $(p_B H')' = -q_B H$. Requiring \(V'(u)\le0\) on the cap \(0\le u\le u_\sigma\) can be turned into algebraic sign or SOS conditions after denominators and parameter boxes are controlled.
* **Why it may work:** If a solver finds rational coefficients and the sign conditions can be verified exactly, it would give a compact algebraic certificate for a box or face of the \(n=2\) space. It should be tested first on the known provisional or certified boxes before being promoted as a replacement for rational subdivision.

#### Alternative 3: Explicit Regime Split (Langer/Airy Bulk Track)

If Ermakov-Pinney proves analytically cumbersome, accept the topological threshold and formally split the general-$n$ proof.

* **Small $\alpha$ Regime ($\alpha \lesssim 2.0n^{3/5}$):** Retain the current rational-Bessel quotient Volterra track, where the phase shift remains safely within the first lobe.
* **Bulk Regime ($\alpha \sim cn$):** Discard the Bessel reference and apply a weighted **Langer transformation with an Airy function** reference. The Airy function correctly models the turning point geometry for large $\alpha$ natively and does not suffer from the structural resonance mismatch that causes the Bessel phase shift.

#### Alternative 4: Sharp Binet/Stirling Envelopes (Needed for difficult finite tiling)

If the $n=2$ subbox program is completed manually without SOS, the crude bounds will likely need to be replaced on difficult boxes.

* **The Method:** Replace all Gamma-ratio inequalities with exact, interval-enclosed Binet/Stirling log-gamma remainders: $\log \Gamma(z) = (z-1/2)\log z - z + \frac{1}{2}\log(2\pi) + \dots + \mu(z)$.
* **Why it may work:** Bounding the exact integral remainder $\mu(z)$ prevents artificial inflation, preserving mathematical slack for high-stress interior boxes and for the one-dimensional interval roots on the $\theta=0$ and $\theta=1$ faces.
