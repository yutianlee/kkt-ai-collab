# Lemma Bank

## Proven Or Literature-Backed

### Integer KKT bound

For $\alpha,\beta\in\mathbb N_0$, KKT prove $|g_n^{(\alpha,\beta)}(x)|\le1$ on $[-1,1]$ using finite-dimensional $SU(2)$ representation theory.

Status: literature-backed.

### Nearby real-parameter Bernstein inequality

Haagerup-Schlichtkrull prove a real-parameter uniform Bernstein-type inequality for Jacobi functions. It is valuable context but does not imply the sharp KKT $\sup |g_n|\le1$ bound.

Status: literature-backed but insufficient for KKT.

## Working Lemmas To Audit

### Central-region clearance

Claim: existing contour or energy arguments clear the central region before the endpoint cap.

Needed: exact statement, parameter range, and sharp comparison with the KKT target constant.

### Endpoint cap localization

Claim: after central clearance, the right endpoint residual can be written with $u=B(1-x)/2$ and satisfies $0\le u\le u_\sigma\le n$.

Needed: verify algebra, define $\sigma$, and check all parameter restrictions.

### Exact endpoint differential equation

Claim: the endpoint-normalized Jacobi expression satisfies a self-adjoint equation

$$
(p_B(u)H'(u))' + q_B(u)H(u)=0
$$

with explicit $p_B,q_B$ and a quadratic $p_Bq_B$.

Needed: rederive from the Jacobi differential equation and confirm normalization does not affect the ODE.

### Laguerre or Bessel first-lobe certificate

Claim: a local first-lobe certificate in the remaining strip is enough to close the endpoint cap.

Needed: exact inequality, constants, domain, and relation to the KKT target factor.

### Finite-beta bridge

Claim: finite-$\beta$ Jacobi endpoint behavior can be controlled by a Laguerre-limit certificate with a strict margin.

Needed: effective perturbation bound, not just pointwise convergence.

## Rejected Or Risky Lemmas

- Non-effective asymptotics without explicit error constants.
- Crude Sobolev or Christoffel bounds that miss the sharp constant.
- Turan-type inequalities unless they directly control the single weighted normalized polynomial.
- Pure numerical evidence without interval-arithmetic or certified finite verification.
