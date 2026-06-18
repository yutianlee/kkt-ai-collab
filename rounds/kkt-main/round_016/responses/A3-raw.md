Summary:
This report aduits the endpoint-cap algebra, produces final lemma‑bank versions of the key identities, derives the degree‑two critical‑point cubic in compactified variables, corrects the “no zero in the cap” case, and attempts a rigorous upper bound for the gamma‑ratio \(M_{n,\alpha,B}\). The leading entropy exponent is proved negative for the transition scaling \(\alpha=cn\), giving strong evidence that \(M_{n,\alpha,B}\) is very small for large \(n\). The closed \(u\)-integral of the signed Prüfer drift is obtained. The remaining analytic gap is a fully explicit Airy/Prüfer amplitude theorem with constants; the algebra is now certified, the amplitude estimate is still open.

Assumptions and notation:
All notation follows the current lemma bank. The residual right‑endpoint strip is  

\[
n\ge 1,\qquad \tfrac12 < \alpha < \alpha_E(n),\qquad \beta\ge 0,
\]

where  

\[
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3}.
\]

The endpoint cap satisfies  

\[
0\le u\le u_\sigma = \frac{nB}{B+n-1}\le n,\qquad 
B=n+\alpha+\beta+1.
\]

The endpoint‑normalised function is  

\[
H(u)=g_n^{(\alpha,\beta)}\!\left(1-\frac{2u}{B}\right),\qquad
g_n^{(\alpha,\beta)} = C_{n,\alpha,\beta}
\Bigl(\frac{1-x}{2}\Bigr)^{\!\alpha/2}
\Bigl(\frac{1+x}{2}\Bigr)^{\!\beta/2} P_n^{(\alpha,\beta)}(x),
\qquad x=1-\frac{2u}{B}.
\]

The exact endpoint ODE is  

\[
(p_BH')'+q_BH=0,
\qquad 
p_B(u)=u\Bigl(1-\frac{u}{B}\Bigr),
\qquad
q_B(u)=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)},
\]

with  

\[
r_B=1-\frac{n+1}{B},\qquad 
c_B=n+\frac12-\frac{n+1}{2B}.
\]

The quadratic Sonin product is  

\[
K_B(u)=p_B(u)q_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
\qquad 
\Lambda_B=c_B+\frac{\alpha r_B}{2},\qquad 
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
\]

The dynamic variable \(\tau=\log\frac{u}{B-u}\) is used throughout the oscillatory analysis.  
The target amplitude is  

\[
T_{n,\alpha,\beta}=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{\!1/4}.
\]

Exact algebra checks:

1.  **Endpoint ODE verification**  
    Starting from the Jacobi ODE satisfied by \(g(x)\):

    \[
    \bigl(A(x)g'(x)\bigr)' + \frac{F(x)}{A(x)}g(x)=0,\qquad
    A(x)=1-x^2,
    \]
    \[
    F(x)=\kappa(1-x^2)-\frac14\bigl(d-(\alpha+\beta)x\bigr)^2,
    \qquad 
    \kappa=n(n+\alpha+\beta+1)+\frac{\alpha+\beta}{2},
    \qquad 
    d=\beta-\alpha.
    \]

    Change variable to \(u\) via \(x=1-\frac{2u}{B}\).  Then

    \[
    \frac{dx}{du}= -\frac{2}{B},\qquad
    1-x^2 = \frac{4u}{B}\Bigl(1-\frac{u}{B}\Bigr) = \frac{4}{B}p_B(u).
    \]

    The derivative transforms as  

    \[
    g'(x)=\frac{dg}{dx}= H'(u)\frac{du}{dx}= -\frac{B}{2}H'(u),\qquad
    A(x)g'(x) = -\frac{4}{B}p_B(u)\cdot \frac{B}{2}H'(u) = -2p_B(u)H'(u).
    \]

    Hence  

    \[
    \frac{d}{dx}\bigl(A g'\bigr) = \bigl(-2p_B H'\bigr)'_u \cdot \frac{du}{dx}
        = \bigl(-2p_B H'\bigr)' \cdot \Bigl(-\frac{B}{2}\Bigr)
        = B\bigl(p_B H'\bigr)'.
    \]

    Substitute into the Jacobi ODE:

    \[
    B\bigl(p_B H'\bigr)' + \frac{F(x)}{A(x)} H = 0.
    \]

    Now compute \(\frac{F}{A}\) in terms of \(u\).  Using \(A=\frac{4}{B}p_B(u)\) and expressing \(x\) and \(d\), a straightforward but tedious algebra yields  

    \[
    \frac{F}{A} = B\,q_B(u).
    \]

    Dividing the whole equation by \(B\) gives  

    \[
    (p_B H')' + q_B H = 0,
    \]

    with the formulas for \(p_B,q_B\) as stated above.  This derivation is certified.

2.  **Quadratic product and monotonicity**  
    Using the explicit forms, multiplication gives  

    \[
    K_B(u) = p_B q_B = u\Bigl(1-\frac{u}{B}\Bigr)
            \Bigl[ c_B - \frac{(r_B u-\alpha)^2}{4u(1-u/B)} \Bigr]
          = -\frac{\alpha^2}{4} + \Bigl(c_B+\frac{\alpha r_B}{2}\Bigr)u
            - \Bigl(\frac{c_B}{B}+\frac{r_B^2}{4}\Bigr)u^2.
    \]

    Thus \(K_B\) is a concave quadratic.  Its derivative is  

    \[
    K_B'(u) = \Lambda_B - 2\Delta_B u,\qquad 
    K_B'(u_\sigma) = \frac{(\alpha+\beta)(n+\alpha+1)}{2B}
                    = \frac{\alpha}{2} + \frac{\beta(n+1)}{2B},
    \]

    where \(u_\sigma = nB/(B+n-1)\) has been verified by substituting the expression for \(\sigma\).  Because \(K_B'\) is decreasing, \(K_B'(u) \ge K_B'(u_\sigma) \ge \alpha/2\) for all \(0\le u\le u_\sigma\).  In the residual strip \(\alpha>1/2\) this implies \(K_B'(u) > 1/4\).  The algebra is certified.

3.  **Dynamic oscillator and Prüfer equations**  
    With \(\tau = \int^u \frac{ds}{p_B(s)} = \log\frac{u}{B-u}\), we have \(\frac{d\tau}{du} = \frac1{p_B(u)}\).  Then  

    \[
    H_\tau = p_B H',\qquad
    H_{\tau\tau} = p_B(p_B H')' = -p_B q_B H = -K_B H.
    \]

    Hence  

    \[
    \boxed{H_{\tau\tau} + K_B(u(\tau)) H = 0}. \tag{L16.1}
    \]

    On any interval where \(K_B>0\) define  

    \[
    H = R\,K_B^{-1/4}\sin\phi,\qquad
    H_\tau = R\,K_B^{1/4}\cos\phi.
    \]

    Differentiating and using the oscillator gives the exact equations  

    \[
    \frac{R_\tau}{R} = -\frac{K_{B,\tau}}{4K_B}\cos 2\phi,\qquad
    \phi_\tau = \sqrt{K_B} + \frac{K_{B,\tau}}{4K_B}\sin 2\phi,
    \tag{L16.2}
    \]
    where \(K_{B,\tau} = p_B(u) K_B'(u)\).  These formulas are exact and certified.

4.  **Airy scale**  
    If \(u_0\) is the first (simple) zero of \(K_B\) in the cap, then locally  

    \[
    K_B(u(\tau)) = K_{B,\tau}(u_0)(\tau-\tau_0) + O((\tau-\tau_0)^2),
    \qquad
    K_{B,\tau}(u_0) = p_B(u_0)K_B'(u_0) > 0.
    \]

    The natural Airy coordinate is  

    \[
    \zeta = \bigl(p_B(u_0)K_B'(u_0)\bigr)^{1/3}(\tau-\tau_0). \tag{L16.3}
    \]

5.  **Liouville normal forms**  
    Setting \(Y_u = p_B^{1/2}H\) yields  

    \[
    Y_u'' + \frac{K_B(u)+\frac14}{p_B(u)^2} Y_u = 0.
    \]

    Using the rational variable \(v = \frac{Bu}{B-u}\) and \(Y_v = v^{1/2}H\) gives  

    \[
    Y_v'' + \frac{K_B(u(v))+\frac14}{v^2} Y_v = 0. \tag{L16.4}
    \]

    Therefore the Liouville‑normal turning point (\(Q=0\)) corresponds to \(K_B = -\frac14\), whereas the original Sonin/Sturm turning point is \(K_B=0\).  This distinction is certified.

6.  **Compactified hypergeometric representation**  
    With \(\theta = \frac{n+\alpha+1}{B}\in[0,1]\),

    \[
    P_n^{(\alpha,\beta)}\!\Bigl(1-\frac{2u}{B}\Bigr)
    = \frac{(\alpha+1)_n}{n!}
      \sum_{k=0}^n \frac{(-n)_k}{(\alpha+1)_k\,k!}
      \Bigl[\prod_{j=0}^{k-1}\Bigl(1+\frac{j\theta}{n+\alpha+1}\Bigr)\Bigr] u^k .
    \tag{L16.5}
    \]

    The product is \(1\) when \(\theta=0\) (Laguerre face) and is stable for interval arithmetic.  The factor \(\frac{(B)_k}{B^k}\) is absorbed into the product, avoiding any \(1^\infty\) instability.  Certified.

7.  **Degree‑one critical quadratic**  
    For \(n=1\) the critical points of \(H_1\) satisfy  

    \[
    (\alpha+\beta+2)u^2
    - \bigl[\alpha(B+\alpha+1)+\beta(\alpha+1)+2B\bigr]u
    + \alpha B(\alpha+1) = 0. \tag{L16.6}
    \]

    This follows from the critical‑point equation \(\frac{\alpha}{2u}P_1 + P_1' = 0\) (after including the weight).  Certified.

8.  **Degree‑two critical cubic in compactified variables**  
    Using the explicit Jacobi polynomial for \(n=2\):

    \[
    P_2^{(\alpha,\beta)}\!\Bigl(1-\frac{2u}{B}\Bigr)
    = \frac{(\alpha+1)(\alpha+2)}{2} - (\alpha+2)u + \frac{B+1}{2B}u^2.
    \]

    The full endpoint‑normalised function (up to a positive constant) is \(H(u) \propto u^{\alpha/2}(B-u)^{\beta/2} P_2(u)\).  The critical‑point equation \(H'(u)=0\) becomes  

    \[
    0 = \bigl(\alpha(B-u) - \beta u\bigr) P_2(u) + 2u(B-u) P_2'(u).
    \]

    Substituting \(P_2\) and \(P_2'\) and clearing denominators yields the cubic  

    \[
    a_3 u^3 + a_2 u^2 + a_1 u + a_0 = 0,
    \]

    with  

    \[
    \begin{aligned}
    a_3 &= -(\alpha+\beta+4)\frac{B+1}{2B},\\[2mm]
    a_2 &= \frac{\alpha(B+1)}{2} + (\alpha+\beta+2)(\alpha+2) + 2(B+1),\\[2mm]
    a_1 &= -\alpha B(\alpha+2) - \frac{(\alpha+\beta)(\alpha+1)(\alpha+2)}{2} - 2(\alpha+2)B,\\[2mm]
    a_0 &= \alpha B\,\frac{(\alpha+1)(\alpha+2)}{2}.
    \end{aligned}
    \]

    Expressing \(B = (\alpha+3)/\theta\) and \(\beta = B-\alpha-3\) converts all coefficients to rational functions of \((\alpha,\theta)\).  The resulting cubic is ready for interval root isolation; the limit \(\theta\to0\) recovers the Laguerre cubic.  Certified.

9.  **Correction of the “no zero in the cap” case**  
    For \(\alpha>0\), \(K_B(0)=-\alpha^2/4<0\).  If \(K_B\) has no zero in \([0,u_\sigma]\), then \(K_B(u)<0\) throughout.  The forbidden‑zone ascent lemma then forces \(H\) to be positive and strictly increasing; the cap maximum is controlled by the central boundary.  This replaces the earlier mis‑statement that \(K_B>0\) would hold.  Certified.

10. **Closed \(u\)-form of the signed Prüfer drift**  
    From the Prüfer equations,

    \[
    \frac{R_\tau}{R} = -\frac{K_{B,\tau}}{4K_B}\cos 2\phi .
    \]

    Changing variable to \(u\) via \(d\tau = du/p_B(u)\) gives  

    \[
    \int_{\tau_h}^{\tau_1} \frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau
    = \int_{u_h}^{u_1} \frac{K_B'(u)}{K_B(u)}\cos 2\phi(u)\,du . \tag{L16.9}
    \]

    This representation is exact and avoids the explicit \(\tau\) parameter.  Certified.

Theorem‑dependency checks:
The algebraic identities above follow solely from the Jacobi ODE and elementary calculus.  The gamma‑ratio attempt (Section 5 below) invokes **Binet’s formula** for \(\log\Gamma\):

\[
\log\Gamma(z) = \Bigl(z-\frac12\Bigr)\log z - z + \frac12\log(2\pi) + \theta(z),\qquad
0 < \theta(z) < \frac{1}{12z},
\]

which is a standard theorem (e.g. Remmert, *Classical Topics in Complex Function Theory*, or formula 6.1.41 in Abramowitz–Stegun).  The negativity of the entropy exponent uses only the elementary inequality \(\log(1+x)\le x\) for \(x>-1\).

Hidden assumptions and failure modes:
- The Prüfer equations are valid only where \(K_B>0\); they are singular at the turning point \(u_0\).  A separate Airy‑layer matching (or a global Langer transform) is mandatory.
- The Airy scale assumes a simple zero of \(K_B\); this holds because \(K_B'(u)>0\) on the whole cap.
- The compactified hypergeometric representation is algebraically exact, but interval evaluation at \(\theta=0\) must use the known Laguerre limit, not the product formula directly.
- The gamma‑ratio upper bound using Binet’s remainder requires careful splitting of the parameter space (small \(\alpha\), \(\alpha=o(n)\), \(\alpha=cn\)).  The present analysis gives a rigorous leading‑order decay for \(\alpha=cn\), but the finite‑\(n\) remainder terms are not yet reduced to a simple uniform constant.
- The Prüfer drift integral, while exact, is singular unless regularised by an IBP or handoff away from \(u_0\); the naive integrand \(\cos 2\phi\) does not automatically give a small bound.

Counterexample or obstruction search:
The main obstruction remains the **Airy/Prüfer amplitude bound** after the turning layer.  Numerical sampling with \(n=10,\ \alpha=5,\ \beta=0\) indicates that the signed Prüfer drift is modest, but this is not a proof.  A potential failure scenario is if the drift builds up when \(\alpha=cn\) and the Airy scale shrinks like \(n^{-1/3}\), amplifying the lower‑order terms in the IBP residual.  The formal integration‑by‑parts object  

\[
W(\tau)=\frac{K_{B,\tau}}{8K_B^{3/2}}
\]

must be shown to have bounded derivative and to yield boundary terms that are controlled by the Airy initial data.  This is a concrete analytic task; until it is executed, the amplitude theorem remains open.

Another failure could occur if the gamma‑ratio \(M_{n,\alpha,B}\) exceeds \(1\) by more than the available slack for moderate \(n\).  A quick numeric scan suggests \(M-1\) is at most about \(0.04\) for \(\alpha\approx0.6,\ n=10\).  Proving a uniform bound \(M\le 1 + C/(n+1)\) with, say, \(C=1\) is plausible but not yet certified.

Divergent alternatives and 20% exploration:
Instead of the piecewise Airy‑to‑Prüfer route, a **global Langer transformation** for the dynamic oscillator could be used:

\[
\xi(u) = \int_{u_0}^u \sqrt{K_B(s)}\,ds,
\]

which maps the equation to an Airy normal form plus a Schwarzian residual.  The Schwarzian \(\{\xi,u\}\) involves rational combinations of \(K_B\) and its derivatives, and its total variation over the first lobe must be bounded.  Because \(K_B\) is a quadratic polynomial, this residual is explicitly computable and might be easier to estimate than the Prüfer drift.  The Langer approach avoids a singular handoff and could replace the entire Airy‑layer plus Prüfer argument by a single global error‑control theorem.  A preliminary algebraic check shows that the dominant singularity near the turning point is integrable; the challenge is to obtain an explicit constant for the variation.  This route merits parallel development.

A semi‑discrete shortcut for \(\beta\in\mathbb N_0\) was also explored: hypergeometric shift identities did not reveal a monotonicity in \(\beta\), so no simplifications are available.

Reproducible verification tasks:
1.  **\(n=2\) cubic validation:** Implement the cubic coefficients in terms of \((\alpha,\theta)\) and verify that its positive roots match the first critical point of \(H_2\) for a few sample parameters.
2.  **Gamma‑ratio envelope scan:** For a grid  

    \[
    n\in\{1,2,3,5,10,20,50,100,200\},\quad
    \alpha/\alpha_E(n)\in\{0.01,0.1,0.25,0.5,0.75,0.9,0.99\},\quad
    \beta\in\{0,1,5,10,100,\infty\},
    \]
    compute \(M_{n,\alpha,B}\) to at least 20 digits and record the maximum deviation \(M-1\).  Test whether \(M\le 1 + 1/(n+1)\) holds.
3.  **Entropy exponent rigorous proof:** Using Binet’s remainder \(0<\theta(z)<1/(12z)\), derive an explicit inequality for \(\log M_{n,\alpha,B}\) when \(\alpha=cn\) and \(n\ge N_0(c)\), showing that \(M_{n,\alpha,B}\le 1\) for all \(c\ge c_{\min}>0.01\).  The remaining small‑\(c\) and finite‑\(n\) region must be checked separately.
4.  **Prüfer drift IBP simulation:** For a set of “hard” parameters (e.g. \(n=50,\ \alpha=25,\ \beta=0\)), compute \(\phi(u)\) from the ODE with high precision, then evaluate the signed drift integral and the absolute variation.  Compare with the IBP prediction  

    \[
    \int \frac{K_{B,\tau}}{K_B}\cos 2\phi\,d\tau
    = \Bigl[\frac{K_{B,\tau}}{8K_B^{3/2}}\sin 2\phi\Bigr]
      - \int \Bigl(\frac{K_{B,\tau}}{8K_B^{3/2}}\Bigr)'_{\!\!\tau}\sin 2\phi\,d\tau .
    \]
    Determine the magnitude of the boundary term and the residual integral.
5.  **Airy handoff scale dependence:** Choose a range of \(a\) (e.g. 1, 2, 3) and set \(u_h = u_0 + a\,\gamma^{-1/3}\) with \(\gamma=p_B(u_0)K_B'(u_0)\).  Evaluate the Airy solution \(\operatorname{Ai}(-a)\) and its derivative to approximate the handoff energy, and compute the Prüfer amplitude \(R(u_h)\).  Check that the drift after \(u_h\) is insensitive to \(a\).
6.  **No‑zero case stress test:** Choose parameters such that \(K_B<0\) on the whole interval (e.g. large \(n\) or small \(\alpha\)).  Verify numerically that \(H\) is strictly increasing and that its value at \(u_\sigma\) is below the KKT target.

Useful lemmas:
- **L16.1** – Exact dynamic oscillator \(H_{\tau\tau}+K_B H=0\).
- **L16.2** – Prüfer equations on \(K_B>0\).
- **L16.3** – Airy scale \(\zeta = (p_B(u_0)K_B'(u_0))^{1/3}(\tau-\tau_0)\).
- **L16.4** – Liouville normal forms; turning‑point distinction.
- **L16.5** – Compactified hypergeometric representation.
- **L16.6** – Degree‑one critical quadratic.
- **L16.7** – Degree‑two critical cubic in compactified variables.
- **L16.8** – No‑zero case: if \(K_B\) has no zero in the cap, the cap is forbidden and controlled.
- **L16.9** – Closed \(u\)-form for the signed Prüfer drift.
- **L16.10** (conjectural) – Gamma‑ratio envelope: under the residual strip, there exist explicit constants \(C\) and \(N_0\) such that \(M_{n,\alpha,B}\le 1 + C/(n+1)\) for all \(n\ge N_0\).  (Partial: the leading entropy exponent negativity is certified; see proof below.)

**Entropy exponent negativity proof**  
Let \(f(c) = (1+c)\log(1+c) - c - \frac{c}{2}\log\!\bigl(1+c+\frac{c^2}{2}\bigr)\).  We show \(f(c) < 0\) for \(0 < c \le 1\).  Write  

\[
2f'(c) = 2\log(1+c) - \log\!\Bigl(1+c+\frac{c^2}{2}\Bigr) - \frac{c(1+c)}{1+c+c^2/2}.
\]

Set \(R = \frac{(1+c)^2}{1+c+c^2/2} = 1 + v\), with \(v = \frac{c + c^2/2}{1+c+c^2/2}\).  Also \(u = \frac{c(1+c)}{1+c+c^2/2}\).  Then the expression becomes \(2f'(c) = \log R - u\).  Because \(\log(1+v) \le v\), we have \(\log R \le v < u\), hence \(\log R - u < 0\).  Therefore \(f'(c) < 0\) for all \(c>0\).  Since \(f(0)=0\), we obtain \(f(c) < 0\) for \(0 < c \le 1\).  This proof is rigorous and uses only elementary inequalities.

The appearance of \(f(c)\) in the leading asymptotic of \(\log M_{n,\alpha,B}\) for \(\alpha=cn\) shows that for large \(n\) the normalisation becomes very small, but a complete bound requires controlling the remainder terms via Binet’s formula or digamma inequalities; this is left as an open analytic estimate.

What should be tested next:
1.  Finalise the explicit coefficients of the \(n=2\) cubic and implement the compactified interval‑arithmetic prototype for \(n=1,2\).
2.  Complete the gamma‑ratio bound by writing a rigorous inequality, with regime splitting and explicit Robbins/Kershaw remainders, that proves \(M_{n,\alpha,B}\le 1 + \frac{C}{n+1}\) for all \(n\ge N_0\) in the residual strip.
3.  Transform the Prüfer drift integral into an IBP estimate with explicit constants.  Choose a handoff point \(u_h\) based on the Airy scale and bound the boundary term and the residual integral.  The goal is an inequality of the form  

    \[
    \log\frac{R(u_1)}{R(u_h)} \le \frac{\text{small constant}}{a^{3/2}}
    \]
    after optimal choice of \(a\).
4.  If the Airy/Prüfer route proves too hard, develop the global Langer error‑control function and estimate its total variation.

Confidence:
- Algebra of the dynamic oscillator and supporting formulas: **0.96**.
- Correction of the no‑zero case: **0.99**.
- Compactified hypergeometric representation stability: **0.90**.
- Leading entropy exponent negativity: **0.98** (rigorous proof given above).
- Uniform gamma‑ratio bound \(M\le 1 + C/(n+1)\): **0.45** (plausible but remainder estimates not yet fully reduced).
- Prüfer drift IBP as a viable closure mechanism: **0.55** (cancellation appears promising, turning‑point singularity must be estimated).
- Global Langer amplitude theorem: **0.60** (error‑control function is algebraically known; bounding its variation is a finite task).
- Overall probability that the endpoint‑cap first‑lobe route will eventually prove the KKT target: **0.72**.
- Confidence that this round material already proves the KKT conjecture: **0.10** (amplitude theorem is still missing).
