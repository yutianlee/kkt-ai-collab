You are A3 Deepseek V4 Pro think_max, acting as API-based proof critic, algebra checker, and endpoint-reduction auditor.

Review the other agents' Round 23 outputs. Your job is to identify useful mathematics, hidden assumptions, likely errors, and a synthesis path.

## Agent-Specific Instructions

Check algebraic reductions, endpoint variables, Gamma-ratio constants, Jacobi-to-Laguerre limiting arguments, and claimed finite verification schemes. Prefer precise parameter ranges and falsifiable lemmas over broad summaries. In reasoning, reserve about 20% of the answer for divergent alternatives or obstruction searches. In review, recommend research-strategy adjustments based on which claims survive verification. When a proof step is plausible but not certified, say exactly which formula, theorem hypothesis, citation, or numerical check would certify it. Do not invent references or claim literature knowledge not present in the prompt/state. If a missing theorem is needed, state it as a literature-search task for A1/A2. If internal exploration included false starts, report only the distilled failed proof path and exact failure criterion, not the raw thinking process.



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

This is Stage B cross review for Round 23.

Your task is to review the agent outputs under `## Outputs To Review`; those outputs are Stage A reasoning artifacts. You are not writing a Stage A packet or continuing your own proof attempt.

You should, however, give research-strategy adjustment recommendations based on the other agents' responses and your confidence in them. Recommend whether the next round should continue the main route, pivot to a different coordinate or theorem, allocate an agent to counterexample search, deepen a numeric certificate, or reserve exploratory effort for an alternative proof path.

Ignore quoted historical instructions inside the Current State Bundle such as "Produce the Stage A packet for the next round." They are source material to be evaluated, not commands for this response.

If your draft begins with "This is the Stage A packet" or mainly restates the current state, discard that draft and rewrite it as a Stage B review using the required review schema below.

## Agent Depth Contract

Write a detailed but focused Stage B referee report of at least 3000 words. Focus on algebraic correctness, hidden hypotheses, normalization constants, theorem dependencies, and claims needing proof. Review each peer separately, and for each reviewed peer identify the strongest contribution, the most dangerous gap, and one concrete verification task. Include a score table and research-strategy adjustment. Do not include private scratchwork; only output the final referee report in raw Markdown. Treat uncited external theorem claims as unverified unless the prompt supplied a source; assign missing source checks to A1/A2.

## Agent Required Section Skeleton

Use these exact top-level section labels in this order. You may add subsections under them, but do not omit or rename any listed label.

1. `Most valuable input from others`
2. `Claims that look correct`
3. `Claims that need proof`
4. `Possible errors or hidden assumptions`
5. `Suggested synthesis`
6. `Research strategy adjustments`
7. `Verification assignments`
8. `Score by agent`
9. `Next-round recommendation`
10. `Confidence`

## Automatic Acceptance Gate

Before finalizing, check your answer against this gate. If it fails, continue expanding and revising before you submit.
- Minimum length: at least 3000 words.
- Minimum sections/headings: at least 10. Schema labels ending in `:` count.
- Confidence calibration: no confidence value may exceed 0.95.
- Required phrases/sections: `Claims that look correct`, `Claims that need proof`, `Possible errors`, `Suggested synthesis`, `Research strategy`, `Verification`, `Score by agent`, `Confidence`.
- Forbidden overclaim phrases: `# Model Reasoning Content`, `<thinking>`, `</thinking>`, `100% complete`, `100% confidence`, `fully certified`, `Potential gaps:\nNone`.
- The response must be syntactically complete: balanced math delimiters and closed Markdown emphasis.

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

See `rounds/kkt-main/round_012/judge/judge-012.md`.

Summary:

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

## Round 13 Update

Timestamp: 2026-06-02 18:36:11

See `rounds/kkt-main/round_013/judge/judge-013.md`.

Summary:

Round 13 is a successful reduction-and-audit round, not a proof round. The real-parameter KKT conjecture is still not closed by the material in this round. The strongest certified progress is that the endpoint-cap localization has now been upgraded to a theorem-level reduction, modulo small boundary-case bookkeeping. In particular, the right endpoint residual problem in the variable

```math
u=\frac{B(1-x)}{2},\qquad B=n+\alpha+\beta+1,
```

is confined to

```math
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n
```

for $n\ge1$, and the finite-$B$ endpoint equation

```math
(p_BH')'+q_BH=0
```

has a monotone Sonin product

```math
K_B(u)=p_B(u)q_B(u).
```

The forbidden-zone ascent lemma is now essentially proved: for $\alpha>0$, the regular endpoint solution is positive and increasing before the first zero of $q_B$ or $K_B$. Therefore there is no pre-turning-point local maximum. Combined with Sonin monotonicity on the allowed side, this gives the main Round 13 reduction: any remaining endpoint-cap failure must occur at the first critical point after the first turning point.

The amplitude certificate is still open. Round 13 gives strong evidence that the naive constant-frequency Bessel approximation, the rational-coordinate “amplitude-fix” hope, and the direct Laguerre-to-finite-$B$ perturbation bridge are too crude in the $\alpha=O(n)$ transition strip. These are not all formally disproved as mathematical possibilities, but they should no longer be the main proof route in their naive forms. The next round should focus on a dynamic first-lobe amplitude theorem: either a regularized Prüfer/Airy argument or a fully variable-frequency Szegő/Liouville-Green transformation with explicit constants. A4 should simultaneously build a numerical test harness, but interval arithmetic remains a proof only after a large-$n$ analytic reduction is available.

Selected main route:

The selected route for Round 14 is:

**Endpoint-cap first-lobe route with dynamic amplitude control.**

The proof skeleton should now be:

1. Use the existing global modules to reduce to the right endpoint residual cap:
   - central contour clearance;
   - weighted-energy clearance;
   - small right-endpoint exponent theorem for $0\le\alpha\le1/2$;
   - symmetry for the left endpoint;
   - separate base cases $n=0$, $\alpha=0$, $\beta=0$, and the boundary $\alpha=1/2$.

2. In the residual right endpoint range,

```math
n\ge1,\qquad \alpha>1/2,\qquad \beta\ge0,
```

set

```math
B=n+\alpha+\beta+1,\qquad H(u)=g_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right).
```

3. Use the exact endpoint equation

```math
(p_BH')'+q_BH=0,
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

4. Use the cap bound

```math
0\le u\le u_\sigma=\frac{nB}{B+n-1}\le n.
```

5. Use the product identity

```math
K_B(u)=p_B(u)q_B(u)
=
-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2,
```

where

```math
r_B=\frac{\alpha+\beta}{B}=1-\frac{n+1}{B},
```

```math
c_B=n+\frac12-\frac{n+1}{2B},
```

```math
\Lambda_B=c_B+\frac{\alpha r_B}{2},
\qquad
\Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
```

Then $K_B$ is concave, and

```math
K_B'(u_\sigma)
=
\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
```

Moreover, because

```math
\frac{(\alpha+\beta)(n+\alpha+1)}{2(n+\alpha+\beta+1)}
\ge \frac{\alpha}{2},
```

one has the sharpened cap lower bound

```math
K_B'(u)\ge K_B'(u_\sigma)\ge\frac{\alpha}{2}\ge\frac14
```

throughout the residual right endpoint range $\alpha\ge1/2$.

6. Prove and record the forbidden-zone ascent lemma. If $u_0$ is the first zero of $q_B$ or equivalently $K_B$ in the cap, then on $(0,u_0)$ one has $q_B<0$, while the regular Frobenius branch satisfies

```math
H(u)\sim A_{n,\alpha,B}u^{\alpha/2},\qquad A_{n,\alpha,B}>0.
```

With

```math
W(u)=p_B(u)H'(u),
```

the ODE gives

```math
W'(u)=-q_B(u)H(u)>0
```

as long as $H>0$ and $q_B<0$. Since $H>0$ and $W>0$ near zero, the solution remains positive and increasing up to $u_0$. Therefore there is no local maximum in the forbidden zone.

7. On the allowed side $q_B>0$, use the cap Sonin functional

```math
S_B(u)=H(u)^2+\frac{p_B(u)H'(u)^2}{q_B(u)}.
```

It satisfies

```math
S_B'(u)
=
-\frac{K_B'(u)}{q_B(u)^2}H'(u)^2\le0.
```

Thus local extrema in the allowed portion of the cap are nonincreasing in amplitude as $u$ increases from the endpoint toward the central boundary.

8. Conclude the first-lobe reduction. Let $u_1$ be the first critical point of $H$ after $u_0$, if it exists. Then the residual endpoint cap is controlled once one proves

```math
|H(u_1)|
\le
T_{n,\alpha,\beta}
=
\left(
\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}
\right)^{1/4}.
```

If no such $u_1$ exists, the cap maximum lies at the central boundary already controlled by the central module, or is controlled by monotonicity from the endpoint.

The remaining proof problem is exactly this first-critical-point amplitude estimate. Round 14 should no longer treat the global Laguerre inequality on $0\le u<\infty$ as the primary target. The Laguerre cap and the $\beta=\infty$ face remain essential diagnostics, but the selected main route is a finite-$B$ first-lobe theorem.

Useful fragments by source:

### A1

A1 supplied the cleanest theorem-level synthesis of the endpoint-cap reduction.

Useful fragments:

1. A1 stated the exact finite-$B$ endpoint equation in the right endpoint variable and kept the normalization consistent with the KKT target.

2. A1 gave the cap length identity

```math
u_\sigma=\frac{nB}{B+n-1}\le n.
```

This remains one of the main advances of the recent rounds because it eliminates the need to prove a global Laguerre bound on $0\le u<\infty$.

3. A1 formulated the first-lobe reduction precisely: the remaining cap estimate reduces to bounding the first critical point after the first turning point.

4. A1 gave a convincing sign-based proof of forbidden-zone ascent. This was the most important qualitative addition of Round 13, because previous Sonin arguments only applied where $q_B>0$.

5. A1 correctly did not claim an amplitude theorem. A1’s conclusion that the endpoint-cap route is still the best strategy is adopted.

Corrections or cautions:

A1’s recommendation of a direct finite-$B$ Prüfer/Sonin route is reasonable, but it needs an Airy-layer or modified Prüfer initialization at the turning point. Standard Prüfer variables are singular when $K_B(u_0)=0$. The next round must not skip this issue.

### A2

A2’s most valuable contribution was obstruction analysis.

Useful fragments:

1. A2 re-derived the rational endpoint coordinate

```math
v=B\frac{1-x}{1+x},
\qquad
x=\frac{B-v}{B+v},
```

with

```math
u=\frac{Bv}{B+v},
\qquad
v=\frac{Bu}{B-u}.
```

The cap maps to

```math
0\le v\le v_\sigma=\frac{nB}{B-1}.
```

2. A2 verified the rational-coordinate equation

```math
(vH_v')'+\widehat q_B(v)H=0,
```

with

```math
\widehat q_B(v)
=
\frac{\kappa B}{(B+v)^2}
-
\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}.
```

3. A2 emphasized the key invariant identity

```math
\widehat K_B(v):=v\widehat q_B(v)=K_B(u(v)).
```

This means the rational coordinate preserves the Sonin invariant product rather than creating a new monotonicity or amplitude mechanism. The rational coordinate may still be useful for stable computation or for a cleaner normal form, but it is not a “free” Liouville-Green amplitude fix.

4. A2 correctly warned that constant-frequency Bessel approximations are likely too lossy in the $\alpha=O(n)$ transition strip. The Volterra scaling argument is a serious obstruction search.

5. A2 correctly warned that a Sonin handoff at or near the turning point is invalid unless the derivative-energy term is controlled. The functional

```math
H^2+\frac{p_BH'^2}{q_B}
```

has a pole as $q_B\to0^+$ unless the derivative term is handled.

6. A2’s finite-$B$ versus Laguerre frequency drift warning is important. The identity

```math
\Lambda_\infty-\Lambda_B
=
\frac{(\alpha+1)(n+1)}{2B}
```

shows that direct finite-$B$ perturbation from the Laguerre face is not uniformly small in the semi-discrete regime $\beta=0$, especially when $\alpha=O(n)$.

Corrections or cautions:

A2 overstates several negative conclusions. The round should record these as warnings, not impossibility theorems. A model Volterra integral with $O(n)$ growth does not by itself rule out every Bessel-based method, every renormalized Bessel comparison, or a dynamic Liouville-Green construction. It does reject the naive constant-frequency route unless someone supplies a sharper transformed error with explicit constants.

### A3

A3 was the strongest algebra auditor.

Useful fragments:

1. A3 independently verified the affine endpoint equation, the cap length, and the quadratic product structure.

2. A3 sharpened the monotonicity estimate to

```math
K_B'(u)\ge\frac{\alpha}{2}
```

on the cap, hence

```math
K_B'(u)\ge\frac14
```

in the residual right-endpoint strip $\alpha\ge1/2$.

3. A3 verified the rational-coordinate equation and the invariant identity

```math
v\widehat q_B(v)=K_B(u(v)).
```

4. A3 supplied the Frobenius coefficient

```math
A_{n,\alpha,B}
=
B^{-\alpha/2}
\frac{\Gamma(n+\alpha+1)}
{\Gamma(\alpha+1)\Gamma(n+1)}
\sqrt{
\frac{\Gamma(n+1)\Gamma(B)}
{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}
}.
```

Equivalently,

```math
A_{n,\alpha,B}
=
B^{-\alpha/2}
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
\frac{1}{\Gamma(\alpha+1)}
```

after simplification in the Bessel-matching form.

5. A3 re-derived the Bessel model normalization

```math
M_{n,\alpha,B}
=
\sqrt{
\frac{\Gamma(n+\alpha+1)\Gamma(B)}
{\Gamma(n+1)\Gamma(B-\alpha)}
}
(B\Lambda_B)^{-\alpha/2}.
```

This algebraic expression is accepted; estimates for it remain open.

Corrections or cautions:

A3’s detailed derivation of the endpoint ODE contains a false start involving a missing factor. The final formulas are correct, but the lemma-bank version should be rewritten cleanly. The correct transformation should explicitly show that

```math
\frac{d}{dx}\left((1-x^2)g_x\right)=B(p_BH')'
```

and

```math
\frac{F}{1-x^2}
=
\kappa
-
B\frac{(r_Bu-\alpha)^2}{4u(1-u/B)},
```

so that dividing the full equation by $B$ gives the accepted $q_B$.

### A4

A4 was useful mainly as a numerical and certificate planner.

Useful fragments:

1. A4 correctly centered attention on the Bessel maximum

```math
B_*=\sup_{\nu\ge1/2,t\ge0}|J_\nu(t)|
```

and the gamma/Bessel normalization $M_{n,\alpha,B}$.

2. A4 correctly rejected the older false value $2/\pi$ as the maximum for $J_{1/2}$.

3. A4 gave the right critical equation for the first positive maximum of $J_{1/2}$:

```math
\tan t=2t.
```

The first solution is approximately

```math
t_1\approx1.1655611852072113,
```

and

```math
J_{1/2}(t_1)\approx0.6791921047.
```

A4’s reported value $0.67918418$ is slightly inaccurate, but the qualitative correction is right.

4. A4 gave a useful compactified interval-arithmetic plan using

```math
\theta=\frac{n+\alpha+1}{B}.
```

For fixed $n$, this compactifies the finite-$B$ and Laguerre boundary faces into

```math
0\le\theta\le1.
```

5. A4’s proposed use of the finite hypergeometric representation

```math
P_n^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
\frac{(\alpha+1)_n}{n!}
{}_2F_1\left(-n,B;\alpha+1;\frac{u}{B}\right)
```

is the right basis for stable interval evaluation.

Corrections or cautions:

A4’s claimed closure is rejected. The claims

```math
M_{n,\alpha,B}\le1+\frac{1}{4n}
```

and

```math
|H(u_1)|\le M_{n,\alpha,B}B_*+\mathrm{Error}
```

are not proved. The assertion that the Olver error is “trivially” below the remaining slack is not acceptable. A4 also cited the monotonicity of the Bessel maximum in $\nu$ without proving it or stating a precise theorem with hypotheses. The next round should turn these into computations or citations, not proof claims.

Rejected or risky ideas:

1. **Claiming Round 13 proves KKT.**
   Rejected. Round 13 proves no first-lobe amplitude theorem and no finite-$B$ bridge theorem with constants. The conjecture remains open in this workflow.

2. **Global Laguerre as the main proof target.**
   Risky and no longer minimal. The cap restriction $0\le u\le n$ and the first-lobe reduction are strictly sharper. The Laguerre face remains a diagnostic and possible boundary component for interval arithmetic, but not the primary analytic target.

3. **Naive constant-frequency Bessel perturbation.**
   Rejected as a ma

[... clipped for compact web prompt ...]

e proof overlaps comfortably with the small-exponent theorem.

### $\alpha=6/5$ boundary

At $\alpha=6/5$, the direct value is approximately

$$
E(6/5)\approx0.383396,
$$

not $<0.380$. The corrected proof uses the weaker but rigorous target $E<0.39$, which remains far below $5/8$.

### Possible hidden equality

No equality case is expected in the residual $n=1$ proof. The gamma-ratio step is strict because $\psi(y)<\log y$, and the final comparison has large strict margin.

## Obstruction lessons for higher degree

The $n=1$ success does not materially weaken the arbitrary-$n$ gap. It works because:
- the polynomial has one affine factor;
- the cap is exactly $0\le u\le1$;
- the gamma-ratio bound cancels $B^\alpha$ cleanly;
- the remaining $u$ maximization is one-dimensional and explicit.

For $n=2$, the polynomial is quadratic and the first-critical equation is cubic. The same scalar collapse is not expected without root isolation.

Divergent alternatives and 20% exploration:

## Alternative 1: corrected-cubic interval root isolation for $n=2$

This should be the primary next finite-degree route.

For $n=2$, use

$$
B=\alpha+\beta+3,
\qquad
u_\sigma=\frac{2B}{B+1}.
$$

The finite polynomial representation gives

$$
P_2^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)
=
A-b_1u+c_1u^2,
$$

where

$$
A=\frac{(\alpha+1)(\alpha+2)}2,
\qquad
b_1=\alpha+2,
\qquad
c_1=\frac{B+1}{2B}.
$$

The normalized cap expression is

$$
H_2(u)
=
C
\left(\frac{u}{B}\right)^{\alpha/2}
\left(1-\frac{u}{B}\right)^{\beta/2}
(A-b_1u+c_1u^2).
$$

The logarithmic derivative condition for critical points is

$$
\frac{\alpha}{u}
-\frac{\beta}{B-u}
+
2\frac{-b_1+2c_1u}{A-b_1u+c_1u^2}
=0.
$$

After clearing denominators, this is a cubic. The route is:

1. compactify

$$
\theta=\frac{n+\alpha+1}{B}=\frac{\alpha+3}{B}\in[0,1];
$$

2. express all coefficients in $(\alpha,\theta)$;
3. isolate all critical roots in

$$
0\le u\le u_\sigma;
$$

4. evaluate the interval extension of

$$
H_2(u)^4-T_{2,\alpha,\beta}^4
$$

on root boxes and boundary boxes.

What would falsify this finite-degree route: a root box where the interval upper bound crosses zero with no way to refine, or a verified counterexample with $H_2^4>T^4$.

## Alternative 2: Riccati-IVP enclosure

Define

$$
R(u)=p_B(u)\frac{H'(u)}{H(u)}.
$$

Then

$$
p_B R'(u)+R(u)^2+K_B(u)=0.
$$

Near $u=0$,

$$
R(u)=\frac{\alpha}{2}+u w(u).
$$

The first critical point of $H$ corresponds to

$$
R(u)=0.
$$

For $n=2$, a Riccati enclosure may avoid direct polynomial/gamma dependency blowup because it tracks only the logarithmic derivative. It still needs a separate amplitude integral:

$$
\log\frac{H(u_1)}{H(u_c)}
=
\int_{u_c}^{u_1}\frac{R(u)}{p_B(u)}\,du.
$$

Recommended role: use as a cross-check and possible proof if cubic interval isolation becomes too branched.

What would falsify the Riccati route: interval blowup before $R=0$, or inability to certify $H$ without reintroducing the full polynomial/gamma expression.

## Alternative 3: semi-discrete specialization

The application only needs $\beta\in\mathbb N_0$. However, in the current endpoint variables, the $n=1$ proof did not use integrality of $\beta$, and the hard large-$n$ obstruction includes the Laguerre face. No obvious discrete convexity has yet appeared.

Potential targeted check: for fixed $n,\alpha$, test whether the residual first-lobe ratio is monotone in integer $\beta$. If true, the semi-discrete target might reduce to $\beta=0$ or $\beta\to\infty$. No such monotonicity is currently proved.

Useful lemmas:

## Lemma 1: Gamma-ratio coarse bound

For $x>0$ and $\alpha>0$,

$$
\frac{\Gamma(x+\alpha)}{\Gamma(x)}
<
(x+\alpha)^\alpha.
$$

Proof:

$$
\log\frac{\Gamma(x+\alpha)}{\Gamma(x)}
=
\int_0^\alpha\psi(x+t)\,dt
<
\int_0^\alpha\log(x+t)\,dt
\le
\alpha\log(x+\alpha).
$$

Status: proved using $\psi(y)<\log y$.

## Lemma 2: Degree-one cap polynomial

For $n=1$ and $B=\alpha+\beta+2$,

$$
P_1^{(\alpha,\beta)}\left(1-\frac{2u}{B}\right)=\alpha+1-u.
$$

Status: proved.

## Lemma 3: Degree-one scalar envelope

For

$$
\frac12\le\alpha\le\frac65,\qquad \beta\ge0,\qquad 0\le u\le1,
$$

one has

$$
H_1(u)^4<E(\alpha),
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

Status: proved.

## Lemma 4: Scalar envelope bound

For

$$
\frac12\le\alpha\le\frac65,
$$

one has

$$
E(\alpha)<0.39.
$$

Status: proved.

## Lemma 5: Degree-one target lower bound

For

$$
\frac12\le\alpha\le\frac65,\qquad \beta\ge0,
$$

one has

$$
T_{1,\alpha,\beta}^4\ge\frac58.
$$

Status: proved.

## Lemma 6: Degree-one residual endpoint theorem

For

$$
n=1,\qquad \frac12\le\alpha\le\frac65,\qquad \beta\ge0,
$$

the residual endpoint cap satisfies

$$
H_1(u)^4<T_{1,\alpha,\beta}^4.
$$

Status: proved.

What should be tested next:

1. Commit the $n=1$ theorem to the lemma bank after a final independent A3 algebra audit of the normalization.

2. Build the $n=2$ corrected-cubic certificate:
   - derive the cubic in compactified variables;
   - isolate roots on $0\le u\le u_\sigma$;
   - include boundary boxes;
   - include $\theta=0$ and $\theta=1$ faces;
   - produce outward-rounded interval logs.

3. Audit whether the coarse gamma-ratio lemma can help any part of $n=2$. It will not be sufficient alone, but it may simplify a subset of boxes.

4. Convert A1/A2 Langer/Bessel conditional frameworks into finite inequalities with named constants:
   - choose an actual DGS/Olver theorem;
   - state its hypotheses in KKT notation;
   - compute the exact residual control function;
   - measure the weighted variation in the bulk regime.

5. For the rational-coordinate Bessel track, derive a theorem using

$$
\Delta Q(z)
=
-\frac{\Lambda_B}{B+z}
-\frac{\Delta_BB^2}{(B+z)^2}
$$

with actual kernel bounds, not just asymptotic scaling.

6. Update the gap register to remove $n=1$ and add a concrete $n=2$ checklist.

What would falsify this route:

1. A normalization audit showing that the scalar $H_1$ formula is not the same as the KKT normalization. I see no such issue; the formula matches the stated KKT normalization.

2. A flaw in the gamma-ratio inequality

$$
\frac{\Gamma(x+\alpha)}{\Gamma(x)}<(x+\alpha)^\alpha.
$$

This would require failure of $\psi(y)<\log y$, which is a standard true inequality.

3. A flaw in the convex-log argument for $F$. The proof reduces it to the trigamma series and an elementary integral bound; it appears robust.

4. A verified $n=2$ or higher counterexample. That would not invalidate the $n=1$ theorem but would falsify the broader conjectural route.

5. Failure of both the bulk Langer and rational-Bessel tracks to produce constants, combined with interval evidence that the first-lobe ratio approaches $1$ too fast for available methods. That would not disprove KKT, but would force a pivot to a different mechanism such as Christoffel-kernel positivity or parameter monotonicity.

Confidence:

- Confidence in the $n=1$ residual theorem: $0.97$.
- Confidence in the scalar reduction $H_1^4<E(\alpha)$: $0.98$.
- Confidence in the bound $E(\alpha)<0.39$: $0.96$.
- Confidence that this closes all residual $n=1$ endpoint cases after imported global modules: $0.95$.
- Confidence that the endpoint-cap first-lobe route remains the best main route: $0.90$.
- Confidence that $n=2$ can be certified by corrected-cubic interval root isolation: $0.75$.
- Confidence that a single monolithic Langer theorem closes all large $n$: $0.40$.
- Confidence that a split Langer plus rational-Bessel plus finite-degree certification program can eventually close the semi-discrete target: $0.65$.
- Confidence that the full real-parameter KKT conjecture is proved at this stage: $0.20$.

--- OUTPUT FROM A2 ---
## Summary

Round 22 correctly identified the architectural limits of a monolithic, unweighted global Langer approach, establishing that distinct parameter boundary behaviors prohibit a uniform methodology across the entire parameter strip. The analytical bottleneck for the finite-$B$ first-lobe amplitude theorem has been sharply localized to the accurate integration of the transformed residual. My task for Round 23 is to evaluate the Rational-Coordinate Bessel route as a proposed small-$\alpha$ complement to the Bulk Langer track. I will present the exact rational-coordinate normal form, derive the residual algebraically, and formulate the Volterra integral representation.

While previous rounds generated an asymptotic narrative suggesting a transition threshold of $\alpha \le 1.04 n^{2/3}$, I must recalibrate this claim. The rational-coordinate normal form is highly useful, and its residual formula is algebraically checkable. However, any Volterra variation estimate remains strictly theorem-level only after explicit kernel bounds, detailed Bessel-to-Airy transition constants, exact endpoint treatment, and rigorous slack comparisons are fully stated. The previously claimed threshold is provisional and must be derived from displayed, finite-parameter inequalities. In this response, I will map the exact dependencies required to formalize this track, audit the kernel signs to prevent absolute-value inflation, and propose a concrete mathematical pathway to bound the integration tail, converting the asymptotic scaling into a strictly bounded framework.

## Assumptions

1. The inherited global modules, including central contour clearance, weighted-energy limits, small-exponent bounding for $0 \le \alpha \le 1/2$, and structural left-right symmetry, correctly reduce the unbounded parameter space to the right endpoint cap defined by $0 \le u \le u_\sigma \le n$.
2. The endpoint ordinary differential equation $(p_B H')' + q_B H = 0$ and the corresponding analytical cap definitions certified in A3's Round 22 lemma bank are algebraically exact.
3. The targeted residual parameter strip is firmly bounded by $n \ge 1$, $1/2 < \alpha < \alpha_E(n)$, and $\beta \ge 0$, where $\alpha_E(n) = \frac{(2n+1)(n+1)}{2n+3}$.
4. Landau's uniform Bessel maximum theorem, establishing that the supremum over $t$ of $|J_\nu(t)|$ is monotonically decreasing in the order $\nu \ge 1/2$, natively supports the core unperturbed reference amplitude limit.
5. The gamma-ratio normalization factor $M_{n,\alpha,B}$ can be locally bounded by a strict envelope $1 + C/(n+1)$ that does not consume the available fractional KKT margin, pending A3's final Binet remainder certification.
6. Watson's uniform Nicholson-type product bounds and cylinder-function zero-interlacing theorems apply securely to the real-order Bessel functions on the positive real axis up to the first local extrema.

## Claim ledger

* **[PROVED]** The exact rational-coordinate normal form residual $\Delta Q(z)$ is strictly negative and uniformly bounded by $Q_{\max} \le 2.25$ everywhere on the cap, including the confluent Laguerre limit at $\theta=0$.
* **[PROVED]** The relative Rational-Bessel Volterra kernel multiplier exhibits a strictly positive sign profile for $0 < s < z \le z_1$, allowing a one-sided majorization that bypasses crude absolute-value matrix inflation.
* **[PROVED]** The pointwise $\mathcal{O}(1)$ value of the residual at the $z=0$ hard edge is annihilated by the geometric contraction of the $s \, ds$ Volterra integration measure, indicating that the integral variation remains bounded despite the pointwise non-vanishing limit.
* **[DERIVED-UNDER-ASSUMPTIONS]** The evaluated absolute Volterra variation satisfies an integrated bound of the form $\mathcal{V}_{\mathrm{Bess}} \le \frac{3}{16} \frac{\alpha^3}{\Lambda_B^2} + \mathcal{O}(\alpha^{8/3}/\Lambda_B^2)$, scaling asymptotically as $\mathcal{O}(\alpha^3/n^2)$.
* **[CONJECTURED]** The available KKT multiplicative margin tolerates this integral variation up to an explicit provisional threshold of $\alpha \le 1.04 n^{2/3}$, assuming the transition tail constants are rigorously bounded below the available slack.
* **[HEURISTIC]** The operational threshold guarantees a wide, overlapping transition window with the $\alpha \ge C\sqrt{n}$ Bulk Langer track, validating the regime-split analytical strategy as a necessary proof architecture.

## Theorem-dependency audit

* **Volterra-Gronwall Integral Theory:** This is utilized to construct a strict upper bound on the perturbed amplitude $Y(z)$ relative to the reference amplitude $Y_0(z)$. The established sign-definiteness of the interacting elements satisfies standard one-sided Gronwall monotonic requirements without imposing conservative modulus operations on the entire combined integrand.
* **Bessel Wronskian Identity:** The derivation relies natively on the canonical continuous relation $J_\alpha(x) Y_\alpha'(x) - J_\alpha'(x) Y_\alpha(x) = \frac{2}{\pi x}$ to establish the monotonically increasing nature of the ratio $Y_\alpha(x)/J_\alpha(x)$.
* **Cylinder Function Interlacing Properties:** The framework relies on the strict interlacing property $j_{\alpha,1}' < y_{\alpha,1}$, meaning the first derivative zero of the Bessel function of the first kind strictly precedes the first root of the Bessel function of the second kind, guaranteeing that $Y_\alpha(x) < 0$ continuously from the origin up to the first peak.
* **Watson's Bessel Product Bound:** We rely on the uniform inequality $|J_\alpha(x) Y_\alpha(x)| \le \frac{1}{\pi \sqrt{\alpha^2 - x^2}}$ for $0 \le x < \alpha$ to execute the exact explicit integration of the Volterra kernel over the bulk pre-transition domain.
* **Dunster-Gil-Segura Turning Point Theory:** Required to provide the explicit constants and weight functions for the transition tail integral where Watson's bound ceases to apply.

## Main claim or direction

The Rational-Coordinate Bessel track is proposed as a highly structured small-$\alpha$ complement to the global Weighted Langer track. By mapping the endpoint ordinary differential equation into the exact coordinate $z = Bu/(B-u)$, the residual $\Delta Q(z)$ is stripped of singular hard-edge terms that would otherwise induce integration failure. Coupled with a kernel sign audit designed to suppress absolute-value inflation, the Volterra variation evaluates to a tightly controlled leading integral. While the current variation scaling of $\mathcal{O}(\alpha^3/n^2)$ is derived under assumptions regarding the transition tail, formalizing these constants would provide a calculable amplitude bound for the first lobe. If certified, this framework will mathematically bridge the transition strip up to a provisional threshold such as $\alpha \le 1.04 n^{2/3}$, allowing a rigorous handoff to the Bulk Langer regime well before the Bessel scaling diverges.

## Detailed derivations

### 1. Rational-Coordinate Transformation and Exact Normal Form

We must convert the certified affine endpoint equation $(p_B H')' + q_B H = 0$ into the rational coordinate space to separate the fractional Bessel core natively. We define the independent variable transformation:

$$ z = \frac{Bu}{B-u} $$

which implies the inverse mapping:

$$ u = \frac{Bz}{B+z} $$

The exact Jacobian of this transformation evaluates to:

$$ \frac{dz}{du} = \frac{B(B-u) - Bu(-1)}{(B-u)^2} = \frac{B^2}{(B-u)^2} = \frac{(B+z)^2}{B^2} $$

Conversely, the inverse derivative is:

$$ \frac{du}{dz} = \frac{B^2}{(B+z)^2} $$

The inverse metric transforms the leading kinetic coefficient $p_B(u) = u(1 - u/B)$ into a rational function of $z$. Since $1 - u/B = 1 - z/(B+z) = B/(B+z)$, we have:

$$ p_B(u(z)) = \left( \frac{Bz}{B+z} \right) \left( \frac{B}{B+z} \right) = \frac{B^2 z}{(B+z)^2} $$

The principal differential operator maps precisely via the chain rule as $(p_B H_u')_u' = \frac{dz}{du} \frac{d}{dz} \left( p_B \frac{dz}{du} H_z' \right)$. Calculating the inner kinetic multiplier gives:

$$ p_B \frac{dz}{du} = \left( \frac{B^2 z}{(B+z)^2} \right) \left( \frac{(B+z)^2}{B^2} \right) = z $$

Thus, the differential endpoint ODE $(p_B H')' + q_B H = 0$ simplifies operationally to:

$$ \frac{(B+z)^2}{B^2} (z H_z')_z' + q_B H = 0 $$

Multiplying by the inverse coefficient yields:

$$ (z H_z')_z' + \frac{B^2}{(B+z)^2} q_B H = 0 $$

Let the transformed potential be defined as $\widehat{q}_B(z) = \frac{B^2}{(B+z)^2} q_B(u(z))$. To prepare this for the Volterra integral framework, we perform the regularizing Liouville dependent-variable transformation:

$$ Y(z) = z^{1/2}H(z) $$

This eliminates the first derivative term, producing the normal form:

$$ Y'' + \left( \frac{\widehat{q}_B(z)}{z} + \frac{1}{4z^2} \right) Y = 0 $$

We can recall the identity from A3's certified algebra, $z \widehat{q}_B(z) = K_B(u(z))$, and rewrite the multiplier strictly as:

$$ \frac{\widehat{q}_B(z)}{z} = \frac{K_B(u(z))}{z^2} $$

Using the certified quadratic expansion $K_B(u) = -\frac{\alpha^2}{4} + \Lambda_B u - \Delta_B u^2$, we extract the exact rational residual decomposition:

$$ \frac{K_B(u(z))}{z^2} = \frac{-\alpha^2/4}{z^2} + \frac{\Lambda_B \frac{Bz}{B+z}}{z^2} - \frac{\Delta_B \frac{B^2 z^2}{(B+z)^2}}{z^2} $$

$$ \frac{K_B(u(z))}{z^2} = -\frac{\alpha^2}{4z^2} + \frac{\Lambda_B B}{z(B+z)} - \frac{\Delta_B B^2}{(B+z)^2} $$

We decompose the interior cross-term via partial fractions $\frac{B}{z(B+z)} = \frac{1}{z} - \frac{1}{B+z}$, which gives:

$$ \frac{K_B(u(z))}{z^2} = -\frac{\alpha^2}{4z^2} + \frac{\Lambda_B}{z} - \frac{\Lambda_B}{B+z} - \frac{\Delta_B B^2}{(B+z)^2} $$

Reassembling the normal form provides exactly the separated reference model:

$$ Y'' + \left( \frac{\Lambda_B}{z} + \frac{1-\alpha^2}{4z^2} + \Delta Q(z) \right) Y = 0 $$

where the residual is identically stripped of any hard-edge Bessel poles:

$$ \Delta Q(z) = -\frac{\Lambda_B}{B+z} - \frac{\Delta_B B^2}{(B+z)^2} $$

### 2. Residual Bounding and the Confluent Limit

To construct a bounded variation integral, we must uniformly majorize the absolute magnitude $|\Delta Q(z)|$ on the physical integration domain $z \ge 0$. Note that $\Delta Q(z)$ consists entirely of negative terms, rendering its sign uniform. Because $\Lambda_B \le n + \frac{\alpha+1}{2}$ and $B = n + \alpha + \beta + 1$, the bounding ratio $\Lambda_B/B$ is strictly less than 1. Similarly, the quadratic parameter is $\Delta_B = \frac{c_B}{B} + \frac{r_B^2}{4}$. Since $c_B/B < 1$ and $r_B < 1$, we safely guarantee $\Delta_B \le 1 + 1/4 = 1.25$.

Because $z \ge 0$ across the endpoint cap, the maximum magnitude of the completely negative residual occurs exactly at the origin $z=0$:

$$ |\Delta Q(z)| \le \frac{\Lambda_B}{B} + \Delta_B \equiv Q_{\max} $$

Using our upper bounds, $Q_{\max} \le 1 + 1.25 = 2.25$. At the $\theta=0$ Laguerre face (where $B \to \infty$), the coordinate $z$ limits to $u$, and the residual evaluates to:

$$ \lim_{B \to \infty} \Delta Q(z) = -0 - \frac{1}{4} = -1/4 $$

Thus, the residual remains uniformly bounded and non-singular across the entire parameter strip, a critical prerequisite for the small-$\alpha$ Volterra formulation.

### 3. Volterra Integral and Wronskian Construction

The unperturbed fractional Bessel reference equation is:

$$ Y_0'' + \left( \frac{\Lambda_B}{z} + \frac{1-\alpha^2}{4z^2} \right) Y_0 = 0 $$

The physically relevant regular solution that matches the Frobenius endpoint data is $Y_0(z) = M_{n,\alpha,B} W_1(z)$, where the principal cylinder function is $W_1(z) = \sqrt{z} J_\alpha(2\sqrt{\Lambda_B z})$.
The linearly independent subdominant solution required for the Green's function is $W_2(z) = \sqrt{z} Y_\alpha(2\sqrt{\Lambda_B z})$.

By the standard cylinder function properties, computing the Wronskian $W(W_1, W_2) = W_1 W_2' - W_1' W_2$ yields exactly $\frac{1}{\pi}$. The exact Volterra integral equation for the perturbed amplitude $Y(z)$ is formulated as:

$$ Y(z) = Y_0(z) + \int_0^z \mathcal{K}(z,s) (-\Delta Q(s)) Y(s) , ds $$

where the resolvent kernel is $\mathcal{K}(z,s) = \pi [W_1(s) W_2(z) - W_1(z) W_2(s)]$.
Let $t_s = 2\sqrt{\Lambda_B s}$ and $t_z = 2\sqrt{\Lambda_B z}$. The kernel expands to:

$$ \mathcal{K}(z,s) = \pi \sqrt{sz} \left[ J_\alpha(t_s) Y_\alpha(t_z) - J_\alpha(t_z) Y_\alpha(t_s) \right] $$

### 4. Kernel Sign Audit and Strict Majorization

We study the relative amplification ratio $U(z) = Y(z)/Y_0(z)$ up to the first critical point $z_1$. Dividing the Volterra equation by $Y_0(z)$ yields:

$$ U(z) = 1 + \int_0^z \frac{\mathcal{K}(z,s) W_1(s)}{W_1(z)} (-\Delta Q(s)) U(s) , ds $$

The relative kernel weight is defined as $\mathcal{W}(z,s) = \frac{\mathcal{K}(z,s) W_1(s)}{W_1(z)}$. Evaluating this explicitly gives:

$$ \mathcal{W}(z,s) = \pi s J_\alpha(t_s) \left[ J_\alpha(t_s) \frac{Y_\alpha(t_z)}{J_\alpha(t_z)} - Y_\alpha(t_s) \right] $$

By cylinder function interlacing properties, the first zero of the Neumann function strictly satisfies $j_{\alpha,1}' < y_{\alpha,1}$ for all $\alpha \ge 1/2$. Because our required peak $t_1$ aligns approximately with $j_{\alpha,1}'$, we mathematically guarantee that for all $t_s < t_z \le t_1$, we have $Y_\alpha(t_z) < 0$, while the primary Bessel component remains $J_\alpha(t_s) > 0$.

Taking the derivative of the Neumann-to-Bessel quotient via the exact Wronskian yields:

$$ \frac{d}{dt} \left( \frac{Y_\alpha(t)}{J_\alpha(t)} \right) = \frac{J_\alpha(t) Y_\alpha'(t) - J_\alpha'(t) Y_\alpha(t)}{J_\alpha(t)^2} = \frac{2}{\pi t J_\alpha(t)^2} $$

Because $t > 0$ and the squared denominator is positive, the derivative is strictly positive. The quotient is strictly monotonically increasing. For any $t_s < t_z$, we have $\frac{Y_\alpha(t_s)}{J_\alpha(t_s)} < \frac{Y_\alpha(t_z)}{J_\alpha(t_z)}$. Multiplying this inequality by the strictly positive $J_\alpha(t_s)$ yields:

$$ J_\alpha(t_s) \frac{Y_\alpha(t_z)}{J_\alpha(t_z)} - Y_\alpha(t_s) > 0 $$

This mathematically proves the relative kernel is strictly positive. We do not need a crude absolute-value modulus over the whole bracket, which often plagues Liouville-Green estimates. Furthermore, because $Y_\alpha(t_z)/J_\alpha(t_z) < 0$ at all locations prior to the peak $t_z = t_1$, the term $J_\alpha(t_s) \frac{Y_\alpha(t_z)}{J_\alpha(t_z)}$ is strictly negative. We possess a sum of a negative and a positive magnitude inside the bracket. By dropping the negative component completely, we formulate a structurally pure upper bound:

$$ \mathcal{W}(z_1,s) < \pi s J_\alpha(t_s) (-Y_\alpha(t_s)) = \pi s |J_\alpha(t_s) Y_\alpha(t_s)| $$

Because $-\Delta Q(s) > 0$ and $U(s) > 0$, we can apply Gronwall's monotonic inequality to $U(z_1)$ to provide an amplitude bound:

$$ Y(z_1) \le Y_0(z_1) \exp\left( \mathcal{V}_{\mathrm{Bess}} \right) $$

where the integrated variation is defined as:

$$ \mathcal{V}*{\mathrm{Bess}} = \int_0^{z_1} \pi s |J*\alpha(t_s) Y_\alpha(t_s)| |\Delta Q(s)| , ds $$

### 5. Variation Integration and the Provisional Threshold

We map the integral back to the argument space via $s = \frac{t^2}{4\Lambda_B}$ and $ds = \frac{t}{2\Lambda_B} dt$. The geometric integration measure transforms as $\pi s ds = \frac{\pi t^3}{8 \Lambda_B^2} dt$. Imposing the pointwise global uniform bound $|\Delta Q(s)| \le Q_{\max} \le 2.25$:

$$ \mathcal{V}*{\mathrm{Bess}} \le \frac{\pi Q*{\max}}{8\Lambda_B^2} \int_0^{t_1} t^3 |J_\alpha(t) Y_\alpha(t)| , dt $$

To approximate this rigorously, we split the domain into the classical pre-transition region $t \in (0, \alpha)$ and the subdominant transition tail $t \in (\alpha, t_1)$. For the pre-transition zone, Watson's rigorous uniform product bound applies: $|J_\alpha(t) Y_\alpha(t)| \le \frac{1}{\pi \sqrt{\alpha^2 - t^2}}$. The primary volumetric integral evaluates analytically via the trigonometric substitution $t = \alpha \sin x$:

$$ \int_0^\alpha \frac{t^3}{\pi \sqrt{\alpha^2 - t^2}} dt = \frac{\alpha^3}{\pi} \int_0^{\pi/2} \sin^3 x , dx = \frac{2}{3\pi} \alpha^3 $$

For the transition tail $t \in (\alpha, t_1)$, the integration width is established by the first Airy root scaling $t_1 - \alpha \approx 0.81\alpha^{1/3}$. Assuming the Bessel product plateaus at a maximum magnitude of $\mathcal{O}(\alpha^{-2/3})$, the resulting tail integral scales purely as $\alpha^3 \cdot \alpha^{1/3} \cdot \alpha^{-2/3} = \mathcal{O}(\alpha^{8/3})$. This forms the basis of the derived-under-assumptions scaling behavior.

The full provisional variation inequality consolidates to:

$$ \mathcal{V}*{\mathrm{Bess}} \le \frac{\pi Q*{\max}}{8\Lambda_B^2} \left( \frac{2\alpha^3}{3\pi} + \mathcal{O}(\alpha^{8/3}) \right) \le \frac{Q_{\max}}{12} \frac{\alpha^3}{\Lambda_B^2} + \mathcal{O}\left(\frac{\alpha^{8/3}}{\Lambda_B^2}\right) $$

Substituting the bounded limit $Q_{\max} = 2.25 = 9/4$, we derive the explicit leading-order absolute bound:

$$ \mathcal{V}_{\mathrm{Bess}} \le \frac{3}{16} \frac{\alpha^3}{\Lambda_B^2} $$

To check the operational overlap condition against the target margin, we require $\exp(\mathcal{V}_{\mathrm{Bess}}) \le \frac{T}{B_* M}$. The target minimum evaluates to $T \ge (1/2)^{1/4} \approx 0.8409$. Given Landau's rigorous maximum $B_* \le 0.680$ and assuming the gamma ratio is constrained such that $M \approx 1$, the required exponential slack is $\ln(0.8409 / 0.680) \approx 0.2123$.
Setting the derived analytical variation bound to match this operational threshold yields a provisional requirement:

$$ \frac{3}{16} \frac{\alpha^3}{\Lambda_B^2} \le 0.2123 \implies \alpha^3 \le 1.132 \Lambda_B^2 \implies \alpha \le 1.04 n^{2/3} $$

This derives the provisional overlapping threshold $\alpha \le 1.04 n^{2/3}$, which requires firm finite constants before it acts as a certified bridge to the Bulk Langer method.

## Unsupported closure audit

The critical components left in unsupported asymptotic bounding form above include the exact evaluation of the finite scalar constant for the subdominant transition tail integral $\int_\alpha^{t_1} t^3 |J_\alpha Y_\alpha| dt$. While substituting the Airy envelope expansions suggests the tail cleanly maps to an $\mathcal{O}(\alpha^{8/3})$ contribution, this numerical integration lacks an explicitly proved error kernel bound generated from named theorems (e.g., Dunster-Gil-Segura).

Additionally, the provisional threshold $\alpha \le 1.04 n^{2/3}$ is not a closed theorem. It relies heavily on A3 cementing the Binet remainder bounds for the $M_{n,\alpha,B}$ normalization factor to confirm that the $\approx 21\%$ fractional operational slack remains structurally untouched by initialization inflation across the entire parameter strip.

## Potential gaps

* **Gamma-Ratio Spike Erosion:** Should the normalization factor $M_{n,\alpha,B}$ experience sharp, localized inflation near the $\theta \to 0$ Laguerre face for moderate $n$, it could consume the geometric slack independently of the Volterra integral, requiring smaller interval cutoff bounds.
* **Low-$n$ Transition Window Contraction:** The extracted constant $1.04 n^{2/3}$ formally anchors the threshold safely within the asymptotic large-$n$ horizon. For very small degrees (e.g., $n=1,2,3$), the algebraic decoupling is highly inefficient. This mandates A4's strict scalar certificates rather than Volterra scaling theorems for low degrees.
* **Transition Tail Constants:** The assumption that the integration from $\alpha$ to $t_1$ behaves smoothly as $\mathcal{O}(\alpha^{8/3})$ requires certified explicit bounds on the Bessel product in the transition zone, without which the variation integral remains incomplete.

## Counterexample or obstruction search

### Pointwise $\theta=0$ Laguerre Barrier Audit

In previous analytical rounds, an $\mathcal{O}(1)$ pointwise residual evaluated at $z=0$ on the Laguerre face was viewed as a potential major obstruction to continuous error integration. The explicit integration measure derived in the Rational-Bessel framework provides a strong mathematical counter-argument.

The Volterra kernel $\mathcal{K}/Y_0$ introduces the integration measure $\pi s |J_\alpha Y_\alpha| ds$. Near $s \to 0$, the Bessel product scales as $|J_\alpha Y_\alpha| \sim 1/\alpha$, rendering the volume measure structurally proportional to $s\,ds$. The integration window $[0, z_1]$ scales as $z_1 \sim \frac{\alpha^2}{\Lambda_B} \approx \frac{\alpha^2}{n}$. The total accumulation integral volume natively shrinks quadratically, scaling identically to $(\alpha^2/n)^2 \sim \alpha^4/n^2$. When modulated by the $1/\alpha$ Watson envelope, this yields exactly $\mathcal{O}(\alpha^3/n^2)$.

Therefore, the $\mathcal{O}(1)$ magnitude of $\Delta Q(0)$ is thoroughly benign; it is aggressively suppressed by the shrinking zero-volume geometry of the integration domain. This resolves the concern that the $\theta=0$ face inherently breaks the Volterra integral.

## Divergent alternatives and 20% exploration

**Investigation of Semi-Discrete Induction ($\beta \in \mathbb{N}_0$) via Contiguous Relations:**

I evaluated whether restricting $\beta$ to integer values permits an inductive approach to directly bypass continuous analytical bounds in the residual strip. The canonical Jacobi contiguous relation linking adjacent states behaves functionally as:

$$ P_n^{(\alpha, \beta)}(x) = P_n^{(\alpha, \beta-1)}(x) + \frac{1+x}{2} P_{n-1}^{(\alpha+1, \beta)}(x) $$

To establish the required KKT amplitude bound inductively, we require a strict upper limit on the amplitude at the new critical point $u_1(\beta)$. The fundamental issue is that shifting the integer parameter $\beta$ alters the differential potential $K_B(u)$, causing the physical location of the spatial critical point to shift: $u_1(\beta) \neq u_1(\beta-1)$.

When evaluating the $\beta-1$ polynomial at the shifted coordinate $u_1(\beta)$, it is evaluated *off* its native local maximum, thereby involving non-zero derivative terms. By the Mean Value Theorem, we expect a functional relationship approximating $H(u_1(\beta)) \approx H(u_1(\beta-1)) + \frac{1}{2}H''(u_1(\beta-1))(u_1(\beta) - u_1(\beta-1))^2$. The necessity of rigorously bounding this highly oscillatory residual forces the adoption of continuous differential tracking metrics. Thus, applying integer $\beta$ constraints introduces no immediate analytical simplification to the spatial amplitude variation.

## Verification plan

1. A4 must formally deploy the established trigamma boundary execution for the $n=1$ scalar envelope $E(\alpha) < 0.39$ directly into the official numerical verification log using strictly outward-rounded methods to certify Track C natively.
2. A2 must evaluate the analytical bounds for the transition tail $\int_\alpha^{t_1} t^3 |J_\alpha Y_\alpha| dt$ using Dunster's explicit cylinder bounds to formalize the subdominant numerical constant, converting the $\mathcal{O}(\alpha^3/n^2)$ scaling into a strict theorem.
3. A3 must execute the explicit Binet/Wendel remainder bounds for $M_{n,\alpha,B}$ to confirm the required operational slack is maintained across the boundary layer.

## Research strategy

The parameter regime split is logically validated and mathematically complementary:

1. **Track B (Small $\alpha$ / Hard Edge):** The Rational-Bessel Volterra framework natively handles provisional ranges up to $\alpha \le 1.04 n^{2/3}$ with derived $\mathcal{O}(\alpha^3/n^2)$ error scaling, bypassing the pointwise Laguerre face obstruction via spatial volume calculus.
2. **Track A (Bulk $\alpha$):** The Weighted Langer framework safely handles $\alpha \ge C\sqrt{n}$, providing massive continuous analytical overlap with the Track B domains.
3. **Track C (Low Degree):** The cases $n=1,2$ are isolated and will be natively resolved via purely scalar, explicit analytical interval bounding techniques.

The panel should focus on providing explicit bounding constants for Track B's Volterra scaling lemma. A1 should be directed to explicitly bound the Frobenius-to-Airy connection coefficient $\mathfrak{C}_c$ to formalize the remaining parameters within the Bulk Langer track.

## Useful lemmas

**Lemma L23.A2.1: Exact Rational-Bessel Relative Kernel Structure**
For the exact rational normal form $Y'' + (\frac{\Lambda_B}{z} + \frac{1-\alpha^2}{4z^2} + \Delta Q(z))Y = 0$, the relative amplitude perturbation $U(z) = Y(z)/Y_0(z)$ is governed by a Volterra kernel ratio. Guided algebraically by the interlacing roots $j_{\alpha,1}' < y_{\alpha,1}$ and the strict positivity of the Wronskian derivative $\frac{d}{dt}(Y_\alpha/J_\alpha) > 0$, the relative kernel is derived to be strictly positive prior to the first peak $z_1 \approx j_{\alpha,1}'$. This permits a separable Gronwall majorant that circumvents spurious absolute-value matrix limit inflation natively.

**Lemma L23.A2.2: Rational-Bessel Uniform Residual Bound**
The fractional residual difference mapped into the rational coordinate $z = \frac{Bu}{B-u}$ evaluates exactly to $\Delta Q(z) = -\frac{\Lambda_B}{B+z} - \frac{\Delta_B B^2}{(B+z)^2}$. Because $\Lambda_B/B < 1$ and $\Delta_B \le 1.25$, the residual is strictly negative and its absolute magnitude is uniformly bounded by $Q_{\max} = 2.25$ across the entire non-negative spatial domain $z \ge 0$, remaining fully bounded at the Laguerre boundary limit $\theta=0$.

## What should be tested next

* **A3** must execute the explicit numerical extraction of the bounded fractional remainder limits for the continuous Binet ratio of $M_{n,\alpha,B}$ to authenticate the initialization scaling assumptions explicitly.
* **A4** must verify the bounds of the corrected degree-two cubic using formal interval methods to process the low-degree transition phase constraints mapping to $n \le N_0$.

## Confidence

0.85

## Pre-submit calibration check

* blocked rhetoric: none found
* confidence above 0.89: none found
* unsupported closure claim: none found
* invented or unchecked citation: none found / DGS requires instantiation for constants

--- OUTPUT FROM A4 ---
Summary:
The primary objective for Round 23 is to complete the $n=1$ residual endpoint theorem, initiate a rigorous $n=2$ interval certificate, and supply explicit analytic constants for the first-lobe Bessel perturbation framework. I provide a fully rigorous, elementary proof that the global Bessel maximum satisfies $\sup_{\nu\ge 1/2, t>0} |J_\nu(t)| < 0.6795 < 0.680$. I derive the exact quadratic equation governing the critical points of the $n=1$ endpoint-cap function, revealing a structural factorization when $\beta=0$ and demonstrating that critical points frequently fall outside the cap boundary $u_\sigma$, thereby trivializing the endpoint bound. I extend this algebraic certification to $n=2$, deriving the exact cubic equation for its critical points via the hypergeometric representation. I outline the Volterra kernel bounds for the finite-$B$ perturbation, explicitly resolving the apparent singularity of the Neumann function at the origin through Frobenius matching, and specify a reproducible interval-arithmetic verification plan for the compactified parameter space of low degrees.

Assumptions and notation:
- $n \in \mathbb{N}_0$, $\alpha, \beta \ge 0$.
- $B = n + \alpha + \beta + 1$.
- Endpoint variable $u = \frac{B(1-x)}{2}$, mapping $x \in [\sigma, 1]$ to $u \in [0, u_\sigma]$.
- Cap boundary $u_\sigma = \frac{nB}{B+n-1}$. For $n=1$, $u_\sigma = 1$. For $n=2$, $u_\sigma = \frac{2B}{B+1}$.
- Normalized function $H_{n,\alpha,\beta}(u) = g_n^{(\alpha,\beta)}(1 - 2u/B)$.
- Sonin product $K_B(u) = p_B(u)q_B(u)$, with $p_B(u) = u(1 - u/B)$.
- Compactified parameter $\theta = \frac{n+\alpha+1}{B} \in [0, 1]$.
- Bessel normalization $M_{n,\alpha,B} = \left( \frac{\Gamma(B)\Gamma(n+\alpha+1)}{\Gamma(B-\alpha)\Gamma(n+1)} \right)^{1/2} (B\Lambda_B)^{-\alpha/2}$.
- Target bound $T_{n,\alpha,\beta} = \left( \frac{(n+1)B}{(n+\alpha+1)(B-\alpha)} \right)^{1/4}$.
- Bessel frequency parameter $\Lambda_B = c_B + \frac{\alpha r_B}{2}$, where $c_B = n + \frac{r_B}{2}$ and $r_B = 1 - \frac{n+1}{B}$.
- Scaled cap variable $v = u/B \in [0, v_\sigma]$, where $v_\sigma = u_\sigma/B$.

Certification label legend:
- [PROVED]: Rigorously derived in this text with explicit constants, exact algebra, or reproducible interval bounds.
- [DERIVED-UNDER-ASSUMPTIONS]: Analytically structured but relies on a named theorem or unexecuted interval evaluation for the final scalar constant.
- [HEURISTIC]: Plausible scaling or structural argument lacking explicit error-control integrals.
- [CONJECTURED]: Expected to be true based on asymptotic evidence, but no finite-parameter inequality is provided.
- [ASSUMED]: Taken as a working hypothesis from prior rounds or standard literature.
- [LIKELY-FALSE]: Identified as structurally flawed or numerically violated.

Claim ledger:
1. The global Bessel maximum satisfies $\sup_{\nu\ge 1/2, t>0} |J_\nu(t)| < 0.6795 < 0.680$. [PROVED]
2. For $n=1$, the critical points of $H_{1,\alpha,\beta}(u)$ in the cap are exactly the roots of a derived quadratic equation in $v = u/B$. [PROVED]
3. The $n=1$ quadratic sum of coefficients is exactly $\beta(\beta+1)$, implying $v=1$ is a root if and only if $\beta=0$. [PROVED]
4. Critical points of the $n=1$ cap function frequently lie outside the cap boundary $v_\sigma = 1/B$, rendering the cap maximum trivially bounded by the central contour module. [PROVED]
5. For $n=2$, the critical points of $H_{2,\alpha,\beta}(u)$ are exactly the roots of a derived cubic equation in $v = u/B$, with coefficients explicitly given in terms of $B$ and $\alpha$. [PROVED]
6. The Gamma-ratio normalization satisfies $M_{n,\alpha,B} \le 1 + \frac{C_\Gamma}{n+1}$ for explicit $C_\Gamma$ in the residual strip. [DERIVED-UNDER-ASSUMPTIONS]
7. The Volterra perturbation remainder satisfies $|R_B(u)| \le \frac{C_B}{B}$ up to the first lobe, with the Neumann singularity exactly canceled by the Frobenius initialization. [DERIVED-UNDER-ASSUMPTIONS]
8. A uniform large-$n$ threshold $N_0$ exists such that the first-lobe bound holds for all $n \ge N_0$. [CONJECTURED]
9. The rational coordinate $v = B\frac{1-x}{1+x}$ eliminates the affine Liouville-Green amplitude inflation but introduces a non-trivial Schwarzian residual. [HEURISTIC]

Exact derivations:

**1. Rigorous Bessel Maximum Certificate**
We prove that $B_* = \sup_{\nu\ge 1/2, t>0} |J_\nu(t)| < 0.6795$.
By Landau's monotonicity theorem for Bessel functions, the function $\nu \mapsto \max_{t>0} J_\nu(t)$ is strictly decreasing for $\nu \ge 1/2$. Thus, the supremum is attained at $\nu = 1/2$.
For $\nu = 1/2$, $J_{1/2}(t) = \sqrt{\frac{2}{\pi t}} \sin t$. We seek the maximum of $h(t) = J_{1/2}(t)^2 = \frac{2}{\pi} \frac{\sin^2 t}{t}$ for $t > 0$.
Setting $h'(t) = 0$ yields $\frac{2\sin t \cos t \cdot t - \sin^2 t}{t^2} = 0$, which simplifies to $\tan t = 2t$ for the first positive lobe.
Let $t_0$ be the unique root of $\tan t = 2t$ in $(0, \pi/2)$. Using directed rounding interval arithmetic:
$t_0 \in [1.165561185, 1.165561186]$.
At $t_0$, $\sin^2 t_0 = \frac{\tan^2 t_0}{1 + \tan^2 t_0} = \frac{4t_0^2}{1 + 4t_0^2}$.
The maximum value is $h(t_0) = \frac{2}{\pi t_0} \frac{4t_0^2}{1 + 4t_0^2} = \frac{8t_0}{\pi(1 + 4t_0^2)}$.
We evaluate the components with strict interval bounds:
$8t_0 \in [9.32448948, 9.32448949]$.
$4t_0^2 \in [5.4298523, 5.4298524]$.
$1 + 4t_0^2 \in [6.4298523, 6.4298524]$.
The ratio $\frac{8t_0}{1+4t_0^2} \in [1.4501871, 1.4501872]$.
Using $\pi \in [3.14159265, 3.14159266]$, we obtain:
$h(t_0) \in [0.4616079, 0.4616081]$.
Taking the square root to find the maximum of $J_{1/2}(t)$:
$\sqrt{h(t_0)} \in [0.679417, 0.679418]$.
Since $0.679418 < 0.680$, we have rigorously established $\max J_{1/2}(t) < 0.680$. [PROVED]

**2. Exact $n=1$ Critical Point Quadratic**
For $n=1$, the hypergeometric representation gives:
$P_1^{(\alpha,\beta)}(1-2v) = (\alpha+1) {}_2F_1(-1, B+1; \alpha+1; v) = \alpha+1 - (B+1)v$.
The normalized function is $H_1(v) = C_1 v^{\alpha/2} (1 - v)^{\beta/2} (\alpha + 1 - (B+1)v)$.
The logarithmic derivative with respect to $v$ is:
$\frac{d}{dv} \ln H_1 = \frac{\alpha}{2v} - \frac{\beta}{2(1-v)} - \frac{B+1}{\alpha+1 - (B+1)v}$.
Setting this to zero and clearing denominators yields:
$\alpha(1-v)(\alpha+1 - (B+1)v) - \beta v(\alpha+1 - (B+1)v) - 2(B+1)v(1-v) = 0$.
Expanding the terms:
Term 1: $\alpha(\alpha+1) - \alpha(B+\alpha+2)v + \alpha(B+1)v^2$.
Term 2: $-\beta(\alpha+1)v + \beta(B+1)v^2$.
Term 3: $-2(B+1)v + 2(B+1)v^2$.
Summing the $v^2$ coefficients: $\alpha(B+1) + \beta(B+1) + 2(B+1) = (\alpha+\beta+2)(B+1) = (B+1)^2$. Let this be $A$.
Summing the $v$ coefficients: $-\alpha(B+\alpha+2) - \beta(\alpha+1) - 2(B+1)$.
Substituting $B = \alpha+\beta+1$, this simplifies exactly to $-(2\alpha^2 + 2\alpha\beta + 5\alpha + 3\beta + 4)$. Let this be $-C$.
The constant term is $\alpha(\alpha+1)$. Let this be $D$.
The critical points are exactly the roots of the quadratic $A v^2 - C v + D = 0$. [PROVED]

**3. Structural Factorization and Cap Trivialization**
The sum of the coefficients of the $n=1$ quadratic is $A - C + D$.
$A - C + D = (\alpha+\beta+2)^2 - (2\alpha^2 + 2\alpha\beta + 5\alpha + 3\beta + 4) + \alpha^2 + \alpha = \beta^2 + \beta = \beta(\beta+1)$.
Thus, $v=1$ is a root of the quadratic if and only if $\beta=0$.
More importantly, we must check if the roots lie inside the cap. The cap boundary is $u_\sigma = 1$, which corresponds to $v_\sigma = 1/B$.
Consider the stress test $\alpha = 0.5, \beta = 0$. Then $B = 2.5$.
$A = (3.5)^2 = 12.25$.
$C = 2(0.25) + 2.5 + 4 = 7$.
$D = 0.5(1.5) = 0.75$.
The discriminant is $\Delta = 49 - 4(12.25)(0.75) = 12.25 > 0$.
The roots are $v = \frac{7 \pm 3.5}{24.5}$, giving $v_1 = 3/7 \approx 0.428$ and $v_2 = 1/7 \approx 0.142$.
The cap boundary is $v_\sigma = 1/2.5 = 0.4$.
Since $v_1 = 0.428 > 0.4$, the first critical point lies strictly outside the cap. The only critical point inside the cap is $v_2$, which corresponds to a local minimum or an inflection point depending on the sign of the second derivative, or it is the first maximum but bounded by the Sonin functional. If $v_1$ is the first maximum and it is outside the cap, the function is monotonic up to the cap boundary, and the maximum is attained at $u_\sigma$, which is already cleared by the central contour module. This structural trivialization is a massive simplification for the interval certificate. [PROVED]

**4. Exact $n=2$ Critical Point Cubic**
For $n=2$, the hypergeometric representation gives:
$P_2^{(\alpha,\beta)}(1-2v) = \frac{(\alpha+1)(\alpha+2)}{2} {}_2F_1(-2, B+1; \alpha+1; v)$.
${}_2F_1(-2, B+1; \alpha+1; v) = 1 - \frac{2(B+1)}{\alpha+1} v + \frac{(B+1)(B+2)}{(\alpha+1)(\alpha+2)} v^2$.
Let $Q(v) = P_2^{(\alpha,\beta)}(1-2v) = E v^2 + F v + G$, where:
$E = \frac{(B+1)(B+2)}{2}$, $F = -(B+1)(\alpha+2)$, $G = \frac{(\alpha+1)(\alpha+2)}{2}$.
The log derivative of $H_2(v) = C_2 v^{\alpha/2} (1-v)^{\beta/2} Q(v)$ is:
$\frac{\alpha}{2v} - \frac{\beta}{2(1-v)} + \frac{Q'(v)}{Q(v)} = 0$.
Multiplying by $2v(1-v)Q(v)$ yields:
$\alpha(1-v)Q(v) - \beta v Q(v) + 2v(1-v)Q'(v) = 0$.
Substituting $Q(v)$ and $Q'(v) = 2Ev + F$, we obtain a cubic equation $c_3 v^3 + c_2 v^2 + c_1 v + c_0 = 0$ with exact coefficients:
$c_3 = -(\alpha+\beta+4)E = -\frac{(B+1)(B+2)(B+3)}{2}$.
$c_2 = (\alpha+4)E - (B+1)F + \beta G = (\alpha+4)\frac{(B+1)(B+2)}{2} + (B+1)^2(\alpha+2) + \beta \frac{(\alpha+1)(\alpha+2)}{2}$.
$c_1 = (\alpha+2)F - (\alpha-\beta)G = -(\alpha+2)^2(B+1) - (\alpha-\beta)\frac{(\alpha+1)(\alpha+2)}{2}$.
$c_0 = \alpha G = \frac{\alpha(\alpha+1)(\alpha+2)}{2}$.
This provides a complete, reproducible algebraic certificate for the $n=2$ critical points. [PROVED]

**5. Gamma Ratio Bound via Robbins**
We audit $M_{n,\alpha,B} = \left( \frac{\Gamma(B)\Gamma(n+\alpha+1)}{\Gamma(B-\alpha)\Gamma(n+1)} \right)^{1/2} (B\Lambda_B)^{-\alpha/2}$.
Using Robbins' bounds $\Gamma(x) = \sqrt{2\pi} x^{x-1/2} e^{-x} e^{\mu(x)}$ with $\frac{1}{12x+1} < \mu(x) < \frac{1}{12x}$.
The ratio $\frac{\Gamma(B)}{\Gamma(B-\alpha)}$ is bounded by:
$\frac{\Gamma(B)}{\Gamma(B-\alpha)} \le \frac{B^{B-1/2} e^{-B} e^{\frac{1}{12B}}}{(B-\alpha)^{B-\alpha-1/2} e^{-(B-\alpha)} e^{\frac{1}{12(B-\alpha)+1}}}$.
Taking the logarithm and expanding in powers of $\alpha/B$, the leading terms exactly cancel the $(B\Lambda_B)^{-\alpha/2}$ factor up to $O(1/B)$.
The residual is bounded by $\exp\left( \frac{\alpha^2}{2B} + \frac{1}{12B} \right)$.
In the residual strip $\alpha \le \alpha_E(n) \sim n$, and $B \ge n+\alpha+1 \ge 2n+1$, the exponent is $O(1/n)$.
Thus $M_{n,\alpha,B} \le 1 + \frac{C_\Gamma}{n+1}$ for an explicit constant $C_\Gamma$ that can be computed by maximizing the residual function over the compact strip. [DERIVED-UNDER-ASSUMPTIONS]

Theorem-dependency checks:
- **Landau's Bessel Monotonicity**: The claim that $\max_t J_\nu(t)$ is decreasing in $\nu$ for $\nu \ge 1/2$ is a known result. If a strict citation is required for the formal lemma bank, A1/A2 should retrieve the exact theorem statement from Watson's *Treatise on the Theory of Bessel Functions* or Landau's 2000 paper. [ASSUMED]
- **Robbins' Gamma Bounds**: The bounds $\sqrt{2\pi} x^{x-1/2} e^{-x} e^{\frac{1}{12x+1}} < \Gamma(x) < \sqrt{2\pi} x^{x-1/2} e^{-x} e^{\frac{1}{12x}}$ are standard and rigorously established. [PROVED]
- **Wendel's Inequality**: $\frac{\Gamma(x+a)}{\Gamma(x) x^a} \le 1$ for $a \in [0,1]$. Used to bound the Gamma ratio when $\alpha \le 1$. For $\alpha > 1$, Kershaw's extension is required. [DERIVED-UNDER-ASSUMPTIONS]
- **Olver's Variation of Parameters**: The existence of the Volterra integral equation for the Bessel perturbation is a standard result in asymptotic analysis. The explicit kernel bounds require execution. [ASSUMED]

Explicit error-bound audit:
To bound the perturbation $R_B(u)$, we transform the finite-$B$ equation $(p_B H')' + q_B H = 0$ into the Bessel normal form using $t = 2\sqrt{\Lambda_B u}$.
The exact equation becomes $\frac{d^2 H}{dt^2} + \frac{1}{t} \frac{dH}{dt} + \left( 1 - \frac{\alpha^2}{t^2} + E_B(t) \right) H = 0$.
The perturbation potential $E_B(t)$ arises from the $1/B$ corrections in $p_B$ and $q_B$.
Explicitly, $p_B(u) = u(1 - u/B)$ and $q_B(u) = \Lambda_B - \Delta_B u - \frac{\alpha^2}{4u(1-u/B)}$.
Expanding for small $u/B$, we find $E_B(t) = O(1/B)$ uniformly for $t \in [0, t_1]$, where $t_1 = 2\sqrt{\Lambda_B u_1}$.
The Volterra integral equation is:
$H(t) = M_{n,\alpha,B} J_\alpha(t) + \int_0^t K(t,s) E_B(s) H(s) ds$,
with kernel $K(t,s) = \frac{\pi s}{2} [J_\alpha(t) Y_\alpha(s) - Y_\alpha(t) J_\alpha(s)]$.
A critical audit point is the behavior at $s=0$. The Neumann function $Y_\alpha(s)$ has a singularity $Y_\alpha(s) \sim -\frac{\Gamma(\alpha)}{\pi} (s/2)^{-\alpha}$.
However, the regular solution $H(s)$ has the Frobenius behavior $H(s) \sim M_{n,\alpha,B} \frac{(s/2)^\alpha}{\Gamma(\alpha+1)}$.
The product $Y_\alpha(s) H(s)$ is therefore bounded and approaches $-\frac{M_{n,\alpha,B}}{\pi \alpha}$ as $s \to 0$.
This exact cancellation removes the singularity from the integrand.
To bound the integral, we use the envelope bounds $|J_\alpha(t)| \le B_*$ and $|K(t,s)| \le C_K s$ for $s \le t$.
The Gronwall inequality yields $|H(t) - M J_\alpha(t)| \le M B_* \left( \exp\left( \int_0^t C_K s |E_B(s)| ds \right) - 1 \right)$.
Since $E_B(s) = O(1/B)$ and the integration domain is bounded by the first lobe $t_1 = O(\sqrt{n})$, the integral is $O(n/B)$.
In the residual strip, $B \ge n+\alpha+1$, so $n/B < 1$. The error is bounded by $\frac{C_B}{B} \le \frac{C_B}{n+1}$.
The exact numerical constant $C_B$ requires integrating the Bessel envelope products, which is assigned to the interval verification plan. [DERIVED-UNDER-ASSUMPTIONS]

Endpoint and turning-point failure modes:
- **$\alpha = 1/2$ boundary**: The Bessel maximum proof holds strictly. The Gamma ratio $M_{n,1/2,B}$ is well-behaved and bounded by Wendel's inequality. No failure mode.
- **$\alpha = \alpha_E(n)$ boundary**: The target margin $T^4 - 1/2$ is smallest here. The perturbation bound must be tight enough to not consume the $O(1/n)$ slack. This is the primary vulnerability for the large-$n$ analytic closure.
- **$\beta = 0$ face**: The cap boundary $u_\sigma$ is smallest relative to $B$. The $n=1$ quadratic factorization shows the critical point is strictly inside the cap or outside. No failure mode.
- **$\theta \to 0$ (Laguerre limit)**: $B \to \infty$. The perturbation $E_B(t) \to 0$. The finite-$B$ equation converges uniformly to the Laguerre equation. The first-lobe bound reduces to the Laguerre cap certificate, which is assumed established for this strip.
- **$n=1, 2, 3$ small degrees**: The asymptotic Volterra bound is too loose. The interval arithmetic plan must handle these exactly via the polynomial root isolation.

Worst-case vulnerability check:
The most dangerous parameter combination for the $n=1$ cap is $\alpha = \alpha_E(1) = 1.2$, $\beta = 0$.
Here $B = 1 + 1.2 + 0 + 1 = 3.2$.
The $n=1$ quadratic coefficients are:
$A = (4.2)^2 = 17.64$.
$C = 2(1.44) + 0 + 5(1.2) + 0 + 4 = 2.88 + 6 + 4 = 12.88$.
$D = 1.2(2.2) = 2.64$.
Quadratic: $17.64 v^2 - 12.88 v + 2.64 = 0$.
Discriminant: $\Delta = 12.88^2 - 4(17.64)(2.64) = 165.8944 - 186.2784 = -20.384 < 0$.
A negative discriminant means there are NO real critical points in the cap.
If there are no real critical points, $H_1(u)$ is monotonic on the cap $u \in [0, 1]$.
Since $H_1(0) = 0$ and $H_1(1)$ is controlled by the central contour or energy bounds, the maximum on the cap is attained at the boundary $u=1$.
This is a massive structural simplification. The first-lobe reduction trivializes when the discriminant is negative, because the Sonin functional monotonicity forces the maximum to the boundary, which is already cleared by the central module.
I must flag this: the existence of a critical point in the cap is NOT guaranteed for all parameters, and when it fails to exist, the endpoint cap is trivially bounded. [PROVED]

Counterexample or obstruction search:
- **Search for $M_{n,\alpha,B} > 1$**: For $n=1, \alpha=0.6, \beta=0 \implies B=2.6$.
  $M_{1,0.6,2.6}^2 = \frac{\Gamma(2.6)\Gamma(2.6)}{\Gamma(2)\Gamma(2)} (2.6 \Lambda_B)^{-0.6}$.
  This can exceed 1 slightly. The interval plan must evaluate $M$ exactly and not assume $M \le 1$.
- **Search for $u_1 > u_\sigma$**: If the quadratic root $v_1 > 1/B$, then $u_1 > 1$, meaning the critical point is outside the cap. This again trivializes the cap bound. The interval plan will naturally catch this by checking $v_1 \le 1/B$.
- **Search for Volterra integral blow-up**: If $\alpha$ is very large, the Neumann function $Y_\alpha(s)$ grows rapidly before the cancellation with $H(s)$ takes effect. However, in the residual strip $\alpha \le \alpha_E(n) \sim n$, the ratio $\alpha/B$ is bounded, preventing blow-up.

Divergent alternatives and 20% exploration:
**Rational Coordinate Prüfer Variables**
Instead of the affine $u$ or rational $v$ coordinates for the Liouville-Green transform, consider applying Prüfer variables directly to the rational coordinate equation $(v H_v')' + \widehat{q}_B(v) H = 0$.
Let $H = R \sin \phi$, $v H_v = R \cos \phi$.
The amplitude equation is $\frac{d}{dv} \ln R = \frac{1}{2} \left( \frac{1}{v} - \widehat{q}_B(v) v \right) \sin(2\phi)$.
Because $\widehat{K}_B(v) = v \widehat{q}_B(v) = K_B(u(v))$ is monotone, the phase-amplitude coupling might allow a direct bound on $R(v_1)$ without passing through the Bessel Volterra integral.
This avoids the $E_B(t)$ perturbation entirely and works directly with the exact finite-$B$ potential.
Obstruction: The initial condition at $v=0$ is singular, requiring a Frobenius-to-Prüfer matching layer. This is a viable fallback if the Volterra constants $C_B$ prove too large. [HEURISTIC]

Symbolic or numerical verification plan:

**Phase 1: $n=1$ Exact Certificate**
1. Define the parameter box: $\alpha \in [0.5, 1.2]$, $\theta \in [0, 1]$.
2. Compute $B = (2+\alpha)/\theta$. (Handle $\theta=0$ via the Laguerre limit module).
3. Evaluate the discriminant $\Delta = C^2 - 4AD$ of the $n=1$ quadratic using interval arithmetic.
4. If $\Delta < 0$ (interval strictly negative), record "No critical point; cap trivialized."
5. If $\Delta \ge 0$, compute the roots $v_{1,2} = \frac{C \pm \sqrt{\Delta}}{2A}$.
6. Filter roots: keep $v_1$ only if $v_1 \in [0, 1/B]$. If no valid root, record "Cap trivialized."
7. For valid $v_1$, compute $u_1 = B v_1$.
8. Evaluate $H_1(u_1)^4$ and compare against $T_{1,\alpha,\beta}^4$.
9. Subdivide the $(\alpha, \theta)$ box until the interval enclosure of $H_1(u_1)^4 - T_{1,\alpha,\beta}^4$ is strictly negative.

**Phase 2: $n=2$ Polynomial Certificate**
1. For $n=2$, use the exact cubic coefficients $c_3, c_2, c_1, c_0$ derived above.
2. The critical points are the roots of $c_3 v^3 + c_2 v^2 + c_1 v + c_0 = 0$.
3. Use the interval Newton method to isolate all real roots of the cubic in $v \in [0, u_\sigma/B]$.
4. Evaluate $H_2(u)$ at each isolated root and at the boundaries $u=0, u_\sigma$.
5. Verify strict negativity of $H_2^4 - T_{2,\alpha,\beta}^4$ via adaptive subdivision.

**Phase 3: Large-$n$ Threshold $N_0$**
1. Implement the Volterra kernel bound numerically to find the smallest $N_0$ such that $M_{n,\alpha,B} (B_* + C_B/n) < 2^{-1/4}$ for all $n \ge N_0$.
2. This $N_0$ defines the upper limit for the interval arithmetic sweep.

Useful lemmas:

**Lemma A4.1 (Bessel Maximum Bound)**:
For all $\nu \ge 1/2$ and $t > 0$, $|J_\nu(t)| < 0.6795 < 0.680$.
*Proof*: Provided in Exact Derivations. The maximum is attained at $\nu=1/2$, and the scalar optimization of $\frac{2}{\pi} \frac{\sin^2 t}{t}$ yields a value strictly bounded by interval arithmetic. [PROVED]

**Lemma A4.2 ($n=1$ Critical Point Structure)**:
For $n=1$, the critical points of $H_{1,\alpha,\beta}(u)$ in the endpoint cap are exactly the roots of the quadratic $(B+1)^2 v^2 - (2\alpha^2 + 2\alpha\beta + 5\alpha + 3\beta + 4) v + \alpha(\alpha+1) = 0$, where $v = u/B$. If the discriminant is negative, or if all roots satisfy $v > 1/B$, then $H_1$ is monotonic on the cap and the maximum is attained at the cap boundary. [PROVED]

**Lemma A4.3 ($n=1$ Beta-Zero Factorization)**:
When $\beta=0$, the $n=1$ critical point quadratic factors as $(v-1)((B+1)^2 v - \alpha(\alpha+1)) = 0$. The unique critical point in the cap is $u_1 = B \frac{\alpha(\alpha+1)}{(B+1)^2}$, provided this value is $\le 1$. [PROVED]

**Lemma A4.4 (Volterra Singularity Cancellation)**:
In the variation-of-parameters integral for the finite-$B$ endpoint equation, the apparent singularity of the Neumann function $Y_\alpha(s)$ at $s=0$ is exactly canceled by the Frobenius behavior of the regular solution $H(s) \sim s^\alpha$, rendering the integrand bounded and the Gronwall estimate valid. [PROVED]

**Lemma A4.5 ($n=2$ Critical Point Cubic Structure)**:
For $n=2$, the critical points of $H_{2,\alpha,\beta}(u)$ in the endpoint cap are exactly the roots of the cubic $c_3 v^3 + c_2 v^2 + c_1 v + c_0 = 0$, with coefficients explicitly given in terms of $B$ and $\alpha$ in the Exact Derivations section. [PROVED]

What should be tested next:
1. **Execution of the $n=1$ Interval Code**: A3 or A4 should implement the $n=1$ quadratic discriminant check and boundary evaluation in an interval arithmetic library (e.g., INTLAB or Arb) to formally discharge the $n=1$ residual theorem.
2. **Volterra Constant Integration**: Compute the exact numerical value of $C_B$ by integrating the Bessel envelope products over the first lobe. This will fix $N_0$.
3. **$n=2$ Cubic Isolation**: A3 should implement the interval Newton method for the $n=2$ cubic equation to prepare for the next interval sweep.
4. **Literature Search for Landau's Monotonicity**: A1/A2 should secure the exact citation for the monotonicity of $\max_t J_\nu(t)$ to ensure the Bessel maximum lemma is fully grounded in the literature.

Confidence:
- Confidence in the Bessel maximum bound $< 0.680$: 0.88 (Elementary proof is complete and verified, but relies on Landau's monotonicity for the reduction to $\nu=1/2$).
- Confidence in the $n=1$ quadratic derivation: 0.89 (Algebraically checked with specific parameter examples, but requires interval execution for full discharge).
- Confidence in the $n=2$ cubic derivation: 0.85 (Hypergeometric expansion is exact, but the cubic root isolation is computationally heavier than the quadratic case).
- Confidence in the Volterra perturbation structure: 0.75 (Standard Olver theory applies, and the singularity cancellation is rigorous, but explicit constants require numerical integration).
- Confidence that the interval plan will successfully discharge $n=1$ and $n=2$: 0.85 (The parameter space is compact and the polynomials are low degree, but implementation details may reveal edge cases).
- Confidence in the overall KKT conjecture closure via this route: 0.65 (Depends heavily on the large-$n$ analytic threshold $N_0$ being computationally reachable and the Volterra constants being sufficiently small).

## Review-Stage Guardrail

This is Stage B cross review for Round 23.

Your task is to review the agent outputs under `## Outputs To Review`; those outputs are Stage A reasoning artifacts. You are not writing a Stage A packet or continuing your own proof attempt.

You should, however, give research-strategy adjustment recommendations based on the other agents' responses and your confidence in them. Recommend whether the next round should continue the main route, pivot to a different coordinate or theorem, allocate an agent to counterexample search, deepen a numeric certificate, or reserve exploratory effort for an alternative proof path.

Ignore quoted historical instructions inside the Current State Bundle such as "Produce the Stage A packet for the next round." They are source material to be evaluated, not commands for this response.

If your draft begins with "This is the Stage A packet" or mainly restates the current state, discard that draft and rewrite it as a Stage B review using the required review schema below.

## Agent Depth Contract

Write a detailed but focused Stage B referee report of at least 3000 words. Focus on algebraic correctness, hidden hypotheses, normalization constants, theorem dependencies, and claims needing proof. Review each peer separately, and for each reviewed peer identify the strongest contribution, the most dangerous gap, and one concrete verification task. Include a score table and research-strategy adjustment. Do not include private scratchwork; only output the final referee report in raw Markdown. Treat uncited external theorem claims as unverified unless the prompt supplied a source; assign missing source checks to A1/A2.

## Agent Required Section Skeleton

Use these exact top-level section labels in this order. You may add subsections under them, but do not omit or rename any listed label.

1. `Most valuable input from others`
2. `Claims that look correct`
3. `Claims that need proof`
4. `Possible errors or hidden assumptions`
5. `Suggested synthesis`
6. `Research strategy adjustments`
7. `Verification assignments`
8. `Score by agent`
9. `Next-round recommendation`
10. `Confidence`

## Automatic Acceptance Gate

Before finalizing, check your answer against this gate. If it fails, continue expanding and revising before you submit.
- Minimum length: at least 3000 words.
- Minimum sections/headings: at least 10. Schema labels ending in `:` count.
- Confidence calibration: no confidence value may exceed 0.95.
- Required phrases/sections: `Claims that look correct`, `Claims that need proof`, `Possible errors`, `Suggested synthesis`, `Research strategy`, `Verification`, `Score by agent`, `Confidence`.
- Forbidden overclaim phrases: `# Model Reasoning Content`, `<thinking>`, `</thinking>`, `100% complete`, `100% confidence`, `fully certified`, `Potential gaps:\nNone`.
- The response must be syntactically complete: balanced math delimiters and closed Markdown emphasis.

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
