# Literature Map

## Problem Context

The relevant statement is **Conjecture 6.1** in Koornwinder-Kostenko-Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, *Advances in Mathematics* 333 (2018), 796-821. The conjecture concerns the normalized weighted Jacobi expression
\[
g_n^{(\alpha,\beta)}(x)
=
\left(
\frac{\Gamma(n+1)\Gamma(n+\alpha+\beta+1)}
{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}
\right)^{1/2}
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
P_n^{(\alpha,\beta)}(x).
\]

KKT prove for **integer** parameters \(\alpha,\beta\in\mathbb N_0\) that
\[
|g_n^{(\alpha,\beta)}(x)|\le 1,
\qquad x\in[-1,1],
\tag{4.8}
\]
and cite/derive the stronger estimate
\[
|g_n^{(\alpha,\beta)}(x)|
\le
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}.
\tag{4.9}
\]

They then say they could not find these estimates for **non-integer** \(\alpha,\beta\), although numerical evidence suggested both remained true. Their Conjecture 6.1 is precisely that (4.8) and Lemma 4.3, i.e. (4.9), hold for all \(\alpha,\beta\ge0\).

## Status

As far as I could verify, the full conjecture is **still open**. I found no post-2018 theorem proving or disproving the full real-parameter statement \(\alpha,\beta\ge0\). A later 2024 paper that needed related Jacobi bounds still described the non-integer case as "only numerically" discussed in KKT's Remark 4.4, which is consistent with the conjecture remaining unresolved, though it is not itself a definitive survey. ([arXiv][1])

The sharp status is:

| Case | Status | Comment |
| --- | ---: | --- |
| \(\alpha,\beta\in\mathbb N_0\) | **Proven** | KKT obtain (4.8) from unitarity of finite-dimensional \(SU(2)\) representations, and Lemma 4.3 gives (4.9). |
| \(\alpha,\beta\ge0\), real | **Open, apparently** | This is KKT Conjecture 6.1. |
| \(\alpha,\beta\ge0\), real, weaker Bernstein bound | **Proven** | Haagerup-Schlichtkrull prove \((1-x^2)^{1/4}\lvert g_n^{(\alpha,\beta)}(x)\rvert\le C(2n+\alpha+\beta+1)^{-1/4}\) with \(C<12\). This does not imply \(\sup \lvert g_n\rvert\le1\). |
| One-sided Jacobi bound in KKT Theorem 5.1 | **Proven in broad real ranges** | KKT prove \(\bigl((1+x)/2\bigr)^{\beta/2}\lvert P_n^{(\alpha,\beta)}(x)\rvert\le \binom{n+\alpha}{n}\) under \(\beta\ge0\), \(\alpha\ge\beta-\lfloor\beta\rfloor\). Useful, but not equivalent to the \(g\)-bound. |
| Dispersive estimate for discrete Laguerre operator \(H_\alpha\) | **Integer \(\alpha\) proven; real \(\alpha\) conditional** | KKT prove \(\lVert e^{-itH_\alpha}\rVert_{\ell^1\to\ell^\infty}\le(1+t^2)^{-1/2}\) for \(\alpha\in\mathbb N_0\), and Conjecture 6.1 would extend this to all \(\alpha\ge0\). |

A useful refinement: for the **Laguerre dispersive application**, one does not need the full two-real-parameter conjecture. The kernel involves Jacobi parameters of the form \((\alpha,m-n)\), where \(m-n\in\mathbb N_0\). Thus proving (4.8), or the stronger (4.9), for
\[
\alpha\ge0,\qquad \beta\in\mathbb N_0
\]
would already extend KKT's sharp dispersive bound to all real \(\alpha\ge0\).

## Core References

| Source | Main Result | Assumptions | Relevance | Limitation |
| --- | --- | --- | --- | --- |
| Koornwinder-Kostenko-Teschl, *Adv. Math.* 2018 | Integer-parameter bound \(\lvert g_n\rvert\le1\), stronger Lemma 4.3, Conjecture 6.1 | \(\alpha,\beta\in\mathbb N_0\) for the theorem; \(\alpha,\beta\ge0\) for the conjecture | The central source | Full real case left open. |
| Haagerup-Schlichtkrull, *Ramanujan J.* 2014 | Uniform Bernstein inequality for \(g_n\) | All real \(\alpha,\beta\ge0\) | Best general real-parameter estimate nearby | Has \((1-x^2)^{1/4}\) and constant \(C<12\), so not a sup-norm \(\le1\) result. |
| KKT Theorem 5.1 | Endpoint-weighted bound for \(P_n^{(\alpha,\beta)}\) | \(\beta\ge0,\ \alpha\ge\beta-\lfloor\beta\rfloor\) | Shows product-formula methods can give sharp-looking bounds beyond integer parameters | Not the symmetric \(g_n\)-bound. |
| KKT Theorem 5.2 / Lemma 5.3 | Positive product formula method on parabolic biangle | Product formula under parameter restrictions | Provides a possible route: positivity implies \(\lvert\varphi\rvert\le1\) | Existing formula proves Theorem 5.1, not Conjecture 6.1. |
| Casarino-Ciatti-Martini 2021 | Uniform pointwise estimates for ultraspherical polynomials | Ultraspherical/Jacobi special families | Adjacent modern work on uniform Jacobi-type bounds | Does not prove KKT's sharp constant conjecture. ([Iris][2]) |
| Kostenko 2021 | Heat kernels for discrete Laguerre operators | Real \(\alpha\ge-1\) in heat-semigroup setting | Adjacent Laguerre-operator literature | Heat kernel, not the oscillatory unitary dispersive bound governed by Conjecture 6.1. ([Springer][3]) |

## Notation Translation

| Object | KKT notation | Interpretation |
| --- | --- | --- |
| Jacobi polynomial | \(P_n^{(\alpha,\beta)}(x)\) | Standard normalization \(P_n^{(\alpha,\beta)}(1)=\binom{n+\alpha}{n}\). |
| Weighted normalized Jacobi expression | \(g_n^{(\alpha,\beta)}(x)\) | The object in (4.8), (4.9), and Conjecture 6.1. |
| Orthonormal Jacobi polynomial | \(p_n^{(\alpha,\beta)}(x)\) | KKT relate \(g_n\) to \(p_n\) by inserting Jacobi weight factors and a normalization constant. |
| \(SU(2)\) representation parameters | \(\alpha=k-j,\ \beta=k+j,\ n=l-k\) | This gives integer \(\alpha,\beta\), explaining why unitarity proves the integer case only. |
| Laguerre dispersive kernel | parameters \((\alpha,m-n)\) | For \(m\ge n\), the second Jacobi parameter is an integer. Hence the dispersive application needs a weaker semi-integer version of the conjecture. |

## Possible Approach

### 1. Attack the weaker target first: \(\alpha\ge0,\ \beta\in\mathbb N_0\)

For the dispersive estimate, this is the most efficient target. KKT's Conjecture 6.1 asks for all \(\alpha,\beta\ge0\), but the Laguerre kernel only needs one continuous parameter and one integer parameter. Proving
\[
|g_n^{(\alpha,k)}(x)|\le1,
\qquad \alpha\ge0,\ k\in\mathbb N_0,
\]
would already remove the integer restriction in KKT's Theorem 6.1.

This target may be more accessible because KKT already prove related bounds using disk-polynomial/addition-formula ideas when one parameter is integral. Their Theorem 5.6 says that if (4.8) holds for given indices, then their one-sided inequality follows; they also obtain special cases of the one-sided inequality by addition formulas for disk polynomials.

### 2. Product-formula / hypergroup route

The integer proof is representation-theoretic: \(g_n^{(\alpha,\beta)}\) appears as an \(SU(2)\) matrix coefficient, so unitarity gives \(|g_n|\le1\). For real parameters, the analogue would be a **positive product formula** or a **hypergroup** interpretation.

The abstract mechanism is already present in KKT: if functions \(\varphi_\lambda\) satisfy a positive product formula on a compact space,
\[
\varphi_\lambda(x)\varphi_\lambda(y)
=
\int \varphi_\lambda(z)\,d\mu_{x,y}(z),
\]
with \(\mu_{x,y}\) a probability measure, then \(|\varphi_\lambda|\le1\). KKT use precisely this kind of argument in Lemma 5.3 to prove Theorem 5.1.

A plausible program is therefore:
\[
\text{positive product formula for a real-parameter model}
\Longrightarrow
|g_n^{(\alpha,\beta)}|\le1.
\]

The obstacle is that known product formulas in KKT apply to related parabolic-biangle polynomials and under restrictions such as \(\alpha\ge\beta+\tfrac12\ge0\), and they yield Theorem 5.1 rather than the full \(g_n\)-bound.

For the stronger estimate (4.9), positivity alone may not be enough. One may need a refined positive-definite kernel, a Christoffel-function comparison, or a raising/lowering-operator argument that recovers the exact factor
\[
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}.
\]

### 3. Sturm-Liouville / Sonin-Polya maximum principle route

This is probably the most direct analytic route. Let
\[
u(x)=g_n^{(\alpha,\beta)}(x).
\]

Since \(P_n^{(\alpha,\beta)}\) satisfies the Jacobi differential equation, \(u\) satisfies a second-order equation with regular singularities at \(x=\pm1\). The desired inequality is a sharp global maximum bound for \(u\).

A Sonin-type strategy would be:

1. Put the equation for \(u\) into normal form.
2. Construct an auxiliary quantity
   \[
   S(x)=u(x)^2+A(x)u'(x)^2
   \]
   with \(A(x)\ge0\) chosen so that \(S'\) has a controlled sign in the oscillatory region.
3. Show that any interior maximum of \(u^2\) is bounded by endpoint or turning-point data.
4. Use exact gamma-ratio inequalities to recover the constant in (4.9).

This route is attractive because it does not rely on integrality. KKT already use Sonin-Polya-type ideas in their Appendix to connect (4.8) with other Jacobi inequalities, so the method is close to the existing paper's toolkit.

The main difficulty is sharpness. Haagerup-Schlichtkrull already obtain real-parameter bounds by analytic estimates, but their result loses both the endpoint behavior and the constant needed for (4.8)/(4.9).

### 4. Christoffel-function route

Using the orthonormal Jacobi polynomial \(p_n^{(\alpha,\beta)}\), KKT's \(g_n\) can be rewritten as a weighted orthonormal polynomial. General reproducing-kernel estimates give
\[
|p_n(x)|^2\le K_n(x,x),
\]
so one can try to prove a sharp weighted Christoffel bound implying
\[
w_{\alpha,\beta}(x)\,p_n^{(\alpha,\beta)}(x)^2
\le
\frac{2n+\alpha+\beta+1}{2}
\]
in the correct normalization.

This is natural because much of the known Jacobi Bernstein literature controls weighted orthogonal polynomials uniformly in \(n,\alpha,\beta\). However, existing global estimates such as Haagerup-Schlichtkrull's are not sharp enough near the endpoints to imply KKT's conjecture.

### 5. Parameter interpolation route

The conjecture is known on the lattice \(\alpha,\beta\in\mathbb N_0\). A tempting idea is to interpolate in \(\alpha,\beta\), but ordinary analytic continuation does not work: the integer lattice has no finite accumulation point in the parameter domain.

A viable version would need **monotonicity**, **log-convexity**, or **total positivity** in the Jacobi parameters. One would try to prove that
\[
M(\alpha,\beta)
=
\sup_{n,x}
\frac{|g_n^{(\alpha,\beta)}(x)|}
{
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}
}
\]
is controlled between integer values. The gamma prefactor is log-convex in parameters, but the Jacobi polynomial itself has nontrivial parameter dependence, so this route looks elegant but technically risky.

## Novelty Assessment

A proof of either of the following would likely be genuinely new:
\[
|g_n^{(\alpha,\beta)}(x)|\le1
\quad
\text{for all } \alpha,\beta\ge0,
\]
or the stronger KKT Lemma 4.3 extension
\[
|g_n^{(\alpha,\beta)}(x)|
\le
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}.
\]

Even the restricted result
\[
\alpha\ge0,\qquad \beta\in\mathbb N_0
\]
would be important, because it appears sufficient for extending the sharp KKT dispersive estimate for \(H_\alpha\) from integer \(\alpha\) to all \(\alpha\ge0\). KKT explicitly state that Conjecture 6.1 would imply Theorem 6.1 for all \(\alpha\ge0\).

The main priority risk is not that the full conjecture has already been solved, but that special cases may be hidden in older Jacobi, Gegenbauer, Ferrers-function, or spherical-function literature under different notation. Before claiming novelty for a special case, I would specifically check older work on associated Legendre/Ferrers inequalities, disk polynomial addition formulas, Jacobi hypergroups, and sharp Bernstein inequalities.

## Recommended Citation Placement

In a manuscript, I would cite:

* **KKT 2018** immediately when defining \(g_n^{(\alpha,\beta)}\), stating (4.8), (4.9), and Conjecture 6.1.
* **Haagerup-Schlichtkrull 2014** when discussing the best known real-parameter Bernstein-type bound and explaining why it does not settle the conjecture.
* **KKT Theorem 5.1 / product formula section** if using a positivity or hypergroup argument.
* **KKT Theorem 6.1** when explaining the dispersive consequence for the discrete Laguerre operator.
* **Casarino-Ciatti-Martini 2021** only as adjacent modern work on uniform ultraspherical/Jacobi estimates, not as a direct predecessor to the conjecture.
* **Kostenko 2021** only if discussing Laguerre heat kernels or semigroup estimates rather than the unitary dispersive conjecture.

[1]: https://arxiv.org/html/2409.16453v1 "Extending Mercer's expansion to indefinite and asymmetric ..."
[2]: https://iris.polito.it/retrieve/e384c434-1695-d4b2-e053-9f05fe0a1d67/CRMATH_2021__359_10_1239_0.pdf "Uniform pointwise estimates for ultraspherical polynomials"
[3]: https://link.springer.com/article/10.1007/s11005-021-01372-7 "Heat kernels of the discrete Laguerre operators | Letters in Mathematical Physics | Springer Nature Link"
