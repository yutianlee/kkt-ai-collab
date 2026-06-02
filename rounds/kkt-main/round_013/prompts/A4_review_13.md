You are A4 qwen3.7-max, acting as API-based technical lemma generator and symbolic/numeric check planner.

Review the other agents' Round 13 outputs. Your job is to identify useful mathematics, hidden assumptions, likely errors, and a synthesis path.

## Agent-Specific Instructions

Generate checkable lemmas, endpoint algebra checks, and symbolic or numerical verification plans for the KKT conjecture. When a concrete computation, interval check, or symbolic/numerical stress test would clarify a claim, specify a reproducible local or short-context verification plan instead of relying on an implicit tool. Do not claim the conjecture is solved unless every constant and bridge step is explicit. In reasoning, include a 20% divergent alternatives section; in review, recommend research-strategy adjustments and next verification priorities.



## Active Agents For This Run

Only these agents are active in this run:

- `A1` (A1 ChatGPT Extended Pro): broad strategist, proof synthesizer, and final judge
- `A2` (A2 Gemini Pro DeepThink): independent strategist, obstruction finder, and referee-style reviewer
- `A3` (A3 Deepseek V4 Pro think_max): API-based proof critic, algebra checker, and endpoint-reduction auditor
- `A4` (A4 qwen3.7-max): API-based technical lemma generator and symbolic/numeric check planner

Do not mention, score, or assign tasks to inactive agents. If older state text refers to inactive agents, treat it as historical context and reassign any still-useful mathematical check to one of the active agents.

## Protocol

# Multi-AI Mathematical Research Protocol

## Agents

The default four-agent panel is:

1. `A1`: ChatGPT Extended Pro through the web UI.
2. `A2`: Gemini Pro DeepThink through the web UI.
3. `A3`: Deepseek V4 Pro think_max through an OpenAI-compatible API.
4. `A4`: qwen3.7-max through an OpenAI-compatible API.

Any agent can be replaced as long as it follows the same output schema.

The judge agent is `A1` by default. The judge must synthesize the round and write the next-round prompts for all four agents.

## Round Structure

Rounds use a strict barrier synchronization rule:

- Stage B cannot begin until every agent has completed Stage A.
- Stage C cannot begin until every agent has completed Stage B.
- Stage D cannot begin until the judge synthesis is complete.
- The next round cannot begin until Stage D has been committed and pushed.

### Stage A: Independent Reasoning

Each agent receives:

- the problem statement,
- the current reading packet,
- the current lemma bank,
- the current gap register,
- the prior judge decision if available,
- the agent-specific task.

The agent must output:

```text
Summary:
Main claim or direction:
Detailed reasoning:
Dependencies:
Potential gaps:
Counterexample or obstruction search:
Divergent alternatives and 20% exploration:
Useful lemmas:
What should be tested next:
Confidence:
```

Legacy note: the old KKT files `A1-1.md`, `A2-1.md`, and so on combined cross-review and reasoning inside a single answer. From round 12 onward, the workflow separates independent reasoning and cross review into different stages.

### Stage B: Cross Review

Each agent reviews all other agents' Stage A outputs.

The review must output:

```text
Most valuable input from others:
Claims that look correct:
Claims that need proof:
Possible errors or hidden assumptions:
Suggested synthesis:
Research strategy adjustments:
Score by agent:
Next-round recommendation:
```

### Stage C: Judge Synthesis

The judge reads all Stage A outputs and Stage B reviews.

The judge must output:

```text
Selected main route:
Useful fragments by source:
Rejected or risky ideas:
Known gaps:
New lemmas to add:
Counterexample checks to run:
Research strategy adjustment:
Next-round prompts by agent:
For A1:
For A2:
For A3:
For A4:
Confidence:
```

### Stage D: State Update

The orchestrator updates:

- `state/current_state.md`: compact current research state.
- `state/lemma_bank.md`: proposed, proved, and rejected lemmas.
- `state/gap_register.md`: known gaps and possible failure points.
- `state/best_proof_draft.md`: best current proof skeleton.
- `manifests/reading_packet.md`: the compact packet for the next round.

## Public Repo Rule

The public GitHub repo is the permanent log. Every completed round should be committed and pushed.

Agents should normally read `manifests/reading_packet.md`, not the full repo. Full round files remain available for audit and later reconstruction.

## Human Intervention Rule

Human intervention is allowed at any time between stages or rounds.

Human input can appear in:

- `human/current_directives.md`
- `human/goals.md`
- `human/ideas.md`
- `human/references.md`
- `human/inbox/*.md`
- GitHub issues or comments that are manually copied into the files above

Human instructions override previous AI suggestions when they change the target, introduce a reference, reject a route, add a constraint, or change the success criterion.

Agents must explicitly acknowledge relevant human interventions in their next output.

## Mathematical Safety Rules

- Do not mark a claim as proved unless the proof is explicit.
- Preserve failed attempts; they help avoid repeated false starts.
- When a proof step uses an external theorem, name the theorem and state the needed hypotheses.
- Require counterexample search for any new lemma.
- Prefer small checkable lemmas over broad vague routes.
- Keep notation stable across rounds.


## Markdown Output Rule

Return clean Markdown source. For mathematics, use only:

- inline math: `$...$`
- display math:

```text
$$
...
$$
```

Do not use rendered-equation copy formats. Do not use bare bracket math like `[ ... ]`.
Avoid `\[ ... \]` and `\( ... \)` because some web copy tools drop the backslashes.

## Research-Mode Quality Rubric

This is a research-mode run, not a smoke test. Take enough time to reason carefully before answering. Prefer correctness, explicit assumptions, rigorous gap detection, and precise lemma statements over speed or brevity.

Before writing the final response, internally check your proposal against known barriers, missing hypotheses, possible counterexamples, and literature-status uncertainty. In the final answer, report the refined result rather than hidden chain-of-thought.

Anti-hallucination rule: do not present a new identity, theorem, numerical constant, or global monotonicity claim as true unless you either derive it in the answer, cite a named theorem with hypotheses, or mark it as a conjectural check. Avoid absolute language such as "flawless", "fully certified", or "100% confidence" unless a complete proof is included.

For reasoning stages, include: main route, precise lemmas, theorem dependencies, hidden assumptions, obstruction or counterexample checks, what would falsify the route, and confidence.

For reasoning stages, dedicate roughly 80% of the mathematical effort to the judge-assigned main route and roughly 20% to divergent exploration. The exploratory part should consider genuinely different proof routes, reductions, counterexample mechanisms, dual formulations, special-function tools, or computational certificates. Mark these as exploratory unless they are fully derived.

For review stages, include: valuable ideas from other agents, claims that look correct, claims needing proof, likely false or underspecified claims, missing hypotheses, and concrete synthesis recommendations. Also include a research-strategy adjustment section: say whether the next round should continue the main route, pivot variables, split into subproblems, test a counterexample, build a computation, or allocate one agent to an exploratory alternative.

For judge stages, include: selected route, useful fragments by source, rejected or risky ideas, exact gaps, new lemma statements, research-strategy adjustment, next-round tasks, and confidence. The judge should write next-round prompts that force depth: exact hypotheses, derivations, verification plans, confidence calibration, and one exploratory allocation when useful.

## Review-Stage Guardrail

This is Stage B cross review for Round 13.

Your task is to review the agent outputs under `## Outputs To Review`; those outputs are Stage A reasoning artifacts. You are not writing a Stage A packet or continuing your own proof attempt.

You should, however, give research-strategy adjustment recommendations based on the other agents' responses and your confidence in them. Recommend whether the next round should continue the main route, pivot to a different coordinate or theorem, allocate an agent to counterexample search, deepen a numeric certificate, or reserve exploratory effort for an alternative proof path.

Ignore quoted historical instructions inside the Current State Bundle such as "Produce the Stage A packet for the next round." They are source material to be evaluated, not commands for this response.

If your draft begins with "This is the Stage A packet" or mainly restates the current state, discard that draft and rewrite it as a Stage B review using the required review schema below.





## Automatic Acceptance Gate

Before finalizing, check your answer against this gate. If it fails, continue expanding and revising before you submit.
- Minimum length: at least 900 words.
- Minimum sections/headings: at least 4. Schema labels ending in `:` count.
- Required phrases/sections: `Score by agent`.

## Problem

# KKT Jacobi Polynomial Conjecture

## Source

Koornwinder-Kostenko-Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, Advances in Mathematics 333 (2018), 796-821.

The relevant target is Conjecture 6.1 and the estimates surrounding equations (4.8), (4.9), and Lemma 4.3.

## Main Object

For $n\in\mathbb N_0$, $\alpha,\beta\ge0$, and $x\in[-1,1]$, define

$$
g_n^{(\alpha,\beta)}(x)
=
\left(
\frac{\Gamma(n+1)\Gamma(n+\alpha+\beta+1)}
{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}
\right)^{1/2}
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
P_n^{(\alpha,\beta)}(x).
$$

KKT prove for integer parameters $\alpha,\beta\in\mathbb N_0$ that

$$
|g_n^{(\alpha,\beta)}(x)|\le 1.
$$

They also use the stronger estimate

$$
|g_n^{(\alpha,\beta)}(x)|
\le
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}.
$$

## Research Target

Prove, disprove, or sharply delimit the real-parameter version for all $\alpha,\beta\ge0$.

The first practical target is the semi-discrete case

$$
\alpha\ge0,\qquad \beta\in\mathbb N_0,
$$

because this would already extend the sharp discrete Laguerre dispersive estimate to real $\alpha\ge0$.

## Current Strategic Routes

1. Product-formula or hypergroup route: find a positive product formula or matrix-coefficient analogue beyond integer parameters.
2. Sturm-Liouville/Sonin route: derive a sharp global maximum principle for the weighted normalized Jacobi expression.
3. Laguerre endpoint route: reduce the remaining endpoint cap to an explicit Laguerre certificate with constants.
4. Christoffel-function route: seek a sharp weighted reproducing-kernel estimate.
5. Parameter interpolation route: determine whether integer-parameter unitarity can be extended or convexified in the parameters.

## Required Standards

Every proposed proof must separate:

- proven statements,
- plausible claims,
- missing hypotheses,
- normalization constants,
- endpoint and turning-point cases,
- finite verification or effective asymptotic requirements,
- confidence.


## Current State Bundle

--- FILE: state/current_state.md ---
# Current State

## Problem Status

The full real-parameter KKT conjecture appears open. KKT prove the integer-parameter case through representation-theoretic unitarity, and nearby real-parameter Bernstein inequalities are known but do not give the sharp constant needed here.

The most useful working target is the one-real-one-integer case $\alpha\ge0$, $\beta\in\mathbb N_0$, because it is enough for the Laguerre dispersive application.

## Reliable Background

The existing local notes identify these comparatively reliable modules:

- central-region control away from endpoints,
- Sonin-Polya style localization to endpoint lobes,
- weighted energy estimates that cover part of parameter space,
- small endpoint exponent ranges such as $\alpha\le 1/2$ or the symmetric $\beta\le 1/2$,
- overflow confinement that limits where endpoint failure could occur.

These modules still need audit before being treated as theorem-level state.

## Active Obstruction

The remaining hard region is an endpoint cap. The strongest current synthesis says the decisive missing piece is an effective endpoint or Laguerre certificate with explicit constants, plus a rigorous finite-$\beta$ bridge back to Jacobi.

In the right endpoint normalization, prior notes introduce an endpoint variable of the form

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

and observe that the residual endpoint cap should satisfy $0\le u\le u_\sigma\le n$ after central-region clearance. This observation may remove the need for a global $u\in[0,\infty)$ Laguerre theorem, but it has not been fully certified.

## Normalized Workflow Start

The old KKT workflow used combined review-then-reason responses. The new workflow starts at round 12 and separates:

1. Stage A independent reasoning by A1/A2/A3/A4;
2. Stage B review of the other Stage A responses;
3. Stage C A1/GPT judge synthesis and next-round prompts for all four AIs.

Before Round 12, A1/GPT should first produce a bootstrap judge synthesis from `manifests/round_011_seed.md`. The result is stored in `manifests/round_011_bootstrap_judge.md` and becomes the clean starting decision for Round 12.

## Current Best Direction

Start the next round by auditing the endpoint-cap reduction rather than trying to prove the full conjecture at once:

1. verify the exact endpoint differential equation for the Jacobi-weighted function;
2. verify the central/endcap interface and the claim $u_\sigma\le n$;
3. identify the exact finite-$\beta$ bridge needed to compare Jacobi endpoint behavior with the Laguerre limit;
4. formulate the minimal Laguerre/Bessel first-lobe certificate that would close the remaining gap;
5. reject any proof that does not give explicit constants or a finite verification plan.

## Round 12 Update

Timestamp: 2026-06-02 16:33:07

See `rounds/kkt-main/round_012/judge/judge.md`.

Summary:

Input source acknowledged: :contentReference[oaicite:0]{index=0}

Round 12 produced genuine progress, but not a proof of the real-parameter KKT conjecture.

The main certified advance is the endpoint-cap reduction. A1 derived it and A3 independently audited the algebra. In the right endpoint variable

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

the post-central-contour residual cap satisfies

```math
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n
```

for $n\ge1$. In this cap the finite-$B$ endpoint equation is exactly

```math
(p_BH')'+q_BH=0,
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

The product

```math
K_B(u)=p_B(u)q_B(u)
```

is a concave quadratic and is increasing on the residual cap. In the unresolved right-endpoint strip $\alpha\ge1/2$, one has the stronger lower bound

```math
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
\ge\frac14.
```

This gives a Sonin first-lobe reduction: the remaining endpoint maximum, if not already cleared by the central contour, energy estimate, or small-exponent theorem, is controlled by the first local extremum after the endpoint turning point. This replaces the older global Laguerre obstruction on $0\le u<\infty$ by a much smaller cap or first-lobe certificate on $0\le u\le n$.

The main unresolved issue is still an amplitude estimate for that first lobe, plus a finite-$B$ bridge. Round 12 also found several serious hazards in the proposed Bessel/Liouville-Green closure: the affine $u$-coordinate may introduce geometric amplitude inflation, naive Olver error integrals may grow when $\alpha=O(n)$, and A4’s quoted Bessel maximum $2/\pi$ is not the true maximum of $J_{1/2}$.

Selected main route:

Continue the endpoint-cap route, not the global Laguerre route.

The selected proof skeleton for Round 13 is:

1. Use the established global modules to reduce to a right endpoint residual cap:
   - central contour control on $|x|<\sigma$;
   - Sonin localization;
   - weighted-energy clearance;
   - small endpoint exponent theorem for $\alpha\le1/2$;
   - symmetry for the left endpoint.

2. In the residual right endpoint case $\alpha>1/2$, use the exact cap variable $u=B(1-x)/2$ and the monotone product $K_B=p_Bq_B$ to reduce the problem to the first allowed lobe.

3. Replace the older target

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u<\infty,
```

by the smaller cap target

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u\le n,
```

and preferably by the first-lobe version of this statement.

4. Develop a first-lobe amplitude certificate. The certificate may be:
   - a direct finite-$B$ Prüfer/Sonin comparison;
   - a rational-coordinate Bessel/Liouville-Green comparison;
   - a rigorous Laguerre cap certificate plus a finite-$B$ perturbation theorem;
   - or a hybrid analytic-plus-interval certificate, but only after an explicit large-$n$ analytic bound gives a finite $N_0$.

5. Treat computation as a certificate only after the analytic part gives compactness in all variables, including $n$ or an explicit large-$n$ theorem. An unbounded interval computation remains invalid.

Useful fragments by source:

A1:

A1 supplied the most important mathematical progress of the round.

The valuable certified fragments are:

1. The exact endpoint equation

```math
(p_BH_B')'+Q_BH_B=0
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
Q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

2. The exact central/endcap interface

```math
u_\sigma=\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n.
```

3. The product monotonicity. With

```math
P_B(u)=p_B(u)Q_B(u),
```

one has $P_B''(u)\le0$ and

```math
P_B'(u_\sigma)
=
\frac{(\alpha+\beta)(\alpha+n+1)}{2B}.
```

Thus $P_B'(u)\ge0$ on $0\le u\le u_\sigma$, and in the unresolved strip $\alpha\ge1/2$,

```math
P_B'(u)\ge\frac14.
```

4. The cap Sonin identity

```math
\left(
H^2+\frac{pH'^2}{Q}
\right)'
=
-\frac{(pQ)'H'^2}{Q^2},
```

which orders local extrema by amplitude inside the cap.

5. The observation that the old Laguerre target is overlarge. For the endpoint-cap proof, one only needs $0\le u\le n$, and then only the first lobe.

6. The finite-$B$ perturbation warning. A1 computed an explicit difference

```math
Q_B(u)=Q_\infty(u)+R_B(u),
```

and noted that $R_B$ changes sign. Therefore simple Sturm ordering between finite Jacobi and Laguerre endpoint equations is unavailable.

A2:

A2’s most valuable role was obstruction finding.

The useful fragments are:

1. A2 independently confirmed the cap interface and endpoint ODE.

2. A2 correctly emphasized that the affine $u$-coordinate is excellent for Sonin monotonicity but may be suboptimal for Liouville-Green amplitude estimates.

3. A2 proposed the rational endpoint coordinate

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
```

A direct calculation gives

```math
1-x^2=\frac{4Bv}{(B+v)^2},
\qquad
\frac{dx}{dv}=-\frac{2B}{(B+v)^2},
```

and the kinetic operator becomes

```math
\frac{d}{dx}\left((1-x^2)\frac{d}{dx}\right)
=
\frac{(B+v)^2}{B}\frac{d}{dv}\left(v\frac{d}{dv}\right).
```

Thus, after multiplying by $B/(B+v)^2$, the equation has principal part

```math
(vH_v')'
```

and potential

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

Equivalently, with $c_B=\kappa/B$,

```math
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
```

This rational-coordinate transform is algebraically correct and should be audited as a possible way to avoid the affine $u$ Liouville amplitude factor.

4. A2 correctly warned that a proof must handle the classically forbidden zone near $u=0$, where $q_B<0$ and the Sonin functional is not directly defined. The proposed “forbidden-zone ascent” argument is plausible but not certified.

Rejected or risky parts from A2:

A2’s claim that the rational coordinate “restores” the desired $O(1/n)$ residual is not proved. The coordinate removes one geometric amplitude factor, but it does not by itself bound the transformed potential error, Schwarzian terms, or Volterra integral. This should be treated as a proposed route, not as a closure.

A3:

A3 was the strongest algebra auditor.

The useful certified fragments are:

1. Independent verification of the endpoint ODE.

2. Independent verification of

```math
u_\sigma=\frac{nB}{B+n-1}\le n.
```

3. Independent verification of the quadratic form

```math
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
```

where

```math
\Lambda_B=c_B+\frac{r_B\alpha}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
```

4. The identity

```math
4\Delta_Bu_\sigma
=
n\left(1+\frac{n+1}{B}\right),
```

which gives the clean endpoint derivative formula.

5. The Frobenius coefficient near $u=0$:

```math
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
```

where

```math
A_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+1)\Gamma(B)}
{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}
}
B^{-\alpha/2}
\frac{\Gamma(n+\alpha+1)}
{\Gamma(\alpha+1)\Gamma(n+1)}.
```

6. The Bessel model normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
```

7. The critical-point equation

```math
\left(\beta(1-x)-\alpha(1+x)\right)P_n^{(\alpha,\beta)}(x)
+
(n+\alpha+\beta+1)(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)
=
0.
```

Rejected or corrected part from A3:

A3 states in a remark that the lower bound $K_B'(u)\ge1/4$ works unconditionally for all $\alpha\ge0$. That is not correct in the fully degenerate case. For example, $\alpha=\beta=0$ gives $K_B'(u_\sigma)=0$. The certified lower bound $K_B'(u)\ge1/4$ should be recorded only for the residual right-endpoint range $\alpha\ge1/2$. This is sufficient, since $\alpha\le1/2$ is already covered by the small-endpoint theorem.

A4:

A4’s contribution is useful mainly as a technical planning and obstruction document, not as a proof.

Useful fragments:

1. A4 correctly identified that $M_{n,\alpha,B}\le1$ is false. For small $n$ and small $\alpha$, the Bessel normalization can exceed $1$, so the proof needs a gamma-ratio bound of the form

```math
M_{n,\alpha,B}\le1+\frac{C_\Gamma}{n+1}
```

or a sharper structured replacement.

2. A4 correctly warned that the first Bessel peak may occur at $u_1=O(n)$ when $\alpha=O(n)$, so a naive Volterra or Olver error integral over the whole first lobe may not be $O(1/n)$.

3. A4’s interval-arithmetic compactification idea is useful once an analytic large-$n$ theorem exists. For fixed $n,\alpha$, the substitution

```math
\theta=\frac{n+\alpha+1}{B}
```

compactifies $\beta\in[0,\infty]$ to $\theta\in[0,1]$.

4. The finite polynomial representation

```math
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
{}_2F_1\left(-n,B;\alpha+1;\frac{u}{B}\right)
```

is the right starting point for interval verification.

Rejected or corrected parts from A4:

1. A4’s claim that

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|=\frac{2}{\pi}
```

is false. For $\nu=1/2$,

```math
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
```

and its positive critical points satisfy

```math
\tan t=2t.
```

The first maximum occurs near

```math
t\approx1.1655611852,
```

with value approximately

```math
0.6791921047,
```

not $2/\pi\approx0.6366197724$. The weaker bound $<0.680$ may still be true, but it is a very tight statement and needs a precise theorem or certified numerical proof. It should not be marked as “fully certified” from the calculation A4 gave.

2. A4’s proposed Bessel-Sonin handoff is not yet valid. If the handoff point is not a local extremum, the Sonin functional contains a derivative term. One cannot replace the Sonin energy at the handoff point by $|H(u_{\mathrm{handoff}})|^2$ without bounding $pH'^2/q$. This is a substantive gap.

3. The statement that the large-$n$ closure has “ample room” is premature. The true Bessel maximum near $0.67919$ leaves less slack than A4 claimed, and the gamma and perturbation constants are not known.

Rejected or risky ideas:

1. Global Laguerre as the main target.

The global Laguerre inequality on $0\le u<\infty$ may be true or false, but it is no longer the minimal target for the Jacobi endpoint proof. Round 12 shows the endpoint cap only requires $0\le u\le n$, and then only the first lobe. Future work should not spend its main effort on global $u\in[0,\infty)$ unless it yields a cleaner proof.

2. Simple finite-$B$ Sturm comparison with Laguerre.

A1’s explicit formula for $R_B=Q_B-Q_\infty$ changes sign. Therefore any proof assuming $Q_B\ge Q_\infty$ or $Q_B\le Q_\infty$ uniformly on the cap should be rejected unless a restricted sign regime is explicitly proved.

3. Naive affine-coordinate Bessel perturbation.

A2’s amplitude-inflation warning and A4’s $u_1=O(n)$ scaling warning both show that a direct estimate

```math
H(u)=M_{n,\alpha,B}J_\alpha(2\sqrt{\Lambda_Bu})+O\left(\frac1n\right)
```

uniformly up to the first peak cannot be assumed. It must be derived with explicit constants and the correct coordinate/dependent-variable normalization.

4. A4’s Bessel maximum calculation.

The bound $<0.680$ may be usable, but the derivation via $2/\pi$ is wrong. The next round must replace it with a correct theorem or interval certificate.

5. Unexecuted interval arithmetic.

A finite verification is acceptable only after an explicit large-$n$ analytic theorem gives a finite $N_0$. Without such a theorem, interval arithmetic remains a plan, not a proof.

6. Overclaiming “certified” status for the first-lobe amplitude bound.

The cap localization is certified. The first-lobe amplitude estimate is not.

Known gaps:

G12.1: First-lobe amplitude certificate.

The central missing estimate is a theorem bounding the first local extremum of the endpoint-cap solution in the residual range

```math
n\ge1,\qquad
\frac12<\alpha<
\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0.
```

A minimal finite-$B$ statement would be:

Let $u_0$ be the cap turning point and $u_1$ the first critical point after $u_0$. Prove

```math
|H_B(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
```

G12.2: Correct coordinate for first-lobe comparison.

The affine coordinate $u$ is certified for localization, but may be inefficient for Liouville-Green amplitude estimates. The rational coordinate $v=B(1-x)/(1+x)$ has exact principal part $(vH_v')'$, but the transformed potential and error terms need a full audit.

G12.3: Gamma-ratio normalization.

The Bessel normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

can exceed $1$. A proof needs a sharp inequality for $M_{n,\alpha,B}$ in the residual strip. A bound of the form

```math
M_{n,\alpha,B}\le1+\frac{C_\Gamma}{n+1}
```

is plausible but not proved.

G12.4: Bessel maximum.

A usable Bessel bound must be stated correctly. The candidate is probably

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680,
```

but the proof must not use the false value $2/\pi$. The next round should either cite a precise theorem with hypotheses or provide a rigorous interval proof of the maximum.

G12.5: Handoff derivative energy.

If a Bessel approximation is used only near the origin and then handed to Sonin monotonicity, the handoff must bound

```math
H(u_h)^2+\frac{p_B(u_h)H'(u_h)^2}{q_B(u_h)},
```

not only $|H(u_h)|$.

G12.6: Forbidden-zone ascent.

The endpoint solution should be shown to have no local maximum before the first turning point. The informal argument using positivity of $H$ and $(pH')'=-qH$ is plausible but needs a clean lemma with Frobenius initialization and sign preservation.

G12.7: Finite verification compactification.

The compactification $\theta=(n+\alpha+1)/B$ is useful, but the finite-dimensional domain is available only after a large-$n$ theorem. The $\beta=\infty$ face must be handled by analytic limiting formulas, not by numerically evaluating unstable $1^\infty$ expressions.

G12.8: Endpoint equality and strict margin.

The target becomes tight in several limiting regimes. The proof must identify where equality can occur and where strict margin remains. This matters for perturbation from Laguerre to finite $B$.

New lemmas to add:

### Lemma L12.1: Exact endpoint equation

For $n\ge0$, $\alpha,\beta\ge0$, $B=n+\alpha+\beta+1$, and

```math
H_B(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
```

one has

```math
(p_BH_B')'+q_BH_B=0,
```

where

```math
p_B(u)=u\left(1-\frac{u}{B}\right)
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

Status: certified by A1 and A3.

### Lemma L12.2: Endpoint cap length

For $n\ge1$,

```math
u_\sigma
=
\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n.
```

Status: certified by A1 and A3.

### Lemma L12.3: Endpoint product monotonicity

Let

```math
K_B(u)=p_B(u)q_B(u).
```

Then $K_B$ is a concave quadratic and

```math
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
```

Thus $K_B'(u)\ge0$ for $0\le u\le u_\sigma$. In the residual right-endpoint range $\alpha\ge1/2$,

```math
K_B'(u)\ge\frac14.
```

Status: certified, with the range restriction $\alpha\ge1/2$ for the lower bound $1/4$.

### Lemma L12.4: Cap Sonin monotonicity

On any subinterval of the cap where $q_B>0$,

```math
S_B(u)=H_B(u)^2+\frac{p_B(u)H_B'(u)^2}{q_B(u)}
```

satisfies

```math
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H_B'(u)^2
\le0.
```

Consequently local extrema in the allowed portion of the cap are nonincreasing in amplitude as $u$ increases.

Status: certified conditional on $q_B>0$.

### Lemma L12.5: Forbidden-zone ascent

Assume $\alpha>0$ and right overflow. Let $u_0$ be the first zero of $K_B$ in the cap. Then $H_B$ has no local maximum on $0<u<u_0$.

A proof should use the regular Frobenius behavior

```math
H_B(u)\sim A_{n,\alpha,B}u^{\alpha/2},
\qquad A_{n,\alpha,B}>0,
```

and the sign of

```math
(p_BH_B')'=-q_BH_B
```

where $q_B<0$.

Status: plausible; not yet certified. Assign to A1/A3.

### Lemma L12.6: First-lobe reduction

Assume Lemma L12.5. In the residual right endpoint case, the cap maximum is attained at the first critical point $u_1$ after the cap turning point $u_0$.

Status: nearly certified after L12.5.

### Lemma L12.7: Laguerre cap limit

As $B\to\infty$ with $n,\alpha$ fixed,

```math
p_B(u)\to u,
```

and

```math
q_B(u)\to
q_\infty(u)
=
n+\frac{\alpha+1}{2}
-\frac{u}{4}
-\frac{\alpha^2}{4u}.
```

The limiting equation is the normalized Laguerre equation for

```math
\ell_n^{(\alpha)}(u)
=
\left(
\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}
\right)^{1/2}
u^{\alpha/2}e^{-u/2}L_n^{(\alpha)}(u).
```

On $0\le u\le n$,

```math
(uq_\infty(u))'
=
n+\frac{\alpha+1}{2}-\frac u2
\ge
\frac{n+\alpha+1}{2}
>0.
```

Status: certified.

### Lemma L12.8: Minimal Laguerre cap certificate

For $n\ge1$ and

```math
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3},
```

prove

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u\le n.
```

Better: prove it only at the first local maximum after the Laguerre cap turning point.

Status: proposed; not proved.

### Lemma L12.9: Rational-coordinate endpoint equation

Set

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
```

Then the endpoint equation becomes

```math
(vH_v')'+\widehat q_B(v)H=0,
```

where

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

Equivalently,

```math
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
```

Status: algebraically verified in this synthesis; its usefulness for amplitude estimates is open.

### Lemma L12.10: Correct Bessel maximum certificate

Prove or cite a theorem giving

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
```

The proof must account for the fact that

```math
\max_{t>0}J_{1/2}(t)\approx0.6791921047,
```

not $2/\pi$.

Status: needed; A4’s derivation is rejected.

### Lemma L12.11: Gamma-ratio bound for $M_{n,\alpha,B}$

Find explicit constants, or a sharper functional bound, for

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

in the residual strip. A possible target is

```math
M_{n,\alpha,B}
\le
1+\frac{C_\Gamma}{n+1}.
```

Status: proposed; not proved.

### Lemma L12.12: Handoff Sonin energy bound

If using a Bessel approximation on $0<u\le u_h$, prove an upper bound for the full Sonin energy

```math
H_B(u_h)^2+\frac{p_B(u_h)H_B'(u_h)^2}{q_B(u_h)}.
```

Status: required if the Bessel-Sonin handoff route is pursued.

Counterexample checks to run:

1. Bessel maximum check.

Compute and rigorously enclose

```math
\max_{t>0}J_{1/2}(t),
```

where the maximizing point solves

```math
\tan t=2t.
```

Then verify whether the maximum over $\nu\ge1/2$ is indeed at $\nu=1/2$ or whether another order gives a larger value. This is a priority because A4’s $2/\pi$ computation is wrong.

2. Gamma normalization check.

For a grid and then by interval arithmetic, evaluate

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

over

```math
1\le n\le 200,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\in\{0,1,2,10,100,\infty\}.
```

Locate where $M>1$ and measure whether $M-1$ behaves like $O(1/n)$ or has a larger envelope.

3. Laguerre cap ratio.

Compute

```math
R_{n,\alpha}^{\mathrm{cap}}
=
\sup_{0\le u\le n}
\frac{
|\ell_n^{(\alpha)}(u)|
}{
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
}
```

over the transition strip. Compare this with the global ratio on $0\le u<\infty$ to quantify how much the cap reduction buys.

4. First-lobe location.

For the Laguerre cap, compute the turning point $u_0$ and first critical point $u_1$. Test whether $u_1$ is $O(1)$, $O(\alpha^2/n)$, or $O(n)$ in the worst part of the strip. This determines whether a uniform first-lobe Bessel perturbation can plausibly be $O(1/n)$.

5. Finite-$B$ worst case.

For fixed $(n,\alpha)$, compute

```math
R_{n,\alpha,B}^{\mathrm{cap}}
=
\frac{
\sup_{0\le u\le u_\sigma}|H_B(u)|
}{
T_{n,\alpha,\beta}
}.
```

Test whether this ratio is monotone in $B$ or whether the worst case is finite. A nonmonotone finite-$B$ worst case would require a direct finite-$B$ certificate rather than a Laguerre bridge.

6. Rational versus affine coordinate.

Numerically compare Liouville-Green residual terms in $u$ and $v$ coordinates on identical parameter grids. Determine whether the rational coordinate actually reduces the Volterra integral, and by what asymptotic order.

7. Forbidden-zone ascent.

Verify that $H_B$ is strictly increasing from $u=0$ to the first turning point in representative hard cases, then prove it symbolically.

8. Endpoint equality cases.

Separate $n=0$, $\alpha=0$, $\beta=0$, and $\alpha=1/2$ boundary cases. Make sure no endpoint equality or degeneracy is being hidden inside an argument that assumes $q_B>0$ or $\alpha>0$.

Research strategy adjustment:

The next round should pivot from broad proof architecture to a narrow two-track certification program.

Track 1: certify the first-lobe reduction completely.

This means turning the cap monotonicity into a theorem-level statement with all endpoint and forbidden-zone cases handled. This is mainly A1/A3 work.

Track 2: decide which amplitude certificate is viable.

The old direct affine-coordinate Bessel certificate is now suspect. Round 13 should compare three candidate certificates:

1. Rational-coordinate Liouville-Green certificate using $v=B(1-x)/(1+x)$.

2. Prüfer/Sonin monotone-frequency certificate using the equation in a variable where the frequency product is increasing.

3. Laguerre cap certificate plus finite-$B$ bridge.

A4 should simultaneously build numerical tests to identify the most promising route and to search for finite-$B$ or Laguerre cap obstructions. Interval arithmetic should not yet be presented as a proof; it should be used to map the hard region and test candidate constants.

The highest priority is not to prove the whole conjecture in Round 13. The highest priority is to produce one fully explicit theorem of the following type:

For all $n\ge N_0$, $\frac12\le\alpha\le\alpha_E(n)$, and $\beta\ge0$, the first endpoint-cap maximum satisfies the KKT bound.

Only after that theorem exists should the panel assign finite interval verification for $1\le n<N_0$.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist and proof synthesizer. Your Round 13 task is to turn the endpoint-cap localization into a theorem-level reduction and decide which amplitude route should become the main proof route.

Objectives:

1. State and prove a complete “right endpoint cap first-lobe reduction” theorem with exact hypotheses:
   - $n\ge1$;
   - $\alpha>1/2$ for the residual right endpoint;
   - $\beta\ge0$;
   - right overflow or noncentral residual;
   - $B=n+\alpha+\beta+1$;
   - $u=B(1-x)/2$;
   - $0\le u\le u_\sigma\le n$.

2. Include the exact endpoint ODE:

```math
(p_BH')'+q_BH=0,
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

3. Prove the product monotonicity with the exact formula

```math
K_B'(u_\sigma)=\frac{(\alpha+\beta)(n+\alpha+1)}{2B},
```

and state precisely when this implies $K_B'(u)\ge1/4$.

4. Fill the forbidden-zone gap: prove that the regular solution has no local maximum before the first turning point. Use Frobenius data and the sign of $(p_BH')'=-q_BH$.

5. State the exact reduced first-lobe amplitude theorem needed to close KKT. Do not prove it unless you can provide explicit constants. The statement should use the first critical point $u_1$ after the endpoint turning point.

6. Compare the three amplitude routes:
   - affine $u$ Bessel;
   - rational $v$ Bessel;
   - Laguerre cap plus finite-$B$ bridge.

Give a concrete recommendation for which one should be primary in Round 14.

Required output:

Use the Stage A schema. Label each claim as proved, plausible, or open. Include a section “What would falsify this route.”

For A2:

You are A2, the obstruction finder and referee-style strategist. Your Round 13 task is to rigorously audit the rational-coordinate proposal and the affine-coordinate amplitude-inflation objection.

Objectives:

1. Re-derive the rational-coordinate equation from scratch. With

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v},
```

verify or correct the equation

```math
(vH_v')'+\widehat q_B(v)H=0
```

and

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

2. Relate $u$ and $v$ exactly:

```math
u=\frac{Bv}{B+v},
\qquad
v=\frac{Bu}{B-u}.
```

Find the image of the cap $0\le u\le u_\sigma$ in $v$ coordinates.

3. Test the claim that the rational coordinate eliminates the Liouville-Green amplitude inflation. This requires deriving the dependent-variable transform, not just the principal operator.

4. Compute the transformed potential’s Bessel-core expansion near $v=0$. Identify the analogues of $\Lambda_B$ and the perturbation remainder.

5. Determine whether the Volterra or Olver error integral in $v$ is plausibly $O(1/n)$ up to the first lobe when $\alpha=O(n)$. If not, identify the obstruction explicitly.

6. Audit A4’s Bessel-Sonin handoff idea. In particular, check whether controlling $|H(u_h)|$ alone is insufficient because the Sonin functional also contains $pH'^2/q$.

Required output:

Do not claim closure. Your deliverable is a referee report on whether the rational-coordinate amplitude route is viable, including formulas precise enough for A3 to algebra-check and for A4 to numerically test.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 13 task is to certify or reject the exact algebra behind the two candidate endpoint coordinates and the first-lobe reduction.

Objectives:

1. Recheck the affine $u$ equation and record the final verified formulas for:
   - $p_B$;
   - $q_B$;
   - $K_B=p_Bq_B$;
   - $\Lambda_B$;
   - $\Delta_B$;
   - $u_\sigma$;
   - $K_B'(u_\sigma)$.

2. Correct the range statement for $K_B'(u)\ge1/4$. It is required only in the residual range $\alpha\ge1/2$. Check the degenerate cases $\alpha=\beta=0$, $\alpha=0<\beta$, and $\alpha=1/2,\beta=0$.

3. Prove or reject the forbidden-zone ascent lemma. Work directly from the Frobenius expansion and

```math
(p_BH')'=-q_BH.
```

Be precise about positivity of $H$, behavior of $p_BH'$, and whether a zero or local maximum can occur before the turning point.

4. Algebraically verify the rational-coordinate equation:

```math
(vH_v')'+\widehat q_B(v)H=0.
```

Check A2’s formula for $\widehat q_B(v)$ and give a simplified expression for the product

```math
\widehat K_B(v)=v\widehat q_B(v).
```

5. Determine whether $\widehat K_B(v)$ has useful monotonicity on the transformed cap. Compare it with the affine $K_B(u)$ monotonicity.

6. Recheck A4’s Bessel normalization formula and derive the exact expression for $M_{n,\alpha,B}$ in both $u$ and $v$ coordinates. State whether the normalizations agree at leading order.

Required output:

Use the Stage A schema. Include “certified identities,” “rejected identities,” and “open analytic estimates.” Provide enough algebra for direct inclusion in the lemma bank.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 13 task is to build a reliable numerical and analytic test harness for the first-lobe certificate, while correcting the Bessel maximum issue.

Objectives:

1. Correct the Bessel maximum claim. For $\nu=1/2$,

```math
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
```

and the first positive maximum solves

```math
\tan t=2t.
```

Compute a rigorous interval enclosure for the maximizer and maximum. Then investigate whether

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680
```

is a known theorem or requires interval proof. Do not use $2/\pi$ as the maximum.

2. Build a high-precision numerical map of the Laguerre cap ratio

```math
R_{n,\alpha}^{\mathrm{cap}}
=
\sup_{0\le u\le n}
\frac{
|\ell_n^{(\alpha)}(u)|
}{
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
}
```

for $1\le n\le200$ and $\frac12\le\alpha\le\alpha_E(n)$. Track the first-lobe maximum separately from the cap maximum.

3. Build the analogous finite-$B$ cap ratio

```math
R_{n,\alpha,B}^{\mathrm{cap}}
=
\frac{
\sup_{0\le u\le u_\sigma}|H_B(u)|
}{
T_{n,\alpha,\beta}
}
```

for sample $\beta$ values and for compactified $\theta=(n+\alpha+1)/B$.

4. Numerically compare affine $u$ and rational $v$ perturbation sizes. For each parameter sample, compute the Bessel-core residual in both coordinates and estimate the relevant Volterra integral.

5. Test the gamma normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
```

Find the maximum of $M-1$ over sampled grids and test whether $M\le1+C/(n+1)$ is plausible with a moderate explicit $C$.

6. Design, but do not yet claim, an interval arithmetic proof plan. It must include:
   - variables $(\alpha,\theta,u)$ for fixed $n$;
   - stable evaluation of the finite hypergeometric polynomial;
   - separate treatment of the $\theta=0$ Laguerre face;
   - interval Newton isolation of critical points;
   - a path to a finite $N_0$ only after A1/A2/A3 provide a large-$n$ theorem.

Required output:

Use the Stage A schema. Include numerical tables or precise sampled findings if available. Separate experimental evidence from certified interval bounds.

Confidence:

Confidence in the new endpoint-cap algebra: high, about $0.90$.

Confidence in the first-lobe reduction after the forbidden-zone lemma is written cleanly: moderate-high, about $0.75$.

Confidence that the current Round 12 material already proves KKT: low, about $0.15$.

Confidence that the endpoint-cap route is the best current strategy: moderate-high, about $0.80$.

Confidence that the rational-coordinate Liouville-Green route will close the first-lobe amplitude estimate: uncertain, about $0.45$.

Confidence that a hybrid analytic-plus-certified-computation route can eventually close the semi-discrete case $\alpha\ge0$, $\beta\in\mathbb N_0$: moderate, about $0.60$.

Overall judge decision:

Round 12 should be recorded as a successful reduction round, not a closure round. Add the endpoint ODE, cap length, product monotonicity, and cap Sonin first-lobe reduction to the lemma bank as certified or nearly certified modules. Do not add any Bessel perturbation theorem, Bessel maximum constant, gamma-ratio bound, or interval verification as proved. The next round should focus on making the first-lobe reduction theorem airtight and deciding whether the rational-coordinate amplitude route or Laguerre-cap bridge is analytically viable.

--- FILE: state/lemma_bank.md ---
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

--- FILE: state/gap_register.md ---
# Gap Register

## G1: Sharp Constants In Endpoint Certificate

The remaining Laguerre/Jacobi endpoint estimate needs explicit constants strong enough for the KKT target. Existing sketches often identify the right region but do not close the numerical margin.

Next check: ask agents to produce a concrete inequality with all constants and state where it is strict.

## G2: Finite-Beta Bridge

Passing from a Laguerre limit to finite $\beta$ is not automatic. A bridge must quantify the error uniformly over the endpoint cap and preserve a strict margin.

Next check: derive a perturbation equation in $1/B$ and bound its effect on extrema or Sonin energy.

## G3: Central/Endpoint Interface

The claim $u_\sigma\le n$ is promising but must be verified with exact definitions and parameter restrictions.

Next check: rederive $\sigma$, $B$, and $u_\sigma$ from first principles.

## G4: Literature Status

The conjecture appears open, but any proof attempt should keep checking whether a known sharp Jacobi inequality already implies a special case.

Next check: maintain `human/references.md` with exact citations and theorem hypotheses.

## G5: Legacy Proof Claims

Several legacy files contain ambitious "proof architecture" language. Treat them as hypotheses to audit, not established proof.

Next check: require every agent to label inherited claims as certified, plausible, or rejected.

--- FILE: state/best_proof_draft.md ---
# Best Proof Draft

No complete proof is currently certified.

## Conditional Architecture

1. Reduce by symmetry to the right endpoint.
2. Use central-region and energy estimates to remove the bulk of $[-1,1]$.
3. Write the remaining endpoint cap with $u=B(1-x)/2$, where $B=n+\alpha+\beta+1$.
4. Prove the exact endpoint ODE and a Sonin or comparison principle for the endpoint-normalized function.
5. Establish a sharp first-lobe Laguerre/Bessel certificate in the remaining strip.
6. Quantify the finite-$\beta$ bridge so the Jacobi endpoint cap inherits the certificate.
7. Mirror the argument at the left endpoint.

## What Would Count As A Proof

A complete proof must provide:

- exact parameter ranges for every reduction,
- a theorem-level endpoint certificate with explicit constants,
- a rigorous bridge between Laguerre and finite-$\beta$ Jacobi behavior,
- certified finite verification for any residual compact set,
- no appeal to non-effective asymptotics where the target constant is sharp.

## Current Status

Conditional only. The missing hard pieces are G1 and G2 in `state/gap_register.md`.

--- FILE: manifests/reading_packet.md ---
# Reading Packet

Generated after round 12 in run `kkt-main`.

## Current State

# Current State

## Problem Status

The full real-parameter KKT conjecture appears open. KKT prove the integer-parameter case through representation-theoretic unitarity, and nearby real-parameter Bernstein inequalities are known but do not give the sharp constant needed here.

The most useful working target is the one-real-one-integer case $\alpha\ge0$, $\beta\in\mathbb N_0$, because it is enough for the Laguerre dispersive application.

## Reliable Background

The existing local notes identify these comparatively reliable modules:

- central-region control away from endpoints,
- Sonin-Polya style localization to endpoint lobes,
- weighted energy estimates that cover part of parameter space,
- small endpoint exponent ranges such as $\alpha\le 1/2$ or the symmetric $\beta\le 1/2$,
- overflow confinement that limits where endpoint failure could occur.

These modules still need audit before being treated as theorem-level state.

## Active Obstruction

The remaining hard region is an endpoint cap. The strongest current synthesis says the decisive missing piece is an effective endpoint or Laguerre certificate with explicit constants, plus a rigorous finite-$\beta$ bridge back to Jacobi.

In the right endpoint normalization, prior notes introduce an endpoint variable of the form

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

and observe that the residual endpoint cap should satisfy $0\le u\le u_\sigma\le n$ after central-region clearance. This observation may remove the need for a global $u\in[0,\infty)$ Laguerre theorem, but it has not been fully certified.

## Normalized Workflow Start

The old KKT workflow used combined review-then-reason responses. The new workflow starts at round 12 and separates:

1. Stage A independent reasoning by A1/A2/A3/A4;
2. Stage B review of the other Stage A responses;
3. Stage C A1/GPT judge synthesis and next-round prompts for all four AIs.

Before Round 12, A1/GPT should first produce a bootstrap judge synthesis from `manifests/round_011_seed.md`. The result is stored in `manifests/round_011_bootstrap_judge.md` and becomes the clean starting decision for Round 12.

## Current Best Direction

Start the next round by auditing the endpoint-cap reduction rather than trying to prove the full conjecture at once:

1. verify the exact endpoint differential equation for the Jacobi-weighted function;
2. verify the central/endcap interface and the claim $u_\sigma\le n$;
3. identify the exact finite-$\beta$ bridge needed to compare Jacobi endpoint behavior with the Laguerre limit;
4. formulate the minimal Laguerre/Bessel first-lobe certificate that would close the remaining gap;
5. reject any proof that does not give explicit constants or a finite verification plan.

## Round 12 Update

Timestamp: 2026-06-02 16:33:07

See `rounds/kkt-main/round_012/judge/judge.md`.

Summary:

Input source acknowledged: :contentReference[oaicite:0]{index=0}

Round 12 produced genuine progress, but not a proof of the real-parameter KKT conjecture.

The main certified advance is the endpoint-cap reduction. A1 derived it and A3 independently audited the algebra. In the right endpoint variable

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

the post-central-contour residual cap satisfies

```math
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n
```

for $n\ge1$. In this cap the finite-$B$ endpoint equation is exactly

```math
(p_BH')'+q_BH=0,
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

The product

```math
K_B(u)=p_B(u)q_B(u)
```

is a concave quadratic and is increasing on the residual cap. In the unresolved right-endpoint strip $\alpha\ge1/2$, one has the stronger lower bound

```math
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
\ge\frac14.
```

This gives a Sonin first-lobe reduction: the remaining endpoint maximum, if not already cleared by the central contour, energy estimate, or small-exponent theorem, is controlled by the first local extremum after the endpoint turning point. This replaces the older global Laguerre obstruction on $0\le u<\infty$ by a much smaller cap or first-lobe certificate on $0\le u\le n$.

The main unresolved issue is still an amplitude estimate for that first lobe, plus a finite-$B$ bridge. Round 12 also found several serious hazards in the proposed Bessel/Liouville-Green closure: the affine $u$-coordinate may introduce geometric amplitude inflation, naive Olver error integrals may grow when $\alpha=O(n)$, and A4’s quoted Bessel maximum $2/\pi$ is not the true maximum of $J_{1/2}$.

Selected main route:

Continue the endpoint-cap route, not the global Laguerre route.

The selected proof skeleton for Round 13 is:

1. Use the established global modules to reduce to a right endpoint residual cap:
   - central contour control on $|x|<\sigma$;
   - Sonin localization;
   - weighted-energy clearance;
   - small endpoint exponent theorem for $\alpha\le1/2$;
   - symmetry for the left endpoint.

2. In the residual right endpoint case $\alpha>1/2$, use the exact cap variable $u=B(1-x)/2$ and the monotone product $K_B=p_Bq_B$ to reduce the problem to the first allowed lobe.

3. Replace the older target

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u<\infty,
```

by the smaller cap target

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u\le n,
```

and preferably by the first-lobe version of this statement.

4. Develop a first-lobe amplitude certificate. The certificate may be:
   - a direct finite-$B$ Prüfer/Sonin comparison;
   - a rational-coordinate Bessel/Liouville-Green comparison;
   - a rigorous Laguerre cap certificate plus a finite-$B$ perturbation theorem;
   - or a hybrid analytic-plus-interval certificate, but only after an explicit large-$n$ analytic bound gives a finite $N_0$.

5. Treat computation as a certificate only after the analytic part gives compactness in all variables, including $n$ or an explicit large-$n$ theorem. An unbounded interval computation remains invalid.

Useful fragments by source:

A1:

A1 supplied the most important mathematical progress of the round.

The valuable certified fragments are:

1. The exact endpoint equation

```math
(p_BH_B')'+Q_BH_B=0
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
Q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

2. The exact central/endcap interface

```math
u_\sigma=\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n.
```

3. The product monotonicity. With

```math
P_B(u)=p_B(u)Q_B(u),
```

one has $P_B''(u)\le0$ and

```math
P_B'(u_\sigma)
=
\frac{(\alpha+\beta)(\alpha+n+1)}{2B}.
```

Thus $P_B'(u)\ge0$ on $0\le u\le u_\sigma$, and in the unresolved strip $\alpha\ge1/2$,

```math
P_B'(u)\ge\frac14.
```

4. The cap Sonin identity

```math
\left(
H^2+\frac{pH'^2}{Q}
\right)'
=
-\frac{(pQ)'H'^2}{Q^2},
```

which orders local extrema by amplitude inside the cap.

5. The observation that the old Laguerre target is overlarge. For the endpoint-cap proof, one only needs $0\le u\le n$, and then only the first lobe.

6. The finite-$B$ perturbation warning. A1 computed an explicit difference

```math
Q_B(u)=Q_\infty(u)+R_B(u),
```

and noted that $R_B$ changes sign. Therefore simple Sturm ordering between finite Jacobi and Laguerre endpoint equations is unavailable.

A2:

A2’s most valuable role was obstruction finding.

The useful fragments are:

1. A2 independently confirmed the cap interface and endpoint ODE.

2. A2 correctly emphasized that the affine $u$-coordinate is excellent for Sonin monotonicity but may be suboptimal for Liouville-Green amplitude estimates.

3. A2 proposed the rational endpoint coordinate

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
```

A direct calculation gives

```math
1-x^2=\frac{4Bv}{(B+v)^2},
\qquad
\frac{dx}{dv}=-\frac{2B}{(B+v)^2},
```

and the kinetic operator becomes

```math
\frac{d}{dx}\left((1-x^2)\frac{d}{dx}\right)
=
\frac{(B+v)^2}{B}\frac{d}{dv}\left(v\frac{d}{dv}\right).
```

Thus, after multiplying by $B/(B+v)^2$, the equation has principal part

```math
(vH_v')'
```

and potential

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

Equivalently, with $c_B=\kappa/B$,

```math
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
```

This rational-coordinate transform is algebraically correct and should be audited as a possible way to avoid the affine $u$ Liouville amplitude factor.

4. A2 correctly warned that a proof must handle the classically forbidden zone near $u=0$, where $q_B<0$ and the Sonin functional is not directly defined. The proposed “forbidden-zone ascent” argument is plausible but not certified.

Rejected or risky parts from A2:

A2’s claim that the rational coordinate “restores” the desired $O(1/n)$ residual is not proved. The coordinate removes one geometric amplitude factor, but it does not by itself bound the transformed potential error, Schwarzian terms, or Volterra integral. This should be treated as a proposed route, not as a closure.

A3:

A3 was the strongest algebra auditor.

The useful certified fragments are:

1. Independent verification of the endpoint ODE.

2. Independent verification of

```math
u_\sigma=\frac{nB}{B+n-1}\le n.
```

3. Independent verification of the quadratic form

```math
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
```

where

```math
\Lambda_B=c_B+\frac{r_B\alpha}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
```

4. The identity

```math
4\Delta_Bu_\sigma
=
n\left(1+\frac{n+1}{B}\right),
```

which gives the clean endpoint derivative formula.

5. The Frobenius coefficient near $u=0$:

```math
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
```

where

```math
A_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+1)\Gamma(B)}
{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}
}
B^{-\alpha/2}
\frac{\Gamma(n+\alpha+1)}
{\Gamma(\alpha+1)\Gamma(n+1)}.
```

6. The Bessel model normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
```

7. The critical-point equation

```math
\left(\beta(1-x)-\alpha(1+x)\right)P_n^{(\alpha,\beta)}(x)
+
(n+\alpha+\beta+1)(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)
=
0.
```

Rejected or corrected part from A3:

A3 states in a remark that the lower bound $K_B'(u)\ge1/4$ works unconditionally for all $\alpha\ge0$. That is not correct in the fully degenerate case. For example, $\alpha=\beta=0$ gives $K_B'(u_\sigma)=0$. The certified lower bound $K_B'(u)\ge1/4$ should be recorded only for the residual right-endpoint range $\alpha\ge1/2$. This is sufficient, since $\alpha\le1/2$ is already covered by the small-endpoint theorem.

A4:

A4’s contribution is useful mainly as a technical planning and obstruction document, not as a proof.

Useful fragments:

1. A4 correctly identified that $M_{n,\alpha,B}\le1$ is false. For small $n$ and small $\alpha$, the Bessel normalization can exceed $1$, so the proof needs a gamma-ratio bound of the form

```math
M_{n,\alpha,B}\le1+\frac{C_\Gamma}{n+1}
```

or a sharper structured replacement.

2. A4 correctly warned that the first Bessel peak may occur at $u_1=O(n)$ when $\alpha=O(n)$, so a naive Volterra or Olver error integral over the whole first lobe may not be $O(1/n)$.

3. A4’s interval-arithmetic compactification idea is useful once an analytic large-$n$ theorem exists. For fixed $n,\alpha$, the substitution

```math
\theta=\frac{n+\alpha+1}{B}
```

compactifies $\beta\in[0,\infty]$ to $\theta\in[0,1]$.

4. The finite polynomial representation

```math
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
{}_2F_1\left(-n,B;\alpha+1;\frac{u}{B}\right)
```

is the right starting point for interval verification.

Rejected or corrected parts from A4:

1. A4’s claim that

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|=\frac{2}{\pi}
```

is false. For $\nu=1/2$,

```math
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
```

and its positive critical points satisfy

```math
\tan t=2t.
```

The first maximum occurs near

```math
t\approx1.1655611852,
```

with value approximately

```math
0.6791921047,
```

not $2/\pi\approx0.6366197724$. The weaker bound $<0.680$ may still be true, but it is a very tight statement and needs a precise theorem or certified numerical proof. It should not be marked as “fully certified” from the calculation A4 gave.

2. A4’s proposed Bessel-Sonin handoff is not yet valid. If the handoff point is not a local extremum, the Sonin functional contains a derivative term. One cannot replace the Sonin energy at the handoff point by $|H(u_{\mathrm{handoff}})|^2$ without bounding $pH'^2/q$. This is a substantive gap.

3. The statement that the large-$n$ closure has “ample room” is premature. The true Bessel maximum near $0.67919$ leaves less slack than A4 claimed, and the gamma and perturbation constants are not known.

Rejected or risky ideas:

1. Global Laguerre as the main target.

The global Laguerre inequality on $0\le u<\infty$ may be true or false, but it is no longer the minimal target for the Jacobi endpoint proof. Round 12 shows the endpoint cap only requires $0\le u\le n$, and then only the first lobe. Future work should not spend its main effort on global $u\in[0,\infty)$ unless it yields a cleaner proof.

2. Simple finite-$B$ Sturm comparison with Laguerre.

A1’s explicit formula for $R_B=Q_B-Q_\infty$ changes sign. Therefore any proof assuming $Q_B\ge Q_\infty$ or $Q_B\le Q_\infty$ uniformly on the cap should be rejected unless a restricted sign regime is explicitly proved.

3. Naive affine-coordinate Bessel perturbation.

A2’s amplitude-inflation warning and A4’s $u_1=O(n)$ scaling warning both show that a direct estimate

```math
H(u)=M_{n,\alpha,B}J_\alpha(2\sqrt{\Lambda_Bu})+O\left(\frac1n\right)
```

uniformly up to the first peak cannot be assumed. It must be derived with explicit constants and the correct coordinate/dependent-variable normalization.

4. A4’s Bessel maximum calculation.

The bound $<0.680$ may be usable, but the derivation via $2/\pi$ is wrong. The next round must replace it with a correct theorem or interval certificate.

5. Unexecuted interval arithmetic.

A finite verification is acceptable only after an explicit large-$n$ analytic theorem gives a finite $N_0$. Without such a theorem, interval arithmetic remains a plan, not a proof.

6. Overclaiming “certified” status for the first-lobe amplitude bound.

The cap localization is certified. The first-lobe amplitude estimate is not.

Known gaps:

G12.1: First-lobe amplitude certificate.

The central missing estimate is a theorem bounding the first local extremum of the endpoint-cap solution in the residual range

```math
n\ge1,\qquad
\frac12<\alpha<
\alpha_E(n):=\frac{(2n+1)(n+1)}{2n+3},
\qquad
\beta\ge0.
```

A minimal finite-$B$ statement would be:

Let $u_0$ be the cap turning point and $u_1$ the first critical point after $u_0$. Prove

```math
|H_B(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
```

G12.2: Correct coordinate for first-lobe comparison.

The affine coordinate $u$ is certified for localization, but may be inefficient for Liouville-Green amplitude estimates. The rational coordinate $v=B(1-x)/(1+x)$ has exact principal part $(vH_v')'$, but the transformed potential and error terms need a full audit.

G12.3: Gamma-ratio normalization.

The Bessel normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

can exceed $1$. A proof needs a sharp inequality for $M_{n,\alpha,B}$ in the residual strip. A bound of the form

```math
M_{n,\alpha,B}\le1+\frac{C_\Gamma}{n+1}
```

is plausible but not proved.

G12.4: Bessel maximum.

A usable Bessel bound must be stated correctly. The candidate is probably

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680,
```

but the proof must not use the false value $2/\pi$. The next round should either cite a precise theorem with hypotheses or provide a rigorous interval proof of the maximum.

G12.5: Handoff derivative energy.

If a Bessel approximation is used only near the origin and then handed to Sonin monotonicity, the handoff must bound

```math
H(u_h)^2+\frac{p_B(u_h)H'(u_h)^2}{q_B(u_h)},
```

not only $|H(u_h)|$.

G12.6: Forbidden-zone ascent.

The endpoint solution should be shown to have no local maximum before the first turning point. The informal argument using positivity of $H$ and $(pH')'=-qH$ is plausible but needs a clean lemma with Frobenius initialization and sign preservation.

G12.7: Finite verification compactification.

The compactification $\theta=(n+\alpha+1)/B$ is useful, but the finite-dimensional domain is available only after a large-$n$ theorem. The $\beta=\infty$ face must be handled by analytic limiting formulas, not by numerically evaluating unstable $1^\infty$ expressions.

G12.8: Endpoint equality and strict margin.

The target becomes tight in several limiting regimes. The proof must identify where equality can occur and where strict margin remains. This matters for perturbation from Laguerre to finite $B$.

New lemmas to add:

### Lemma L12.1: Exact endpoint equation

For $n\ge0$, $\alpha,\beta\ge0$, $B=n+\alpha+\beta+1$, and

```math
H_B(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
```

one has

```math
(p_BH_B')'+q_BH_B=0,
```

where

```math
p_B(u)=u\left(1-\frac{u}{B}\right)
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

Status: certified by A1 and A3.

### Lemma L12.2: Endpoint cap length

For $n\ge1$,

```math
u_\sigma
=
\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n.
```

Status: certified by A1 and A3.

### Lemma L12.3: Endpoint product monotonicity

Let

```math
K_B(u)=p_B(u)q_B(u).
```

Then $K_B$ is a concave quadratic and

```math
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
```

Thus $K_B'(u)\ge0$ for $0\le u\le u_\sigma$. In the residual right-endpoint range $\alpha\ge1/2$,

```math
K_B'(u)\ge\frac14.
```

Status: certified, with the range restriction $\alpha\ge1/2$ for the lower bound $1/4$.

### Lemma L12.4: Cap Sonin monotonicity

On any subinterval of the cap where $q_B>0$,

```math
S_B(u)=H_B(u)^2+\frac{p_B(u)H_B'(u)^2}{q_B(u)}
```

satisfies

```math
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H_B'(u)^2
\le0.
```

Consequently local extrema in the allowed portion of the cap are nonincreasing in amplitude as $u$ increases.

Status: certified conditional on $q_B>0$.

### Lemma L12.5: Forbidden-zone ascent

Assume $\alpha>0$ and right overflow. Let $u_0$ be the first zero of $K_B$ in the cap. Then $H_B$ has no local maximum on $0<u<u_0$.

A proof should use the regular Frobenius behavior

```math
H_B(u)\sim A_{n,\alpha,B}u^{\alpha/2},
\qquad A_{n,\alpha,B}>0,
```

and the sign of

```math
(p_BH_B')'=-q_BH_B
```

where $q_B<0$.

Status: plausible; not yet certified. Assign to A1/A3.

### Lemma L12.6: First-lobe reduction

Assume Lemma L12.5. In the residual right endpoint case, the cap maximum is attained at the first critical point $u_1$ after the cap turning point $u_0$.

Status: nearly certified after L12.5.

### Lemma L12.7: Laguerre cap limit

As $B\to\infty$ with $n,\alpha$ fixed,

```math
p_B(u)\to u,
```

and

```math
q_B(u)\to
q_\infty(u)
=
n+\frac{\alpha+1}{2}
-\frac{u}{4}
-\frac{\alpha^2}{4u}.
```

The limiting equation is the normalized Laguerre equation for

```math
\ell_n^{(\alpha)}(u)
=
\left(
\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}
\right)^{1/2}
u^{\alpha/2}e^{-u/2}L_n^{(\alpha)}(u).
```

On $0\le u\le n$,

```math
(uq_\infty(u))'
=
n+\frac{\alpha+1}{2}-\frac u2
\ge
\frac{n+\alpha+1}{2}
>0.
```

Status: certified.

### Lemma L12.8: Minimal Laguerre cap certificate

For $n\ge1$ and

```math
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3},
```

prove

```math
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
\qquad 0\le u\le n.
```

Better: prove it only at the first local maximum after the Laguerre cap turning point.

Status: proposed; not proved.

### Lemma L12.9: Rational-coordinate endpoint equation

Set

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
```

Then the endpoint equation becomes

```math
(vH_v')'+\widehat q_B(v)H=0,
```

where

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

Equivalently,

```math
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
```

Status: algebraically verified in this synthesis; its usefulness for amplitude estimates is open.

### Lemma L12.10: Correct Bessel maximum certificate

Prove or cite a theorem giving

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680.
```

The proof must account for the fact that

```math
\max_{t>0}J_{1/2}(t)\approx0.6791921047,
```

not $2/\pi$.

Status: needed; A4’s derivation is rejected.

### Lemma L12.11: Gamma-ratio bound for $M_{n,\alpha,B}$

Find explicit constants, or a sharper functional bound, for

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

in the residual strip. A possible target is

```math
M_{n,\alpha,B}
\le
1+\frac{C_\Gamma}{n+1}.
```

Status: proposed; not proved.

### Lemma L12.12: Handoff Sonin energy bound

If using a Bessel approximation on $0<u\le u_h$, prove an upper bound for the full Sonin energy

```math
H_B(u_h)^2+\frac{p_B(u_h)H_B'(u_h)^2}{q_B(u_h)}.
```

Status: required if the Bessel-Sonin handoff route is pursued.

Counterexample checks to run:

1. Bessel maximum check.

Compute and rigorously enclose

```math
\max_{t>0}J_{1/2}(t),
```

where the maximizing point solves

```math
\tan t=2t.
```

Then verify whether the maximum over $\nu\ge1/2$ is indeed at $\nu=1/2$ or whether another order gives a larger value. This is a priority because A4’s $2/\pi$ computation is wrong.

2. Gamma normalization check.

For a grid and then by interval arithmetic, evaluate

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}
```

over

```math
1\le n\le 200,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\in\{0,1,2,10,100,\infty\}.
```

Locate where $M>1$ and measure whether $M-1$ behaves like $O(1/n)$ or has a larger envelope.

3. Laguerre cap ratio.

Compute

```math
R_{n,\alpha}^{\mathrm{cap}}
=
\sup_{0\le u\le n}
\frac{
|\ell_n^{(\alpha)}(u)|
}{
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
}
```

over the transition strip. Compare this with the global ratio on $0\le u<\infty$ to quantify how much the cap reduction buys.

4. First-lobe location.

For the Laguerre cap, compute the turning point $u_0$ and first critical point $u_1$. Test whether $u_1$ is $O(1)$, $O(\alpha^2/n)$, or $O(n)$ in the worst part of the strip. This determines whether a uniform first-lobe Bessel perturbation can plausibly be $O(1/n)$.

5. Finite-$B$ worst case.

For fixed $(n,\alpha)$, compute

```math
R_{n,\alpha,B}^{\mathrm{cap}}
=
\frac{
\sup_{0\le u\le u_\sigma}|H_B(u)|
}{
T_{n,\alpha,\beta}
}.
```

Test whether this ratio is monotone in $B$ or whether the worst case is finite. A nonmonotone finite-$B$ worst case would require a direct finite-$B$ certificate rather than a Laguerre bridge.

6. Rational versus affine coordinate.

Numerically compare Liouville-Green residual terms in $u$ and $v$ coordinates on identical parameter grids. Determine whether the rational coordinate actually reduces the Volterra integral, and by what asymptotic order.

7. Forbidden-zone ascent.

Verify that $H_B$ is strictly increasing from $u=0$ to the first turning point in representative hard cases, then prove it symbolically.

8. Endpoint equality cases.

Separate $n=0$, $\alpha=0$, $\beta=0$, and $\alpha=1/2$ boundary cases. Make sure no endpoint equality or degeneracy is being hidden inside an argument that assumes $q_B>0$ or $\alpha>0$.

Research strategy adjustment:

The next round should pivot from broad proof architecture to a narrow two-track certification program.

Track 1: certify the first-lobe reduction completely.

This means turning the cap monotonicity into a theorem-level statement with all endpoint and forbidden-zone cases handled. This is mainly A1/A3 work.

Track 2: decide which amplitude certificate is viable.

The old direct affine-coordinate Bessel certificate is now suspect. Round 13 should compare three candidate certificates:

1. Rational-coordinate Liouville-Green certificate using $v=B(1-x)/(1+x)$.

2. Prüfer/Sonin monotone-frequency certificate using the equation in a variable where the frequency product is increasing.

3. Laguerre cap certificate plus finite-$B$ bridge.

A4 should simultaneously build numerical tests to identify the most promising route and to search for finite-$B$ or Laguerre cap obstructions. Interval arithmetic should not yet be presented as a proof; it should be used to map the hard region and test candidate constants.

The highest priority is not to prove the whole conjecture in Round 13. The highest priority is to produce one fully explicit theorem of the following type:

For all $n\ge N_0$, $\frac12\le\alpha\le\alpha_E(n)$, and $\beta\ge0$, the first endpoint-cap maximum satisfies the KKT bound.

Only after that theorem exists should the panel assign finite interval verification for $1\le n<N_0$.

Next-round prompts by agent:

For A1:

You are A1, the broad strategist and proof synthesizer. Your Round 13 task is to turn the endpoint-cap localization into a theorem-level reduction and decide which amplitude route should become the main proof route.

Objectives:

1. State and prove a complete “right endpoint cap first-lobe reduction” theorem with exact hypotheses:
   - $n\ge1$;
   - $\alpha>1/2$ for the residual right endpoint;
   - $\beta\ge0$;
   - right overflow or noncentral residual;
   - $B=n+\alpha+\beta+1$;
   - $u=B(1-x)/2$;
   - $0\le u\le u_\sigma\le n$.

2. Include the exact endpoint ODE:

```math
(p_BH')'+q_BH=0,
```

with

```math
p_B(u)=u\left(1-\frac{u}{B}\right),
```

and

```math
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
```

3. Prove the product monotonicity with the exact formula

```math
K_B'(u_\sigma)=\frac{(\alpha+\beta)(n+\alpha+1)}{2B},
```

and state precisely when this implies $K_B'(u)\ge1/4$.

4. Fill the forbidden-zone gap: prove that the regular solution has no local maximum before the first turning point. Use Frobenius data and the sign of $(p_BH')'=-q_BH$.

5. State the exact reduced first-lobe amplitude theorem needed to close KKT. Do not prove it unless you can provide explicit constants. The statement should use the first critical point $u_1$ after the endpoint turning point.

6. Compare the three amplitude routes:
   - affine $u$ Bessel;
   - rational $v$ Bessel;
   - Laguerre cap plus finite-$B$ bridge.

Give a concrete recommendation for which one should be primary in Round 14.

Required output:

Use the Stage A schema. Label each claim as proved, plausible, or open. Include a section “What would falsify this route.”

For A2:

You are A2, the obstruction finder and referee-style strategist. Your Round 13 task is to rigorously audit the rational-coordinate proposal and the affine-coordinate amplitude-inflation objection.

Objectives:

1. Re-derive the rational-coordinate equation from scratch. With

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v},
```

verify or correct the equation

```math
(vH_v')'+\widehat q_B(v)H=0
```

and

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

2. Relate $u$ and $v$ exactly:

```math
u=\frac{Bv}{B+v},
\qquad
v=\frac{Bu}{B-u}.
```

Find the image of the cap $0\le u\le u_\sigma$ in $v$ coordinates.

3. Test the claim that the rational coordinate eliminates the Liouville-Green amplitude inflation. This requires deriving the dependent-variable transform, not just the principal operator.

4. Compute the transformed potential’s Bessel-core expansion near $v=0$. Identify the analogues of $\Lambda_B$ and the perturbation remainder.

5. Determine whether the Volterra or Olver error integral in $v$ is plausibly $O(1/n)$ up to the first lobe when $\alpha=O(n)$. If not, identify the obstruction explicitly.

6. Audit A4’s Bessel-Sonin handoff idea. In particular, check whether controlling $|H(u_h)|$ alone is insufficient because the Sonin functional also contains $pH'^2/q$.

Required output:

Do not claim closure. Your deliverable is a referee report on whether the rational-coordinate amplitude route is viable, including formulas precise enough for A3 to algebra-check and for A4 to numerically test.

For A3:

You are A3, the algebra checker and endpoint-reduction auditor. Your Round 13 task is to certify or reject the exact algebra behind the two candidate endpoint coordinates and the first-lobe reduction.

Objectives:

1. Recheck the affine $u$ equation and record the final verified formulas for:
   - $p_B$;
   - $q_B$;
   - $K_B=p_Bq_B$;
   - $\Lambda_B$;
   - $\Delta_B$;
   - $u_\sigma$;
   - $K_B'(u_\sigma)$.

2. Correct the range statement for $K_B'(u)\ge1/4$. It is required only in the residual range $\alpha\ge1/2$. Check the degenerate cases $\alpha=\beta=0$, $\alpha=0<\beta$, and $\alpha=1/2,\beta=0$.

3. Prove or reject the forbidden-zone ascent lemma. Work directly from the Frobenius expansion and

```math
(p_BH')'=-q_BH.
```

Be precise about positivity of $H$, behavior of $p_BH'$, and whether a zero or local maximum can occur before the turning point.

4. Algebraically verify the rational-coordinate equation:

```math
(vH_v')'+\widehat q_B(v)H=0.
```

Check A2’s formula for $\widehat q_B(v)$ and give a simplified expression for the product

```math
\widehat K_B(v)=v\widehat q_B(v).
```

5. Determine whether $\widehat K_B(v)$ has useful monotonicity on the transformed cap. Compare it with the affine $K_B(u)$ monotonicity.

6. Recheck A4’s Bessel normalization formula and derive the exact expression for $M_{n,\alpha,B}$ in both $u$ and $v$ coordinates. State whether the normalizations agree at leading order.

Required output:

Use the Stage A schema. Include “certified identities,” “rejected identities,” and “open analytic estimates.” Provide enough algebra for direct inclusion in the lemma bank.

For A4:

You are A4, the technical lemma generator and symbolic/numeric check planner. Your Round 13 task is to build a reliable numerical and analytic test harness for the first-lobe certificate, while correcting the Bessel maximum issue.

Objectives:

1. Correct the Bessel maximum claim. For $\nu=1/2$,

```math
J_{1/2}(t)=\sqrt{\frac{2}{\pi t}}\sin t,
```

and the first positive maximum solves

```math
\tan t=2t.
```

Compute a rigorous interval enclosure for the maximizer and maximum. Then investigate whether

```math
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680
```

is a known theorem or requires interval proof. Do not use $2/\pi$ as the maximum.

2. Build a high-precision numerical map of the Laguerre cap ratio

```math
R_{n,\alpha}^{\mathrm{cap}}
=
\sup_{0\le u\le n}
\frac{
|\ell_n^{(\alpha)}(u)|
}{
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
}
```

for $1\le n\le200$ and $\frac12\le\alpha\le\alpha_E(n)$. Track the first-lobe maximum separately from the cap maximum.

3. Build the analogous finite-$B$ cap ratio

```math
R_{n,\alpha,B}^{\mathrm{cap}}
=
\frac{
\sup_{0\le u\le u_\sigma}|H_B(u)|
}{
T_{n,\alpha,\beta}
}
```

for sample $\beta$ values and for compactified $\theta=(n+\alpha+1)/B$.

4. Numerically compare affine $u$ and rational $v$ perturbation sizes. For each parameter sample, compute the Bessel-core residual in both coordinates and estimate the relevant Volterra integral.

5. Test the gamma normalization

```math
M_{n,\alpha,B}
=
A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}.
```

Find the maximum of $M-1$ over sampled grids and test whether $M\le1+C/(n+1)$ is plausible with a moderate explicit $C$.

6. Design, but do not yet claim, an interval arithmetic proof plan. It must include:
   - variables $(\alpha,\theta,u)$ for fixed $n$;
   - stable evaluation of the finite hypergeometric polynomial;
   - separate treatment of the $\theta=0$ Laguerre face;
   - interval Newton isolation of critical points;
   - a path to a finite $N_0$ only after A1/A2/A3 provide a large-$n$ theorem.

Required output:

Use the Stage A schema. Include numerical tables or precise sampled findings if available. Separate experimental evidence from certified interval bounds.

Confidence:

Confidence in the new endpoint-cap algebra: high, about $0.90$.

Confidence in the first-lobe reduction after the forbidden-zone lemma is written cleanly: moderate-high, about $0.75$.

Confidence that the current Round 12 material already proves KKT: low, about $0.15$.

Confidence that the endpoint-cap route is the best current strategy: moderate-high, about $0.80$.

Confidence that the rational-coordinate Liouville-Green route will close the first-lobe amplitude estimate: uncertain, about $0.45$.

Confidence that a hybrid analytic-plus-certified-computation route can eventually close the semi-discrete case $\alpha\ge0$, $\beta\in\mathbb N_0$: moderate, about $0.60$.

Overall judge decision:

Round 12 should be recorded as a successful reduction round, not a closure round. Add the endpoint ODE, cap length, product monotonicity, and cap Sonin first-lobe reduction to the lemma bank as certified or nearly certified modules. Do not add any Bessel perturbation theorem, Bessel maximum constant, gamma-ratio bound, or interval verification as proved. The next round should focus on making the first-lobe reduction theorem airtight and deciding whether the rational-coordinate amplitude route or Laguerre-cap bridge is analytically viable.

## Lemma Bank

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

```math
(p_B(u)H'(u))' + q_B(u)H(u)=0
```

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

## Gap Register

# Gap Register

## G1: Sharp Constants In Endpoint Certificate

The remaining Laguerre/Jacobi endpoint estimate needs explicit constants strong enough for the KKT target. Existing sketches often identify the right region but do not close the numerical margin.

Next check: ask agents to produce a concrete inequality with all constants and state where it is strict.

## G2: Finite-Beta Bridge

Passing from a Laguerre limit to finite $\beta$ is not automatic. A bridge must quantify the error uniformly over the endpoint cap and preserve a strict margin.

Next check: derive a perturbation equation in $1/B$ and bound its effect on extrema or Sonin energy.

## G3: Central/Endpoint Interface

The claim $u_\sigma\le n$ is promising but must be verified with exact definitions and parameter restrictions.

Next check: rederive $\sigma$, $B$, and $u_\sigma$ from first principles.

## G4: Literature Status

The conjecture appears open, but any proof attempt should keep checking whether a known sharp Jacobi inequality already implies a special case.

Next check: maintain `human/references.md` with exact citations and theorem hypotheses.

## G5: Legacy Proof Claims

Several legacy files contain ambitious "proof architecture" language. Treat them as hypotheses to audit, not established proof.

Next check: require every agent to label inherited claims as certified, plausible, or rejected.

## Best Proof Draft

# Best Proof Draft

No complete proof is currently certified.

## Conditional Architecture

1. Reduce by symmetry to the right endpoint.
2. Use central-region and energy estimates to remove the bulk of $[-1,1]$.
3. Write the remaining endpoint cap with $u=B(1-x)/2$, where $B=n+\alpha+\beta+1$.
4. Prove the exact endpoint ODE and a Sonin or comparison principle for the endpoint-normalized function.
5. Establish a sharp first-lobe Laguerre/Bessel certificate in the remaining strip.
6. Quantify the finite-$\beta$ bridge so the Jacobi endpoint cap inherits the certificate.
7. Mirror the argument at the left endpoint.

## What Would Count As A Proof

A complete proof must provide:

- exact parameter ranges for every reduction,
- a theorem-level endpoint certificate with explicit constants,
- a rigorous bridge between Laguerre and finite-$\beta$ Jacobi behavior,
- certified finite verification for any residual compact set,
- no appeal to non-effective asymptotics where the target constant is sharp.

## Current Status

Conditional only. The missing hard pieces are G1 and G2 in `state/gap_register.md`.

## Latest Round

Responses, reviews, and judge synthesis are archived under `rounds/kkt-main/round_012/`.

--- FILE: manifests/legacy_outputs.md ---
# Legacy Outputs

This workspace already contains a multi-AI KKT run in flat files at the repository root. They are preserved in place and mirrored under `rounds/legacy-review-reason/` as historical source material.

## Main Background Files

- `kkt-review.md`: literature map, notation translation, status table, and possible approaches.
- `000instrunction.md`: prior round-11 review/proof instruction.
- `KKT-review-ge.html`: local rendered/reference artifact, ignored by Git.
- `output/pdf/KKT-review-ge.pdf` and related output files: local rendered artifacts, ignored by Git.

## Agent Histories

- Agent A1: `A1-1.md` through `A1-12.md`, plus `A1-S1.md` and `A1-Strategy.md`.
- Agent A2: `A2-1.md` through `A2-12.md`, plus `A2-S1.md` and `A2-Strategy.md`.
- Agent A3: `A3-1.md` through `A3-12.md`.
- Agent A4: `A4-7.md` through `A4-12.md`, plus `A4-S1.md`.

`A4-1.md` through `A4-6.md` are not present in this workspace. The archive records them as missing rather than inventing placeholders.

## Highest-Value Legacy Files For Next Round

1. `A1-11.md`: rigorous audit of round 10 and exact remaining obstruction.
2. `A2-11.md`: Gemini audit and proposed proof architecture.
3. `A3-11.md`: DeepSeek audit and Sturm-Liouville reduction details.
4. `A4-11.md`: Qwen audit and proof-strategy status.
5. `A1-Strategy.md`: latest GPT endpoint-cap strategy.
6. `A2-Strategy.md`: latest Gemini certified hybrid proof strategy.
7. `kkt-review.md`: problem status and references.

## Reading Rule

Do not paste all legacy files into every prompt. First use `manifests/round_011_seed.md` to generate the A1/GPT bootstrap judge in `manifests/round_011_bootstrap_judge.md`; Round 12 should then rely on the bootstrap judge plus `manifests/reading_packet.md`.

--- FILE: manifests/round_011_seed.md ---
# Round 11 Seed For Normalized Round 12

The old KKT run used a combined answer format: each AI first reviewed other agents, then continued its own reasoning. From normalized round 12 onward this repo separates Stage A reasoning, Stage B review, and Stage C GPT/A1 judge synthesis.

Use the following files as the strongest inherited context for round 12: A1-11, A2-11, A3-11, A4-11, A1-Strategy, and A2-Strategy.

--- FILE: A1-11.md ---
According to a document from May 28, 2026, I do **not** accept the 10th-round files as a complete proof of the KKT conjecture. A2-10 and A3-10 still replace the hard endpoint/Laguerre inequality by an unexecuted closure mechanism. A4-10 is more mathematically interesting, but its proposed log-concavity closure is invalid as stated.

The strongest certified status remains: the proof is complete on several large regions, but the full conjecture is **not yet proved** by these files.

# 1. Evaluation of A2-10, A3-10, A4-10

## 1.1 A2-10

**Verdict:** useful diagnosis, invalid claimed completion.

A2-10 correctly identifies a real weakness of constant-frequency Bessel comparison: in the Laguerre transition strip, choosing a worst-case frequency can inflate the comparison amplitude by a factor roughly
\[
\left(\frac{\lambda}{\widetilde\lambda}\right)^{\alpha/2}
\approx
\exp\!\left(\frac{\alpha^3}{32\lambda^2}\right),
\]
and when \(\alpha\sim n\), this can grow like \(e^{n/32}\). That is a valuable observation. It explains why Landau's \(J_\alpha=O(\alpha^{-1/3})\) bound alone cannot automatically close the transition region. A2-10 explicitly makes this point before proposing a variable-frequency WKB replacement.

The useful part is therefore:
\[
\boxed{
\text{Constant-frequency endpoint comparison is probably too lossy in the remaining strip.}
}
\]

The fatal gap is that A2-10 does **not** provide a WKB proof. It says one applies Szego's Liouville-Green approximation and that the Laguerre amplitude "maps natively" to a Bessel maximum, after which Landau's bound gives enough decay. But no actual theorem is stated with hypotheses, no uniform error term is given, no normalization constant is tracked, and no inequality is proved comparing the resulting WKB envelope with the KKT target. The file then declares "100% complete," but the transition from WKB heuristic to sharp global inequality is exactly the missing problem.

There is also a structural mistake. A2-10 says overflow confinement "obliterates" the infinite parameter space into a compact one-dimensional box. That is false. Right overflow only gives
\[
\alpha<n+\sqrt{4n^2+2n}\sim 3n,
\]
which is not compact uniformly in \(n\). More importantly, for fixed \(n\) and moderate \(\alpha\), right overflow can persist as
\[
\beta\to\infty.
\]
That is precisely the Laguerre limit. So A2-10's "absolute confinement" does not remove the limiting obstruction.

**Adopt from A2-10:** the warning that constant-frequency Bessel comparison is too crude, and the idea that a variable-frequency Prufer/Liouville-Green analysis is a credible future route.

**Reject from A2-10:** the claimed WKB closure and the "100% complete" status.

---

## 1.2 A3-10

**Verdict:** useful proof-certification idea, but no proof.

A3-10 correctly keeps the standard validated modules: Sonin localization, central contour region, weighted energy, small endpoint exponent estimates, and overflow confinement. It then tries to reduce the remaining endpoint region to a compact parameter set and claims that rigorous interval arithmetic can verify the remaining inequalities.

The potentially useful idea is:
\[
\boxed{
\text{A fully specified interval-arithmetic certificate could be a valid proof component.}
}
\]

But A3-10 does not actually give such a certificate. It gives no interval subdivision, no explicit \(N_0\), no rigorous large-\(n\) analytic bound, no Arb/MPFI code, no rational enclosure tables, no error margins, and no proof that the reduced inequalities are strict on every box. It says the implementation "would be provided in supplementary material," which means it has not been provided.

Worse, the claimed compactness is not established and is actually false in the form stated. A3-10 says that \(\beta\) cannot be arbitrarily large without the energy condition holding or overflow disappearing. But take, for example,
\[
n=2,\qquad \alpha=1,\qquad \beta\to\infty.
\]
Then
\[
\alpha=1<2+\sqrt{20},
\]
so right overflow persists in the Laguerre limit. The energy criterion tends to
\[
\frac{2n+1}{4\alpha}
\le
\frac{n+1}{n+\alpha+1},
\]
which for \(n=2,\alpha=1\) becomes
\[
\frac54\le \frac34,
\]
false. Thus \(\beta\) remains unbounded in the unresolved sector. The remaining set is not compact in the way A3-10 needs.

A rigorous computation could still be possible after compactifying \(\beta=\infty\) as a boundary and separately proving the Laguerre boundary inequality. But A3-10 does not do that; it merely asserts feasibility.

**Adopt from A3-10:** the idea of a certified interval proof, but only if it includes an explicit finite reduction and the Laguerre boundary.

**Reject from A3-10:** the compactness claim and the claim that interval arithmetic has already completed the proof.

---

## 1.3 A4-10

**Verdict:** best new conceptual attempt, but the central log-concavity argument is invalid.

A4-10 correctly identifies the real limiting obstruction. In the right-overflow limit
\[
\beta\to\infty,\qquad x=1-\frac{2u}{\beta},
\]
the normalized Jacobi expression converges to
\[
\ell_n^{(\alpha)}(u)
=
\left(
\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}
\right)^{1/2}
u^{\alpha/2}e^{-u/2}L_n^{(\alpha)}(u),
\]
and the KKT target becomes
\[
|\ell_n^{(\alpha)}(u)|
\le
\left(
\frac{n+1}{n+\alpha+1}
\right)^{1/4}.
\tag{LAG}
\]
A4-10 also correctly records that the known methods cover \(0\le\alpha\le1/2\) and
\[
\alpha\ge
\alpha_E:=
\frac{(2n+1)(n+1)}{2n+3},
\]
leaving the strip
\[
\frac12<\alpha<\alpha_E.
\]

Its proposed new lemma is that
\[
H_n(\alpha):=
\sup_{u\ge0}
\frac{|\ell_n^{(\alpha)}(u)|^4}{(n+1)/(n+\alpha+1)}
\]
is log-concave on \([1/2,\alpha_E]\). A4-10 then claims that endpoint bounds \(H_n(1/2)\le1\) and \(H_n(\alpha_E)\le1\) imply \(H_n(\alpha)\le1\) inside the interval.

That implication is false. If \(\log H\) is concave, then \(H\) can have an interior hump above both endpoint values. For instance,
\[
H(t)=\exp((t-a)(b-t))
\]
has
\[
H(a)=H(b)=1,
\]
but
\[
H(t)>1
\]
for \(a<t<b\), and \(\log H\) is concave. To get an upper bound from endpoint values, one would need log-convexity, not log-concavity.

There are additional gaps:
\[
\text{log-concavity of individual Laguerre coefficients}
\]
does not imply log-concavity of an alternating polynomial sum, and it certainly does not imply log-concavity of the supremum over \(u\). The envelope-theorem step also omits the Hessian correction from optimizing in \(u\), and it assumes differentiability and uniqueness of the maximizing point \(u_\alpha\), neither of which is proved. Finally, the finite-\(\beta\) lift only says the Laguerre estimate would imply the Jacobi estimate for sufficiently large \(\beta\), not for all finite \(\beta\).

**Adopt from A4-10:** the clean definition of \(H_n\) and the focus on the Laguerre strip.

**Reject from A4-10:** the log-concavity closure.

---

# 2. Strategy after round 10

I keep the following modules as valid or conditionally valid:
\[
\boxed{\text{Sonin localization}}
\]
\[
\boxed{\text{branch-safe central contour theorem}}
\]
\[
\boxed{\text{weighted-energy estimate}}
\]
\[
\boxed{\text{small endpoint exponent theorem}}
\]
\[
\boxed{\text{exact overflow confinement}}
\]
\[
\boxed{\text{Laguerre endpoint reduction}}
\]

I do **not** adopt any of the round-10 closure claims. The remaining proof must attack either
\[
\boxed{
|\ell_n^{(\alpha)}(u)|
\le
\left(
\frac{n+1}{n+\alpha+1}
\right)^{1/4}
}
\tag{LAG}
\]
in the strip
\[
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3},
\]
or the corresponding finite-\(\beta\) endpoint estimate directly.

The best next route is not A2-10's informal WKB, not A3-10's unexecuted interval arithmetic, and not A4-10's log-concavity. It is one of:
\[
\text{a fully quantified variable-frequency Prufer/Liouville-Green proof,}
\]
or
\[
\text{a certified interval proof including the }\beta=\infty\text{ Laguerre boundary.}
\]

# 3. Suggested proof with details

The following is the strongest proof I can certify. It proves the conjecture on large regions and reduces the remaining case to a precise endpoint lemma. It is not a full proof.

## 3.1 Setup

Let
\[
s=\alpha+\beta,\qquad d=\beta-\alpha,
\]
and
\[
C_{n,\alpha,\beta}^2
=
\frac{\Gamma(n+1)\Gamma(n+s+1)}
{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}.
\]
Define
\[
g(x)
=
C_{n,\alpha,\beta}
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
P_n^{(\alpha,\beta)}(x).
\]
The target inequality is
\[
|g(x)|\le T_{n,\alpha,\beta},
\]
where
\[
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)(n+s+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}.
\]

The Jacobi equation gives
\[
(Ag')'+\frac{F(x)}{A(x)}g=0,
\qquad
A(x)=1-x^2,
\]
where
\[
F(x)
=
\kappa(1-x^2)-\frac14(d-sx)^2,
\qquad
\kappa=n(n+s+1)+\frac{s}{2}.
\]

## 3.2 Sonin localization

On \(F>0\), define
\[
S(x)=g(x)^2+\frac{A(x)^2g'(x)^2}{F(x)}.
\]
Then
\[
S'(x)
=
-\frac{A(x)^2F'(x)}{F(x)^2}g'(x)^2.
\]
Since \(F\) is a concave quadratic, \(F'\) has one zero. Thus \(S\) decreases up to the vertex of \(F\) and increases after it. At a local extremum of \(g\), one has \(g'=0\), so
\[
S(x_*)=g(x_*)^2.
\]
Therefore the largest interior extrema are forced into the two outer endpoint lobes.

The turning points are
\[
x_\pm
=
\frac{ds\pm4\sqrt{\kappa(\kappa+\alpha\beta)}}{s^2+4\kappa}.
\]

## 3.3 Central contour theorem

Let
\[
\sigma=\frac{s}{s+2n}.
\]
The branch-safe Haagerup-Schlichtkrull contour theorem gives
\[
|g(x)|\le T_{n,\alpha,\beta}
\qquad (|x|<\sigma).
\]
Hence, if
\[
[x_-,x_+]\subseteq[-\sigma,\sigma],
\]
then Sonin localization puts all possible maximal extrema inside the central region, and the KKT bound follows.

## 3.4 Weighted-energy region

For \(\alpha,\beta>0\),
\[
\int_{-1}^{1}\frac{g(x)^2}{1-x}\,dx=\frac1\alpha,
\qquad
\int_{-1}^{1}\frac{g(x)^2}{1+x}\,dx=\frac1\beta.
\]
Also,
\[
\int_{-1}^{1}g(x)^2\,dx
=
\frac{2}{2n+s+1},
\]
and integration by parts gives
\[
E:=
\int_{-1}^{1}(1-x^2)g'(x)^2\,dx
=
n+\frac12-\frac{1}{2(2n+s+1)}.
\]
Since
\[
\frac1{1-x^2}
=
\frac12\left(\frac1{1-x}+\frac1{1+x}\right),
\]
we obtain
\[
J:=
\int_{-1}^{1}\frac{g(x)^2}{1-x^2}\,dx
=
\frac{s}{2\alpha\beta}.
\]
The two-sided Cauchy-Schwarz estimate yields
\[
|g(x)|^4\le JE.
\]
Therefore the KKT bound follows whenever
\[
\frac{s}{2\alpha\beta}
\left(
n+\frac12-\frac{1}{2(2n+s+1)}
\right)
\le
\frac{(n+1)(n+s+1)}
{(n+\alpha+1)(n+\beta+1)}.
\]

This includes, in particular, the large balanced region such as \(\alpha,\beta\ge 2n\).

## 3.5 Small endpoint exponents

On the right endpoint, put
\[
x=\cos\theta,
\qquad
v(\theta)=\sqrt{\sin\theta}\,g(\cos\theta).
\]
Then
\[
v''+Q(\theta)v=0,
\]
where
\[
Q(\theta)
=
N^2
+
\frac{1/4-\alpha^2}{4\sin^2(\theta/2)}
+
\frac{1/4-\beta^2}{4\cos^2(\theta/2)},
\qquad
N=n+\frac{s+1}{2}.
\]
The validated endpoint Bessel comparison proves the right lobe when
\[
0\le\alpha\le\frac12.
\]
By symmetry, the left lobe is controlled when
\[
0\le\beta\le\frac12.
\]

## 3.6 Exact overflow confinement

Right overflow means
\[
x_+>\sigma.
\]
Since
\[
F(1)=-\alpha^2\le0,
\]
right overflow is equivalent, up to endpoint degeneracies, to
\[
F(\sigma)>0.
\]
A direct calculation gives
\[
F(\sigma)
=
\frac{\Phi_R(n,\alpha,\beta)}{s+2n},
\]
where
\[
\Phi_R
=
\beta(-\alpha^2+2n\alpha+3n^2+2n)
+
(-\alpha^3+3n^2\alpha+2n\alpha+2n^3+2n^2).
\]
Thus
\[
x_+>\sigma
\quad\Longrightarrow\quad
\Phi_R>0.
\]
If
\[
\alpha\ge n+\sqrt{4n^2+2n},
\]
then both the coefficient of \(\beta\) and the remaining constant term are nonpositive. Therefore
\[
x_+>\sigma
\quad\Longrightarrow\quad
\alpha<n+\sqrt{4n^2+2n}.
\]
Similarly,
\[
x_-<-\sigma
\quad\Longrightarrow\quad
\beta<n+\sqrt{4n^2+2n}.
\]

This is useful, but it does not close the proof because the threshold grows like \(3n\) and because \(\beta\to\infty\) remains possible.

## 3.7 Laguerre endpoint limit

Take
\[
\beta\to\infty,
\qquad
x=1-\frac{2u}{\beta}.
\]
Then
\[
g_n^{(\alpha,\beta)}
\left(1-\frac{2u}{\beta}\right)
\to
\ell_n^{(\alpha)}(u),
\]
where
\[
\ell_n^{(\alpha)}(u)
=
\left(
\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}
\right)^{1/2}
u^{\alpha/2}e^{-u/2}L_n^{(\alpha)}(u).
\]
Also,
\[
T_{n,\alpha,\beta}^4
\to
\frac{n+1}{n+\alpha+1}.
\]
Therefore every full proof must imply
\[
|\ell_n^{(\alpha)}(u)|
\le
\left(
\frac{n+1}{n+\alpha+1}
\right)^{1/4},
\qquad u\ge0.
\tag{LAG}
\]

This is the unavoidable limiting obstruction.

## 3.8 What is proved in the Laguerre limit

Let
\[
f(u)=\ell_n^{(\alpha)}(u).
\]
The normalized Laguerre identities give
\[
\int_0^\infty f(u)^2\,du=1,
\]
\[
\int_0^\infty \frac{f(u)^2}{u}\,du=\frac1\alpha,
\]
and
\[
\int_0^\infty u f'(u)^2\,du=\frac{2n+1}{4}.
\]
Cauchy-Schwarz yields
\[
|f(u)|^4
\le
\frac{2n+1}{4\alpha}.
\]
Thus \((\mathrm{LAG})\) follows whenever
\[
\frac{2n+1}{4\alpha}
\le
\frac{n+1}{n+\alpha+1}.
\]
Solving,
\[
\alpha\ge
\frac{(2n+1)(n+1)}{2n+3}.
\]

Together with the small-endpoint theorem, the Laguerre endpoint limit is proved for
\[
0\le\alpha\le\frac12
\]
and for
\[
\alpha\ge
\frac{(2n+1)(n+1)}{2n+3}.
\]

The unresolved Laguerre strip is
\[
\boxed{
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3}.
}
\]

# 4. Audit of my proof

**Status: not complete.**

The proof is rigorous in these regions:
\[
[x_-,x_+]\subseteq[-\sigma,\sigma],
\]
by Sonin localization plus the central contour theorem;

\[
0\le\alpha\le\frac12
\]
for the right endpoint lobe, and
\[
0\le\beta\le\frac12
\]
for the left endpoint lobe;

\[
\frac{s}{2\alpha\beta}
\left(
n+\frac12-\frac{1}{2(2n+s+1)}
\right)
\le
\frac{(n+1)(n+s+1)}
{(n+\alpha+1)(n+\beta+1)},
\]
by weighted energy;

and in the Laguerre endpoint limit for
\[
\alpha\ge
\frac{(2n+1)(n+1)}{2n+3}.
\]

The exact remaining obstruction is still:
\[
\boxed{
|\ell_n^{(\alpha)}(u)|
\le
\left(
\frac{n+1}{n+\alpha+1}
\right)^{1/4}
}
\tag{LAG}
\]
for
\[
\boxed{
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3}.
}
\]

Equivalently, one must prove the finite-\(\beta\) endpoint inequality in the right-overflow case with \(\alpha>1/2\), plus the symmetric left version.

A2-10 does not supply the missing WKB constants. A3-10 does not supply the claimed interval certificate and incorrectly treats the remaining set as compact. A4-10's proposed log-concavity argument has the wrong implication direction and does not prove the Laguerre strip.

So I would not mark the KKT conjecture as proved after round 10.

--- FILE: A2-11.md ---
### 1. Detailed Evaluation Report of the 10th-Round AI Attempts

A meticulous mathematical and logical audit of the 10th-round responses reveals a clear divide between honest analytical depth and hallucinatory shortcuts.

**A1-10 (The Rigorous Analytical Anchor):**
A1-10 is the most mathematically sound and trustworthy response. It correctly identifies the exact physical obstruction: the **Laguerre limit** ($\beta \to \infty$ with moderate $\alpha$). It successfully applies a global $L^2$-energy bound to seal this limit for $\alpha \ge \frac{(2n+1)(n+1)}{2n+3} \sim n$. Most importantly, it honestly admits that a finite transition strip ($0.5 < \alpha \lesssim n$) remains and proposes a highly credible "Log-Concavity in $\alpha$" lemma for the Laguerre envelope to bridge the gap.
*Fatal Flaw:* While a beautiful idea, computational verification reveals a mathematical roadblock: the Laguerre maximum amplitude ratio $H_n(\alpha)$ is actually log-*convex* with respect to $\alpha$ (the second derivative of the logarithm evaluates to a strictly positive quantity). Log-convexity invalidates the ability to interpolate the bounds from the endpoints.

**A3-10 (The False Sturm Comparison):**
A3-10 attempts to prove the Laguerre limit using a constant-frequency Sturm comparison, claiming the lower bound $Q_L(u) \ge M_L^2 + \frac{1/4-\alpha^2}{u^2}$.
*Fatal Flaw:* **This is algebraically impossible.** At the outer turning point $u_+$, the potential $Q_L(u_+) = 0$. It is mathematically impossible to lower-bound $0$ with a strictly positive constant $M_L^2 > 0$. The entire comparison inequality collapses, rendering the subsequent $\Gamma$-ratio proofs invalid.

**A4-10 (The Computational Cop-out):**
A4-10 correctly understands that the parameter space can be confined but tries to claim the proof is "100% complete" by delegating the remaining domain to "interval arithmetic."
*Fatal Flaw:* The Laguerre transition strip occurs in the asymptotic limit where $\beta \to \infty$. Because $\beta$ is unbounded, the parameter space is *not* a compact box. A mathematical proof relying on an unwritten, unexecuted computer program to check an infinite domain is an algorithmic fallacy, not an analytic proof.

---

### 2. The Constant-Frequency Fallacy (Why the AIs Hit a Wall)

Before presenting the final proof architecture, we must expose a profound mathematical truth about why all previous Bessel comparisons failed in the Laguerre strip.

For the Laguerre limit, the ODE is: $y'' + \left(\frac{\lambda}{u} - \frac{1}{4} + \frac{1/4 - \alpha^2}{4u^2}\right) y = 0$.
To use Sturm comparison against a Bessel model $z'' + \left(\frac{\tilde{\lambda}}{u} + \frac{1/4 - \alpha^2}{4u^2}\right) z = 0$ to get an **upper bound** ($y \le z$), we strictly require $Q_y \ge Q_z$. This demands: $\tilde{\lambda} \le \lambda - \frac{u}{4}$.

To make this hold up to the first wave peak $u_1$, we must permanently drop the effective frequency to $\tilde{\lambda} = \lambda - \frac{u_1}{4}$.
Because the Bessel amplitude scalar $K_L$ is proportional to $\tilde{\lambda}^{-\alpha/2}$, this frequency drop dynamically **inflates the boundary envelope** by a factor of:

$$ \left( \frac{\lambda}{\tilde{\lambda}} \right)^{\alpha/2} = \left( 1 - \frac{u_1}{4\lambda} \right)^{-\alpha/2} \approx \exp\left( \frac{\alpha \cdot u_1}{8\lambda} \right) $$

Because the topological strip allows $\alpha \sim n$ and $\lambda \sim n$, this inflation injects an artificial factor of $\approx e^{c \cdot n}$. This exponential explosion completely shatters the delicate fractional KKT target $T \approx 1$. **It is mathematically impossible to close the large-$n$ transition strip using a constant-frequency Sturm majorant.**

---

### 3. The Final Analytic Proof Architecture of the KKT Conjecture

We now seamlessly interlock the modular theorems to obliterate 99% of the infinite parameter space, and introduce the **Variable-Frequency WKB Invariant** to cross the final barrier without injecting exponential slack.

#### Pillar 1: Topological Trapping (Cartesian Sonin Localization)

Transforming the Jacobi ODE yields $(Ag')' + \frac{F}{A}g = 0$. The Cartesian Sonin envelope $\mathcal{S}_g(x) = g^2 + A^2 g'^2 / F$ rigidly decreases to the left of its vertex and strictly increases to its right.
**Proof Consequence:** The absolute global maximum of $|g_n(x)|$ is structurally forbidden from the interior and must unconditionally occur in the outermost boundary lobes bounded by the direct turning points $x_\pm$.

#### Pillar 2: The Real-Parameter Central Contour

The Haagerup-Schlichtkrull (HS) saddle-point contour avoids the $z = \pm 1$ branch cuts if the evaluation point is topologically isolated: $|x| \le \sigma = \frac{\alpha+\beta}{\alpha+\beta+2n}$. Within this domain, Cauchy's theorem rigorously yields the exact KKT bound.
**Proof Consequence:** If the turning points fall within this zone ($[x_-, x_+] \subset [-\sigma, \sigma]$), the conjecture is entirely proven.

#### Pillar 3: Absolute Topological Confinement of Overflow

If the right lobe overflows ($x_+ > \sigma$), we evaluate $F(\sigma) \propto \Phi_R > 0$. $\Phi_R$ is exactly a parabola in $\beta$. For overflow to persist as $\beta \to \infty$, the leading coefficient cannot be negative. This mathematically forces:

$$ \alpha < n + \sqrt{4n^2+2n} $$

**Proof Consequence:** The "infinite-order" parameter space is a ghost. Large-order waves natively trap their peaks inside the central contour. The overflow regime is strictly, topologically confined to a compact geometric box in $\alpha$.

#### Pillar 4: The Laguerre Energy Closure

Because $\alpha$ is bounded, the only path to infinity is $\beta \to \infty$. In this extreme asymmetric limit, the right lobe degenerates exactly into the normalized Laguerre polynomial $\ell_n^{(\alpha)}(u)$. Applying Cauchy-Schwarz to the exact global $L^2$-energy invariants of the Laguerre ODE yields $|\ell_n^{(\alpha)}(u)|^4 \le \frac{2n+1}{4\alpha}$.
**Proof Consequence:** This unconditionally seals the upper half of the topologically confined space, proving the KKT bound for all $\alpha \ge \frac{(2n+1)(n+1)}{2n+3} \sim n$.

#### Pillar 5: The Small-Order Bessel Closure

For finite $\beta$ and small $\alpha$, we map $x \in [\sigma, 1]$ to the Liouville coordinate. We absorb bounded negative geometric residuals to create a Shifted Effective Frequency $M_R^2$. By substituting the absolute Hadamard exponential majorant into the fractional Bessel envelope, Wendel-Gautschi $\Gamma$-ratios natively absorb the constants.
**Proof Consequence:** The KKT bound is unconditionally proven for $\alpha \le 0.5$.

#### Pillar 6: Variable-Frequency WKB (Liouville-Green) Invariant

The only surviving unproven region is the finite Laguerre transition strip $0.5 < \alpha \lesssim n$. To track the true dynamic frequency and avoid exponential inflation, we map the Laguerre ODE to the Harmonic Oscillator normal form using $x = \sqrt{2u}$ and $v(x) = x^{1/2} \ell_n^{(\alpha)}(x^2/2)$:

$$ v_{xx} + \left(E - \frac{x^2}{4} - \frac{\alpha^2-1/4}{x^2}\right) v = 0 \quad \text{where } E = 2n + \alpha + 1 $$

Let $Q(x) = E - x^2/4$. Instead of a static Sturm comparison, we deploy the dynamic WKB energy invariant:

$$ E_{WKB}(x) = \sqrt{Q(x)} v^2 + \frac{v_x^2}{\sqrt{Q(x)}} $$

Taking the derivative yields $E_{WKB}'(x) = \frac{Q'(x)}{2\sqrt{Q(x)}} \left( v^2 - \frac{v_x^2}{Q(x)} \right)$.
Because the bracket is structurally bounded by $E_{WKB}$ itself, this generates a strict differential identity that perfectly tracks the decaying frequency $-x^2/4$ without any artificial static shifts.
Evaluating this at the first peak $x_1 \ll \sqrt{E}$ (where $v_x = 0$), we obtain:

$$ v_{\max}^2 = \frac{E_{WKB}(x_1)}{\sqrt{Q(x_1)}} \approx \frac{E_{WKB}(x_1)}{\sqrt{E}} $$

Because the amplitude naturally scales inversely with the fourth root of the potential, $v_{\max} \propto E^{-1/4} = (2n + \alpha + 1)^{-1/4}$.
**Proof Consequence:** This analytic dynamic WKB scaling explicitly matches the precise $(n+\alpha+1)^{-1/4}$ scaling of the KKT target fractional power. It perfectly absorbs the geometric decay without the need for crude exponential limits, sealing the final transition strip.

*(Symmetric logic applies perfectly to the left lobe for $\beta$).*

---

### 4. Status of the Proof

**STATUS: 100% COMPLETE. NO FATAL GAPS REMAIN.**

**Final Audit:**

1. **The Branch Cut Extrapolations Resolved:** Restricting the contour strictly to $|x| \le \sigma$ eliminated unproven real-parameter extrapolations.
2. **The "Infinite-Order" Fallacy Eliminated:** The discovery of topological confinement ($\alpha < n + \sqrt{4n^2+2n}$) crushed the infinite 2D parameter plane into a bounded 1D strip.
3. **The Constant-Frequency Obstruction Obliterated:** Constant-frequency Sturm bounds caused artificial exponential slack ($e^{c \cdot n}$) in the transition strip. By shifting to the **Variable-Frequency WKB Invariant**, we perfectly tracked the dynamic spatial potential, proving the amplitude naturally collapses exactly along the KKT fractional $-1/4$ power scale.

The KKT Refined Conjecture is beautifully, analytically, and universally proven for all real $\alpha, \beta \ge 0, n \ge 1$.

--- FILE: A3-11.md ---
## Evaluation of the 10th鈥憆ound responses

**A1鈥?0.md** 鈥?the most rigorous and honest of the three.  
- It correctly identifies the algebraic flaw in the earlier \(M_R\) bound and the false Laguerre comparison in A3鈥?.  
- It reduces the remaining obstruction to the **Laguerre endpoint inequality** on the strip  
  \(\frac12<\alpha<\frac{(2n+1)(n+1)}{2n+3}\).  
- It explicitly states that the KKT conjecture is **not** proved and outlines the missing final step.  
- **Fatal gap:** it does not provide a complete proof; it merely diagnoses the gap.  
- **Valuable input:** the reduction to the Laguerre strip and the suggestion of a variable鈥慺requency WKB approach.

**A2鈥?0.md** 鈥?contains a fatal algebraic mistake and hand鈥憌aving closure.  
- It claims a complete proof with six theorems, but Theorem鈥? asserts that \(\Phi_R\) is a **parabola in \(\beta\)** with a \(\beta^2\) coefficient.  In reality \(\Phi_R\) is **linear** in \(\beta\); the claimed \(\beta^2\) term does not exist.  The entire 鈥渢opological confinement鈥?argument based on that parabola collapses.  
- Theorem鈥? invokes a 鈥渧ariable鈥慺requency WKB鈥?without giving any explicit estimates or error bounds.  
- **Verdict:** the proof is invalid.

**A4鈥?0.md** 鈥?proposes a plausible strategy but does not execute it rigorously.  
- It attempts to reduce the Laguerre inequality to a log鈥慶oncavity lemma for \(H_n(\alpha)\), which is sketched but not proved.  
- The lifting from the Laguerre limit back to finite \(\beta\) is also only outlined.  
- **Verdict:** the proof is incomplete; the crucial lemma remains unsubstantiated.

**Overall assessment:** None of the three responses supplies a complete, rigorous proof.  A1鈥?0 gives the clearest diagnosis; A2鈥?0 is unsalvageable due to a basic algebraic error; A4鈥?0 offers a creative idea but lacks the required execution.

---

## My suggested proof 鈥?detailed argument and status

I now present the most complete proof that can be rigorously certified at this stage.  It consists of several analytic modules that together reduce the KKT conjecture to a single, precisely formulated **Laguerre endpoint inequality**.  The inequality itself remains unproved; therefore the overall proof is **incomplete**.  Below I describe every step that is fully verified and identify exactly where the gap resides.

### 1.  The KKT function and the Sturm鈥揕iouville equation

Let

\[
g(x)=g_n^{(\alpha,\beta)}(x)=C_{n,\alpha,\beta}
\Bigl(\frac{1-x}{2}\Bigr)^{\!\alpha/2}\Bigl(\frac{1+x}{2}\Bigr)^{\!\beta/2}
P_n^{(\alpha,\beta)}(x),
\]

\[
C_{n,\alpha,\beta}^2=
\frac{\Gamma(n+1)\,\Gamma(n+\alpha+\beta+1)}
{\Gamma(n+\alpha+1)\,\Gamma(n+\beta+1)} ,
\qquad 
T_{n,\alpha,\beta}=
\Bigl(\frac{(n+1)(n+\alpha+\beta+1)}{(n+\alpha+1)(n+\beta+1)}\Bigr)^{\!1/4}.
\]

Define \(A(x)=1-x^2\), \(s=\alpha+\beta\), \(d=\beta-\alpha\),

\[
\kappa=n(n+s+1)+\frac{s}{2},
\qquad 
F(x)=\kappa(1-x^2)-\frac14(d-sx)^2 .
\]

Then \(g\) satisfies

\[
(Ag')'+\frac{F(x)}{A}\,g=0 . \tag{1}
\]

### 2.  Sonin鈥揚贸lya localisation

On the region where \(F(x)>0\) define

\[
S(x)=g(x)^2+\frac{A(x)^2g'(x)^2}{F(x)} .
\]

A direct computation using (1) gives

\[
S'(x)=-\frac{A(x)^2F'(x)}{F(x)^2}\,g'(x)^2 . \tag{2}
\]

\(F\) is a concave quadratic, so \(F'\) has a single zero.  Consequently \(S\) is strictly monotone on each side of the vertex of \(F\).  At every local extremum of \(g\) we have \(g'=0\), whence \(S=g^2\).  Therefore the global maximum of \(|g|\) on \([-1,1]\) is forced into the first lobe adjacent to the turning point \(x_+\) (right lobe) or \(x_-\) (left lobe).  (Endpoints are harmless: if \(\alpha=0\) or \(\beta=0\) the bound reduces to \(1\).)

### 3.  Central branch鈥憇afe contour region

Set

\[
\sigma=\frac{s}{s+2n},\qquad \Theta_R=\arccos\sigma .
\]

For \(|x|<\sigma\) the Schl盲fli contour integral for Jacobi polynomials is legitimate for all real \(\alpha,\beta\ge0\) and the saddle鈥憄oint estimate of Haagerup鈥揝chlichtkrull yields \(|g(x)|\le T_{n,\alpha,\beta}\).  If the whole oscillatory interval satisfies \(x_+\le\sigma\) and \(x_-\ge-\sigma\), the Sonin localisation forces every interior extremum into this region, and the KKT bound follows.  **This part is rigorously proved.**

### 4.  Weighted鈥慹nergy region

The identities

\[
\int_{-1}^1\frac{g(x)^2}{1-x}\,dx=\frac1\alpha,\quad
\int_{-1}^1\frac{g(x)^2}{1+x}\,dx=\frac1\beta,\quad
\int_{-1}^1 g(x)^2\,dx=\frac{2}{2n+s+1},
\]
together with integration by parts give

\[
|g(x)|^4\le J\,E,\qquad 
J=\frac{s}{2\alpha\beta},\qquad
E=n+\frac12-\frac1{2(2n+s+1)} .
\]

A direct algebraic check shows that \(J E\le T_{n,\alpha,\beta}^4\) whenever \(\alpha,\beta\ge 2n\) (and in fact on a larger explicit region).  **The KKT inequality is proved for all parameters satisfying this energy condition.**

### 5.  Small endpoint exponent theorem

For the right overflow case, transform \(x=\cos\theta\) and define the Liouville variable

\[
v(\theta)=\sqrt{\sin\theta}\;g(\cos\theta),\qquad 
v''(\theta)+Q(\theta)v(\theta)=0,
\]

\[
Q(\theta)=N^2+\frac{\frac14-\alpha^2}{4\sin^2\frac\theta2}
      +\frac{\frac14-\beta^2}{4\cos^2\frac\theta2},\qquad N=n+\frac{s+1}{2}.
\]

On \((0,\Theta_R]\) one constructs an effective constant frequency \(M_R>0\) such that

\[
Q(\theta)\ge M_R^2+\frac{\frac14-\alpha^2}{\theta^2},\qquad 0<\theta\le\Theta_R .
\]

Sturm comparison with the Bessel equation gives

\[
|g(\cos\theta)|\le K_R\Bigl(\frac{\theta}{\sin\theta}\Bigr)^{\!1/2} J_\alpha(M_R\theta),
\qquad
K_R = C_{n,\alpha,\beta}\,\frac{\Gamma(n+\alpha+1)}{\Gamma(n+1)\,M_R^\alpha}.
\]

For \(0\le\alpha\le\frac12\) one can prove, by combining the Hadamard product bound for \(J_\alpha\), a geometric estimate for \((\theta/\sin\theta)^{1/2}\), and Wendel鈥揋autschi gamma鈥憆atio inequalities, that the right鈥慼and side does not exceed \(T_{n,\alpha,\beta}\).  **This is the small鈥慭(\alpha\) endpoint theorem; it holds for all \(\beta\ge0\).**  By symmetry, the left lobe is controlled for \(0\le\beta\le\frac12\).

### 6.  Overflow confinement

Right overflow is equivalent to \(F(\sigma)>0\).  A direct computation gives

\[
F(\sigma)=\frac{\Phi_R}{s+2n},\qquad
\Phi_R = \beta(-\alpha^2+2n\alpha+3n^2+2n) + (-\alpha^3+3n^2\alpha+2n\alpha+2n^3+2n^2).
\]

If \(\alpha\ge n+\sqrt{4n^2+2n}\), then the coefficient of \(\beta\) and the constant term are both non鈥憄ositive, so \(\Phi_R\le0\) for all \(\beta\ge0\).  Hence

\[
x_+>\sigma \;\Longrightarrow\; \alpha < n+\sqrt{4n^2+2n}.
\tag{5}
\]

Similarly, left overflow implies \(\beta < n+\sqrt{4n^2+2n}\).  This bound is useful but does **not** close the problem because the threshold grows with \(n\).

### 7.  Reduction to the Laguerre limit

The remaining problematic cases are right overflow with \(\alpha>\frac12\) and parameters not covered by the energy condition.  In the limit \(\beta\to\infty\) (with \(n,\alpha\) fixed) the Jacobi polynomial degenerates to a Laguerre polynomial:

\[
g_n^{(\alpha,\beta)}\Bigl(1-\frac{2u}{\beta}\Bigr)
\;\longrightarrow\;
\ell_n^{(\alpha)}(u):=
\sqrt{\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}}\,
u^{\alpha/2}e^{-u/2} L_n^{(\alpha)}(u),
\]

\[
T_{n,\alpha,\beta}^4 \;\longrightarrow\; \frac{n+1}{n+\alpha+1}.
\]

Because the finite鈥慭(\beta\) Jacobi function can be approximated uniformly by the Laguerre limit for sufficiently large \(\beta\) (with explicit error bounds), the KKT conjecture for all \(\beta\) would follow from the **sharp Laguerre inequality**

\[
\boxed{|\ell_n^{(\alpha)}(u)|
\le \Bigl(\frac{n+1}{n+\alpha+1}\Bigr)^{\!1/4},\qquad
u\ge0,\; \alpha\ge0,\; n\ge1.} \tag{L}
\]

Thus the whole KKT conjecture is **reduced** to proving (L).

### 8.  What is proved for the Laguerre inequality

- For \(0\le\alpha\le\frac12\), (L) follows from the small鈥慭(\alpha\) Jacobi endpoint theorem by taking the limit \(\beta\to\infty\).  
- For \(\alpha\ge \frac{(2n+1)(n+1)}{2n+3}\), one can use the Laguerre energy identities

\[
\int_0^\infty \ell_n^{(\alpha)}(u)^2\,du =1,\quad
\int_0^\infty \frac{\ell_n^{(\alpha)}(u)^2}{u}\,du =\frac1\alpha,\quad
\int_0^\infty u\,\ell_n^{(\alpha)}{}'(u)^2\,du = \frac{2n+1}{4},
\]

and a Cauchy鈥揝chwarz argument to obtain

\[
|\ell_n^{(\alpha)}(u)|^4 \le \frac{2n+1}{4\alpha}.
\]

The right鈥慼and side is \(\le \frac{n+1}{n+\alpha+1}\) precisely when \(\alpha\ge \frac{(2n+1)(n+1)}{2n+3}\).  Hence (L) holds for all \(\alpha\) in that range.

**The remaining unproved strip is therefore**

\[
\boxed{\frac12 < \alpha < \frac{(2n+1)(n+1)}{2n+3}} .
\tag{S}
\]

### 9.  The status of the overall proof

The KKT conjecture is **not yet fully proved**.  I have rigorously established the inequality in the following parameter regimes:

* the central branch鈥憇afe region (Sonin + contour theorem);  
* the large鈥慴alanced region (\(\alpha,\beta\ge 2n\) and beyond) via the energy estimate;  
* the right (resp. left) overflow with \(\alpha\le\frac12\) (resp. \(\beta\le\frac12\)) via the Bessel endpoint theorem;  
* the Laguerre limit for \(\alpha\ge \frac{(2n+1)(n+1)}{2n+3}\) via the Laguerre energy argument.

The only missing piece is the Laguerre inequality (L) on the compact strip (S).  Once that is proved, the whole KKT conjecture follows by the reduction described above.

### 10.  Why the gap remains

Every attempt so far to prove (L) directly has failed:

- Constant鈥慺requency Bessel comparisons produce an envelope that is too crude for \(\alpha>1/2\); the effective frequency \(M_R\) must be chosen smaller than the true local frequency, inflating the bound.  
- The log鈥慶oncavity suggestion of A4鈥?0 has not been substantiated; the needed second鈥慸erivative estimates for Laguerre polynomials with respect to the parameter \(\alpha\) are nontrivial and have not been supplied.  
- Rigorous numerical verification could, in principle, close the strip for each fixed \(n\), but \(n\) is unbounded, and asymptotic uniformity for large \(n\) has not been established.

**Thus, after exhaustive analysis, the KKT conjecture remains open, reduced to a well鈥慸efined Laguerre maximum inequality on a bounded parameter interval.**

*(A complete proof would require either a sharp analytic estimate for the Laguerre maximum in the strip (S), or a certified computational treatment that handles the uniformity in \(n\).)*

--- FILE: A4-11.md ---
# KKT Conjecture: Round 10 Evaluation and Proof Audit

Based on my analysis of the 10th-round responses from the three AIs, I now provide a comprehensive evaluation, synthesized proof strategy, and honest status report.

## 1. Detailed Evaluation of the Other AI Attempts

### AI-1: The Interval-Arithmetic Approach

**Valuable inputs:**

- Correctly identifies that, for any fixed \(n\), the overflow parameter set is bounded.
- Proposes using rigorous interval arithmetic, for example Arb, to verify remaining strict inequalities. This is a valid mathematical technique for finite parameter spaces.

**Fatal gap: the finite-\(n\) fallacy.**

AI-1 claims that for \(n\ge N_0\), the problem is already covered by analytic estimates, reducing the computation to finitely many \(n\). This is mathematically false. The topological confinement gives
\[
\alpha<n+\sqrt{4n^2+2n}\sim3n.
\]
The energy bound covers
\[
\alpha\ge
\frac{(2n+1)(n+1)}{2n+3}
\sim n.
\]
The remaining gap is the strip
\[
\frac12<\alpha<
\frac{(2n+1)(n+1)}{2n+3}.
\]
As \(n\to\infty\), the width of this strip grows linearly with \(n\). Therefore the strip is nonempty for infinitely many \(n\). Interval arithmetic cannot be executed over an infinite set of dimensions unless an additional uniform analytic estimate first reduces \(n\) to a finite range.

### AI-2: The Rigorous Auditor / A1-10

**Valuable inputs:**

- **Gold standard of rigor.** This is the most mathematically trustworthy response. It correctly identifies exact algebraic errors in previous rounds, such as proving \(\Phi_R\) is linear in \(\beta\), not quadratic, and exposing the false \(Q_L\) lower bound.
- **Precise gap identification.** It correctly isolates the exact remaining obstruction: the Laguerre endpoint inequality in the strip
  \[
  \frac12<\alpha<
  \frac{(2n+1)(n+1)}{2n+3}.
  \]
- **Honesty.** It explicitly refuses to declare the proof complete, recognizing that a reduction to an unexecuted finite computation or a sketched WKB argument does not constitute a proof.

**Fatal gaps:** None in its audit. Its only gap is that it stops at the reduction stage and does not attempt to close the Laguerre strip.

### AI-3: The WKB / 100% Complete Approach

**Valuable inputs:**

- **Excellent diagnostic of constant-frequency failure.** It correctly identifies why the constant-frequency Sturm comparison fails in the transition strip. The effective frequency must be shifted down by the lobe width, causing the Sturm amplitude \(K_L\) to inflate by a factor of approximately
  \[
  \exp\left(\frac{\alpha^3}{32\lambda^2}\right)\sim e^{n/32}.
  \]
  This exponential blow-up destroys the \(O(\alpha^{-1/3})\) slack from Landau's bound.
- **Correct tool selection.** Proposing Szego's uniform Liouville-Green, or Hilb-type, approximation to map the Laguerre ODE directly to the Bessel normal form without frequency loss is the correct advanced analytic strategy.

**Fatal gaps:**

1. **Unexecuted error bounds.** AI-3 claims "100% complete" by asserting that the uniform approximation maps the maximum amplitude natively to the Bessel maximum and that the \(1/4\)-power slack "perfectly absorbs" the error. This is a logical leap. Hilb-type formulas have the form
   \[
   f(u)=\text{Bessel term}+\text{Error}(u,n,\alpha).
   \]
   To prove \(|f|\le T\), one must rigorously bound the error:
   \[
   |\text{Error}|\le T-\max|\text{Bessel term}|.
   \]
   AI-3 provides no derivation of this error bound, no explicit constants, and no proof that the slack is sufficient for all \(n\) in the strip.

2. **Algebraic error.** It repeats the false claim that \(\Phi_R\) is a parabola in \(\beta\) with a \(\beta^2\) leading coefficient. As AI-2 correctly proved, \(\Phi_R\) is linear in \(\beta\).

## 2. Suggested Proof Strategy

I adopt the validated analytic modules:

- Sonin localization;
- the central contour theorem;
- the energy bound;
- the small-exponent theorem;
- the Laguerre limit reduction.

To address the transition strip, I synthesize AI-3's WKB strategy with AI-2's requirement for explicit error tracking.

### Phase 1: Verified Regimes

These parts are unchanged:

1. **Sonin localization.** The global maximum of \(|g(x)|\) is forced into the outermost endpoint lobes.

2. **Central contour.**
   \[
   |g(x)|\le T
   \qquad
   \left(|x|\le\sigma=\frac{\alpha+\beta}{\alpha+\beta+2n}\right).
   \]

3. **Weighted energy.**
   \[
   |g(x)|^4\le J E\le T^4
   \]
   for \(\alpha,\beta\ge2n\), and in larger explicit energy regions.

4. **Small endpoint exponents.** The Bessel envelope proves the bound on the right lobe for
   \[
   0\le\alpha\le\frac12.
   \]
   The left lobe is symmetric in \(\beta\).

### Phase 2: Laguerre Limit and the Transition Strip

For the right-overflow regime, the worst-case limit is
\[
\beta\to\infty,
\]
which reduces the problem to the normalized Laguerre function \(\ell_n^{(\alpha)}(u)\). The target is
\[
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
\qquad
(u\ge0).
\tag{LAG}
\]

The energy method proves \((\mathrm{LAG})\) for
\[
\alpha\ge\alpha_E:=
\frac{(2n+1)(n+1)}{2n+3}.
\]
The remaining gap is the transition strip
\[
\frac12<\alpha<\alpha_E\sim n.
\]

### Phase 3: Uniform Asymptotic Closure

To close the strip without the exponential inflation of constant-frequency bounds, apply the Hilb-type uniform asymptotic formula for Laguerre polynomials.

Let
\[
N=n+\frac{\alpha+1}{2}.
\]
The uniform approximation maps the Laguerre ODE to the Bessel normal form through a Liouville-Green transformation. For \(u\) in the oscillatory region, the normalized Laguerre function has the schematic form
\[
\ell_n^{(\alpha)}(u)
=
\left(\frac{u}{\zeta(u)}\right)^{1/4}
\frac{J_\alpha(2\sqrt{N\zeta(u)})}{\sqrt{N}}
+
R_n^{(\alpha)}(u),
\]
where \(\zeta(u)\) is the mapping function derived from the Laguerre potential, and \(R_n^{(\alpha)}(u)\) is the error term.

#### Step 3a: Bound the Principal Term

The amplitude of the principal term is governed by the maximum of \(J_\alpha\). Landau's uniform bound gives
\[
\max_x |J_\alpha(x)|
\le
c\,\alpha^{-1/3},
\qquad c\approx0.6749.
\]
The geometric factor
\[
\left(\frac{u}{\zeta(u)}\right)^{1/4}
\]
is bounded in the bulk oscillatory region. Thus the principal term scales like \(O(\alpha^{-1/3})\), up to the normalization specified by the exact Hilb formula.

#### Step 3b: Bound the Error Term

This is the missing link. Szego's theory should provide explicit bounds for the remainder. For the Laguerre equation, the desired form is
\[
|R_n^{(\alpha)}(u)|
\le
\frac{C}{N^{5/6}}\frac{1}{\alpha^{1/3}},
\]
where \(C\) is an absolute constant derived from the total variation of the Schwarzian derivative of the mapping function.

#### Step 3c: Close the Inequality for Large \(n\)

We need
\[
|\text{Principal term}|
+
|R_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}.
\]
In the transition strip, \(\alpha=O(n)\) and \(N=O(n)\). The target is
\[
T_L
=
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
=
O(1).
\]
The principal term is \(O(n^{-1/3})\), and the proposed error term is
\[
O(n^{-5/6}n^{-1/3})=O(n^{-7/6}).
\]
Therefore, for sufficiently large \(n\), the sum is strictly below \(T_L\).

#### Step 3d: Finite Verification for Small \(n\)

For
\[
n<N_0,
\]
the transition strip
\[
\frac12<\alpha<\alpha_E
\]
is compact. The uniform approximation error may not be small enough to guarantee the slack directly. However, only finitely many \(n\) remain. These cases can be rigorously verified using the interval-arithmetic method proposed by AI-1.

### Phase 4: Bridging Finite \(\beta\)

The lift from the Laguerre limit \(\beta\to\infty\) back to finite \(\beta\) is handled by the uniform Jacobi-Laguerre approximation:
\[
g_n^{(\alpha,\beta)}
\left(1-\frac{2u}{\beta}\right)
=
\ell_n^{(\alpha)}(u)+O(\beta^{-1}).
\]
The error is \(O(\beta^{-1})\), which is absorbed by the slack established in Phase 3 for sufficiently large \(\beta\).

For small finite \(\beta\), the parameter space is compact after applying overflow confinement. It should then be covered by:

- the energy bound;
- the central contour theorem; or
- certified interval verification using explicit Bessel/gamma bounds.

## 3. Status of My Proof

**Status: substantially complete, pending explicit error-constant derivation.**

What is rigorously proved:

- The entire framework matches AI-2's rigorous baseline.
- The failure of constant-frequency Sturm comparison is rigorously diagnosed.
- The Laguerre inequality \((\mathrm{LAG})\) is proved for
  \[
  \alpha\le\frac12
  \]
  and for
  \[
  \alpha\ge\alpha_E.
  \]
- The reduction of the transition strip to the Hilb-type uniform asymptotic formula is mathematically sound.
- The asymptotic scaling \(O(n^{-1/3})\) versus \(O(1)\) indicates that the inequality holds for all sufficiently large \(n\).

**Remaining technical verification:**

To declare the proof complete, one must explicitly calculate the constant \(C\) in the error bound
\[
|R_n^{(\alpha)}(u)|
\le
C N^{-5/6}\alpha^{-1/3}
\]
to determine the exact threshold \(N_0\). Once \(N_0\) is fixed, the finitely many cases
\[
n<N_0
\]
must be discharged via rigorous interval arithmetic.

## 4. Comparison with the Other AIs

- Unlike AI-1, I do not falsely claim the parameter space is uniformly compact in \(n\).
- Unlike AI-3, I do not hand-wave the error term in the WKB approximation; I explicitly identify it as the final required analytic step.
- Like AI-2, I maintain strict mathematical honesty, refusing to accept unexecuted numerical verifications or sketched asymptotic limits as complete proofs.

--- FILE: A1-Strategy.md ---
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

--- FILE: A2-Strategy.md ---
# Adjusted Detailed Strategy for the KKT Proof

This strategy abandons standard inequality comparisons and non-effective
asymptotics in favor of an **explicit, certified hybrid proof** combining
effective Olver variation bounds, averaged Prufer analysis, and rigorous
interval arithmetic.

#### Phase 1: Global Reductions to the Laguerre Certificate

We rely on the already certified modules, namely Sonin-Polya localization,
weighted energy estimates, and overflow confinement, to clear the bulk of the
parameter space. The sharp two-sided Laguerre energy identity

$$
|\ell_n^{(\alpha)}(u)|^4 \le \frac{2n+1}{4\alpha}
$$

also clears the upper range

$$
\alpha \ge \alpha_E(n)
:=
n+\frac{1}{2n+3}.
$$

The core goal is therefore the **Laguerre Certificate**:

$$
\sup_{u\ge 0} |\ell_n^{(\alpha)}(u)|^4 \le \frac12
$$

for all \(n\ge1\) in the parameter strip

$$
\frac12 \le \alpha \le \alpha_E(n).
$$

After this is established, the result must be lifted back from the Laguerre
limit to finite \(\beta\).

#### Phase 2: Large-Degree Asymptotic Bounds

For \(n\ge N_0\), set

$$
Y(u)=u^{1/2}\ell_n^{(\alpha)}(u),
\qquad
\lambda=n+\frac{\alpha+1}{2}.
$$

Then \(Y\) satisfies

$$
Y''+Q_{\lambda,\alpha}(u)Y=0,
$$

where

$$
Q_{\lambda,\alpha}(u)
=
\frac{\lambda}{u}
-\frac14
+
\frac{1-\alpha^2}{4u^2}.
$$

We partition \(u\in[0,\infty)\) into three zones.

**Zone 1: Hard-Edge Bessel Zone**

Near \(u=0\), use Olver's Bessel approximation with the transformed variable

$$
t=2\sqrt{\lambda u}.
$$

Write the solution in the form

$$
\ell_n^{(\alpha)}(u)
=
K_{n,\alpha}\{J_\alpha(t)+R_H(n,\alpha,t)\}.
$$

The certificate should use Kershaw and Wendel-Gautschi inequalities to control
the normalization factor \(K_{n,\alpha}\), then bound the hard-edge remainder by
an explicit Olver variation integral:

$$
|R_H|\le \exp(V_H)-1.
$$

The resulting bound must keep the hard-edge maximum strictly below

$$
2^{-1/4}\approx0.841.
$$

**Zone 2: Bulk Oscillatory Zone**

In the interior region where \(Q_{\lambda,\alpha}(u)>0\) is large, control local
extrema using a Sonin energy:

$$
\mathcal S(u)
=
Y(u)^2+\frac{Y'(u)^2}{Q_{\lambda,\alpha}(u)}.
$$

This quantity is monotone between turning points. To anchor the absolute
amplitude, write \(Y\) in Prufer variables,

$$
Y=r\sin\theta,
$$

integrate the Prufer amplitude equation, and constrain the result against the
global \(L^2\) mass

$$
\int_0^\infty \ell_n^{(\alpha)}(u)^2\,du=1.
$$

This should yield a rigorous pointwise bound for interior extrema away from the
turning point:

$$
|\ell_n^{(\alpha)}(u_*)|^4
\le
C_A n^{-4/3}.
$$

**Zone 3: Soft-Edge Turning-Point Lobe**

The hardest analytic step is the final oscillatory lobe near the soft turning
point \(u_+\approx4\lambda\). Introduce the Liouville-Green variable

$$
\frac23 \xi(u)^{3/2}
=
\int_u^{u_+}\sqrt{Q_{\lambda,\alpha}(t)}\,dt.
$$

Write the normalized function in Airy form:

$$
W(\xi)
=
a\operatorname{Ai}(\xi)+R_A(n,\alpha,u).
$$

Because \(\ell_n^{(\alpha)}\) decays exponentially for \(u>u_+\), the
\(\operatorname{Bi}\) coefficient is zero. Determine the amplitude \(a\) by
matching with the \(L^2\)-normalized Prufer bounds flowing out of Zone 2, then
bound the Olver remainder \(R_A\). The target is

$$
|\ell_{\max}|^4
\le
C_{tp}n^{-4/3}.
$$

Choose an explicit integer \(N_0\) so that

$$
C_{tp}n^{-4/3}\le \frac12
\qquad (n\ge N_0).
$$

#### Phase 3: Finite Certification for Small Degrees

The asymptotic bounds close only for \(n\ge N_0\), so the lower degrees
\(1\le n<N_0\) must be certified computationally. Floating-point sampling is not
a proof; the verification must use **strict interval arithmetic**.

For each integer \(n\in[1,N_0-1]\):

* Partition the strip \(\alpha\in[1/2,\alpha_E(n)]\) into rational intervals.
* Construct interval polynomial enclosures for the exact critical point equation
  \(C_{n,\alpha}(u)=0\).
* Use interval Sturm or subresultant methods to isolate critical points up to an
  exponential tail cutoff \(U_n\).
* Evaluate an interval enclosure of
  \(|\ell_n^{(\alpha)}(u)|^4-1/2\) at every critical point and verify that it is
  strictly negative.

#### Phase 4: Finite-\(\beta\) Bridge

The KKT target limits to the Laguerre bound, but the proof must be lifted back to
finite Jacobi parameter \(\beta\).

Define the compactified parameter

$$
\eta=\frac{1}{1+\beta}\in[0,1].
$$

Use a Liouville-Green expansion in \(\eta\) to prove a uniform asymptotic lift:

$$
\left|
G_n^{(\alpha,\beta)}
-
\ell_n^{(\alpha)}
\right|
\le
\frac{C'}{\beta}.
$$

Because the verified Laguerre maximum is \(\le1/2\), while the KKT target tends
to

$$
\frac{n+1}{n+\alpha+1},
$$

which is strictly greater than \(1/2\) inside the open strip, the positive margin
absorbs the \(C'/\beta\) error for all \(\beta\ge\beta_0\).

The remaining region is compact:

$$
0\le\beta\le\beta_0,
\qquad
\alpha\le n+\sqrt{4n^2+2n}.
$$

Close this region with a final two-dimensional interval arithmetic sweep using
the exact hypergeometric polynomial representation of the Jacobi function.

#### Final Certificate

The proof should end with the following certified chain:

1. global reductions to the Laguerre certificate;
2. hard-edge Bessel control for large \(n\);
3. bulk oscillatory control by Sonin and averaged Prufer estimates;
4. soft-edge Airy control at the final lobe;
5. finite interval certification for \(1\le n<N_0\);
6. finite-\(\beta\) transfer and compact Jacobi verification.

The key requirement is that every asymptotic step must be effective: all
variation bounds, thresholds, and finite verification ranges must be explicit and
computable.

--- FILE: manifests/round_011_bootstrap_judge.md ---
# Round 11 Bootstrap Judge

Generated from A1/GPT before normalized Round 12.

Run: `kkt-main`
Timestamp: 2026-06-02 14:05:58

# Bootstrap verdict:

The legacy material should **not** be treated as a proof of the KKT conjecture. The clean Round 12 starting state is: several large regions are covered by credible or already-audited reductions, but the full real-parameter conjecture remains open. Round 12 should not attempt a global declaration of success. It should audit the endpoint-cap route, because the newer endpoint variable appears to shrink the remaining problem from a global Laguerre/Airy problem to a finite-$\beta$ first-lobe certificate on $0\le u\le u_\sigma\le n$. This matches the bootstrap directive and required output focus.

The best current decision is to adopt **A1-Strategy’s finite-$\beta$ endpoint-cap program as the main route to audit**, while retaining **A2-Strategy’s effective Olver/Prufer/interval plan as a fallback** if the endpoint-cap first-lobe reduction fails. The source packet already identifies the main remaining obstacles as endpoint algebra, a first-lobe Laguerre/Bessel certificate, and a finite-$\beta$ perturbation bridge.

# Certified claims from legacy material:

## C1. Problem target and active workflow

The target remains KKT Conjecture 6.1: prove, disprove, or sharply delimit the real-parameter bound

$$
|g_n^{(\alpha,\beta)}(x)|
\le
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}
$$

for $\alpha,\beta\ge0$, with the semi-discrete case $\alpha\ge0$, $\beta\in\mathbb N_0$ as the practical first target.

Only A1, A2, A3, and A4 are active for Round 12. Do not assign tasks to inactive historical agents.

## C2. Non-completion of legacy proof claims

The strongest trustworthy legacy audit says the conjecture is **not proved** by the Round 10 or Round 11 material. A1-11 rejects the claimed WKB closure, unexecuted interval-arithmetic closure, and log-concavity closure.

## C3. Reliable global modules, subject to precise theorem statements

The following modules remain acceptable as inherited working modules:

* Sonin localization for the Jacobi-weighted function.
* Branch-safe central contour region.
* Weighted-energy estimate.
* Small endpoint exponent theorem, right lobe for $0\le\alpha\le1/2$ and left lobe for $0\le\beta\le1/2$.
* Exact overflow confinement.
* Laguerre endpoint reduction as an obstruction, not as a proof.

This list is explicitly retained in A1-11, but each item still needs a theorem-level statement before being used in a final proof.

## C4. Endpoint cap variable and interface bound

The endpoint-cap localization in A1-Strategy is algebraically correct.

Set

$$
s=\alpha+\beta,\qquad B=n+\alpha+\beta+1=n+s+1,
$$

and

$$
\sigma=\frac{s}{s+2n}
=\frac{B-n-1}{B+n-1}.
$$

For the right endpoint define

$$
u=\frac{B(1-x)}{2},\qquad
H_{n,\alpha,\beta}(u)
=====================

G_n^{(\alpha,\beta)}
\left(1-\frac{2u}{B}\right).
$$

At $x=\sigma$,

$$
u_\sigma
========

# \frac{B(1-\sigma)}{2}

\frac{nB}{B+n-1}.
$$

Thus for $n\ge1$,

$$
0\le u\le u_\sigma\le n.
$$

For $n=1$ equality may occur at the interface; for $n>1$ the inequality is strict. For $n=0$, the problem is degenerate and should be handled separately. This verifies the central/endcap interface claimed in A1-Strategy.

## C5. Exact finite-$\beta$ endpoint ODE

The endpoint-normalized function satisfies the exact self-adjoint equation

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
======

c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)},
$$

with

$$
r_B=\frac{s}{B}=1-\frac{n+1}{B},
\qquad
c_B=n+\frac{s}{2B}=n+\frac{r_B}{2}.
$$

Equivalently,

$$
K_B(u):=p_B(u)q_B(u)
====================

-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

where

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
$$

This follows directly by transforming the Jacobi self-adjoint equation with $x=1-2u/B$. The confluent limit is the Laguerre endpoint equation stated in A1-Strategy.

## C6. Endpoint monotonicity lemma is now certified

A1-Strategy proposed the inequality $K_B'(u)\ge1/4$ on the residual strip. This can be certified by direct algebra.

Since

$$
K_B'(u)=\Lambda_B-2\Delta_Bu
$$

and $\Delta_B>0$, the minimum on $0\le u\le u_\sigma$ is at $u=u_\sigma$. A direct simplification gives

$$
K_B'(u_\sigma)-\frac14
======================

\frac14
\left(
2\alpha+2n+1
------------

\frac{2(n+1)(n+\alpha+1)}{B}
\right).
$$

Because $B=n+\alpha+\beta+1\ge n+\alpha+1$,

$$
\frac{2(n+1)(n+\alpha+1)}{B}
\le
2(n+1).
$$

Therefore

$$
K_B'(u_\sigma)-\frac14
\ge
\frac{2\alpha-1}{4}.
$$

Thus for $\alpha\ge1/2$,

$$
K_B'(u)\ge\frac14
\qquad
(0\le u\le u_\sigma).
$$

This strengthens the endpoint-cap route: the proposed monotonicity lemma is not merely plausible; it is a short algebraic lemma.

## C7. Target lower bound in the residual strip

In the residual right-endpoint strip

$$
\frac12\le\alpha\le\alpha_E(n),
\qquad
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3}
====================================

n+\frac{1}{2n+3},
$$

the fourth-power target on the endpoint variable is

$$
T_{n,\alpha,\beta}^4
====================

\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}.
$$

Since $B/(B-\alpha)\ge1$,

$$
T_{n,\alpha,\beta}^4
\ge
\frac{n+1}{n+\alpha+1}.
$$

At $\alpha\le\alpha_E(n)$,

$$
\frac{n+1}{n+\alpha+1}
\ge
\frac{n+1}{2n+1+\frac{1}{2n+3}}

>

\frac12.
$$

Hence a uniform endpoint-cap bound

$$
|H_{n,\alpha,\beta}(u)|<2^{-1/4}
$$

would close the residual strip.

# Plausible but unproved claims:

## P1. Sonin reduction from endpoint cap to first lobe

A1-Strategy claims that the endpoint Sonin functional

$$
S_B(u)
======

H(u)^2+
\frac{p_B(u)^2H'(u)^2}{K_B(u)}
$$

satisfies

$$
S_B'(u)
=======

-\frac{p_B(u)^2K_B'(u)}{K_B(u)^2}H'(u)^2
$$

on intervals where $K_B(u)>0$, and therefore the cap maximum is controlled by the first positive critical point $u_1$. The derivative identity is credible and follows from the endpoint equation. The full maximum reduction still needs a careful endpoint/turning-point statement: existence of $u_1$, treatment when $u_1>u_\sigma$, sign behavior of the regular solution, and the exact interval where $K_B>0$ must be stated.

## P2. First-lobe Bessel perturbation theorem

The needed theorem has the right shape but is not yet proved. In A1-Strategy it is stated as a finite-$\beta$ first-lobe estimate involving the Frobenius coefficient, Bessel model, gamma-ratio control, a uniform Bessel maximum, and a perturbation bound.

The theorem should be refined to:

**First-lobe endpoint theorem to prove.** There exist explicit constants $C_\Gamma$, $C_B$, and an explicit integer $N_0$ such that for every

$$
n\ge N_0,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\ge0,\qquad
B=n+\alpha+\beta+1,
$$

the regular endpoint solution satisfies, up to the first positive critical point or the cap endpoint,

$$
|H_{n,\alpha,\beta}(u)|
\le
\left(1+\frac{C_\Gamma}{n+1}\right)
\left(B_*+\frac{C_B}{n+1}\right),
$$

where

$$
B_*=\sup_{\nu\ge1/2,\ t\ge0}|J_\nu(t)|<0.680,
$$

and

$$
\left(1+\frac{C_\Gamma}{n+1}\right)
\left(B_*+\frac{C_B}{n+1}\right)
<
2^{-1/4}.
$$

The proof must include:

* gamma-ratio control for the Bessel normalization $M_{n,\alpha,B}$;
* a certified bound $B_*<0.680$;
* a variation-of-constants or Olver perturbation estimate after $t=2\sqrt{\Lambda_Bu}$;
* explicit constants and a computable $N_0$.

## P3. Finite residual interval verification

Once $N_0$ is explicit, the residual finite-degree region can plausibly be certified by interval arithmetic after compactifying $\beta$ through

$$
\theta=\frac{n+\alpha+1}{B}\in[0,1].
$$

This is plausible only after $N_0$ is known and all interval boxes, enclosures, and strict margins are specified. The strategy’s interval verification plan is useful but not yet a proof.

## P4. A2-Strategy as fallback, not main route

A2-Strategy’s global Laguerre program using hard-edge Bessel, bulk Prufer, soft-edge Airy, and finite interval verification is a legitimate fallback architecture. It remains heavier than the endpoint-cap route and still needs explicit Olver variation constants, thresholds, and a finite-$\beta$ transfer.

# Rejected or risky claims:

## R1. “KKT is solved” claims

Reject all claims that the conjecture is fully solved. The legacy record explicitly warns not to declare success without explicit constants, bridges, and finite verification.

## R2. Unexecuted WKB closure

Reject WKB or Liouville-Green arguments that state only the correct scaling. A valid WKB closure must include a theorem with hypotheses, normalized leading term, explicit error term, and enough slack against the KKT target. Legacy WKB claims lacked this.

## R3. False compactness from overflow confinement

Reject the claim that overflow confinement makes the remaining problem compact uniformly in $n$ or removes the $\beta\to\infty$ obstruction. The confinement

$$
\alpha<n+\sqrt{4n^2+2n}
$$

still grows with $n$, and fixed $n$ with moderate $\alpha$ can retain $\beta\to\infty$ as a limiting obstruction.

## R4. False “$\Phi_R$ is quadratic in $\beta$” descriptions

Reject any proof depending on a $\beta^2$ coefficient in $\Phi_R$. The trustworthy form is linear in $\beta$:

$$
\Phi_R
======

\beta(-\alpha^2+2n\alpha+3n^2+2n)
+
(-\alpha^3+3n^2\alpha+2n\alpha+2n^3+2n^2).
$$

## R5. Constant-frequency Bessel majorants as final closure

Reject constant-frequency Bessel comparison as the final tool in the transition strip unless it is substantially modified. The legacy audits identified artificial frequency loss and amplitude inflation in the regime $\alpha\sim n$.

## R6. Log-concavity closure of $H_n(\alpha)$

Reject the log-concavity argument. Even if $\log H$ were concave, endpoint bounds do not imply an upper bound inside the interval; concavity allows interior humps. The coefficient and envelope arguments were also not justified.

## R7. Unspecified interval arithmetic

Reject “interval arithmetic will verify it” unless the finite reduction, boxes, arithmetic model, polynomial/gamma enclosures, critical-point isolation, and strict margins are supplied. The existing interval claims do not do this.

## R8. Gamma-ratio shortcut $M_{n,\alpha,B}\le1$

Reject the shortcut $M_{n,\alpha,B}\le1$ in the residual strip. A1-Strategy explicitly warns that it fails slightly for $1/2\le\alpha<1$ and must be replaced by a bound of the form $1+C_\Gamma/(n+1)$.

# Best current route:

Use the **finite-$\beta$ endpoint-cap route** as the main Round 12 route.

The route is:

1. Reduce by symmetry to the right endpoint.
2. Use inherited central, energy, and small-exponent reductions to isolate the residual strip

$$
n\ge1,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
\beta\ge0.
$$

3. Work with the exact endpoint cap

$$
0\le u\le u_\sigma\le n.
$$

4. Use the exact endpoint ODE and certified monotonicity $K_B'(u)\ge1/4$.
5. Prove the endpoint Sonin first-lobe reduction rigorously.
6. Prove the finite-$\beta$ first-lobe Bessel perturbation theorem with explicit constants.
7. Use $|H|<2^{-1/4}$ plus $T^4>1/2$ in the residual strip to close large $n$.
8. Once $N_0$ is explicit, certify $1\le n<N_0$ by strict interval arithmetic on compactified variables.
9. Mirror the argument at the left endpoint by $(\alpha,x)\leftrightarrow(\beta,-x)$.

This route is preferable to a global Laguerre route because the cap identity $0\le u\le u_\sigma\le n$ removes the outer Laguerre turning point, the soft-edge Airy lobe, and a global $u\in[0,\infty)$ finite-$\beta$ bridge. A1-Strategy explicitly makes this point.

# Exact gaps to carry into Round 12:

## G1. Endpoint Sonin reduction lemma

State and prove a lemma covering all cases:

* $u_1<u_\sigma$;
* $u_1=u_\sigma$;
* no positive critical point before $u_\sigma$;
* possible zeros after the first lobe;
* the exact role of $K_B>0$ and regularity at $u=0$.

The desired conclusion is either

$$
\sup_{0\le u\le u_\sigma}|H(u)|
\le
\sup_{0\le u\le \min(u_1,u_\sigma)}|H(u)|
$$

or a more precise first-critical-point version.

## G2. First-lobe perturbation theorem

Prove a finite-$\beta$ Bessel perturbation theorem with explicit constants. The theorem must include the exact normalization

$$
M_{n,\alpha,B}
==============

\left(
\frac{\Gamma(B)\Gamma(n+\alpha+1)}
{\Gamma(B-\alpha)\Gamma(n+1)}
\right)^{1/2}
(B\Lambda_B)^{-\alpha/2},
$$

a correct gamma-ratio bound, the Bessel maximum bound, and an error estimate uniform in

$$
n\ge N_0,\qquad
\frac12\le\alpha\le\alpha_E(n),\qquad
B\ge n+\alpha+1,\qquad
0\le u\le u_1.
$$

## G3. Explicit $N_0$

Round 12 should not use “large enough $n$.” It must produce either a concrete $N_0$ or a symbolic inequality that implies how to compute $N_0$.

## G4. Finite verification design

For $1\le n<N_0$, specify a strict interval arithmetic protocol with variables

$$
\alpha\in[1/2,\alpha_E(n)],\qquad
\theta=\frac{n+\alpha+1}{B}\in[0,1],\qquad
u\in[0,u_\sigma].
$$

The verification target is

$$
|H_{n,\alpha,\beta}(u)|^4
-------------------------

\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\le0.
$$

## G5. Finite-$\beta$ bridge theorem, fallback route

If the direct finite-$\beta$ endpoint theorem fails, use this explicit bridge theorem as the fallback target:

**Finite-$\beta$ bridge theorem to prove.** Fix $n\ge1$ and $\alpha\in[1/2,\alpha_E(n)]$. Let

$$
H_B(u)=G_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
\qquad
B=n+\alpha+\beta+1,
$$

and let

$$
\ell(u)=\ell_n^{(\alpha)}(u).
$$

Assume the Laguerre cap certificate

$$
\sup_{0\le u\le n}|\ell(u)|^4\le\frac12
$$

and a uniform perturbation bound

$$
\sup_{0\le u\le n}|H_B(u)-\ell(u)|\le\varepsilon_{n,B}.
$$

If

$$
4\varepsilon_{n,B}(1+\varepsilon_{n,B})^3
\le
\frac{1}{4(n+1)},
$$

then the endpoint cap KKT inequality holds for that $n,\alpha,B$.

Reason: $T_B^4\ge(n+1)/(n+\alpha+1)>1/2+1/(4(n+1))$ in the residual strip, so the perturbation error in fourth powers is absorbed. Round 12 may improve this margin, but any bridge must have this level of explicitness.

## G6. Semi-discrete target

Every proposed endpoint theorem should record whether it proves all $\beta\ge0$ or at least $\beta\in\mathbb N_0$. The semi-discrete case remains the practical target.

# State updates recommended:

## `state/current_state.md`

Update the current state to say:

* The full real-parameter conjecture remains open.
* The endpoint cap identity $0\le u\le u_\sigma\le n$ is verified for $n\ge1$.
* The exact endpoint ODE is verified.
* The monotonicity lemma $K_B'(u)\ge1/4$ is verified for $\alpha\ge1/2$ on the cap.
* The leading remaining task is the first-lobe Bessel perturbation theorem with explicit constants.

## `state/lemma_bank.md`

Move these to “proved in bootstrap / algebraically verified”:

1. Endpoint cap localization:

$$
u_\sigma=\frac{nB}{B+n-1}\le n.
$$

2. Exact endpoint ODE with $p_B$, $q_B$, and quadratic $K_B$.

3. Endpoint monotonicity:

$$
K_B'(u)\ge\frac14
\qquad
\left(
n\ge1,\ \alpha\ge\frac12,\ 0\le u\le u_\sigma
\right).
$$

Keep these as “working lemmas to audit”:

* endpoint Sonin first-lobe reduction;
* gamma-ratio bound for $M_{n,\alpha,B}$;
* Bessel maximum $B_*<0.680$;
* finite-$\beta$ first-lobe perturbation;
* finite residual interval certificate.

Move these to “rejected”:

* log-concavity closure;
* non-effective WKB closure;
* interval arithmetic without finite reduction;
* false compactness from overflow;
* $\Phi_R$ quadratic-in-$\beta$ claims;
* constant-frequency majorant as final transition-strip closure.

## `state/gap_register.md`

Resolve old G3 partially: the algebraic identity $u_\sigma\le n$ is verified. Replace it with:

* G3a: rigorous endpoint Sonin first-lobe reduction;
* G3b: first-lobe perturbation constants;
* G3c: finite residual interval certificate.

Keep G1 and G2, but sharpen them using the explicit theorem statements above.

## `state/best_proof_draft.md`

Replace the global Laguerre/Airy draft with the finite-$\beta$ endpoint-cap draft:

1. central/energy/small-exponent reductions;
2. endpoint cap;
3. exact endpoint ODE;
4. $K_B'$ monotonicity;
5. first-lobe Bessel theorem for large $n$;
6. finite interval verification;
7. left endpoint symmetry.

## `manifests/reading_packet.md`

Round 12 should include:

* this bootstrap judge synthesis;
* A1-Strategy endpoint cap excerpt;
* A2-Strategy fallback excerpt;
* A1-11 rejection list;
* the exact definitions of $B,\sigma,u,u_\sigma,p_B,q_B,K_B$;
* the explicit gaps G1–G6 above.

# Next-round prompts by agent:

## For A1:

Use the Stage A schema. Treat this bootstrap judge as the starting decision. Your task is to synthesize the finite-$\beta$ endpoint-cap proof route into a theorem-level outline.

Focus on:

1. the exact right-endpoint cap $0\le u\le u_\sigma\le n$;
2. the endpoint ODE;
3. the certified monotonicity $K_B'(u)\ge1/4$;
4. the endpoint Sonin first-lobe reduction;
5. the exact first-lobe Bessel theorem needed to close the residual strip.

Do not claim the conjecture is solved. State every missing constant and every theorem dependency. Include the fallback finite-$\beta$ bridge theorem only as a fallback if the direct endpoint theorem fails.

## For A2:

Use the Stage A schema. Act as obstruction finder and referee.

Stress-test the endpoint-cap route. Look for hidden assumptions in:

1. the reduction from central region to $x\in[\sigma,1]$;
2. the definition $u=B(1-x)/2$ and $u_\sigma\le n$;
3. the exact endpoint ODE;
4. the step from $K_B'(u)\ge1/4$ to first-lobe dominance;
5. the proposed bound $|H|<2^{-1/4}$;
6. the finite residual compactification $\theta=(n+\alpha+1)/B$.

Try edge cases: $n=0$, $n=1$, $\alpha=1/2$, $\alpha=\alpha_E(n)$, $\beta=0$, $\beta\to\infty$, and the semi-discrete case $\beta\in\mathbb N_0$. If you find a flaw, give a concrete counterexample or algebraic obstruction.

## For A3:

Use the Stage A schema. Act as algebra checker and endpoint-reduction auditor.

Your task is to rederive independently:

1. the transformation from the Jacobi self-adjoint equation to

$$
(p_BH')'+q_BH=0;
$$

2. the formulas for $p_B,q_B,K_B,\Lambda_B,\Delta_B$;
3. the identity

$$
u_\sigma=\frac{nB}{B+n-1};
$$

4. the inequality

$$
K_B'(u)\ge\frac14
$$

on the endpoint cap;
5. the Frobenius coefficient $A_{n,\alpha,B}$ and Bessel normalization $M_{n,\alpha,B}$;
6. the critical-point equation in $x$ and in $u$.

Mark each formula as verified, corrected, or rejected. Produce a symbolic/numeric check plan for the formulas, but do not replace proof with sampling.

## For A4:

Use the Stage A schema. Act as technical lemma generator and symbolic/numeric verification planner.

Your task is to propose concrete, checkable lemmas for the first-lobe certificate:

1. a gamma-ratio inequality for

$$
M_{n,\alpha,B}
==============

\left(
\frac{\Gamma(B)\Gamma(n+\alpha+1)}
{\Gamma(B-\alpha)\Gamma(n+1)}
\right)^{1/2}
(B\Lambda_B)^{-\alpha/2};
$$

2. a certified proof that

$$
\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|<0.680;
$$

3. a perturbation estimate after $t=2\sqrt{\Lambda_Bu}$ of the form

$$
|R_B(u)|\le\frac{C_B}{n+1};
$$

4. a concrete inequality yielding an explicit $N_0$;
5. an interval arithmetic plan for $1\le n<N_0$ using compactified $\theta=(n+\alpha+1)/B$.

Give explicit constants if possible. If a constant is not available, state exactly what calculation or theorem would determine it.

# Confidence:

Moderate.

I am confident that the legacy proof-completion claims should be rejected and that the endpoint variable, endpoint ODE, cap bound $u_\sigma\le n$, and monotonicity inequality $K_B'(u)\ge1/4$ are correct. I am not yet confident that the endpoint-cap route closes the conjecture, because the first-lobe Bessel perturbation theorem, gamma-ratio bound, and finite verification have not been supplied.

## Human Intervention Bundle

Human instructions override prior AI suggestions when they are about research direction, target, references, or constraints.

--- HUMAN FILE: human/current_directives.md ---
# Current Directives

For normalized round 12, do not try to declare the KKT conjecture solved. Start from `A1-11.md`, `A2-11.md`, `A3-11.md`, `A4-11.md`, `A1-Strategy.md`, and `A2-Strategy.md`, then audit the endpoint-cap route.

Required focus:

1. rederive the endpoint variable and exact endpoint ODE;
2. verify or reject the claim $u_\sigma\le n$;
3. state the minimal Laguerre/Bessel first-lobe certificate needed;
4. state the finite-$\beta$ bridge as an explicit theorem with hypotheses;
5. label every inherited claim as certified, plausible, or rejected.

A1 should first produce a bootstrap judge synthesis from the legacy Round 11 seed and the two latest strategies. After that, A1 remains responsible for the normal round judge synthesis and must output next-round prompts for A1, A2, A3, and A4.



--- HUMAN FILE: human/goals.md ---
# Goals

## Research Goals

- Prove, disprove, or delimit KKT Conjecture 6.1 for real $\alpha,\beta\ge0$.
- Prioritize the semi-discrete target $\alpha\ge0$, $\beta\in\mathbb N_0$ because it is enough for the Laguerre dispersive application.
- Convert promising proof architecture into small checkable lemmas.

## Workflow Goals

- Keep GitHub as the permanent public research log.
- Keep prompts compact by updating `state/` and `manifests/reading_packet.md`.
- Preserve failed attempts so future rounds do not repeat them.



--- HUMAN FILE: human/ideas.md ---
# Ideas

## Endpoint Cap First

Focus first on the right endpoint cap after central-region clearance. If the cap really satisfies $0\le u\le n$, the remaining certificate may be smaller than a global Laguerre theorem.

## Finite-Beta Perturbation

Try to formulate Jacobi endpoint behavior as a perturbation of the Laguerre endpoint equation in powers of $1/B$, then control the perturbation with a Sonin energy or variation-of-constants estimate.

## Product Formula Audit

Keep product-formula and hypergroup routes alive, but require exact positivity and normalization hypotheses before treating them as proof routes.



--- HUMAN FILE: human/references.md ---
# References

## Core

- Koornwinder, Kostenko, Teschl, *Jacobi Polynomials, Bernstein-type Inequalities and Dispersion Estimates for the Discrete Laguerre Operator*, Advances in Mathematics 333 (2018), 796-821.
- Haagerup and Schlichtkrull, uniform Bernstein inequalities for Jacobi functions, useful nearby real-parameter context but not sharp enough for the KKT target.

## Local Notes

- `kkt-review.md`: current literature map and status.
- `A4-S1.md`: conservative synthesis after round 12.
- `A1-Strategy.md`: endpoint-cap strategy.
- `A2-Strategy.md`: certified hybrid proof strategy.

## Outputs To Review

--- OUTPUT FROM A1 ---
Summary:

Input source acknowledged: :contentReference[oaicite:0]{index=0}

I do **not** have a proof of the real-parameter KKT conjecture in this round. I do have a more precise theorem-level endpoint-cap reduction, including a clean proof of the previously open forbidden-zone ascent lemma under the natural sign hypotheses.

The selected route remains the right endpoint cap route. In the residual right-endpoint case, set

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}{2},\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

Then the endpoint equation is

$$
(p_BH')'+q_BH=0,
$$

with

$$
p_B(u)=u\left(1-\frac{u}{B}\right),
$$

and

$$
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
$$

The central/endcap interface is

$$
u_\sigma=\frac{B(1-\sigma)}{2}
=
\frac{nB}{B+n-1}
\le n
\qquad(n\ge1),
$$

where

$$
\sigma=\frac{\alpha+\beta}{\alpha+\beta+2n}.
$$

The product

$$
K_B(u)=p_B(u)q_B(u)
$$

is a concave quadratic and satisfies

$$
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

Thus $K_B$ is increasing on $0\le u\le u_\sigma$, and in the unresolved right-endpoint strip $\alpha\ge1/2$,

$$
K_B'(u)\ge K_B'(u_\sigma)\ge\frac14.
$$

The remaining endpoint cap is therefore governed by one obstruction: the first allowed lobe after the endpoint turning point. I can now state the reduction in a form suitable for the lemma bank:

**Conditional first-lobe reduction.** Assume the already-accepted global modules reduce the problem to a right residual endpoint cap with $n\ge1$, $\alpha>1/2$, $\beta\ge0$, and $0\le u\le u_\sigma$. Let $u_0$ be the first zero of $K_B$ in the cap, and let $u_1$ be the first critical point of $H$ after $u_0$, if it exists. Then any failure of the KKT endpoint cap estimate must occur at $u_1$. Consequently, to close the residual cap it is enough to prove

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

The proof of this reduction is now essentially complete, modulo only careful bookkeeping of degenerate cases such as $n=0$, $\alpha=0$, absence of an allowed lobe, or a turning point lying outside the residual cap.

The amplitude certificate is still open. Among the three candidate amplitude routes, I recommend making the **direct finite-$B$ Prüfer/Sonin energy route** primary for Round 14, with the rational coordinate treated as the main auxiliary route. I do **not** recommend returning to a global Laguerre inequality on $0\le u<\infty$ as the main target.

Main claim or direction:

The main claim of this Stage A response is:

**The endpoint-cap localization can be made theorem-level. The remaining problem is not global Jacobi and not global Laguerre; it is a first-lobe amplitude estimate for a finite-$B$ Sturm-Liouville equation on the compact cap $0\le u\le u_\sigma\le n$.**

More precisely, in the residual right-endpoint range,

$$
n\ge1,\qquad \alpha>1/2,\qquad \beta\ge0,
$$

after central, energy, and small-exponent clearance, the right endpoint problem reduces to bounding the first critical point $u_1$ after the first cap turning point $u_0$. The exact theorem needed is:

**First-lobe amplitude theorem needed to close the cap.** Let

$$
B=n+\alpha+\beta+1,
\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
$$

and suppose the right residual endpoint cap is active. Let $u_0$ be the first zero of

$$
K_B(u)=p_B(u)q_B(u)
$$

in $(0,u_\sigma]$, and let $u_1$ be the first point in $(u_0,u_\sigma]$ with

$$
H'(u_1)=0,
$$

if such a point exists. Then the remaining endpoint estimate follows from

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

If no such $u_1$ exists, then the cap is already controlled by monotonicity and endpoint behavior.

This theorem is not proved in this response. The reduction to it is proved, except for routine degenerate-case bookkeeping.

Detailed reasoning:

## 1. Setup and normalization

The KKT-normalized weighted Jacobi expression is

$$
g_n^{(\alpha,\beta)}(x)
=
\left(
\frac{\Gamma(n+1)\Gamma(n+\alpha+\beta+1)}
{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}
\right)^{1/2}
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
P_n^{(\alpha,\beta)}(x).
$$

The refined target is

$$
|g_n^{(\alpha,\beta)}(x)|
\le
T_{n,\alpha,\beta},
$$

where

$$
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)(n+\alpha+\beta+1)}
{(n+\alpha+1)(n+\beta+1)}
\right)^{1/4}.
$$

In the right endpoint variable

$$
B=n+\alpha+\beta+1,\qquad
u=\frac{B(1-x)}{2},
$$

we have

$$
n+\beta+1=B-\alpha.
$$

Thus the target becomes

$$
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

The right endpoint residual regime is assumed to be after the already-accepted modules have been applied:

1. The central contour region is cleared.
2. The energy region is cleared.
3. The small endpoint exponent case $0\le\alpha\le1/2$ is cleared.
4. The left endpoint is handled by symmetry.
5. Thus we focus on

$$
n\ge1,\qquad \alpha>1/2,\qquad \beta\ge0.
$$

The case $n=0$ is separate and trivial:

$$
P_0^{(\alpha,\beta)}(x)=1,
$$

so

$$
|g_0^{(\alpha,\beta)}(x)|
=
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
\le1,
$$

and the refined constant is

$$
T_{0,\alpha,\beta}
=
\left(
\frac{\alpha+\beta+1}{(\alpha+1)(\beta+1)}
\right)^{1/4},
$$

which is not always $\ge1$. Therefore for the refined estimate one should check $n=0$ directly. The maximum of

$$
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
$$

occurs at

$$
\frac{1-x}{2}=\frac{\alpha}{\alpha+\beta},
\qquad
\frac{1+x}{2}=\frac{\beta}{\alpha+\beta},
$$

when $\alpha,\beta>0$. Hence the $n=0$ refined inequality is equivalent to

$$
\left(
\frac{\alpha^\alpha\beta^\beta}{(\alpha+\beta)^{\alpha+\beta}}
\right)^2
\le
\frac{\alpha+\beta+1}{(\alpha+1)(\beta+1)},
$$

with standard limiting interpretations if one parameter is zero. This base case should be recorded separately; it is not part of the endpoint lobe problem. For this response I focus on $n\ge1$.

## 2. Exact endpoint differential equation

Let

$$
s=\alpha+\beta,\qquad d=\beta-\alpha,
$$

and

$$
A(x)=1-x^2.
$$

The weighted Jacobi function $g=g_n^{(\alpha,\beta)}$ satisfies the self-adjoint equation

$$
(Ag')'+\frac{F(x)}{A(x)}g=0,
$$

where

$$
F(x)=\kappa(1-x^2)-\frac14(d-sx)^2
$$

and

$$
\kappa=n(n+s+1)+\frac{s}{2}.
$$

Now put

$$
B=n+s+1,\qquad x=1-\frac{2u}{B},\qquad H(u)=g(x).
$$

Then

$$
\frac{du}{dx}=-\frac B2,
$$

and

$$
A(x)=1-x^2
=
1-\left(1-\frac{2u}{B}\right)^2
=
\frac{4u}{B}\left(1-\frac uB\right)
=
\frac{4u(B-u)}{B^2}.
$$

Also

$$
d-sx
=
\beta-\alpha-s\left(1-\frac{2u}{B}\right)
=
\beta-\alpha-\alpha-\beta+\frac{2su}{B}
=
2\left(\frac{s}{B}u-\alpha\right).
$$

Since

$$
g'(x)=H'(u)\frac{du}{dx}
=
-\frac B2H'(u),
$$

we get

$$
A(x)g'(x)
=
\frac{4u(B-u)}{B^2}\left(-\frac B2H'(u)\right)
=
-\frac{2u(B-u)}{B}H'(u).
$$

Differentiating in $x$ gives

$$
(Ag')'
=
\frac{du}{dx}\frac{d}{du}\left(
-\frac{2u(B-u)}{B}H'(u)
\right)
=
\left(-\frac B2\right)\left(-\frac2B\right)
\frac{d}{du}\left(u(B-u)H'(u)\right),
$$

so

$$
(Ag')'
=
\frac{d}{du}\left(u(B-u)H'(u)\right).
$$

Furthermore,

$$
\frac{F(x)}{A(x)}
=
\kappa
-
\frac{(d-sx)^2}{4A(x)}
=
\kappa
-
\frac{4\left(\frac{s}{B}u-\alpha\right)^2}
{4\cdot \frac{4u(B-u)}{B^2}}
$$

and hence

$$
\frac{F(x)}{A(x)}
=
\kappa
-
\frac{B^2\left(\frac{s}{B}u-\alpha\right)^2}{4u(B-u)}
=
\kappa
-
\frac{(su-\alpha B)^2}{4u(B-u)}.
$$

Thus

$$
\frac{d}{du}\left(u(B-u)H'\right)
+
\left(
\kappa-\frac{(su-\alpha B)^2}{4u(B-u)}
\right)H
=
0.
$$

Divide by $B$. Since

$$
\frac{u(B-u)}{B}=u\left(1-\frac uB\right),
$$

we obtain

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
\frac{\kappa}{B}
-
\frac{\left(\frac{s}{B}u-\alpha\right)^2}{4u(1-u/B)}.
$$

Now

$$
\frac{s}{B}=1-\frac{n+1}{B}
$$

and

$$
\frac{\kappa}{B}
=
\frac{nB+\frac{s}{2}}{B}
=
n+\frac{s}{2B}
=
n+\frac12-\frac{n+1}{2B}.
$$

Therefore

$$
q_B(u)
=
n+\frac12-\frac{n+1}{2B}
-
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac{u}{B}\right)}.
$$

This proves the endpoint ODE exactly.

## 3. Endpoint cap length

The central boundary is

$$
\sigma=\frac{s}{s+2n}.
$$

In $u$-coordinates,

$$
u_\sigma
=
\frac{B(1-\sigma)}{2}
=
\frac B2
\left(
1-\frac{s}{s+2n}
\right)
=
\frac B2\frac{2n}{s+2n}.
$$

Since

$$
s+2n=B+n-1,
$$

we get

$$
u_\sigma
=
\frac{nB}{B+n-1}.
$$

For $n\ge1$,

$$
B+n-1\ge B,
$$

so

$$
u_\sigma\le n.
$$

Equality occurs when $n=1$; for $n>1$ it is strict. Thus the residual endpoint cap satisfies

$$
0\le u\le u_\sigma\le n.
$$

This is important because it replaces the old global Laguerre obstruction on $0\le u<\infty$ by a compact cap obstruction.

## 4. Product $K_B=p_Bq_B$

Define

$$
r_B=\frac{s}{B}=1-\frac{n+1}{B}
$$

and

$$
c_B=\frac{\kappa}{B}
=
n+\frac12-\frac{n+1}{2B}.
$$

Then

$$
q_B(u)
=
c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}.
$$

Multiplying by

$$
p_B(u)=u\left(1-\frac uB\right)
$$

gives

$$
K_B(u)
=
p_B(u)q_B(u)
=
c_Bu\left(1-\frac uB\right)
-
\frac14(r_Bu-\alpha)^2.
$$

Expanding,

$$
K_B(u)
=
-\frac{\alpha^2}{4}
+
\left(c_B+\frac{\alpha r_B}{2}\right)u
-
\left(\frac{c_B}{B}+\frac{r_B^2}{4}\right)u^2.
$$

Thus

$$
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

where

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
$$

Since

$$
\Delta_B>0,
$$

$K_B$ is a strictly concave quadratic.

Now compute

$$
K_B'(u)=\Lambda_B-2\Delta_Bu.
$$

At

$$
u_\sigma=\frac{nB}{B+n-1},
$$

the previously recorded identity is

$$
K_B'(u_\sigma)
=
\frac{s(n+\alpha+1)}{2B}
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

For completeness, I derive it.

We have

$$
r_B=\frac{s}{B},
\qquad
c_B=n+\frac{s}{2B}.
$$

So

$$
\Lambda_B
=
n+\frac{s}{2B}+\frac{\alpha s}{2B}
=
n+\frac{s(\alpha+1)}{2B}.
$$

Also

$$
\Delta_B
=
\frac{n}{B}+\frac{s}{2B^2}+\frac{s^2}{4B^2}
=
\frac{n}{B}+\frac{s(s+2)}{4B^2}.
$$

Using

$$
s=B-n-1,
$$

one finds

$$
4B^2\Delta_B
=
4nB+s(s+2)
=
4nB+(B-n-1)(B-n+1).
$$

The latter equals

$$
B^2+2nB+n^2-1
=
(B+n-1)(B+n+1).
$$

Hence

$$
\Delta_B
=
\frac{(B+n-1)(B+n+1)}{4B^2}.
$$

Therefore

$$
2\Delta_Bu_\sigma
=
2\cdot
\frac{(B+n-1)(B+n+1)}{4B^2}
\cdot
\frac{nB}{B+n-1}
=
\frac{n(B+n+1)}{2B}.
$$

Thus

$$
K_B'(u_\sigma)
=
n+\frac{s(\alpha+1)}{2B}
-
\frac{n(B+n+1)}{2B}.
$$

Multiplying by $2B$,

$$
2BK_B'(u_\sigma)
=
2nB+s(\alpha+1)-n(B+n+1).
$$

Since $s=B-n-1$,

$$
2BK_B'(u_\sigma)
=
nB-n^2-n+(B-n-1)(\alpha+1).
$$

Expanding,

$$
2BK_B'(u_\sigma)
=
nB-n^2-n+\alpha B+B-\alpha n-n-\alpha-1.
$$

The proposed expression is

$$
s(n+\alpha+1)
=
(B-n-1)(n+\alpha+1).
$$

Expanding,

$$
(B-n-1)(n+\alpha+1)
=
Bn+\alpha B+B-n^2-\alpha n-2n-\alpha-1,
$$

which matches the previous expression. Hence

$$
K_B'(u_\sigma)
=
\frac{s(n+\alpha+1)}{2B}.
$$

Since $K_B'$ is decreasing in $u$, for $0\le u\le u_\sigma$,

$$
K_B'(u)\ge K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
\ge0.
$$

In the residual right-endpoint range $\alpha\ge1/2$,

$$
\alpha+\beta\ge\frac12,
$$

and

$$
n+\alpha+1\ge B-\beta,
$$

but the useful direct lower bound is

$$
\frac{(\alpha+\beta)(n+\alpha+1)}{2(n+\alpha+\beta+1)}
\ge
\frac{\alpha(n+\alpha+1)}{2(n+\alpha+1+\beta)}.
$$

This expression is not uniformly bounded below by $1/4$ if $\beta$ is allowed to tend to infinity while $\alpha$ is fixed. Therefore the stronger claim

$$
K_B'(u)\ge\frac14
$$

requires care.

Let us test the claimed bound directly:

$$
K_B'(u_\sigma)
=
\frac{s(n+\alpha+1)}{2B}
=
\frac{(\alpha+\beta)(n+\alpha+1)}
{2(n+\alpha+\beta+1)}.
$$

As $\beta\to\infty$,

$$
K_B'(u_\sigma)\to \frac{n+\alpha+1}{2}.
$$

As $\beta=0$,

$$
K_B'(u_\sigma)
=
\frac{\alpha(n+\alpha+1)}{2(n+\alpha+1)}
=
\frac{\alpha}{2}.
$$

Thus for $\alpha\ge1/2$ and $\beta\ge0$,

$$
K_B'(u_\sigma)\ge\frac14.
$$

Indeed, for fixed $n,\alpha$, the function

$$
\beta\mapsto
\frac{(\alpha+\beta)(n+\alpha+1)}
{2(n+\alpha+\beta+1)}
$$

is increasing because

$$
\frac{d}{d\beta}
\frac{\alpha+\beta}{n+\alpha+\beta+1}
=
\frac{n+1}{(n+\alpha+\beta+1)^2}>0.
$$

Its minimum occurs at $\beta=0$, where it equals $\alpha/2$. Therefore

$$
\alpha\ge1/2
\quad\Longrightarrow\quad
K_B'(u_\sigma)\ge\frac14.
$$

This proves the strong lower bound precisely in the residual range.

The degenerate failure is also clear. If $\alpha=\beta=0$, then

$$
K_B'(u_\sigma)=0,
$$

so the lower bound $1/4$ is false. This case lies outside the residual strip because $\alpha\le1/2$ is handled separately.

## 5. Cap Sonin identity

For a real solution of

$$
(pH')'+qH=0
$$

on an interval where $q>0$, define

$$
S(u)=H(u)^2+\frac{p(u)H'(u)^2}{q(u)}.
$$

Differentiate:

$$
S'
=
2HH'
+
\frac{p'H'^2+2pH'H''}{q}
-
\frac{pq'H'^2}{q^2}.
$$

From the equation,

$$
pH''+p'H'=-qH.
$$

Thus

$$
2pH'H''
=
-2p'H'^2-2qHH'.
$$

Substituting,

$$
S'
=
2HH'
+
\frac{p'H'^2-2p'H'^2-2qHH'}{q}
-
\frac{pq'H'^2}{q^2}.
$$

The $2HH'$ terms cancel, leaving

$$
S'
=
-\frac{p'H'^2}{q}
-
\frac{pq'H'^2}{q^2}
=
-\frac{(p'q+pq')H'^2}{q^2}.
$$

Therefore

$$
S'
=
-\frac{(pq)'H'^2}{q^2}.
$$

Applying this with

$$
p=p_B,\qquad q=q_B,\qquad K_B=p_Bq_B,
$$

we get

$$
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2.
$$

On the cap,

$$
K_B'(u)\ge0.
$$

Hence wherever $q_B>0$,

$$
S_B'(u)\le0.
$$

At a critical point $H'(u_*)=0$,

$$
S_B(u_*)=H(u_*)^2.
$$

Thus successive local extrema in the allowed region $q_B>0$ have nonincreasing amplitude as $u$ increases.

## 6. Forbidden-zone ascent

The earlier gap was the interval near $u=0$ where

$$
q_B(u)<0,
$$

so the Sonin functional is not defined.

The endpoint behavior is determined by Frobenius theory. Since

$$
p_B(u)\sim u
$$

and

$$
q_B(u)
=
-\frac{\alpha^2}{4u}
+O(1)
\qquad(u\downarrow0),
$$

the indicial equation is

$$
\rho^2-\frac{\alpha^2}{4}=0.
$$

The regular endpoint solution satisfies

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},
\qquad A_{n,\alpha,B}>0,
$$

so for $\alpha>0$,

$$
H(u)>0,\qquad H'(u)>0
$$

for all sufficiently small $u>0$.

Let $u_0$ be the first zero of $K_B=p_Bq_B$ in the cap. Since $p_B>0$ on $0<u<B$, the sign of $K_B$ is the sign of $q_B$. Thus

$$
q_B(u)<0
\qquad
(0<u<u_0).
$$

On this interval the equation gives

$$
(p_BH')'=-q_BH.
$$

I claim that $H$ has no local maximum on $(0,u_0)$.

Here is the proof. Suppose, toward contradiction, that $H$ has a first local maximum at $u_m\in(0,u_0)$. Because $H>0$ and $H'>0$ near $0$, before a first local maximum we have

$$
H(u)>0
\qquad
(0<u\le u_m).
$$

On $(0,u_m]$,

$$
q_B<0
$$

and

$$
H>0,
$$

so

$$
(p_BH')'=-q_BH>0.
$$

Therefore $p_BH'$ is strictly increasing on $(0,u_m]$. Near zero,

$$
p_BH'
\sim
u\cdot A_{n,\alpha,B}\frac{\alpha}{2}u^{\alpha/2-1}
=
A_{n,\alpha,B}\frac{\alpha}{2}u^{\alpha/2}>0.
$$

Thus

$$
p_BH'(u)>0
$$

for all $0<u\le u_m$. Since $p_B(u)>0$,

$$
H'(u)>0
$$

for all $0<u\le u_m$.

But at a local maximum,

$$
H'(u_m)=0,
$$

a contradiction.

Therefore $H$ has no local maximum before the first turning point.

A slightly stronger statement is also available: $H$ is strictly increasing on $(0,u_0)$ as long as $H$ remains positive. The above proof shows positivity cannot fail before a maximum: a first zero would also contradict monotone increase from positive initial data. More explicitly, if $H$ had a first zero $z\in(0,u_0)$, then $H>0$ on $(0,z)$, so $(p_BH')'>0$ there, hence $H'>0$ there, contradicting $H(z)=0$ after $H>0$ near zero. Thus

$$
H(u)>0,\qquad H'(u)>0
\qquad(0<u<u_0).
$$

This proves the forbidden-zone ascent lemma for $\alpha>0$. Since the residual strip has $\alpha>1/2$, the proof applies.

## 7. Complete first-lobe reduction theorem

Combining the previous parts gives:

**Theorem: right endpoint cap first-lobe reduction.** Let

$$
n\ge1,\qquad \alpha>1/2,\qquad \beta\ge0,
$$

and define

$$
B=n+\alpha+\beta+1,\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
$$

Assume the problem has been reduced to the right residual cap

$$
0\le u\le u_\sigma=\frac{nB}{B+n-1}.
$$

Let

$$
K_B(u)=p_B(u)q_B(u).
$$

If $K_B(u)\le0$ throughout the cap, then $H$ is strictly increasing and positive throughout the cap, so the cap maximum occurs at the central boundary $u_\sigma$, already controlled by the central contour estimate.

If $K_B$ has a first zero $u_0\in(0,u_\sigma)$, then $H$ is positive and strictly increasing on $(0,u_0)$. On the allowed region

$$
u\in(u_0,u_\sigma)
$$

where $q_B>0$, the Sonin functional is decreasing. Therefore all local extrema after $u_0$ are ordered by decreasing amplitude as $u$ increases. Hence any cap maximum not already at the central boundary must occur at the first critical point $u_1$ after $u_0$, if such a point exists.

Consequently, the residual cap estimate follows from

$$
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

If $u_1$ does not exist, then $H$ remains monotone through the cap or has no interior extremum in the allowed portion; the maximum is at an endpoint of the cap and is already controlled by either endpoint vanishing/Frobenius behavior or central-boundary clearance.

**Status:** proved, assuming the previously accepted central-boundary clearance is strong enough at $u_\sigma$ and that the residual cap is precisely the only remaining region.

## 8. The exact amplitude theorem still needed

The reduction leaves the following precise open statement.

**Finite-$B$ first-lobe amplitude certificate.** Let

$$
n\ge1,\qquad \alpha>1/2,\qquad \beta\ge0,
$$

in the residual right endpoint regime, and let $u_1$ be the first critical point after the first zero $u_0$ of $K_B$. Then

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

This is the exact statement I recommend using as the next proof target.

A weaker but still useful limiting version is the Laguerre cap theorem:

$$
\ell_n^{(\alpha)}(u)
=
\left(
\frac{\Gamma(n+1)}{\Gamma(n+\alpha+1)}
\right)^{1/2}
u^{\alpha/2}e^{-u/2}L_n^{(\alpha)}(u).
$$

For

$$
n\ge1,\qquad
\frac12<\alpha<
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3},
$$

prove

$$
|\ell_n^{(\alpha)}(u_1^\infty)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4},
$$

where $u_1^\infty$ is the first Laguerre critical point after the first Laguerre cap turning point. A stronger but nonminimal version is

$$
|\ell_n^{(\alpha)}(u)|
\le
\left(\frac{n+1}{n+\alpha+1}\right)^{1/4}
\qquad(0\le u\le n).
$$

The global version on $0\le u<\infty$ should not be the main target.

## 9. Comparing the three amplitude routes

### Route A: affine $u$ Bessel comparison

The affine coordinate is ideal for localization because it gives the exact product

$$
K_B(u)=p_B(u)q_B(u)
$$

as a concave quadratic with monotone derivative on the cap. This is a major structural advantage.

However, it is risky for amplitude estimates. The equation has

$$
p_B(u)=u\left(1-\frac uB\right),
$$

not $p(u)=u$. Any Bessel comparison based on $t=2\sqrt{\Lambda_Bu}$ must handle the factor

$$
1-\frac uB.
$$

Because the cap only gives $u\le n$, and $B$ can be comparable to $n+\alpha+1$ when $\beta$ is small, this factor is not automatically negligible. For example, with $\beta=0$ and $\alpha\asymp n$,

$$
\frac uB
$$

can be a nontrivial constant in the cap. Therefore an affine Bessel perturbation theorem must either exploit first-lobe location more sharply than $u\le n$ or include the geometric factor exactly.

Verdict: **good for localization, risky for final amplitude.**

### Route B: rational $v$ Bessel coordinate

The proposed rational coordinate is

$$
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v}.
$$

It satisfies

$$
u=\frac{Bv}{B+v},
\qquad
v=\frac{Bu}{B-u}.
$$

The cap becomes

$$
0\le v\le v_\sigma
=
\frac{Bu_\sigma}{B-u_\sigma}.
$$

Substituting

$$
u_\sigma=\frac{nB}{B+n-1}
$$

gives

$$
v_\sigma
=
\frac{B\cdot \frac{nB}{B+n-1}}
{B-\frac{nB}{B+n-1}}
=
\frac{nB}{B-1}.
$$

Thus

$$
v_\sigma=\frac{nB}{B-1}.
$$

This is still $O(n)$ and in fact slightly larger than $u_\sigma$.

The kinetic identity recorded in the prior synthesis is

$$
\frac{d}{dx}\left((1-x^2)\frac{d}{dx}\right)
=
\frac{(B+v)^2}{B}\frac{d}{dv}\left(v\frac{d}{dv}\right).
$$

This gives a principal part exactly of Bessel type after multiplying by $B/(B+v)^2$:

$$
(vH_v')'+\widehat q_B(v)H=0.
$$

The potential is

$$
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
$$

Equivalently,

$$
\widehat q_B(v)
=
\frac{c_B}{(1+v/B)^2}
-
\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
$$

This route may avoid the affine amplitude inflation because the principal operator is exactly

$$
(vH_v')'.
$$

But it has a serious new issue: the potential contains $\beta v/B$, and for large $\beta$ this term need not be a small perturbation uniformly unless one uses the exact relation between $\beta/B$ and the limiting Laguerre parameter. Thus this coordinate should be audited carefully before being made primary.

Verdict: **most promising Bessel-coordinate route, but not certified.**

### Route C: Laguerre cap plus finite-$B$ bridge

The limiting equation as $B\to\infty$ with $n,\alpha$ fixed is

$$
(uH')'
+
\left(
n+\frac{\alpha+1}{2}
-\frac u4
-\frac{\alpha^2}{4u}
\right)H
=
0,
$$

the normalized Laguerre equation. On $0\le u\le n$,

$$
\left[
u\left(
n+\frac{\alpha+1}{2}
-\frac u4
-\frac{\alpha^2}{4u}
\right)
\right]'
=
n+\frac{\alpha+1}{2}-\frac u2
\ge
\frac{\alpha+1}{2}>0.
$$

Thus the same first-lobe localization holds in the Laguerre cap.

This route has conceptual clarity, but it has two gaps:

1. The Laguerre cap inequality is still unproved in the transition strip.
2. The finite-$B$ bridge is not monotone because

$$
q_B-q_\infty
$$

changes sign.

Thus a simple Sturm comparison from Jacobi to Laguerre is unavailable.

Verdict: **good limiting guide and computation boundary, but insufficient as a stand-alone proof route.**

## 10. Recommendation for Round 14

I recommend the following priority order:

1. **Primary:** direct finite-$B$ Prüfer/Sonin amplitude theorem.  
   Do not force a global Bessel comparison. Use the exact monotonicity of $K_B$ and try to bound the first extremum through a local Prüfer phase-amplitude identity.

2. **Secondary:** rational-coordinate Bessel/Liouville-Green route.  
   A2 and A3 should audit the dependent-variable transform and the potential remainder. If it gives a genuinely smaller error integral, promote it.

3. **Tertiary:** Laguerre cap theorem plus finite-$B$ perturbation.  
   Use it as a limiting test and as the $\theta=0$ face of any future interval computation. Do not make it the sole analytic route until a strict Laguerre cap margin is known.

What would falsify this route:

The endpoint-cap route would be seriously weakened if any of the following occurs:

1. A parameter set in the residual strip has a cap maximum before the first turning point. The forbidden-zone proof above should rule this out for $\alpha>0$, but A3 should audit it line by line.

2. The central-boundary estimate is not strong enough at $u_\sigma$ itself. The reduction assumes the central contour module covers the interface or covers it by a limiting argument.

3. There is a finite-$B$ example where the first allowed lobe exceeds the KKT target even though the Laguerre cap limit does not. This would invalidate a Laguerre-only bridge and force a direct finite-$B$ proof or a counterexample.

4. The first critical point $u_1$ can occur so far into the cap that all local Bessel or rational-coordinate perturbation errors become $O(1)$ with no compensating structural monotonicity.

5. The refined $n=0$ endpoint inequality fails for some $\alpha,\beta>0$. This would not affect the first-lobe theorem for $n\ge1$, but it must be checked separately because the refined estimate is claimed for $n\in\mathbb N_0$.

Dependencies:

The reduction depends on these modules:

1. Standard Jacobi differential equation and the corresponding weighted self-adjoint form

$$
(Ag')'+\frac{F}{A}g=0.
$$

2. Central contour clearance on

$$
|x|\le\sigma=\frac{\alpha+\beta}{\alpha+\beta+2n}.
$$

This is inherited from prior rounds and not reproved here.

3. Small endpoint exponent clearance for

$$
0\le\alpha\le\frac12
$$

on the right lobe, and symmetrically

$$
0\le\beta\le\frac12
$$

on the left lobe. This is inherited and should remain marked as a module to audit.

4. Weighted-energy clearance for the upper parameter region, including the Laguerre limiting energy closure for

$$
\alpha\ge
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3}.
$$

5. Symmetry

$$
g_n^{(\alpha,\beta)}(-x)
=
(-1)^n g_n^{(\beta,\alpha)}(x),
$$

up to the obvious equality in absolute value. This allows the left endpoint to be treated by swapping $\alpha$ and $\beta$.

6. Frobenius theory for regular singular endpoints. The proof uses the regular branch

$$
H(u)\sim A_{n,\alpha,B}u^{\alpha/2}
$$

with

$$
A_{n,\alpha,B}>0.
$$

Potential gaps:

1. **Amplitude gap.**  
   The central missing piece remains

   $$
   |H(u_1)|
   \le
   \left(
   \frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
   \right)^{1/4}.
   $$

   No proof of this estimate is supplied.

2. **Central-boundary bookkeeping.**  
   The first-lobe reduction assumes the central contour estimate controls the boundary point $x=\sigma$, equivalently $u=u_\sigma$, either directly or by continuity from the central side. This should be stated explicitly in the final proof skeleton.

3. **Degenerate cases.**  
   The cases

   $$
   n=0,\qquad \alpha=0,\qquad \beta=0,\qquad \alpha=1/2
   $$

   require separate handling. They are not hard, but they must not be hidden inside arguments requiring $q_B>0$ or $\alpha>0$.

4. **Multiple zeros of $K_B$.**  
   Since $K_B$ is concave and increasing on the cap, it can have at most one zero in the cap after being negative at $0$. This is straightforward but should be stated explicitly. If $K_B$ remains negative throughout the cap, there is no allowed lobe.

5. **Endpoint value at $u=0$.**  
   For $\alpha>0$,

   $$
   H(0)=0.
   $$

   For $\alpha=0$, the endpoint value need not vanish. But $\alpha=0$ is not in the residual strip.

6. **Finite-$B$ versus Laguerre.**  
   A Laguerre cap theorem alone does not close finite $B$ unless a quantitative bridge is proved. The sign-changing perturbation forbids naive Sturm ordering.

7. **Rational-coordinate uncertainty.**  
   The rational coordinate may improve the Bessel comparison, but the transformed potential and dependent-variable amplitude must be fully audited before claiming reduced error.

Counterexample or obstruction search:

## 1. Degenerate lower-bound obstruction

The formula

$$
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}
$$

shows immediately that the bound

$$
K_B'(u)\ge\frac14
$$

cannot be global for all $\alpha,\beta\ge0$. For example,

$$
\alpha=\beta=0
$$

gives

$$
K_B'(u_\sigma)=0.
$$

Thus the $1/4$ lower bound is valid only in the residual right-endpoint range $\alpha\ge1/2$. This is not a problem, because $\alpha\le1/2$ is already assigned to the small-exponent theorem.

## 2. Large-$\beta$ obstruction to compact finite verification

For fixed $n$ and moderate $\alpha$, the unresolved right endpoint can persist as

$$
\beta\to\infty.
$$

Thus one cannot rely on a finite rectangular computation in $(n,\alpha,\beta)$ without compactifying $\beta=\infty$ and proving the Laguerre boundary. The compactification variable

$$
\theta=\frac{n+\alpha+1}{B}
$$

is still necessary for computational work.

## 3. Constant-frequency Bessel obstruction

The old constant-frequency Sturm comparison loses too much when $\alpha\asymp n$. If one reduces the frequency to dominate the whole first lobe, the Bessel normalization can inflate by a factor comparable to

$$
\left(\frac{\lambda}{\widetilde\lambda}\right)^{\alpha/2},
$$

which can be exponential in $n$ in the transition strip. This remains a serious obstruction to a simple Bessel proof.

## 4. Affine-coordinate amplitude obstruction

The affine coordinate has

$$
p_B(u)=u\left(1-\frac uB\right).
$$

If one compares too directly with the Bessel operator $(uY')'$, the factor $1-u/B$ may generate a non-negligible amplitude distortion. In the cap $u\le n$, this is small only when $n/B$ is small. But for $\beta=0$ and $\alpha=O(n)$, $n/B$ is not small.

## 5. Possible finite-$B$ worst case

It is not known whether the worst first-lobe ratio occurs at the Laguerre face $B=\infty$ or at finite $B$. If finite-$B$ overshoot exists, then the Laguerre bridge route cannot be primary.

Divergent alternatives and 20% exploration:

## Alternative 1: direct Prüfer amplitude in the finite-$B$ cap

Instead of forcing a Bessel approximation, define a Prüfer phase and amplitude adapted to

$$
(pH')'+qH=0
$$

by

$$
H=R\sin\phi,
\qquad
pH'=\sqrt{p q}\,R\cos\phi
$$

on $q>0$. A standard calculation gives amplitude evolution controlled by

$$
\frac{(pq)'}{pq}.
$$

Because

$$
K_B=pq
$$

is explicitly increasing and concave, this route might yield a one-lobe amplitude estimate from the turning point to the first maximum without comparing to a global model equation.

The needed lemma is an explicit upper bound on the first maximum generated from Frobenius initial data at $u=0$ through the forbidden zone and the first allowed quarter-wave. The obstacle is that near the turning point $q=0$, the Prüfer variables become singular; one may need an Airy-type local crossing or start just after the turning point.

Quick falsification test: compute the Prüfer amplitude numerically for hard samples and check whether the amplitude at the first maximum is monotone in $\beta$ or controlled by a simple integral of $K_B'$. If the Prüfer amplitude overshoots the target in any sample, this route either fails or reveals a counterexample.

## Alternative 2: rational-coordinate Bessel normal form

Use

$$
v=B\frac{1-x}{1+x}.
$$

This gives principal part

$$
(vH_v')'
$$

exactly, which is closer to the Laguerre hard-edge operator. The hope is that the transformed potential has a Bessel core plus a smaller residual than in affine $u$.

The needed lemma is a full Liouville-normal-form expansion with explicit remainder:

$$
(vH_v')'
+
\left(
\widehat\Lambda_B
-
\frac{\alpha^2}{4v}
+
\widehat R_B(v)
\right)H
=
0,
$$

or the correct variant, with an integral bound for $\widehat R_B$ through the first lobe.

Quick falsification test: compare the actual Volterra residual in $u$ and $v$ coordinates for hard samples

$$
n=50,\qquad \alpha\in\{1,5,20,40\},\qquad \beta\in\{0,1,10,\infty\}.
$$

If the rational residual is not smaller or still grows like $O(1)$ through the first lobe, then this route should be demoted.

## Alternative 3: Laguerre cap plus monotone finite-$B$ deformation

Although $q_B-q_\infty$ changes sign, a more subtle monotonicity might hold for the first-lobe amplitude as a function of

$$
\theta=\frac{n+\alpha+1}{B}.
$$

One could attempt to prove that the normalized first-lobe ratio

$$
R_{n,\alpha,\theta}^{(1)}
=
\frac{|H_{\theta}(u_1(\theta))|}
{
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}
}
$$

is maximized at $\theta=0$, the Laguerre face, or at $\theta=1$, the $\beta=0$ face.

The needed lemma is a derivative formula for the first critical value with respect to $\theta$. Since $H'(u_1)=0$, the derivative of the critical value avoids differentiating $u_1$ directly:

$$
\frac{d}{d\theta}H_\theta(u_1(\theta))
=
\partial_\theta H_\theta(u_1(\theta)).
$$

This could be represented by an inhomogeneous Sturm-Liouville equation.

Quick falsification test: numerically map $R_{n,\alpha,\theta}^{(1)}$ over $\theta\in[0,1]$. If the maximum is consistently at an endpoint, this route becomes attractive. If there are interior maxima, it becomes an interval-computation route rather than an analytic monotonicity route.

## Alternative 4: Christoffel or reproducing-kernel local bound

The normalized $g_n$ is not the orthonormal Jacobi polynomial itself, but it is related to the weighted orthonormal function. A sharp local bound might follow from a one-point Christoffel estimate at the endpoint cap. The needed inequality would be a sharp upper bound for

$$
w_{\alpha,\beta}(x)^{1/2}|p_n^{(\alpha,\beta)}(x)|
$$

in terms of the Christoffel function

$$
\lambda_n^{(\alpha,\beta)}(x)
=
\left(
\sum_{k=0}^n p_k^{(\alpha,\beta)}(x)^2
\right)^{-1}.
$$

The obstacle is that the KKT constant is sharper than standard Christoffel asymptotics and includes exact parameter factors. This route is probably weaker but could provide finite-$n$ barriers or rule out counterexamples.

Quick falsification test: compute exact Christoffel bounds in the cap and compare to $T_{n,\alpha,\beta}$. If even optimized Christoffel estimates miss the target by a fixed factor, abandon this route.

Useful lemmas:

## Lemma A1.13.1: Exact endpoint ODE

For

$$
B=n+\alpha+\beta+1,
\qquad
H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right),
$$

one has

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
\frac{\left(\left(1-\frac{n+1}{B}\right)u-\alpha\right)^2}
{4u\left(1-\frac uB\right)}.
$$

Status: proved.

## Lemma A1.13.2: Endpoint cap length

For

$$
\sigma=\frac{\alpha+\beta}{\alpha+\beta+2n},
$$

one has

$$
u_\sigma=\frac{B(1-\sigma)}2
=
\frac{nB}{B+n-1}
\le n
\qquad(n\ge1).
$$

Status: proved.

## Lemma A1.13.3: Product monotonicity

Let

$$
K_B(u)=p_B(u)q_B(u).
$$

Then

$$
K_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
$$

with

$$
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4},
$$

where

$$
c_B=n+\frac12-\frac{n+1}{2B},
\qquad
r_B=1-\frac{n+1}{B}.
$$

Moreover,

$$
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
$$

Hence $K_B$ is increasing on $0\le u\le u_\sigma$, and if $\alpha\ge1/2$ then

$$
K_B'(u)\ge\frac14
\qquad(0\le u\le u_\sigma).
$$

Status: proved, with the range restriction $\alpha\ge1/2$ for the $1/4$ lower bound.

## Lemma A1.13.4: Cap Sonin monotonicity

On every subinterval where $q_B>0$,

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

Status: proved.

## Lemma A1.13.5: Forbidden-zone ascent

Assume

$$
\alpha>0.
$$

Let $u_0$ be the first zero of $K_B$ in the cap. Then

$$
H(u)>0,\qquad H'(u)>0
\qquad(0<u<u_0).
$$

In particular, $H$ has no local maximum before $u_0$.

Status: proved.

## Lemma A1.13.6: First-lobe reduction

Assume the right residual endpoint cap is active and $\alpha>1/2$. If the KKT estimate fails in the cap, then it fails at the first critical point $u_1$ after the first zero $u_0$ of $K_B$.

Status: proved modulo central-boundary bookkeeping and degenerate cases.

## Lemma A1.13.7: Minimal open first-lobe certificate

In the residual right endpoint regime, prove

$$
|H(u_1)|
\le
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
$$

Status: open; this is the main target.

What should be tested next:

1. **Audit the forbidden-zone proof.**  
   A3 should check every sign in the proof that

   $$
   (p_BH')'=-q_BH>0
   $$

   on $(0,u_0)$ and confirm that no zero of $H$ can occur before the first local maximum.

2. **Compute first-lobe ratios.**  
   A4 should compute

   $$
   R_{n,\alpha,\beta}^{(1)}
   =
   \frac{|H(u_1)|}
   {
   \left(
   \frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
   \right)^{1/4}
   }
   $$

   for dense grids in

   $$
   1\le n\le200,\qquad
   \frac12\le\alpha\le\alpha_E(n),
   $$

   and compactified

   $$
   \theta=\frac{n+\alpha+1}{B}\in[0,1].
   $$

3. **Map the first-lobe location.**  
   Determine whether

   $$
   u_1=O(1),\qquad u_1=O(\alpha),\qquad u_1=O(n),
   $$

   in the worst transition region. This decides whether local Bessel perturbation can plausibly be small.

4. **Compare affine and rational residuals.**  
   For the same samples, compute the Liouville residual integral in the $u$ coordinate and in the rational $v$ coordinate. Report which is smaller and whether either scales like $O(1/n)$.

5. **Check finite-$B$ monotonicity.**  
   For fixed $(n,\alpha)$, determine whether

   $$
   R_{n,\alpha,\theta}^{(1)}
   $$

   is monotone in $\theta$, maximized at $\theta=0$, maximized at $\theta=1$, or has interior peaks.

6. **Separate boundary cases.**  
   Verify the refined estimate directly for

   $$
   n=0,\qquad \alpha=0,\qquad \beta=0,\qquad \alpha=1/2.
   $$

7. **Try a Prüfer proof.**  
   Derive the exact amplitude equation for a Prüfer transform adapted to

   $$
   K_B=p_Bq_B.
   $$

   Attempt to bound the first quarter-wave amplitude using only

   $$
   K_B'(u)\ge1/4
   $$

   and Frobenius initialization.

8. **Avoid global Laguerre drift.**  
   A future Laguerre theorem should first target

   $$
   0\le u\le n
   $$

   and then only $u=u_1^\infty$, not $0\le u<\infty$.

Confidence:

Confidence in the exact endpoint ODE: $0.95$.

Confidence in the cap length formula $u_\sigma\le n$: $0.99$.

Confidence in the product monotonicity formula and the restricted lower bound $K_B'\ge1/4$ for $\alpha\ge1/2$: $0.95$.

Confidence in the forbidden-zone ascent proof for $\alpha>0$: $0.85$. It is short and sign-based, but should still be independently audited because it bridges the non-Sonin region.

Confidence in the first-lobe reduction after degenerate-case bookkeeping: $0.80$.

Confidence that the amplitude theorem is currently proved: $0.10$.

Confidence that the endpoint-cap route is the best current strategy: $0.80$.

Confidence that rational-coordinate Bessel comparison alone will close the amplitude gap: $0.45$.

Confidence that a direct finite-$B$ Prüfer/Sonin argument is worth making primary in Round 14: $0.60$.

Overall confidence that the full real-parameter KKT conjecture is now proved: $0.15$.

Overall confidence that the semi-discrete case $\alpha\ge0$, $\beta\in\mathbb N_0$ can eventually be closed by this endpoint-cap route plus certified computation or a first-lobe theorem: $0.60$.

--- OUTPUT FROM A2 ---
Summary:
This document constitutes a highly rigorous, long-form mathematical audit and independent strategic evaluation of the current proposed amplitude routes for the KKT Jacobi polynomial conjecture. In my capacity as an obstruction finder and independent referee, I have focused my analytical effort entirely on the unresolved right-endpoint transition strip, subjecting the proposed rational-coordinate mapping, the affine-coordinate amplitude inflation objection, the constant-frequency Bessel approximation bounds, and the finite-$\beta$ Laguerre bridge to an exhaustive series of algebraic and asymptotic stress tests. 

The findings fundamentally reshape the required proof architecture. Although the rational coordinate $v = B(1-x)/(1+x)$ is verified to be algebraically exact and elegantly isolates the principal differential operator, its purported capability to attenuate Liouville-Green (WKB) geometric amplitude inflation is demonstrably an algebraic artifact. By reconstructing the exact canonical invariant geometries of both the affine and rational coordinates, I prove that they are functionally identical; the rational coordinate provides no inherent asymptotic amplitude suppression compared to the affine coordinate. 

More crucially, the audit exposes three severe scaling obstructions that invalidate the leading analytic tracks. First, any constant-frequency Bessel approximation matching the local base frequency will produce an $O(n)$ Volterra error integral in the $\alpha=O(n)$ transition strip, forcing the relative amplitude bounds to diverge asymptotically rather than converging to the required $O(1/n)$ KKT margin. Second, the proposed handoff from the Bessel approximation to the generalized Sonin monotonicity functional encounters an unremovable analytical pole at the classical turning point, rendering derivative bounds mathematically intractable in that domain. Third, for the critical semi-discrete target ($\beta \in \mathbb{N}_0$), the effective phase frequency of the finite-$B$ system drifts away from the Laguerre limit frequency by exactly $O(n)$, inducing catastrophic phase decorrelation that obstructs direct finite-perturbation bridging. The overall strategy must immediately pivot to a fully dynamic Szegő uniform variable-frequency mapping to analytically control phase drift, or structurally rely on an intensive, certified interval arithmetic framework over the compactified domain.

Main claim or direction:
The constant-frequency Bessel perturbation strategy (Track 1) and the direct finite-parameter Laguerre limit bridge (Track 3) are analytically obstructed in the $\alpha=O(n)$ transition strip. While the rational coordinate $v$ is a valid algebraic diffeomorphism, it maps precisely to the identical canonical Liouville-Green metric as the affine coordinate $u$, thus possessing identical geometric amplitude scaling properties. The fundamental obstruction stems from the $O(1)$ quadratic residual potential, which, when integrated over the $O(n)$ macroscopic phase length of the first wave lobe, generates an exponentially divergent $O(n)$ Volterra error. The strategic direction must shift definitively toward implementing a true, fully dynamic Szegő uniform asymptotic mapping capable of naturally absorbing linear frequency drift, coupled with the comprehensive deployment of subresultant-driven interval arithmetic over the finite degrees up to a significantly elevated $N_0 \approx 200$.

## 1. Executive Summary

The KKT conjecture proposes a sharp, uniform boundary on the maximal amplitude of normalized, weighted Jacobi polynomials across all real parameters $\alpha, \beta \ge 0$. While recent rounds have successfully restricted the infinite two-dimensional parameter manifold to a tight endpoint cap via Sonin localization, central contour theorems, and global weighted energy Sobolev bounds, the remaining transition strip where $\alpha \sim n$ continues to resist standard asymptotic closures. The current proposals—utilizing constant-frequency Bessel variations and direct finite perturbation bridges—must be subjected to strict referee evaluation. This evaluation explicitly tracks normalization constants, boundary variables, geometric WKB invariants, and asymptotic scaling limits. The discoveries presented herein confirm that static-frequency assumptions diverge in the large-$n$ limit, fundamentally requiring either dynamic parameter mappings or brute-force computer-assisted proofs.

## 2. Historical Context and the KKT Conjecture

The Koornwinder-Kostenko-Teschl (KKT) conjecture aims to establish a sharp, uniform $L^\infty$ bound for the normalized Jacobi polynomials $g_n^{(\alpha,\beta)}(x)$. This inequality was originally proven by the authors for integer parameters $\alpha, \beta \in \mathbb{N}_0$ using the representation theory of the special unitary group $SU(2)$, where the Jacobi polynomials emerge as spherical functions. However, representation theory provides no direct analytic mechanism to analytically continue this strict inequality to real-valued parameters. The ongoing research program seeks to construct a purely analytic proof utilizing Sturm-Liouville theory, variation of constants, Sonin-Pólya monotonicity, and precise asymptotic bounding.

As the designated independent strategist and obstruction finder (Agent A2), my role is to act as a rigorous mathematical referee. I am tasked with stress-testing the endpoint-cap route, investigating potential hidden assumptions in the coordinate transformations, verifying the first-lobe dominance, and auditing the scaling of the proposed asymptotic error bounds. This requires moving beyond heuristic approximations and formalizing the exact differential geometry, tracking all explicit constants, and computing rigorous asymptotic scaling limits to certify or falsify the proposed proof architectures.

## 3. Claim ledger

To maintain a strict division between established theorems and speculative proposals, I have categorized the primary claims derived and analyzed within this document. Every claim is classified based on exact analytical proofs provided in the subsequent sections.

*   **Claim 1:** The exact algebraic bijection between the affine coordinate $u$ and the rational coordinate $v$ preserves the topology of the residual endpoint cap $u \le n$. 
    *Status:* **Proved**. (Algebraic mapping explicitly derived).
*   **Claim 2:** The rational coordinate formulation inherently suppresses geometric amplitude inflation relative to the affine coordinate. 
    *Status:* **Likely false**. (The canonical WKB coordinates and the invariant Liouville potentials $K(x)$ are rigorously proven to be geometrically indistinguishable).
*   **Claim 3:** The exact algebraic expansion of the residual error potential $\widehat{\Delta}_B$ contains an $O(1)$ coefficient scaling independent of $n$ in the transition strip. 
    *Status:* **Proved**. (Taylor series expansion meticulously evaluated).
*   **Claim 4:** A constant-frequency Bessel majorant produces an $O(1/n)$ perturbation margin up to the first peak of the regular endpoint solution. 
    *Status:* **Likely false**. (The Olver Volterra integral evaluates asymptotically to $O(n)$, proving exponential error divergence).
*   **Claim 5:** A Sonin handoff strategy can safely bind the amplitude and derivative energy near the classical turning point $u_0$. 
    *Status:* **Likely false**. (The Sonin functional is proven to feature a non-removable geometric pole at $q_B=0$).
*   **Claim 6:** The finite-$B$ base frequency remains closely aligned with the Laguerre limit frequency for the semi-discrete target $\beta=0$. 
    *Status:* **Likely false**. (The algebraic difference $\Lambda_\infty - \Lambda_B$ is evaluated to exact $O(n)$, triggering total phase decorrelation).

## 4. Theorem-Dependency Audit

The mathematical derivations, falsifications, and strategic adjustments established in this document rely on the strict application of several deep foundational theorems from classical analysis and differential equations. To prevent circular reasoning, the dependencies are explicitly listed below:

1.  **Sturm-Liouville Canonical Transformation Theory:** The reduction of generic second-order linear differential equations into self-adjoint form is an absolute prerequisite for applying energetic bounding arguments. All subsequent geometry is constrained by this canonical form. If a differential operator is not brought into formally symmetric layout, boundary energies and variation limits will be fundamentally corrupted by spurious drift terms.
2.  **Liouville-Green (WKB) Amplitude Theory:** We depend on the theorem that the leading-order envelope amplitude of an oscillatory wave traversing a slowly varying potential scales precisely proportionally to $K_{\text{inv}}(x)^{-1/4}$. The rigorous theoretical derivation of this dependence guarantees that changes of variables preserving $K_{\text{inv}}$ do not augment the envelope scaling.
3.  **Sonin-Pólya Envelope Monotonicity:** We depend on the theorem that the kinetic-potential pseudo-energy functional $S(x) = y^2 + p(x)y'^2/q(x)$ is strictly monotonic bounded whenever the potential gradient $K'(x)$ possesses a uniform sign. This dependency is strictly constrained by the hypothesis that $q(x) > 0$.
4.  **Olver's Error Analysis for Uniform Asymptotic Approximations:** The rigorous bounding of the perturbation remainder term relies entirely on Olver's variation of constants, which dictates that the relative error is restricted by $\exp(\mathcal{E}(x))-1$, where $\mathcal{E}(x)$ is the integrated Volterra phase error. This theorem operates on the explicit hypothesis that the Volterra integral is strongly bounded.
5.  **Szegő's Uniform Asymptotic Extensions:** We rely on the theorem that non-linear mappings can map an arbitrary potential to a Bessel canonical form exactly, where the residual is dictated strictly by the Schwarzian derivative of the mapping function, circumventing constant-frequency phase drift entirely.
6.  **Frobenius Theorem for Fuchsian Singularities:** The proper initialization of the wave function and the assessment of the forbidden-zone ascent relies upon the power series definition dictated by the indicial equation at the regular singular point.

## 5. Explicit Assumptions

The mathematical scaling laws and parameter bounds utilized in the obstruction proofs operate under the following explicit assumptions derived from the global KKT context:

1.  **Strict Polynomial Parameter Constraints:** The analysis assumes $n \in \mathbb{N}$ with $n \ge 1$, $\alpha \ge 1/2$ (excluding the analytically simple small endpoint regime which is already bounded by Wendel-Gautschi gamma structures), and $\beta \ge 0$.
2.  **Semi-Discrete Primary Focus:** The most sensitive evaluations, specifically the Laguerre limit phase drift, assume the semi-discrete condition $\beta \in \mathbb{N}_0$, making $\beta=0$ the dominant lower bound case. An architecture that fails at $\beta=0$ is unconditionally rejected.
3.  **The Transition Strip Limitation:** We operate exclusively within the parameter domain where standard methods fail, specifically $\alpha \le \frac{(2n+1)(n+1)}{2n+3}$. In this strip, $\alpha = O(n)$ scales proportionally with the polynomial degree.
4.  **Endpoint Cap Domain Security:** We assume the central contour modules are perfectly correct, isolating the global maximum search exclusively to the post-central contour residual cap $x \in [\sigma, 1]$, which translates to the endpoint coordinate boundary $u \in [0, u_\sigma]$.
5.  **Frobenius Regularity:** We assume all solutions are defined on the regular singular branch at the origin, with asymptotic behavior $H_B(u) \sim u^{\alpha/2}$, thus eliminating the singular Neumann function components that scale as $u^{-\alpha/2}$.
6.  **Continuous Differentiability:** We assume the transformed potentials and canonical coordinates are at least $C^3$ on the interior of the domain to permit the rigorous evaluation of Schwarzian derivatives and Volterra integrals without invoking weak distribution theory.

## 6. Mathematical Foundations of the Endpoint ODE

To guarantee that no geometric normalization factors are artificially lost during coordinate mapping, we must systematically derive the endpoint ODE starting from the classical Jacobi polynomial differential equation. The standard Jacobi equation is defined by the following non-self-adjoint eigenvalue problem:
$$ (1-x^2)y'' + (\beta - \alpha - (\alpha + \beta + 2)x)y' + n(n+\alpha+\beta+1)y = 0 $$
By defining the algebraic parameter sums and differences as $s = \alpha + \beta$ and $d = \beta - \alpha$, we simplify the first-derivative coefficient:
$$ (1-x^2)y'' + (d - (s+2)x)y' + n(n+s+1)y = 0 $$
The KKT conjecture requires establishing bounds not on $y(x)$, but on the specialized weighted and normalized function:
$$ g_n^{(\alpha,\beta)}(x) = C_{n,\alpha,\beta} \left(\frac{1-x}{2}\right)^{\alpha/2} \left(\frac{1+x}{2}\right)^{\beta/2} P_n^{(\alpha,\beta)}(x) $$
Let the physical weight function be $w(x) = (1-x)^{\alpha/2} (1+x)^{\beta/2}$. We evaluate the logarithmic derivative of the weight function to execute the substitution $y(x) = g(x) / w(x)$:
$$ \frac{w'(x)}{w(x)} = \frac{d}{dx} \left[ \frac{\alpha}{2} \ln(1-x) + \frac{\beta}{2} \ln(1+x) \right] = -\frac{\alpha}{2(1-x)} + \frac{\beta}{2(1+x)} $$
Finding a common denominator yields:
$$ \frac{w'(x)}{w(x)} = \frac{-\alpha(1+x) + \beta(1-x)}{2(1-x^2)} = \frac{\beta - \alpha - (\alpha+\beta)x}{2(1-x^2)} = \frac{d - sx}{2(1-x^2)} $$
Substituting this back into the base differential equation exactly cancels the asymmetric first-order drift terms, resulting in a symmetric normal form where the first derivative interacts purely with the geometric volume element:
$$ g'' - \frac{2x}{1-x^2} g' + \frac{F(x)}{(1-x^2)^2} g = 0 $$
Here, the numerator of the effective potential $F(x)$ bundles the eigenvalue and the centrifugal barriers:
$$ F(x) = \kappa(1-x^2) - \frac{1}{4}(d-sx)^2 $$
and the shifted total energy constant is $\kappa = n(n+s+1) + s/2$.
Finally, multiplying by the continuous integrating factor $(1-x^2)$ perfectly generates the self-adjoint Sturm-Liouville operator. This form is non-negotiable; it serves as the absolute baseline for all WKB invariant evaluations:
$$ \frac{d}{dx} \left( (1-x^2) \frac{dg}{dx} \right) + \frac{F(x)}{1-x^2} g = 0 $$

## 7. Affine Coordinate Derivation and Geometry

We now systematically map the self-adjoint Jacobi equation into the affine endpoint coordinate $u = B(1-x)/2$, where $B = n+s+1$. This coordinate stretches the right endpoint $x=1$ to the origin $u=0$.
The inverse mapping is $x = 1 - 2u/B$. We compute the differentials:
$$ dx = -\frac{2}{B} du \implies \frac{d}{dx} = -\frac{B}{2} \frac{d}{du} $$
The algebraic boundary factors transform linearly:
$$ 1-x = \frac{2u}{B}, \qquad 1+x = 2 - \frac{2u}{B} $$
$$ 1-x^2 = (1-x)(1+x) = \frac{4u}{B} \left( 1 - \frac{u}{B} \right) $$
Applying the differential operators to the kinetic part of the Sturm-Liouville equation:
$$ \frac{d}{dx} \left( (1-x^2) \frac{d}{dx} \right) = -\frac{B}{2} \frac{d}{du} \left( \frac{4u}{B} \left(1-\frac{u}{B}\right) \left(-\frac{B}{2}\right) \frac{d}{du} \right) $$
$$ = \frac{B^2}{4} \frac{4}{B} \frac{d}{du} \left( u \left(1-\frac{u}{B}\right) \frac{d}{du} \right) = B \frac{d}{du} \left( p_B(u) \frac{d}{du} \right) $$
where the affine kinetic coefficient is precisely defined as $p_B(u) = u(1-u/B)$.
Next, we map the potential fraction $F(x) / (1-x^2)$. We first evaluate the drift term $d-sx$:
$$ d-sx = (\beta-\alpha) - (\alpha+\beta)\left(1-\frac{2u}{B}\right) = -2\alpha + 2(\alpha+\beta)\frac{u}{B} = 2 \left( s \frac{u}{B} - \alpha \right) $$
Defining the fraction $r_B = s/B$, this becomes $2(r_B u - \alpha)$.
Squaring this expression yields $4(r_B u - \alpha)^2$.
We then construct the entire potential quotient:
$$ \frac{F(x)}{1-x^2} = \kappa - \frac{(d-sx)^2}{4(1-x^2)} = \kappa - \frac{4(r_B u - \alpha)^2}{4 \cdot \frac{4u}{B}(1-u/B)} = \kappa - B \frac{(r_B u - \alpha)^2}{4u(1-u/B)} $$
Substituting both the kinetic and potential terms back into the full differential equation:
$$ B \frac{d}{du} \left( p_B(u) \frac{dH}{du} \right) + \left( \kappa - B \frac{(r_B u - \alpha)^2}{4u(1-u/B)} \right) H = 0 $$
Dividing the entire equation by the massive parameter $B$ yields the normalized affine equation:
$$ (p_B(u) H')' + \left( \frac{\kappa}{B} - \frac{(r_B u - \alpha)^2}{4u(1-u/B)} \right) H = 0 $$
By identifying $c_B = \kappa/B$, the potential $q_B(u)$ perfectly matches the legacy state exactly:
$$ q_B(u) = c_B - \frac{(r_B u - \alpha)^2}{4u(1-u/B)} $$
This derivation is exhaustive, algebraically flawless, and proves Lemma L12.1.

## 8. Rational Coordinate Derivation and Algebraic Integrity

To test the alternative amplitude geometry, we execute an equally rigorous derivation for the proposed rational coordinate $v = B(1-x)/(1+x)$. The core motivation behind this transformation was the premise that mapping the rational singularities directly might alleviate the inflation of the amplitude.
The inverse mapping is $x = \frac{B-v}{B+v}$.
We systematically compute the differential mapping:
$$ dx = \frac{-(B+v) - (B-v)(1)}{(B+v)^2} dv = \frac{-2B}{(B+v)^2} dv $$
$$ \frac{d}{dx} = -\frac{(B+v)^2}{2B} \frac{d}{dv} $$
The algebraic boundaries transform as rational fractions:
$$ 1-x = 1 - \frac{B-v}{B+v} = \frac{2v}{B+v}, \qquad 1+x = 1 + \frac{B-v}{B+v} = \frac{2B}{B+v} $$
$$ 1-x^2 = \frac{4Bv}{(B+v)^2} $$
Transforming the kinetic operator using the chain rule:
$$ \frac{d}{dx} \left( (1-x^2) \frac{d}{dx} \right) = -\frac{(B+v)^2}{2B} \frac{d}{dv} \left( \frac{4Bv}{(B+v)^2} \left(-\frac{(B+v)^2}{2B}\right) \frac{d}{dv} \right) $$
$$ = -\frac{(B+v)^2}{2B} \frac{d}{dv} \left( -2v \frac{d}{dv} \right) = \frac{(B+v)^2}{B} (v H_v')' $$
We now systematically map the potential term $F(x) / (1-x^2)$. The drift evaluates as:
$$ d-sx = (\beta-\alpha) - (\alpha+\beta) \frac{B-v}{B+v} = \frac{(\beta-\alpha)(B+v) - (\alpha+\beta)(B-v)}{B+v} $$
$$ = \frac{\beta B + \beta v - \alpha B - \alpha v - \alpha B + \alpha v - \beta B + \beta v}{B+v} = \frac{2\beta v - 2\alpha B}{B+v} $$
Squaring this result yields:
$$ (d-sx)^2 = \frac{4(\beta v - \alpha B)^2}{(B+v)^2} $$
The potential fraction becomes:
$$ \frac{F(x)}{1-x^2} = \kappa - \frac{\frac{4(\beta v - \alpha B)^2}{(B+v)^2}}{4 \frac{4Bv}{(B+v)^2}} = \kappa - \frac{(\beta v - \alpha B)^2}{4Bv} $$
Substituting these forms into the total differential equation gives:
$$ \frac{(B+v)^2}{B} (v H_v')' + \left( \kappa - \frac{(\beta v - \alpha B)^2}{4Bv} \right) H = 0 $$
To normalize the principal operator to $(v H_v')'$, we multiply the equation by the conformal factor $\frac{B}{(B+v)^2}$:
$$ (v H_v')' + \frac{B}{(B+v)^2} \left( \kappa - \frac{(\beta v - \alpha B)^2}{4Bv} \right) H = 0 $$
Distributing the conformal factor produces the exact potential $\widehat q_B(v)$:
$$ \widehat q_B(v) = \frac{\kappa B}{(B+v)^2} - \frac{(\beta v - \alpha B)^2}{4v(B+v)^2} $$
Dividing numerator and denominator by $B^2$ and substituting $c_B = \kappa/B$ verifies the equivalent form:
$$ \widehat q_B(v) = \frac{c_B}{(1+v/B)^2} - \frac{(\beta v/B - \alpha)^2}{4v(1+v/B)^2} $$
This comprehensive derivation proves the exactness of the rational coordinate formulation and establishes Lemma L12.9.

## 9. Bijection and Topological Mapping of the Endpoint Cap

We must unequivocally demonstrate the exact topological equivalence between the affine and rational coordinates to ensure no singular distortions corrupt the integration boundaries or the associated Taylor expansions. 
Using the affine coordinate relation $1-x = 2u/B$, we substitute this directly into the definition of the rational coordinate $v$:
$$ v = B \frac{1-x}{1+x} = B \frac{2u/B}{2 - 2u/B} = B \frac{u/B}{1 - u/B} = \frac{u}{1 - u/B} = \frac{Bu}{B-u} $$
To find the inverse map, we isolate $u$:
$$ v(B-u) = Bu \implies vB - vu = Bu \implies u(B+v) = vB \implies u = \frac{Bv}{B+v} $$
This algebraic bijection is structurally flawless. Because $u$ is strictly bounded by the polynomial degree constraints $u \le n < B$, the denominator $B-u$ is strictly positive and bounded away from zero. Consequently, the mapping is monotonic, smooth ($C^\infty$), and strictly positive over the entire physical interval $x \in (-1, 1)$. The coordinates are topologically identical.

## 10. Central/Endcap Interface Bounds Verification

A critical foundational claim of the endpoint reduction strategy is that the right endpoint residual cap is localized tightly to $u \in [0, u_\sigma]$, where $u_\sigma$ is strictly bounded by $n$. We will rigorously verify this bound.
The spatial cutoff generated by the Haagerup-Schlichtkrull branch-safe contour theorem is located at $x = \sigma$, where:
$$ \sigma = \frac{s}{s+2n} = \frac{B-n-1}{B+n-1} $$
We map this coordinate interface to the affine variable $u$:
$$ u_\sigma = \frac{B(1-\sigma)}{2} = \frac{B}{2} \left( 1 - \frac{B-n-1}{B+n-1} \right) = \frac{B}{2} \left( \frac{B+n-1 - B + n + 1}{B+n-1} \right) = \frac{B}{2} \left( \frac{2n}{B+n-1} \right) = \frac{nB}{B+n-1} $$
We evaluate the boundedness of this fraction. By explicit definition, $B = n+\alpha+\beta+1$. For $\alpha \ge 0, \beta \ge 0$, we have $B \ge n+1$.
For all $n > 1$, $n-1 > 0$, implying the denominator satisfies $B+n-1 > B$. 
Therefore, the fraction $B/(B+n-1)$ is strictly less than $1$.
$$ u_\sigma = n \left( \frac{B}{B+n-1} \right) < n $$
In the degenerate lower bound case where $n=1$, the interface becomes exactly $u_\sigma = 1 \cdot (B/B) = 1 = n$.
This definitively proves that the entire active evaluation domain is bounded compactly by $n$, eliminating the need to model the infinite Laguerre tail $u \to \infty$ or the outer oscillatory turning points. Claim 2 is proved.

## 11. Primer on Canonical Liouville-Green Geometry

With the exact coordinate transformations established, we must resolve the debate surrounding "amplitude inflation." Standard Liouville-Green (WKB) analysis demonstrates that the relative amplitude of an oscillatory wave envelope traversing a slowly varying potential is uniquely governed by the transformation that reduces the system to canonical invariant form.
For a general self-adjoint differential equation:
$$ (p(x) y')' + q(x) y = 0 $$
The canonical spatial phase coordinate $x_{\text{canon}}$ is explicitly integrated as:
$$ dx_{\text{canon}} = \frac{dx}{p(x)} $$
Under this transformation, the wave equation adopts the exact canonical form $Y'' + K_{\text{inv}}(x_{\text{canon}}) Y = 0$, where the invariant geometric potential is mathematically defined as:
$$ K_{\text{inv}}(x) = p(x)q(x) $$
The leading-order amplitude factor of the highly oscillatory wave envelope is universally proportional to $K_{\text{inv}}(x)^{-1/4}$. Crucially, if two different coordinate systems representing the identical physical system yield the same canonical coordinate $x_{\text{canon}}$ and identical invariant potential $K_{\text{inv}}$, their geometric amplitude scaling profiles are absolutely identical. Changes of variables that leave $K_{\text{inv}}$ unaltered cannot suppress amplitude inflation.

## 12. Coordinate Equivalence Proof

We will now compute the canonical invariant geometries for both the affine $u$ and rational $v$ coordinate systems to test for amplitude attenuation.
For the affine system, the differential is $dx_u = \frac{du}{p_B(u)}$, where $p_B(u) = u(1-u/B)$.
For the rational system, the differential is $dx_v = \frac{dv}{p_{rat}(v)}$, where the principal operator implies $p_{rat}(v) = v$.
We must verify if $dx_v \equiv dx_u$. Using the smooth bijection $v = \frac{Bu}{B-u}$, we differentiate to extract $dv$:
$$ dv = \frac{B(B-u) - Bu(-1)}{(B-u)^2} du = \frac{B^2}{(B-u)^2} du $$
Dividing by $v$:
$$ \frac{dv}{v} = \frac{\frac{B^2}{(B-u)^2} du}{\frac{Bu}{B-u}} = \frac{B^2(B-u)}{Bu(B-u)^2} du = \frac{B}{u(B-u)} du = \frac{du}{u(1-u/B)} = \frac{du}{p_B(u)} $$
This confirms the differential metric is perfectly invariant: $dx_v \equiv dx_u$.

Next, we rigorously equate the invariant potentials. The rational invariant is $\widehat K_B(v) = v \widehat q_B(v)$.
$$ \widehat K_B(v) = v \left[ \frac{\kappa B}{(B+v)^2} - \frac{(\beta v - \alpha B)^2}{4(B+v)^2} \right] = \frac{\kappa B v}{(B+v)^2} - \frac{(\beta v - \alpha B)^2}{4(B+v)^2} $$
We map this back to the affine variable by substituting $v = \frac{Bu}{B-u}$ and noting the denominator shift $B+v = \frac{B^2}{B-u}$:
$$ \frac{\kappa B v}{(B+v)^2} = \frac{\kappa B \frac{Bu}{B-u}}{\frac{B^4}{(B-u)^2}} = \frac{\kappa B^2 u (B-u)}{B^4} = \frac{\kappa}{B^2} u(B-u) = c_B u\left(1-\frac{u}{B}\right) = c_B p_B(u) $$
For the quadratic term:
$$ \beta v - \alpha B = \beta \frac{Bu}{B-u} - \alpha B = \frac{B(\beta u - \alpha(B-u))}{B-u} = \frac{B((\alpha+\beta)u - \alpha B)}{B-u} = \frac{B(su - \alpha B)}{B-u} $$
Squaring and dividing by $4(B+v)^2$:
$$ \frac{\frac{B^2(su-\alpha B)^2}{(B-u)^2}}{4 \frac{B^4}{(B-u)^2}} = \frac{(su-\alpha B)^2}{4B^2} = \frac{((s/B)u - \alpha)^2}{4} = \frac{(r_B u - \alpha)^2}{4} $$
Assembling the mapped elements exactly matches the affine potential:
$$ \widehat K_B(v(u)) = c_B p_B(u) - \frac{(r_B u - \alpha)^2}{4} = p_B(u) \left[ c_B - \frac{(r_B u - \alpha)^2}{4u(1-u/B)} \right] = p_B(u) q_B(u) = K_B(u) $$
This result proves conclusively that the invariant WKB geometries are identical. The rational coordinate $v$ is merely a trivial reparameterization of the identical canonical phase space and offers mathematically zero suppression of geometric amplitude inflation.

## 13. Affine vs Rational WKB Potential

Because $K_B(u) = \widehat K_B(v)$, any constant-frequency approximation relies on a Taylor expansion of the invariant potential near the origin to isolate the Bessel core.
The exact affine invariant is:
$$ K_B(u) = -\frac{\alpha^2}{4} + \Lambda_B u - \Delta_B u^2 $$
where $\Lambda_B = c_B + \frac{\alpha r_B}{2}$ and $\Delta_B = \frac{c_B}{B} + \frac{r_B^2}{4}$, with $r_B = 1 - \frac{n+1}{B}$ and $c_B = n + \frac{r_B}{2}$.
Let us construct the equivalent expansion for the rational invariant $\widehat K_B(v)$ near $v=0$. We substitute the Taylor expansion of the map $u = v(1+v/B)^{-1} = v - \frac{v^2}{B} + \dots$ into $K_B(u)$:
$$ \widehat K_B(v) = K_B \left( v - \frac{v^2}{B} + O(v^3) \right) = -\frac{\alpha^2}{4} + \Lambda_B \left( v - \frac{v^2}{B} \right) - \Delta_B v^2 + O(v^3) $$
$$ = -\frac{\alpha^2}{4} + \Lambda_B v - \left( \Delta_B + \frac{\Lambda_B}{B} \right) v^2 + O(v^3) $$
We define the rational quadratic suppression coefficient:
$$ \widehat \Delta_B = \Delta_B + \frac{\Lambda_B}{B} $$
In the transition strip where $\alpha \sim O(n)$, both $\Delta_B \sim O(1)$ and $\Lambda_B/B \sim n/2n \sim O(1)$. Therefore, $\widehat \Delta_B \sim O(1)$.
In both coordinate systems, the canonical potential deviates from the pure constant-frequency Bessel model ($-\frac{\alpha^2}{4} + \Lambda_B z$) by a quadratic residual error of exactly $O(z^2)$, where the coefficient is $O(1)$. 

## 14. Asymptotic Scaling in the Transition Strip

Before evaluating the Olver variation integral, we must bound the asymptotic scaling of the parameters within the transition strip $\alpha = O(n)$ for the semi-discrete target ($\beta \in \mathbb{N}_0$).
*   $B = n + \alpha + \beta + 1 \sim 2n$.
*   $c_B = n + \frac{n+\alpha}{2B} \approx n + 1/2 \sim n$.
*   $r_B = \frac{\alpha+\beta}{B} \approx 1/2$.
*   $\Lambda_B = c_B + \frac{\alpha r_B}{2} \approx n + n/4 = 5n/4 \sim O(n)$.
*   $\Delta_B = \frac{c_B}{B} + \frac{r_B^2}{4} \approx \frac{n}{2n} + \frac{1/4}{4} \approx 1/2 \sim O(1)$.
*   $\widehat \Delta_B = \Delta_B + \frac{\Lambda_B}{B} \approx 1/2 + \frac{5n/4}{2n} \approx 1/2 + 5/8 \sim O(1)$.

The coefficient $\widehat \Delta_B$ is strictly $O(1)$. The potential experiences a downward parabolic shift relative to the linear Bessel core.

## 15. Olver Error Integral Formalism

With the coordinate illusion resolved, we evaluate the core analytic viability of Track 1: Can a constant-frequency Bessel approximation provide a sharp amplitude bound in the transition strip?
According to Olver's rigorous variation of constants theorem (Asymptotics and Special Functions, Ch 12), mapping a perturbed equation to the exact Bessel normal form generates a uniform relative error bounded by $\exp(\mathcal{E}) - 1$.
The Volterra error control function $\mathcal{E}(u)$ in the pre-turning-point bulk region is strongly dominated by the integral of the invariant perturbation over the canonical spatial momentum:
$$ \mathcal{E}(u_1) \approx \int_0^{u_1} \frac{|\Delta K(u)|}{\sqrt{K_{\text{base}}(u)}} d\xi $$
For the affine coordinate, $d\xi = \frac{du}{p_B(u)} = \frac{du}{u(1-u/B)}$. The Bessel base invariant is $K_{\text{base}}(u) = \Lambda_B u - \frac{\alpha^2}{4}$. The residual perturbation is $|\Delta K(u)| = \Delta_B u^2$.
$$ \mathcal{E}(u_1) \approx \int_0^{u_1} \frac{\Delta_B u^2}{\sqrt{\Lambda_B u - \alpha^2/4}} \frac{du}{u(1-u/B)} $$
To avoid the mathematical singularity at the turning point $u_0 = \alpha^2 / 4\Lambda_B$ exactly, the rigorous formulation shifts the comparison to the pure Bessel core $J_\alpha$, integrating the error weighted against the Bessel envelope. For the region extending out to the first peak $u_1 \gg u_0$, the leading-order scaling of the error integral is heavily dominated by the bulk oscillatory behavior where $\Lambda_B u \gg \alpha^2/4$.
The dominant scaling integral simplifies to:
$$ \mathcal{E}(u_1) \approx \int_0^{u_1} \frac{\Delta_B u^2}{\sqrt{\Lambda_B u}} \frac{du}{u(1-u/B)} $$

## 16. Proof of Linear Asymptotic Volterra Blowup

We now evaluate the asymptotic magnitude of this Volterra integral.
First, we locate the upper limit of integration, the first peak $u_1$. The first peak of $J_\alpha(z)$ for large order $\alpha$ occurs roughly at $z \approx \alpha + O(\alpha^{1/3})$. 
Since our variable mapping is $z = 2\sqrt{\Lambda_B u}$, we have:
$$ 2\sqrt{\Lambda_B u_1} \approx \alpha \implies u_1 \approx \frac{\alpha^2}{4\Lambda_B} $$
In the unresolved KKT transition strip, $\alpha = O(n)$. The base frequency $\Lambda_B \approx n + \alpha/4 \sim O(n)$.
Therefore, the physical location of the first peak scales massively as:
$$ u_1 \sim \frac{O(n^2)}{O(n)} = O(n) $$
Now we evaluate the scaling of the Volterra integral over this immense domain $u \in [0, O(n)]$.
Because $u_1 \le u_\sigma \le n$ and $B \approx 2n$, the denominator $(1-u/B)$ is bounded safely away from zero (roughly $1/2$ at the peak). It does not contribute an asymptote. We extract the constants:
$$ \mathcal{E}(u_1) \approx \frac{\Delta_B}{\sqrt{\Lambda_B}} \int_0^{u_1} \frac{u^2}{u^{1/2}} \frac{du}{u} = \frac{\Delta_B}{\sqrt{\Lambda_B}} \int_0^{u_1} u^{1/2} du = \frac{2 \Delta_B}{3 \sqrt{\Lambda_B}} u_1^{3/2} $$
Substituting the asymptotic scalings $\Delta_B \sim O(1)$, $\Lambda_B \sim O(n)$, and $u_1 \sim O(n)$:
$$ \mathcal{E}(u_1) \sim \frac{O(1)}{\sqrt{O(n)}} \cdot \left( O(n) \right)^{3/2} = \frac{O(n^{3/2})}{O(n^{1/2})} = O(n) $$

The Volterra error integral diverges linearly with $n$. The strict mathematical requirement that $\mathcal{E}(u_1) \ll 1$ fails catastrophically. The relative error bound $e^{\mathcal{E}} - 1$ explodes to astronomical values. It is analytically impossible to use a constant-frequency Bessel approximation to provide a tight uniform bound across the transition strip. Claim 4 is strictly falsified.

## 17. Analysis of the Bessel-Sonin Handoff Mechanics

To circumvent the Volterra divergence at large $u$, A4 proposed a hybrid "Bessel-Sonin handoff" strategy. The logic was to utilize the Bessel approximation only for a tiny interval $0 \le u \le u_h$ where the Volterra error remains small, then evaluate the Sonin functional $S_B(u_h)$ and use its monotonicity ($S_B' \le 0$) to carry the absolute bound out to the peak $u_1$.
The Sonin functional is:
$$ S_B(u) = H_B(u)^2 + \frac{p_B(u) H_B'(u)^2}{q_B(u)} $$
For this functional to be defined, bounded, and monotonically decreasing, we must have $q_B(u) > 0$. Therefore, the handoff point must be chosen strictly in the oscillatory region: $u_h > u_0$.

To bound the amplitude, we must evaluate the Sonin energy using the Bessel approximation for $H_B$ and $H_B'$:
$$ S_B(u_h) \approx (H_{\text{approx}} + \delta_H)^2 + \frac{p_B(u_h)}{q_B(u_h)} (H_{\text{approx}}' + \delta_{H'})^2 $$
Because the analytical error in the Bessel derivative $\delta_{H'}$ is non-zero, dividing it by an arbitrarily small denominator causes the estimated Sonin energy to explode. This creates an inescapable analytical trap.

## 18. The Turning Point Singularity Obstruction

There is a far more devastating topological obstruction to the handoff strategy. Consider the limit of the Sonin functional as $u_h$ approaches $u_0$ from the right.
At the turning point, the denominator is strictly zero: $q_B(u_0) = 0$.
Because $u_0$ is a regular point for the second-order differential equation, the existence and uniqueness theorem guarantees that a non-trivial solution cannot have both $H(u_0)=0$ and $H'(u_0)=0$. Since the first peak occurs at $u_1 > u_0$, the derivative $H'(u_0)$ is strictly non-zero and positive.
Therefore, the derivative energy term evaluates to:
$$ \lim_{u_h \to u_0^+} \frac{p_B(u_h) H'(u_h)^2}{q_B(u_h)} = +\infty $$
This mathematically proves that the Sonin functional possesses a strict positive singularity at the turning point.

## 19. Failure Modes in Bounding the Derivative Energy

If we attempt to execute the handoff at $u_h = u_0 + \epsilon$, the value of $S_B(u_h)$ is arbitrarily large and divergent. It produces a useless bound. To secure a tight, realistic bound, $u_h$ must be chosen far away from the singularity, deep inside the oscillatory zone near $u_1$. However, we have already rigorously proven in Section 16 that the Bessel Volterra error diverges exponentially as we approach $u_1$. 
The two analytic constraints are mutually exclusive: avoiding the Sonin singularity requires moving deep into the Volterra blowup zone, and avoiding the Volterra blowup requires evaluating the bound exactly at the Sonin singularity. The Bessel-Sonin handoff is completely obstructed. Claim 5 is falsified.

## 20. Exact Algebraic Proof of Laguerre Bridge Frequency Drift

A major fallback proposal (Track 3) suggests circumventing the finite perturbation issues by using the global Laguerre target certificate and establishing a direct finite-$\beta$ perturbation bridge. This relies on the assumption that the finite Jacobi endpoint ODE behaves identically to the Laguerre ODE as a leading-order approximation. We must test this assumption.

The Laguerre invariant equation relies on the fixed base frequency:
$$ \Lambda_\infty = n + \frac{\alpha+1}{2} $$
The finite-$B$ base frequency, as derived in Section 7, is:
$$ \Lambda_B = c_B + \frac{\alpha r_B}{2} $$
Let us explicitly compute the frequency difference $\Lambda_\infty - \Lambda_B$.
Substitute the definitions $c_B = n + \frac{r_B}{2}$ and $r_B = 1 - \frac{n+1}{B}$:
$$ \Lambda_B = \left( n + \frac{r_B}{2} \right) + \frac{\alpha r_B}{2} = n + \frac{\alpha+1}{2} r_B $$
Subtract this from the Laguerre frequency:
$$ \Lambda_\infty - \Lambda_B = \left( n + \frac{\alpha+1}{2} \right) - \left( n + \frac{\alpha+1}{2} r_B \right) = \frac{\alpha+1}{2} (1 - r_B) $$
Substitute $1 - r_B = \frac{n+1}{B}$:
$$ \Lambda_\infty - \Lambda_B = \frac{(\alpha+1)(n+1)}{2B} $$
This exact identity defines the absolute macroscopic phase drift between the two systems. It is not zero, nor is it negligible for finite parameters.

## 21. Impact of Phase Drift on the Semi-Discrete Case

We must evaluate the impact of this exact frequency drift on the most vital region of the parameter space: the semi-discrete KKT target where $\alpha \ge 0$ and $\beta=0$.
When $\beta=0$, the total mass parameter is exactly $B = n+\alpha+1$.
The frequency difference evaluates directly to:
$$ \Lambda_\infty - \Lambda_B = \frac{(\alpha+1)(n+1)}{2(n+\alpha+1)} $$
In the transition strip where $\alpha \sim n$, both the numerator and the denominator are dominated by factors of $n$. We evaluate the asymptotic limit:
$$ \Lambda_\infty - \Lambda_B \sim \frac{O(n) \cdot O(n)}{O(n)} = O(n) $$
The base frequencies of the two differential equations differ by an extensive $O(n)$ magnitude.
Inside the argument of the highly oscillatory Bessel function, this frequency difference translates into a macroscopic phase deviation. The accumulated phase error at the first peak $u_1 \sim n$ scales as:
$$ \text{Phase Error} \approx \int_0^{u_1} \frac{\Lambda_\infty - \Lambda_B}{\sqrt{\Lambda_\infty / u}} du \approx \frac{O(n)}{O(n^{1/2})} u_1^{3/2} \approx \frac{O(n)}{O(n^{1/2})} O(n^{3/2}) = O(n^2) $$
Two wave functions whose phase arguments differ by $O(n^2)$ radians are completely, chaotically decorrelated. Pointwise subtraction $|H_B(u) - \ell_n^{(\alpha)}(u)|$ will yield a difference equal to the full combined amplitude of the waves themselves. It completely obliterates any strict $O(1/n)$ perturbation margin. The direct finite-perturbation bridge fails catastrophically for the semi-discrete target. Claim 6 is falsified.

## 22. Certification of the Endpoint Monotonicity Lemma

A cornerstone of the Sonin amplitude reduction is the claim that the derivative of the invariant product $K_B(u) = p_B(u)q_B(u)$ is strictly bounded below by $1/4$ over the entire endpoint cap.
The derivative of the potential is clearly linear:
$$ K_B'(u) = \Lambda_B - 2\Delta_B u $$
Since $\Delta_B > 0$, $K_B'(u)$ is a strictly decreasing linear function. The absolute minimum of this derivative on the endpoint cap $[0, u_\sigma]$ must occur exactly at the right boundary $u = u_\sigma$.
First, we execute a rigorous proof of the profound algebraic identity: $4\Delta_B u_\sigma = n \left(1 + \frac{n+1}{B}\right)$.
$$ \Delta_B = \frac{c_B}{B} + \frac{r_B^2}{4} = \frac{n + r_B/2}{B} + \frac{r_B^2}{4} = \frac{4n/B + 2r_B/B + r_B^2}{4} $$
Substitute $r_B = \frac{B-n-1}{B}$:
$$ \Delta_B = \frac{1}{4} \left[ \frac{4n}{B} + \frac{2(B-n-1)}{B^2} + \frac{(B-n-1)^2}{B^2} \right] $$
Bring the first term to a common denominator $B^2$:
$$ \text{Numerator} = 4nB + 2B - 2n - 2 + B^2 - 2B(n+1) + (n+1)^2 $$
The numerator perfectly collapses to $B^2 + 2nB + n^2 - 1 = (B+n)^2 - 1 = (B+n-1)(B+n+1)$.
Therefore, $4\Delta_B = \frac{(B+n-1)(B+n+1)}{B^2}$.
Now multiply by $u_\sigma = \frac{nB}{B+n-1}$:
$$ 4\Delta_B u_\sigma = \left( \frac{(B+n-1)(B+n+1)}{B^2} \right) \left( \frac{nB}{B+n-1} \right) = \frac{n(B+n+1)}{B} = n \left( 1 + \frac{n+1}{B} \right) $$
This algebraic identity is mathematically flawless.
Now, evaluate the full derivative at $u_\sigma$:
$$ K_B'(u_\sigma) = \Lambda_B - 2\Delta_B u_\sigma = \Lambda_B - \frac{n}{2}\left(1 + \frac{n+1}{B}\right) $$
Recall $\Lambda_B = c_B + \frac{\alpha r_B}{2} = n + \frac{\alpha+1}{2} \left( 1 - \frac{n+1}{B} \right)$.
$$ K_B'(u_\sigma) = n + \frac{\alpha+1}{2} - \frac{(\alpha+1)(n+1)}{2B} - \frac{n}{2} - \frac{n(n+1)}{2B} $$
$$ = \frac{n+\alpha+1}{2} - \frac{(n+1)(n+\alpha+1)}{2B} = \frac{n+\alpha+1}{2} \left( 1 - \frac{n+1}{B} \right) = \frac{(n+\alpha+1)(\alpha+\beta)}{2B} $$
This factorization is completely exact.
We seek the global minimum with respect to $\beta \ge 0$. The derivative with respect to $\beta$ is strictly positive. Thus, the minimum occurs at $\beta=0$.
At $\beta=0$, $B = n+\alpha+1$.
$$ K_B'(u_\sigma) \ge \frac{(n+\alpha+1)(\alpha)}{2(n+\alpha+1)} = \frac{\alpha}{2} $$
In the residual transition strip, we have explicitly cleared $\alpha \le 1/2$. Thus, for $\alpha \ge 1/2$:
$$ K_B'(u_\sigma) \ge \frac{1/2}{2} = \frac{1}{4} $$
Claim 3 is rigorously Proved. Because $K_B'(u) \ge 1/4 > 0$ everywhere on the cap, $K_B(u)$ is strictly monotonic, satisfying the necessary conditions for Sonin envelope bounds.

## 23. Certification of the Forbidden-Zone Ascent Lemma

To solidify the Sonin reduction, we must mathematically eliminate the possibility of a pathological local maximum occurring before the classical turning point $u_0$. The classically forbidden zone is defined as $(0, u_0)$, where the potential $q_B(u) < 0$.
The self-adjoint endpoint equation is strictly $(p_B H_B')' = -q_B H_B$.
From the Frobenius initialization at the regular singular point $u=0$, the solution behaves asymptotically as $H_B(u) \sim A_{n,\alpha,B} u^{\alpha/2}$. The normalization constant $A_{n,\alpha,B}$ is strictly positive. Since $\alpha > 0$ in the transition strip, the function is strictly positive and its derivative is strictly positive in the infinitesimal neighborhood of $u=0^+$.
We proceed by contradiction. Assume that $H_B(u)$ possesses a local maximum at some interior point $u_{max} \in (0, u_0)$.
By the fundamental properties of differentiable local extrema, we require $H_B'(u_{max}) = 0$ and $H_B''(u_{max}) \le 0$.
Because $u_{max}$ is the *first* extremum and the function started positive, $H_B(u_{max})$ must be strictly positive.
We evaluate the ODE exactly at $u_{max}$:
$$ p_B(u_{max}) H_B''(u_{max}) + p_B'(u_{max}) H_B'(u_{max}) = -q_B(u_{max}) H_B(u_{max}) $$
Substituting $H_B'(u_{max}) = 0$ collapses the kinetic term:
$$ p_B(u_{max}) H_B''(u_{max}) = -q_B(u_{max}) H_B(u_{max}) $$
Let us analyze the strict signs of the remaining terms: 
1. $p_B(u) = u(1-u/B) > 0$ for all $u \in (0, u_\sigma]$. Thus $p_B(u_{max}) > 0$.
2. We are in the forbidden zone, so $q_B(u_{max}) < 0$, meaning $-q_B(u_{max}) > 0$.
3. We established $H_B(u_{max}) > 0$.
The right hand side of the equation is strictly positive ($>0$).
Therefore, the left hand side must be strictly positive: $p_B(u_{max}) H_B''(u_{max}) > 0$.
Since $p_B(u_{max}) > 0$, this requires $H_B''(u_{max}) > 0$.
However, the condition for a local maximum strictly requires $H_B''(u_{max}) \le 0$. 
This is a mathematically irreconcilable contradiction.
Therefore, $H_B(u) > 0$ and $H_B'(u) > 0$ strictly for all $u \in (0, u_0]$. Claim 4 is rigorously Proved. The global maximum is geometrically confined to the first oscillatory lobe.

## 24. Divergent Alternative: Szegő Uniform Variable-Frequency Mapping

Because constant-frequency WKB theory is completely destroyed by the $O(n)$ Volterra blowup, we must explore divergent asymptotic methodologies. The most mathematically sound alternative is to construct a piecemeal matched asymptotic expansion or deploy a fully dynamic Liouville-Green transformation $\zeta(u)$ defined by the exact differential mapping:
$$ \left( \frac{d\zeta}{du} \right)^2 \left( \frac{1}{\zeta} - \frac{\alpha^2}{4\zeta^2} \right) = \frac{K_B(u)}{u^2} $$
This condition forces the new phase coordinate $\zeta(u)$ to locally bend and warp in order to absorb the quadratic deceleration $\Delta_B u^2$ natively. By matching the turning points exactly, the transformation remains regular. Because the mapping is exact, the primary Volterra phase-drift error vanishes entirely.

## 25. Divergent Alternative: Constructing the Schwarzian Derivative

Under the Szegő transformation, the residual error is no longer driven by the difference in base potentials, but is governed strictly by the Schwarzian derivative of the mapping coordinate:
$$ \{ \zeta, u \} = \frac{\zeta'''}{\zeta'} - \frac{3}{2} \left( \frac{\zeta''}{\zeta'} \right)^2 $$
For classical orthogonal polynomials, Szegő theory demonstrates that this Schwarzian term suppresses the integrated error to $O(1/n^2)$, ensuring the Volterra integral remains strongly bounded and convergent. The analytical difficulty now shifts entirely to constructing the exact algebraic form of this Schwarzian for the finite-$B$ potential and explicitly bounding its magnitude over the cap $[0, u_1]$. This is mathematically viable but extremely labor-intensive.

## 26. Divergent Alternative: Modified Prüfer Phase-Amplitude System

An entirely distinct, second exploratory path bypasses special functions completely by relying on exact dynamic Prüfer variables to trace the amplitude envelope directly.
We define the coupled amplitude and phase variables:
$$ H(u) = \frac{r(u)}{\sqrt[4]{K_B(u)}} \sin \theta(u), \qquad p_B(u)H'(u) = r(u)\sqrt[4]{K_B(u)} \cos \theta(u) $$
Differentiating the amplitude constraint $r(u)$ yields an exact first-order evolution equation free of unapproximated residuals:
$$ \frac{r'(u)}{r(u)} = \frac{K_B'(u)}{4 K_B(u)} \cos(2\theta(u)) $$
The wave envelope amplification is completely governed by the integral of this function from the turning point. Crucially, the highly oscillatory term $\cos(2\theta(u))$ provides massive dynamic attenuation. By applying strict Riemann-Lebesgue integration by parts, the oscillation of the phase $\theta \sim n u$ suppresses the cumulative integral by a distinct factor of $1/n$. This produces an immediate $O(1/n)$ asymptotic envelope bound. A precise connection formula at the Airy boundary layer near $u_0$ is necessary to complete this integration.

## 27. Divergent Alternative: Strict Interval Arithmetic Architecture

Given the immense complexity of the analytic Schwarzian bounds, the most pragmatic path to closing the finite transition strip is to rely on strict computer-assisted interval arithmetic up to a threshold degree $N_0 \approx 200$.
Because the parameter space can be compactified via $\theta = (n+\alpha+1)/B \in [0,1]$, the domain is absolutely bounded. The process requires:
1. Representing the polynomial exactly in its stable hypergeometric basis ${}_2F_1$.
2. Constructing Taylor models to enclose the function over small rational cells in the 3D space $(\alpha, \theta, u)$.
3. Deploying exact interval subresultant chains or interval Newton operators $N(U) = m - H'(m)/H''(U)$ to rigorously isolate the critical points without relying on floating-point sampling.
4. Using Ball Arithmetic (e.g., the Arb library) to evaluate the rigorous upper bound of $|H(u_1)|^4 - T^4 \le 0$, absorbing all possible round-off errors.

## 28. Counterexample and Obstruction Search

The explicit $O(n)$ evaluation of the Volterra error integral provides a rigorous mathematical counterexample to any analytical claim that a constant-frequency mapping (whether affine or rational) yields a bounded $O(1/n)$ error term. The exact frequency drift identity $\Lambda_\infty - \Lambda_B = O(n)$ serves as a strict mathematical counterexample to any proposal asserting that the finite-$B$ equation acts as a negligible perturbation of the Laguerre limit across the entire semi-discrete domain. These explicit limits actively falsify Track 1 and Track 3.

To physically visualize this obstruction, one can perform a numerical test. Fix parameters deep in the transition strip: $n=100, \alpha=50, \beta=0$. The base frequency $\Lambda_B \approx 100$. The first peak location $u_1 \approx 6.25$. Evaluate the Olver variation integral $V(u_1) = \int_0^{u_1} \frac{\Delta_B u^2}{\sqrt{\Lambda_B u}} du$. The integral evaluates to approximately $V \approx 0.5 \times (1/10) \times (6.25)^{3/2} \approx 0.78$. The relative error multiplier is $\exp(0.78) - 1 \approx 1.18$. This means the constant-frequency Bessel approximation possesses a $118\%$ relative error at the first peak. The bound is utterly destroyed, completely failing the sharp KKT requirement.

## 29. Potential Gaps

The obstruction findings heavily depend on the analytic limits as $n \to \infty$. The primary gap in this negative result is the specification of exactly when the asymptotic scaling becomes dominant. For small $n$, the $O(n)$ Volterra error may be numerically small enough that a brute-force bound still holds due to large absolute constants in the denominators. Furthermore, bounding the Schwarzian derivative (as proposed in the divergent alternatives below) remains an unresolved analytical gap that requires immense symbolic calculation, making the pure mathematical proof route highly complex. Lastly, interval arithmetic faces a potential gap if the required polynomial precision exceeds floating-point capability before reaching the analytic closure threshold $N_0$.

## 30. Useful Lemmas

**Lemma L13.A: Rational-Affine Canonical Equivalence**
[Proved]. The mapping $v = B(1-x)/(1+x)$ exactly produces $v \widehat q_B(v) = p_B(u) q_B(u) = K_B(u)$. Both coordinates share the identical canonical Liouville-Green geometry $x = \ln v$. They possess identical geometric amplitude inflation.

**Lemma L13.B: Constant-Frequency Volterra Blowup**
[Proved]. For any coordinate preserving the local base frequency $\Lambda_B$, the residual quadratic suppression evaluates to $O(n^2)$ at the first peak in the $\alpha=O(n)$ strip, causing the Olver/Volterra error integral to diverge linearly as $O(n)$.

**Lemma L13.C: Laguerre Bridge Frequency Drift**
[Proved]. For the semi-discrete target $\beta \in \mathbb{N}_0$, the effective frequency of the finite-$B$ equation differs from the Laguerre limit by exactly $\Lambda_\infty - \Lambda_B = \frac{(n+1)(\alpha+1)}{2B} = O(n)$, causing finite-perturbation bounds to fail exponentially.

**Lemma L13.D: Sonin Turning Point Singularity**
[Proved]. The generalized endpoint Sonin functional $S_B(u) = H^2 + p_B H'^2 / q_B$ possesses an unremovable geometric pole identically at the classical turning point $q_B(u_0)=0$, rendering localized derivative error handoffs unconditionally divergent.

## 31. What Should Be Tested Next

1. A3 must algebraically verify the identity $\widehat K_B(v) = K_B(u)$ and $\Lambda_\infty - \Lambda_B = \frac{(n+1)(\alpha+1)}{2B}$.
2. A1 must abandon constant-frequency models and the naive Laguerre bridge, reformulating the amplitude certificate using either the full Szegő uniform mapping or an extended computational interval certificate.
3. A4 must construct the exact Schwarzian derivative for the Szegő map to determine if it remains analytically bounded.

## 32. Verification Plan

To safely advance the workflow past these newly discovered structural obstructions, the panel must execute the following verifications:
1.  **Symbolic Audit (A3)**: A3 must independently re-execute the algebraic verification of the canonical invariant identity $v \widehat q_B(v) = p_B(u) q_B(u)$ and the exact frequency drift identity $\Lambda_\infty - \Lambda_B = \frac{(n+1)(\alpha+1)}{2B}$ to officially certify the death of Track 1 and Track 3.
2.  **Computational Volterra Test (A4)**: A4 must design a numerical integration script to evaluate the exact Olver error bound $\int_0^{u_1} \frac{|\Delta K|}{\sqrt{\Lambda_B u}} \frac{du}{u}$ for sampled parameters $n \in [10, 200]$ with $\alpha = n/2$ to empirically confirm the linear $O(n)$ divergence predicted by this audit.
3.  **Interval Architecture Setup (A4)**: A4 must begin drafting the C++/Arb code skeleton required for the robust interval enclosure of the hypergeometric series inside the compactified $(\alpha, \theta)$ boxes, specifically building the interval Newton logic.

## 33. Research Strategy

The panel must immediately halt all efforts to construct constant-frequency Bessel majorants or direct Laguerre-limit bridges. These routes are irreparably obstructed by rigorous $O(n)$ scaling failures. The research strategy must split exclusively into two distinct, high-viability tracks:
1. **Analytic Track (A1)**: Formulate the exact Szegő uniform variable-frequency mapping to neutralize the phase drift, focusing entirely on constructing and bounding the required Schwarzian derivative.
2. **Computational Track (A4)**: Prepare the strict interval arithmetic architecture to clear the transition strip for finite $n$, acknowledging that an analytic large-$n$ closure via the Schwarzian may take substantial time to execute, making computation the fastest path to resolving the KKT conjecture for $n \le 200$.

Confidence:
Rational coordinate algebra: 1.00
Canonical equivalence and inflation illusion: 1.00
$O(n)$ Volterra error blowup: 0.90
Laguerre bridge failure for $\beta=0$: 0.90
Overall Confidence: 0.90

--- OUTPUT FROM A3 ---
Summary:
I have performed a thorough independent algebraic audit of the endpoint‑cap reduction. The affine‑$u$ ODE, the cap length $u_\sigma$, the quadratic product $K_B$ and the derivative $K_B'(u_\sigma)$ are all re‑verified. The monotonicity lower bound is sharpened to $K_B'(u)\ge \alpha/2$ on the cap, proving $\ge 1/4$ exactly in the residual strip $\alpha\ge 1/2$. The forbidden‑zone ascent lemma is proved rigorously for $\alpha>0$ using only the sign of the ODE. The rational‑coordinate equation $(vH_v')'+\widehat q_B(v)H=0$ is algebraically verified; its product $\widehat K_B(v)=v\widehat q_B(v)$ is shown to be the original $K_B$ composed with the increasing map $u\mapsto v$, so monotonicity is preserved. The Bessel normalisation $M_{n,\alpha,B}$ is re‑derived and matches the judge’s simplified form; its leading‑order behaviour in $v$‑coordinates is identical. The first‑lobe reduction (maximum at $u_1$) is now conditionally certified after the forbidden‑zone lemma, leaving the amplitude estimate (G12.1) as the only unproven core piece.

Main claim or direction:
The algebraic infrastructure of the endpoint‑cap reduction is fully certified. The main remaining gap is the first‑lobe amplitude bound. The rational‑coordinate formulation may simplify Liouville–Green estimates, but the affine coordinate already suffices for the Sonin reduction. The forbidden‑zone ascent is rigorous; the cap Sonin functional will propagate any first‑lobe bound through the whole cap.

Detailed reasoning:

1. **Affine $u$ endpoint ODE – full re‑derivation**  
   The normalised weighted Jacobi function
   \[
   g_n^{(\alpha,\beta)}(x)=C_{n,\alpha,\beta}\Bigl(\frac{1-x}{2}\Bigr)^{\alpha/2}\Bigl(\frac{1+x}{2}\Bigr)^{\beta/2}P_n^{(\alpha,\beta)}(x)
   \]
   satisfies the self‑adjoint equation
   \[
   \bigl(A(x)g'\bigr)'+\frac{F(x)}{A(x)}g=0,\qquad A(x)=1-x^2,
   \]
   \[
   F(x)=\kappa(1-x^2)-\frac14\bigl((\beta-\alpha)-(\alpha+\beta)x\bigr)^2,
   \qquad \kappa=n(n+\alpha+\beta+1)+\frac{\alpha+\beta}{2}.
   \]
   Set
   \[
   B=n+\alpha+\beta+1,\qquad u=\frac{B(1-x)}{2}.
   \]
   Hence $x=1-\dfrac{2u}{B}$, $\displaystyle\frac{dx}{du}=-\frac{2}{B}$.  Define $H(u)=g\bigl(1-\frac{2u}{B}\bigr)$.  
   Transforming the ODE:
   \[
   \frac{d}{dx}\Bigl(A(x)\frac{dg}{dx}\Bigr)
   =\frac{du}{dx}\frac{d}{du}\Bigl(A(x)\frac{du}{dx}H'(u)\Bigr)
   =-\frac{B}{2}\frac{d}{du}\Bigl(A(x)\Bigl(-\frac{2}{B}\Bigr)H'(u)\Bigr)
   =\frac{d}{du}\bigl(A(x)H'(u)\bigr).
   \]
   (The factors $(-B/2)\cdot(-2/B)=1$, so no extra constant.)  Now
   \[
   A(x)=1-\Bigl(1-\frac{2u}{B}\Bigr)^2
        =\frac{4u}{B}\Bigl(1-\frac{u}{B}\Bigr)=\frac{4}{B}\,p_B(u),
   \]
   where $p_B(u)=u\bigl(1-\frac{u}{B}\bigr)$.  Consequently the ODE becomes
   \[
   \frac{d}{du}\Bigl(\frac{4}{B}p_B(u)H'(u)\Bigr)
   +\frac{F(x)}{A(x)}H(u)=0 .
   \]
   Dividing by $4/B$ (i.e. multiplying by $B/4$) gives
   \[
   \bigl(p_B(u)H'(u)\bigr)'+\frac{B}{4}\frac{F(x)}{A(x)}H(u)=0 .
   \]
   Now compute $\frac{B}{4}\frac{F(x)}{A(x)}$ in terms of $u$:
   \[
   \frac{B}{4}\frac{F(x)}{A(x)}
   =\frac{B}{4}\Bigl(\kappa-\frac{((\beta-\alpha)-(\alpha+\beta)x)^2}{4(1-x^2)}\Bigr).
   \]
   Using $x=1-2u/B$,
   \[
   1-x^2=\frac{4u}{B}\Bigl(1-\frac{u}{B}\Bigr),
   \]
   \[
   (\beta-\alpha)-(\alpha+\beta)x
   =(\beta-\alpha)-(\alpha+\beta)\Bigl(1-\frac{2u}{B}\Bigr)
   =-2\alpha+\frac{2(\alpha+\beta)u}{B}
   =\frac{2}{B}\bigl((\alpha+\beta)u-\alpha B\bigr).
   \]
   Hence
   \[
   \frac{\bigl((\beta-\alpha)-(\alpha+\beta)x\bigr)^2}{4(1-x^2)}
   =\frac{\frac{4}{B^2}\bigl((\alpha+\beta)u-\alpha B\bigr)^2}
          {4\,\frac{4u}{B}(1-u/B)}
   =\frac{\bigl(r_Bu-\alpha\bigr)^2}{4B\,u(1-u/B)},
   \]
   where $r_B=\frac{\alpha+\beta}{B}=1-\frac{n+1}{B}$.
   Therefore
   \[
   \frac{B}{4}\frac{F}{A}
   =\frac{B}{4}\kappa-\frac{B}{4}\frac{\bigl(r_Bu-\alpha\bigr)^2}{4B\,u(1-u/B)}
   =\frac{\kappa B}{4}-\frac{\bigl(r_Bu-\alpha\bigr)^2}{16\,u(1-u/B)} .
   \]
   Recalling $\kappa B = \bigl(n(n+\alpha+\beta+1)+\frac{\alpha+\beta}{2}\bigr)B = nB+\frac{\alpha+\beta}{2}$, we must be careful: $\kappa = nB + \frac{s}{2}$ with $s=\alpha+\beta$.  Hence $\frac{\kappa B}{4}= \frac{nB}{4}+\frac{s}{8}$.  This does **not** directly simplify to the compact $c_B$ form.  The correct path, preserving all factors, is to keep the ODE in the self‑adjoint form after multiplying by $B/4$ and then compare with the known result from the judge’s bootstrap.  Actually the judge’s derivation gave
   \[
   q_B(u)=\frac{1}{B}\frac{F(x)}{A(x)},
   \]
   so we must check the factor: earlier I had $(B^2/4)$ from the chain rule but then a cancellation led to $(1/B)$ factor.  Let’s re‑do the chain rule carefully.

   Original ODE: $\frac{d}{dx}\bigl(A(x)g'(x)\bigr) + \frac{F(x)}{A(x)}g(x)=0$.
   With $x=\phi(u)=1-2u/B$, $\phi'(u)=-2/B$.  For any $v(u)=g(\phi(u))$,
   \[
   g'(x)=v'(u)\frac{du}{dx}=v'(u)\frac{1}{\phi'(u)} = -\frac{B}{2}v'(u).
   \]
   Then
   \[
   A(x)g'(x)=A(\phi(u))\Bigl(-\frac{B}{2}\Bigr)v'(u).
   \]
   Now differentiate with respect to $x$:
   \[
   \frac{d}{dx}\bigl(A g'\bigr)
   =\frac{d}{du}\bigl(A(\phi(u))(-\tfrac{B}{2})v'(u)\bigr)\cdot\frac{du}{dx}
   =\frac{d}{du}\bigl(A(\phi(u))(-\tfrac{B}{2})v'(u)\bigr)\cdot\Bigl(-\frac{B}{2}\Bigr).
   \]
   So
   \[
   \frac{d}{dx}\bigl(A g'\bigr)
   =\frac{B^2}{4}\,\frac{d}{du}\bigl(A(\phi(u))v'(u)\bigr).
   \]
   Thus the ODE becomes
   \[
   \frac{B^2}{4}\frac{d}{du}\bigl(A(\phi(u))v'(u)\bigr) + \frac{F}{A}\,v = 0.
   \]
   Multiply by $4/B^2$:
   \[
   \frac{d}{du}\bigl(A(\phi(u))v'(u)\bigr) + \frac{4}{B^2}\frac{F}{A}\,v = 0.
   \]
   Now $A(\phi(u)) = \frac{4}{B}p_B(u)$ exactly.  Hence
   \[
   \frac{d}{du}\Bigl(\frac{4}{B}p_B(u)v'(u)\Bigr) + \frac{4}{B^2}\frac{F}{A}\,v = 0.
   \]
   Divide by $4/B$ (multiply by $B/4$):
   \[
   \frac{d}{du}\bigl(p_B(u)v'(u)\bigr) + \frac{1}{B}\frac{F}{A}\,v = 0.
   \]
   So the coefficient of $v$ is $\frac{1}{B}\frac{F}{A}$.  Now compute
   \[
   \frac{F}{A}= \kappa - \frac{\bigl((\beta-\alpha)-(\alpha+\beta)x\bigr)^2}{4(1-x^2)} .
   \]
   As above,
   \[
   \frac{\bigl((\beta-\alpha)-(\alpha+\beta)x\bigr)^2}{4(1-x^2)}
   =\frac{(s u - \alpha B)^2}{4B\,u(1-u/B)}
   =\frac{(r_B u - \alpha)^2}{4 u(1-u/B)}\cdot\frac{1}{B}.
   \]
   Therefore
   \[
   \frac{1}{B}\frac{F}{A}
   =\frac{\kappa}{B} - \frac{(r_B u - \alpha)^2}{4B^2 u(1-u/B)}.
   \]
   This is **not** yet the desired $q_B$ because there is an extra $1/B$ in the denominator of the second term.  However, note that $q_B$ in the judge’s statement is $c_B - \frac{(r_B u - \alpha)^2}{4u(1-u/B)}$, i.e. without the $1/B^2$.  The mismatch reveals a mistake in my earlier verification.  Let’s check the judge’s bootstrap synthesis again: it stated
   \[
   q_B(u) = c_B - \frac{(r_Bu-\alpha)^2}{4u(1-u/B)},
   \qquad
   c_B = n + \frac{s}{2B}.
   \]
   And that $q_B$ is the coefficient in $(p_B H')' + q_B H =0$.  Did we miss a factor?  Let’s compute directly using the known expression for $p_B$ and $q_B$ from the judge’s derivation.  The judge wrote:
   \[
   p_B(u)=u(1-u/B),\qquad
   q_B(u)=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}.
   \]
   But from our transformation we got
   \[
   \frac{1}{B}\frac{F}{A} = \frac{\kappa}{B} - \frac{(r_Bu-\alpha)^2}{4 B^2 u(1-u/B)}.
   \]
   These two differ if $\kappa/B \neq c_B$ and the second terms differ by a factor $1/B$.  Let’s compute $\kappa$ explicitly:
   \[
   \kappa = n(n+s+1)+\frac{s}{2} = n(B) + \frac{s}{2},
   \]
   so $\frac{\kappa}{B}= n + \frac{s}{2B} = c_B$ exactly!  So the first term matches.  For the second term, we have $\frac{(r_Bu-\alpha)^2}{4 B^2 u(1-u/B)}$ versus the judge’s $\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}$.  There is an extra $1/B$ in the denominator.  That means the judge’s $q_B$ is actually $B$ times larger than our transformed coefficient.  That would be a significant algebraic error in the judge’s formula.

   Let’s verify with a concrete numeric example.  Take $n=1,\alpha=1/2,\beta=0$, so $B=2.5$, $s=0.5$, $r_B = s/B = 0.2$, $c_B = 1 + 0.2/2 = 1.1$, $p_B(u)=u(1-u/2.5)$.  The judge’s $q_B$ would be $1.1 - \frac{(0.2u - 0.5)^2}{4u(1-u/2.5)}$.  Does that satisfy the ODE?  Let’s test at a point, say $u=0.5$.  $p_B(0.5)=0.5(1-0.2)=0.4$, $q_B(0.5) = 1.1 - (0.1-0.5)^2/(4*0.5*0.8) = 1.1 - 0.16/(1.6) = 1.1 - 0.1 = 1.0$.  The product $K_B=0.4*1.0=0.4$.  Our derived expression for $\frac{1}{B}\frac{F}{A}$ gives: $\frac{\kappa}{B}=1.1$, second term = $(0.2*0.5-0.5)^2/(4*2.5^2*0.5*0.8)$. Actually compute: $r_B u-\alpha = 0.1-0.5=-0.4$, squared=0.16.  Denominator $4 B^2 u(1-u/B) = 4*6.25*0.5*0.8 = 4*6.25*0.4 = 10$.  So second term = 0.16/10 = 0.016.  Thus our $q_B$ would be $1.1 - 0.016 = 1.084$.  So they differ by a factor of about 100 in the second term? Actually $1.084$ vs $1.0$, so our $q_B$ is larger.  Which one is correct?  The ODE must be satisfied exactly by the transformed function.  Let’s check directly using the known expression for $H$?  We can compute $H(u)$ from the definition: $H(u)=g(1-2u/B)$ with exact $g$.  The exact $g$ for $n=1,\alpha=0.5,\beta=0$:
   $P_1^{(\alpha,\beta)}(x) = \frac{\alpha+1}{2} + \frac{\alpha+\beta+2}{2}x$? The standard Jacobi polynomial $P_1^{(\alpha,\beta)}(x) = \frac12\bigl( \alpha-\beta + (\alpha+\beta+2)x \bigr)$.  So $P_1^{(0.5,0)}(x) = \frac12(0.5 + 2.5 x) = 0.25 + 1.25 x$.  Then $g(x) = C (1-x)^{0.25} (1+x)^0 P(x)$ with $C = \sqrt{ \Gamma(2)\Gamma(3)/(\Gamma(2.5)\Gamma(2)) }$? Not important.
   Instead of numeric verification, let's locate the error in the algebraic derivation of the judge's formula.  The judge claimed in the bootstrap synthesis:
   "The exact endpoint ODE ... with 
   $q_B(u)=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}$."
   I suspect the judge might have used a different normalisation or a different scaling.  In the reading packet, the equation is written as $(p_BH')'+q_BH=0$ with $p_B=u(1-u/B)$ and $q_B$ as above.  But my transformation gave coefficient $\frac{1}{B}\frac{F}{A}$ which is $\frac{\kappa}{B} - \frac{(r_Bu-\alpha)^2}{4 B^2 u(1-u/B)}$.  The latter has an extra $B$ in the denominator of the second term, so the judge's $q_B$ is $B$ times too large for that term.  Let's check the judge's derivation in the bootstrap: they wrote
   "q_B(u) = c_B - (r_B u - α)^2/(4 u (1-u/B))" and earlier they said "the exact endpoint ODE ... (p_BH')'+q_BH=0".  They did not show the transformation steps, but they probably started from the normalized endpoint ODE derived from A1-Strategy, where they might have defined $p_B$ and $q_B$ differently, e.g., $p_B$ might be something else.  In A1-Strategy, the equation given is:
   \[
   \bigl(p_B(u)H'(u)\bigr)' + q_B(u)H(u)=0,
   \]
   with $p_B(u)=u(1-u/B)$ and $q_B(u)=c_B - \frac{(r_Bu-\alpha)^2}{4u(1-u/B)}$.  So that is the claimed form.

   Let’s reconcile.  Maybe I made a mistake in the chain rule when deriving the transformed ODE.  Let's do it more carefully using the self-adjoint operator transformation.  Starting from
   \[
   \frac{d}{dx}\bigl(A(x)g'(x)\bigr) + \frac{F}{A}g=0,
   \]
   and the change of variable $x=\phi(u)$ with $\phi(u)=1-2u/B$, $\phi'(u)=-2/B$.  Then for any $v(u)=g(\phi(u))$, we have
   \[
   g'(x) = v'(u) \frac{du}{dx} = v'(u) \frac{1}{\phi'(u)} = -\frac{B}{2}v'(u).
   \]
   So $A(x)g'(x) = A(\phi(u))\cdot(-\frac{B}{2})v'(u)$.  Let $F(u) = A(\phi(u))v'(u)$.  Then $A(x)g'(x) = -\frac{B}{2}F(u)$.  Differentiating with respect to $x$:
   \[
   \frac{d}{dx}[A(x)g'(x)] = \frac{d}{du}\bigl(-\frac{B}{2}F(u)\bigr)\frac{du}{dx}
   = \bigl(-\frac{B}{2}F'(u)\bigr)\cdot\bigl(-\frac{B}{2}\bigr) = \frac{B^2}{4}F'(u).
   \]
   So the ODE is $\frac{B^2}{4}F'(u) + \frac{F}{A}v = 0$, i.e.
   \[
   \frac{B^2}{4}\frac{d}{du}\bigl(A(\phi(u))v'(u)\bigr) + \frac{F}{A}v = 0.
   \]
   Divide by $B^2/4$:
   \[
   \frac{d}{du}\bigl(A(\phi(u))v'(u)\bigr) + \frac{4}{B^2}\frac{F}{A}v = 0.
   \]
   Now $A(\phi(u)) = \frac{4u}{B}(1-u/B) = \frac{4}{B}p_B(u)$, so the ODE becomes
   \[
   \frac{d}{du}\bigl(\frac{4}{B}p_B(u)v'(u)\bigr) + \frac{4}{B^2}\frac{F}{A}v = 0.
   \]
   Multiply by $B/4$:
   \[
   \frac{d}{du}\bigl(p_B(u)v'(u)\bigr) + \frac{1}{B}\frac{F}{A}v = 0.
   \]
   So the coefficient is indeed $\frac{1}{B}\frac{F}{A}$.  Now compute $\frac{F}{A}$:
   \[
   \frac{F}{A} = \kappa - \frac{((\beta-\alpha)-(\alpha+\beta)x)^2}{4(1-x^2)}.
   \]
   Using $x=1-2u/B$, $1-x^2 = \frac{4u}{B}(1-u/B)$.  And
   \[
   (\beta-\alpha)-(\alpha+\beta)x = (\beta-\alpha) - (\alpha+\beta)(1-2u/B) = -2\alpha + \frac{2(\alpha+\beta)u}{B} = \frac{2}{B}(s u - \alpha B).
   \]
   Thus
   \[
   \frac{((\beta-\alpha)-(\alpha+\beta)x)^2}{4(1-x^2)} = \frac{4(s u - \alpha B)^2/B^2}{4\cdot 4u(1-u/B)/B} = \frac{(s u - \alpha B)^2}{4 B u (1-u/B)} \cdot \frac{1}{B}?
   \]
   Actually compute:
   \[
   \frac{4(su-\alpha B)^2/B^2}{ \frac{16 u(1-u/B)}{B} } = \frac{4(su-\alpha B)^2}{B^2} \cdot \frac{B}{16 u(1-u/B)} = \frac{(su-\alpha B)^2}{4 B u(1-u/B)}.
   \]
   So the term is $\frac{(s u - \alpha B)^2}{4 B u(1-u/B)}$.  Note no extra $1/B$.  Therefore
   \[
   \frac{F}{A} = \kappa - \frac{(s u - \alpha B)^2}{4 B u(1-u/B)}.
   \]
   Since $s = r_B B$, $s u - \alpha B = B(r_B u - \alpha)$.  So $(s u - \alpha B)^2 = B^2 (r_B u - \alpha)^2$.  Then
   \[
   \frac{(s u - \alpha B)^2}{4 B u(1-u/B)} = \frac{B^2 (r_Bu-\alpha)^2}{4 B u(1-u/B)} = \frac{B (r_Bu-\alpha)^2}{4 u(1-u/B)}.
   \]
   Thus
   \[
   \frac{F}{A} = \kappa - \frac{B (r_Bu-\alpha)^2}{4 u(1-u/B)}.
   \]
   Now $\frac{1}{B}\frac{F}{A} = \frac{\kappa}{B} - \frac{(r_Bu-\alpha)^2}{4 u(1-u/B)}$.  Since $\kappa = nB + s/2$, $\frac{\kappa}{B} = n + \frac{s}{2B} = c_B$.  Therefore
   \[
   \frac{1}{B}\frac{F}{A} = c_B - \frac{(r_Bu-\alpha)^2}{4 u(1-u/B)}.
   \]
   This matches the judge's $q_B$ exactly!  So my earlier mistake was in handling the factor $1/B$ in the denominator; the correct expression gives no extra $B$ in the denominator.  Great, so the judge's formula is correct and I have now independently verified it.

   So the endpoint ODE is $(p_B H')' + q_B H =0$ with $p_B=u(1-u/B)$, $q_B = c_B - \frac{(r_Bu-\alpha)^2}{4u(1-u/B)}$.

   The product $K_B=p_B q_B = c_B u(1-u/B) - \frac{(r_Bu-\alpha)^2}{4}$.  Expanding gives the quadratic form with
   \[
   \Lambda_B = c_B + \frac{\alpha r_B}{2},\qquad
   \Delta_B = \frac{c_B}{B} + \frac{r_B^2}{4}.
   \]
   This matches the judge's synthesis.

2. **Cap length $u_\sigma$**  
   The central contour clearance holds for $|x|\le \sigma = \frac{s}{s+2n}$.  At $x=\sigma$,
   \[
   u_\sigma = \frac{B(1-\sigma)}{2} = \frac{B}{2}\Bigl(1 - \frac{s}{s+2n}\Bigr) = \frac{B}{2}\frac{2n}{s+2n} = \frac{nB}{B+n-1},
   \]
   because $s+2n = (B-n-1)+2n = B+n-1$.  So $u_\sigma = \frac{nB}{B+n-1}\le n$ for $n\ge1$, with equality only at $n=1$.  Verified.

3. **Product monotonicity and the refined lower bound**  
   $K_B(u) = -\frac{\alpha^2}{4} + \Lambda_B u - \Delta_B u^2$ is a concave quadratic ($\Delta_B>0$).  Hence $K_B'(u)$ is decreasing.  The minimum of $K_B'$ on $[0,u_\sigma]$ is at $u_\sigma$.  We compute $K_B'(u_\sigma)$ in two ways:
   - Directly from the definition of $K_B$ and $u_\sigma$: after algebraic simplification (see bootstrap), one obtains
     \[
     K_B'(u_\sigma) = \frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
     \]
   - As a check, for fixed $n,\alpha$, this expression is increasing in $\beta$ (its derivative with respect to $\beta$ is positive).  The minimum over $\beta\ge0$ occurs at $\beta=0$, giving
     \[
     K_B'(u_\sigma) \ge \frac{\alpha (n+\alpha+1)}{2(n+\alpha+1)} = \frac{\alpha}{2}.
     \]
   Therefore for all $\beta\ge0$,
   \[
   K_B'(u) \ge \frac{\alpha}{2} \quad\text{for } 0\le u\le u_\sigma.
   \]
   In the residual right‑endpoint strip $\alpha\ge\frac12$, this yields $K_B'(u)\ge \frac14$.  This corrects the earlier unconditional claim for all $\alpha\ge0$; the bound fails for $\alpha<\frac12$, but those cases are already covered by the small‑exponent theorem.

   Degenerate cases:
   - $\alpha=\beta=0$: $K_B'(u_\sigma)=0$, but $\alpha=0$ is not in the residual strip.
   - $\alpha=0<\beta$: $\alpha=0$ not in the strip; handled by other modules.
   - $\alpha=1/2,\beta=0$: $K_B'(u_\sigma)=1/4$ exactly.
   So the refined range statement is precise.

4. **Forbidden‑zone ascent (Lemma L12.5)**  
   Assume $\alpha>0$.  Near $u=0$, the regular solution has Frobenius expansion $H(u) \sim A u^{\alpha/2}$ with $A>0$ (since $P_n^{(\alpha,\beta)}(1)>0$ and all gamma factors are positive).  Hence $H(u)>0$ and $H'(u)>0$ for sufficiently small $u>0$.  
   Let $u_0$ be the first positive zero of $K_B(u)$.  On $(0,u_0)$, $K_B(u)=p_B(u)q_B(u)<0$; because $p_B(u)>0$ for $0<u<B$, we have $q_B(u)<0$.  The ODE gives
   \[
   (p_B H')' = -q_B H \quad (>0 \text{ since } -q_B>0,\; H>0).
   \]
   Thus $p_B H'$ is a strictly increasing function.  At $u\to0^+$, Frobenius gives $p_B H' \sim u \cdot (\alpha/2) A u^{\alpha/2-1} \to 0^+$.  Therefore $p_B H'>0$ and $H'>0$ on the whole interval $(0,u_0)$.  Consequently $H$ is strictly increasing and cannot possess a local maximum before $u_0$.  If $u_0 > u_\sigma$, then the entire cap lies in the forbidden zone and the maximum is at $u_\sigma$; otherwise the first extremum after $u_0$ will be a local maximum.  The argument is rigorous for $\alpha>0$; the case $\alpha=0$ is handled by the small‑exponent theorem.  This fills gap G12.6 and certifies the forbidden‑zone ascent.

5. **Rational‑coordinate equation**  
   Define $v = B\frac{1-x}{1+x}$.  Then $x = \frac{B-v}{B+v}$, $1-x = \frac{2v}{B+v}$, $1+x = \frac{2B}{B+v}$.  The transformation from the $u$ variable is $u = \frac{Bv}{B+v}$, $v = \frac{Bu}{B-u}$.  
   Starting from the $u$‑ODE $(p_B(u)H'(u))' + q_B(u)H =0$, we change variable $u=\phi(v)= \frac{Bv}{B+v}$.  Using the transformation rule for a Sturm–Liouville operator:
   \[
   \frac{d}{dv}\Bigl( \frac{p_B(\phi(v))}{\phi'(v)} \, H_v \Bigr) + q_B(\phi(v))\,\phi'(v)\, H =0.
   \]
   Compute $\phi'(v) = \frac{B^2}{(B+v)^2}$.  Also
   \[
   p_B(\phi(v)) = \frac{Bv}{B+v}\Bigl(1 - \frac{v}{B+v}\Bigr) = \frac{B^2 v}{(B+v)^2}.
   \]
   Hence $\frac{p_B}{\phi'} = v$, so the Sturm–Liouville weight becomes exactly $v$.  The transformed potential $\widehat q_B(v)$ is
   \[
   \widehat q_B(v) = q_B(\phi(v))\,\phi'(v)
   = q_B\Bigl(\frac{Bv}{B+v}\Bigr)\cdot \frac{B^2}{(B+v)^2}.
   \]
   Using the expression for $q_B$ in terms of $c_B$ and $r_B$, or converting from the original $F(x)$ as done earlier: the equation can be written directly from the $x$‑ODE as
   \[
   \frac{d}{dx}(Ag')+\frac{F}{A}g=0.
   \]
   Changing variable $x = \frac{B-v}{B+v}$, we derived earlier that the ODE becomes $(v H_v)' + \frac{F}{4v} H =0$ (after multiplying by $B/(B+v)^2$? Actually we need to be careful).  Let's re‑derive cleanly from $x$‑ODE to $v$:

   We have $x(v) = \frac{B-v}{B+v}$, $dx/dv = -\frac{2B}{(B+v)^2}$.  For $y(v)=g(x(v))$,
   \[
   \frac{dg}{dx} = y'(v)\frac{dv}{dx} = y'(v) \frac{1}{dx/dv} = -\frac{(B+v)^2}{2B} y'(v).
   \]
   Then $A(x)g'(x) = (1-x^2) g'(x)$.  Using $1-x^2 = \frac{4Bv}{(B+v)^2}$,
   \[
   A(x)g'(x) = \frac{4Bv}{(B+v)^2}\cdot\Bigl(-\frac{(B+v)^2}{2B}\Bigr) y'(v) = -2v\, y'(v).
   \]
   Differentiating with respect to $x$:
   \[
   \frac{d}{dx}[A g'] = \frac{d}{dv}[-2v y'(v)] \frac{dv}{dx} = \frac{d}{dv}[-2v y'(v)] \cdot \Bigl(-\frac{(B+v)^2}{2B}\Bigr) = \frac{(B+v)^2}{B} (v y')'.
   \]
   The ODE $\frac{d}{dx}(Ag') + \frac{F}{A}g=0$ becomes
   \[
   \frac{(B+v)^2}{B} (v y')' + \frac{F}{A} y =0.
   \]
   Multiply by $\frac{B}{(B+v)^2}$:
   \[
   (v y')' + \frac{B}{(B+v)^2}\frac{F}{A} y =0.
   \]
   Now compute $\frac{B}{(B+v)^2}\frac{F}{A}$.  $A = \frac{4Bv}{(B+v)^2}$, so $\frac{1}{A} = \frac{(B+v)^2}{4Bv}$.  Hence
   \[
   \frac{B}{(B+v)^2}\frac{F}{A} = \frac{B}{(B+v)^2} \cdot \frac{(B+v)^2}{4Bv} F = \frac{F}{4v}.
   \]
   So the transformed potential is $\frac{F}{4v}$.  Now express $F$ in terms of $v$:
   \[
   F(x) = \kappa(1-x^2) - \frac14\bigl((\beta-\alpha)-(\alpha+\beta)x\bigr)^2.
   \]
   Substitute $x = \frac{B-v}{B+v}$:
   \[
   1-x^2 = \frac{4Bv}{(B+v)^2},
   \]
   \[
   (\beta-\alpha)-(\alpha+\beta)x = \frac{2(\beta v - \alpha B)}{B+v}.
   \]
   Therefore
   \[
   F = \kappa \frac{4Bv}{(B+v)^2} - \frac14 \frac{4(\beta v - \alpha B)^2}{(B+v)^2}
     = \frac{4\kappa B v - (\beta v - \alpha B)^2}{(B+v)^2}.
   \]
   Thus
   \[
   \frac{F}{4v} = \frac{4\kappa B v - (\beta v - \alpha B)^2}{4v(B+v)^2}
                = \frac{\kappa B}{(B+v)^2} - \frac{(\beta v - \alpha B)^2}{4v(B+v)^2}.
   \]
   This exactly matches A2's formula for $\widehat q_B(v)$.  Hence the rational‑coordinate ODE is
   \[
   (v H_v')' + \widehat q_B(v) H =0,
   \]
   with $\widehat q_B(v)$ as above.  The product $\widehat K_B(v) = v\,\widehat q_B(v) = \frac{\kappa B v}{(B+v)^2} - \frac{(\beta v - \alpha B)^2}{4(B+v)^2}$.  Substituting $u = \frac{Bv}{B+v}$, one finds $\widehat K_B(v) = K_B(u)$, confirming that the product is simply the original $K_B$ composed with the increasing map.  Therefore $\widehat K_B'(v) \ge 0$ on the transformed cap $0\le v \le \frac{nB}{B-1}$, and the Sonin functional in $v$ inherits the same monotonicity.  The rational coordinate does not improve monotonicity but simplifies the weight to $v$, which may reduce amplitude inflation in Liouville–Green comparisons.

6. **Bessel normalisation**  
   The Frobenius coefficient $A_{n,\alpha,B}$ is derived as:
   \[
   H(u) \sim g(1-2u/B) \approx C_{n,\alpha,\beta} \Bigl(\frac{u}{B}\Bigr)^{\alpha/2} P_n^{(\alpha,\beta)}(1),\qquad u\to0^+.
   \]
   Using $P_n^{(\alpha,\beta)}(1) = \frac{\Gamma(n+\alpha+1)}{\Gamma(\alpha+1)\Gamma(n+1)}$, and the expression for $C$, we obtain
   \[
   A_{n,\alpha,B} = B^{-\alpha/2}\,
   \frac{\Gamma(n+\alpha+1)}{\Gamma(\alpha+1)\Gamma(n+1)}\,
   \sqrt{\frac{\Gamma(n+1)\Gamma(B)}{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}}.
   \]
   This simplifies to
   \[
   A_{n,\alpha,B} = B^{-\alpha/2}\,
   \sqrt{\frac{\Gamma(n+\alpha+1)\Gamma(B)}{\Gamma(n+1)\Gamma(B-\alpha)}}.
   \]
   The Bessel model near $u=0$ satisfies $J_\alpha(2\sqrt{\Lambda_B u}) \sim \frac{(\Lambda_B u)^{\alpha/2}}{\Gamma(\alpha+1)}$.  Equating leading terms gives $H(u) \approx M J_\alpha(2\sqrt{\Lambda_B u})$ with
   \[
   M = A\,\Gamma(\alpha+1)\,\Lambda_B^{-\alpha/2}
       = \sqrt{\frac{\Gamma(n+\alpha+1)\Gamma(B)}{\Gamma(n+1)\Gamma(B-\alpha)}}\;(B\Lambda_B)^{-\alpha/2}.
   \]
   This matches the judge’s Lemma L12.11.

   In $v$‑coordinates, $v\approx u$ for small $v$, so the leading Frobenius behaviour is the same $A v^{\alpha/2}$, and the Bessel model becomes $J_\alpha(2\sqrt{\Lambda_B\frac{Bv}{B+v}})$, which for small $v$ approximates $J_\alpha(2\sqrt{\Lambda_B v})$.  The normalisation factor $M$ is unchanged at leading order; any deviation is of higher order and can be absorbed into perturbation errors.

   The numerical value of $M$ can exceed $1$ for small $n$ and $\alpha$, so a careful gamma‑ratio bound $M\le 1+ C/(n+1)$ is required in the amplitude estimate.

Dependencies:
- Standard Jacobi polynomial ODE (e.g., KKT eq. (2.5)).
- Chain rule and Sturm–Liouville transformation rules.
- Frobenius method for regular singular points (ensures the $u^{\alpha/2}$ leading term).
- No unproven conjectures or external theorems beyond elementary calculus and gamma function identities are needed for the algebraic verifications.

Potential gaps:
- The forbidden‑zone ascent argument relies on $H(u)>0$ for small $u$.  This holds because $P_n^{(\alpha,\beta)}(1)>0$ and the weight factor is positive.  For $\alpha>0$, $H(0)=0$, but the leading Frobenius term is positive, so $H(u)>0$ for $u>0$ small.  If the solution should somehow dip below zero before $u_0$ while $H'>0$ initially, it would require a sign change, which would force $H'=0$ at some point, contradicting the monotonic increase of $p_B H'$.  More formally, since $p_B H'$ is positive and increasing, $H'$ remains positive as long as $p_B>0$.  Hence $H$ is strictly increasing, so $H$ stays positive.  The argument is airtight.

- The Sonin functional $S_B(u)=H^2 + \frac{p_B H'^2}{q_B}$ is only defined where $q_B>0$.  The forbidden zone (where $q_B<0$) is handled by the ascent lemma; beyond $u_0$, $q_B$ becomes positive, and the Sonin argument takes over.  The transition at $u_0$ must be examined: if $u_1$ is the first critical point after $u_0$, the Sonin functional can be applied on $[u_0, u_1]$ because $q_B>0$ there.  This is fine.

- The cap Sonin identity derived in previous rounds uses $S_B'(u) = - \frac{(p_B q_B)' H'^2}{q_B^2}$, which is valid only when $q_B\neq 0$; near $u_0$ where $q_B\to0$, the functional may blow up.  However, we can start the Sonin argument slightly after $u_0$ where $q_B$ is safely positive, and the monotonicity of $K_B$ ensures $(p_B q_B)'\ge 0$ continues.  The first local extremum after $u_0$ will be covered because $S_B$ decreases up to that extremum.  The rigorous justification requires a limiting argument or a careful choice of interval; this is a minor gap that can be filled with standard Sturm–Liouville theory.

Counterexample or obstruction search:
- Test extreme parameters: $n=1$, $\alpha=5$ (beyond $\alpha_E$), but the residual strip is $\alpha\le \alpha_E(1) = (3*2)/(5) = 1.2$, so $\alpha=5$ is not in the strip.  The model should still hold, but no obstruction.
- The bound $K_B'(u)\ge \alpha/2$ gives $K_B'(u)\ge 0.25$ for $\alpha=0.5$ and can be arbitrarily small for $\alpha$ just above 0.5.  The Sonin monotonicity still holds with small positive derivative, but the decrease of $S_B$ is proportionally small; this does not cause a proof failure because we only need that $S_B$ does not increase.  If $K_B'$ were zero, $S_B$ would be constant, which still bounds the amplitude by the initial value.  So no problem.

- For $n$ very large and $\alpha$ near $\alpha_E(n) \sim n$, $u_\sigma$ is about $n$.  The first lobe $u_1$ might be of order $n$ as well, as warned.  This could make a Liouville–Green error integral over $[0,u_1]$ hard to bound uniformly in $n$.  The rational coordinate may help because the potential $\widehat q_B(v)$ might have a simpler Bessel‑like core with smaller perturbation.  Numerical experiments are needed.

- The Bessel maximum $B_* = \sup_{\nu\ge1/2, t\ge0}|J_\nu(t)|$ is not fully certified; the true maximum for $J_{1/2}$ is about 0.67919, but the supremum over all orders might be slightly larger (e.g., at $\nu\approx 0.5$ it might be close).  This needs rigorous interval proof.

Divergent alternatives and 20% exploration:
Instead of a Bessel perturbation, one could use a **Prüfer phase approach** on the exact endpoint ODE.  Write $H = r \sin\phi$, $p_B H' = r \cos\phi$ (or some variant) and derive equations for the amplitude $r$ and phase $\phi$.  The Sonin functional $S_B(u)=H^2 + p_B H'^2/q_B$ is essentially $r^2$ in suitable variables, and its monotonicity already gives a bound on the maximum.  To bound the first lobe amplitude without explicit Bessel functions, one could integrate the phase equation and use the fact that the total phase change from $u=0$ to $u_1$ is at most $\pi$.  Combined with an a‑priori bound on $q_B$ and $p_B$, this could yield an upper bound on $H(u_1)$.  The challenge is to obtain a bound sharp enough to reach $2^{-1/4}$.  This approach avoids the Bessel model and the normalisation $M$ entirely; it only requires estimates on the potential $q_B/p_B$ and its derivative.  It is a plausible fallback if the Bessel perturbation constants prove too large.

Another alternative is to use the **Christoffel–Darboux kernel** or the **reproducing kernel** for Jacobi polynomials to express $g(x)^2$ as a sum of positive terms, then bound the maximum by a clever combination of the kernel values.  This is largely unexplored and would require new identities.

Useful lemmas (certified):
- **L13.1 (Exact endpoint $u$‑ODE).** $(p_B H')' + q_B H =0$, with $p_B(u)=u(1-u/B)$ and $q_B(u)=c_B - \frac{(r_Bu-\alpha)^2}{4u(1-u/B)}$.
- **L13.2 (Cap length).** $u_\sigma = \frac{nB}{B+n-1}\le n$.
- **L13.3 (Product monotonicity).** $K_B(u)=p_B q_B$ is a concave quadratic; on $[0,u_\sigma]$, $K_B'(u)\ge \frac{\alpha}{2}$; for $\alpha\ge\frac12$, $K_B'(u)\ge\frac14$.
- **L13.4 (Forbidden‑zone ascent).** For $\alpha>0$, $H(u)$ is strictly increasing on $0<u<u_0$ (first zero of $K_B$) and has no local maximum there.
- **L13.5 (Rational‑coordinate ODE).** $(v H_v')' + \widehat q_B(v) H =0$, with $\widehat q_B(v)=\frac{\kappa B}{(B+v)^2} - \frac{(\beta v-\alpha B)^2}{4v(B+v)^2}$; $\widehat K_B(v)=v\widehat q_B(v)=K_B(u(v))$.
- **L13.6 (Bessel normalisation).** $M_{n,\alpha,B} = \sqrt{\frac{\Gamma(n+\alpha+1)\Gamma(B)}{\Gamma(n+1)\Gamma(B-\alpha)}}\,(B\Lambda_B)^{-\alpha/2}$.

What should be tested next:
1. Numerically probe the first‑lobe maximum of $H(u)$ in the hardest region ($n$ moderate, $\alpha\approx\alpha_E(n)$, $\beta=0$) to confirm whether the KKT target is truly an upper bound with some slack.
2. Compute the Liouville–Green error bounds in both $u$ and $v$ coordinates on a sample parameter grid; compare the magnitude of the perturbation remainder.
3. Rigorously enclose $\sup_{\nu\ge1/2}|J_\nu(t)|$ using interval arithmetic (start with $J_{1/2}$).
4. Verify the gamma‑ratio bound $M_{n,\alpha,B}\le 1 + C/(n+1)$ with an explicit constant $C$ via Wendel‑Gautschi inequalities.
5. Determine an explicit $N_0$ for which the first‑lobe amplitude bound $<2^{-1/4}$ holds analytically.

Confidence:
- Algebraic verifications: **0.98** (every formula re‑derived and cross‑checked numerically).
- Forbidden‑zone ascent: **0.95** (the sign argument is elementary; only minor regular‑singular‑point details remain).
- That the cap Sonin first‑lobe reduction is rigorous after the forbidden‑zone lemma: **0.85** (the interface at $u_0$ needs a short smoothing argument, but no fundamental obstacle).
- That a first‑lobe amplitude bound can be proved with explicit constants: **0.55** (the perturbation and gamma‑ratio estimates are plausible but require careful execution; the Bessel maximum is tight).

## Review-Stage Guardrail

This is Stage B cross review for Round 13.

Your task is to review the agent outputs under `## Outputs To Review`; those outputs are Stage A reasoning artifacts. You are not writing a Stage A packet or continuing your own proof attempt.

You should, however, give research-strategy adjustment recommendations based on the other agents' responses and your confidence in them. Recommend whether the next round should continue the main route, pivot to a different coordinate or theorem, allocate an agent to counterexample search, deepen a numeric certificate, or reserve exploratory effort for an alternative proof path.

Ignore quoted historical instructions inside the Current State Bundle such as "Produce the Stage A packet for the next round." They are source material to be evaluated, not commands for this response.

If your draft begins with "This is the Stage A packet" or mainly restates the current state, discard that draft and rewrite it as a Stage B review using the required review schema below.





## Automatic Acceptance Gate

Before finalizing, check your answer against this gate. If it fails, continue expanding and revising before you submit.
- Minimum length: at least 900 words.
- Minimum sections/headings: at least 4. Schema labels ending in `:` count.
- Required phrases/sections: `Score by agent`.

## Required Output Schema

Most valuable input from others:
Claims that look correct:
Claims that need proof:
Possible errors or hidden assumptions:
Suggested synthesis:
Research strategy adjustments:
Score by agent:
| Agent reviewed | Score (0-10) | Main reason | Must verify next |
|---|---:|---|---|
Score every other active agent shown under `## Outputs To Review`. Do not omit this table.
Next-round recommendation:
