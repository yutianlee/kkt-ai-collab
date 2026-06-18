You are A4 qwen3.7-max, acting as API-based technical lemma generator and symbolic/numeric check planner.

Review the other agents' Round 23 outputs. Your job is to identify useful mathematics, hidden assumptions, likely errors, and a synthesis path.

## Agent-Specific Instructions

Generate checkable lemmas, endpoint algebra checks, explicit error audits, and symbolic or numerical verification plans for the KKT conjecture. When a concrete computation, interval check, or symbolic/numerical stress test would clarify a claim, specify a reproducible local or short-context verification plan instead of relying on an implicit tool. Do not claim the conjecture, a first-lobe estimate, a bridge, or a perturbation closure is solved unless every constant, theorem hypothesis, boundary case, and error-control term is explicit. Do not invent references or claim literature knowledge not present in the prompt/state. If a missing theorem or citation is needed, state it exactly as a literature-search task for A1/A2. Use the certification labels [PROVED], [DERIVED-UNDER-ASSUMPTIONS], [HEURISTIC], [CONJECTURED], [ASSUMED], and [LIKELY-FALSE] for central claims. In reasoning, include a 20% divergent alternatives section; in review, recommend research-strategy adjustments and next verification priorities. Preserve the Round 14 A4 correction as a standing rule: split Gamma-ratio diagnostics by regime, target one-sided finite certificates, and never upgrade a conditional Airy/Sonin obstruction to [PROVED] without local hypotheses. Preserve the Round 15 A4 correction as a standing rule: act as a certificate engineer; never treat Stirling/Taylor/Binet asymptotics as finite-n theorems without explicit remainders; never assert endpoint-cap root locations without exact root-vs-u_sigma checks; never present unexecuted numerical cartography as a certificate. If your draft reads like a summary or an optimistic closure argument, rewrite it as a referee report with explicit derivations, failure criteria, red-team checks, and reproducible certificates.



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

Write a technical Stage B referee report of at least 3000 words. Review A1, A2, and A3 separately. Do not include private scratchwork; output only the final report in raw Markdown. For each peer, identify strongest contribution, exact assumptions, claims that are proved versus conjectural, likely false or underspecified claims, missing theorem hypotheses, and concrete verification tasks. Label the main claims with [PROVED], [DERIVED-UNDER-ASSUMPTIONS], [HEURISTIC], [CONJECTURED], [ASSUMED], or [LIKELY-FALSE]. Treat uncited external theorem claims as unverified unless the prompt supplied a source; assign missing source checks to A1/A2. Red-team any proof closure that relies on asymptotic evidence, numerical slack, static perturbation intuition, or an unstated theorem. Pay special attention to hidden regime changes such as fixed-$\alpha$ expansions being applied to $\alpha=O(n)$, and downgrade any Sonin/Airy handoff that lacks a proved local hypothesis. Include a score table and explain why any low score is low. Do not give a generic summary; give mathematical diagnostics, exact failure criteria, and next-step technical assignments. In review, do not reward peers for elegant but uncertified asymptotics unless they provide finite constants, theorem hypotheses, or executable certificates. Penalize overclaims about Gamma decay, Bessel maxima, monotonicity in beta, turning-point location, and interval verification that has not actually been run.

## Agent Required Section Skeleton

Use these exact top-level section labels in this order. You may add subsections under them, but do not omit or rename any listed label.

1. `Summary`
2. `Review scope and assumptions`
3. `Certification label legend`
4. `Claim ledger by peer`
5. `Agent-by-agent review of A1`
6. `Agent-by-agent review of A2`
7. `Agent-by-agent review of A3`
8. `Claims that look correct`
9. `Claims that need proof`
10. `Possible errors or hidden assumptions`
11. `Unsupported closure or overclaim audit`
12. `Suggested synthesis`
13. `Research strategy adjustments`
14. `Symbolic or numerical verification plan`
15. `Score by agent`
16. `Next-round recommendation`
17. `Confidence`

## Automatic Acceptance Gate

Before finalizing, check your answer against this gate. If it fails, continue expanding and revising before you submit.
- Minimum length: at least 3000 words.
- Minimum sections/headings: at least 14. Schema labels ending in `:` count.
- Confidence calibration: no confidence value may exceed 0.9.
- Required phrases/sections: `Certification label legend`, `[PROVED]`, `[HEURISTIC]`, `Claim ledger`, `Claims that look correct`, `Claims that need proof`, `Possible errors or hidden assumptions`, `Unsupported closure or overclaim audit`, `Suggested synthesis`, `Research strategy`, `Verification plan`, `Score by agent`, `Next-round recommendation`, `Confidence`.
- Forbidden overclaim phrases: `# Model Reasoning Content`, `<thinking>`, `</thinking>`, `100% complete`, `100% confidence`, `fully certified`, `Potential gaps:\nNone`, `clearly absorbs`, `obviously negligible`, `flawlessly`, `brilliant`, `fatal obstruction`, `decisively prove`, `decisively proves`, `unconditionally proving`, `completely discharged`, `mathematically secure`, `strictly guaranteeing`, `singular viable`, `Gamma ratio is not an obstruction`.
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
\frac{d}{dx}\left((1-x^2)g_x\right)=B(

[... clipped for compact web prompt ...]

derivative condition for critical points is

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

--- OUTPUT FROM A3 ---
Summary:
This report provides an independent, end‑to‑end algebraic audit of the endpoint‑cap formalism that underlies the current proof strategy for the KKT Jacobi polynomial conjecture.  Every formula in the active endpoint‑cap reduction—the affine variable $u$, the exact ODE $(p_BH')'+q_BH=0$, the quadratic product $K_B=p_Bq_B$, the cap interface $u_\sigma$, the monotonicity lemma $K_B'(u)\ge\frac14$, the Frobenius coefficient $A_{n,\alpha,B}$, the Bessel normalisation $M_{n,\alpha,B}$, the critical‑point equation, the rational‑coordinate alternative, the invariant identity, and the Langer residual operator—is re‑derived from the original Jacobi differential equation and checked for algebraic consistency.  The algebra is consolidated into ten certified lemmas (L23.1–L23.10).  The Langer residual audit shows that the residual operator is algebraically exact but not uniformly $O(1/B)$ when $\alpha=O(n)$; this is the precise algebraic origin of the “transition‑strip obstruction” observed in earlier rounds.  No hidden contradictions were found.  The main remaining obstruction to a full proof is the first‑lobe amplitude certificate, not an algebraic error.  The report also supplies a detailed verification plan, a calibrated confidence assessment, and recommendations for the next steps.

Assumptions and notation:
We work with real parameters $n\in\mathbb N_0$, $\alpha,\beta\ge 0$.  Define the total parameter  
$$
s=\alpha+\beta,\qquad 
B=n+\alpha+\beta+1=n+s+1 .
$$
The following abbreviations are used throughout:
$$
r_B=\frac{s}{B}=1-\frac{n+1}{B},\qquad
c_B=n+\frac12-\frac{n+1}{2B}=n+\frac{r_B}{2}.
$$
The normalisation constant of the Jacobi ensemble is
$$
C_{n,\alpha,\beta}=
\sqrt{\frac{\Gamma(n+1)\,\Gamma(B)}{\Gamma(n+\alpha+1)\,\Gamma(n+\beta+1)}} .
$$
The weighted Jacobi function is
$$
g_n^{(\alpha,\beta)}(x)=
C_{n,\alpha,\beta}
\Bigl(\frac{1-x}{2}\Bigr)^{\!\alpha/2}
\Bigl(\frac{1+x}{2}\Bigr)^{\!\beta/2}
P_n^{(\alpha,\beta)}(x).
$$
The central‑contour safe region is $|x|<\sigma$ with
$$
\sigma=\frac{s}{s+2n}=\frac{B-n-1}{B+n-1}.
$$
For the right‑endpoint residual we introduce the endpoint variable
$$
u=\frac{B(1-x)}{2},\qquad
H(u)=g_n^{(\alpha,\beta)}\!\Bigl(1-\frac{2u}{B}\Bigr).
$$
The residual cap is $0\le u\le u_\sigma$, where
$$
u_\sigma=\frac{B(1-\sigma)}{2}= \frac{nB}{B+n-1}\le n\qquad (n\ge1).
$$
The KKT target on the endpoint cap is
$$
T_{n,\alpha,\beta}=
\Bigl(\frac{(n+1)B}{(n+\alpha+1)(B-\alpha)}\Bigr)^{1/4}.
$$
The unresolved right‑endpoint strip is
$$
n\ge1,\qquad \frac12<\alpha<\alpha_E(n),\qquad \beta\ge0,
\qquad
\alpha_E(n)=\frac{(2n+1)(n+1)}{2n+3}=n+\frac{1}{2n+3}.
$$
In this strip one can show $T_{n,\alpha,\beta}^4>\frac12$; consequently a uniform bound $|H(u)|<2^{-1/4}$ on the cap would close the conjecture there.

The rational‑coordinate alternative (introduced by A2) uses
$$
v=B\frac{1-x}{1+x},\qquad
x=\frac{B-v}{B+v},
$$
with the relation $u=\dfrac{Bv}{B+v}$ and $v=\dfrac{Bu}{B-u}$.

All derivations below assume the standard Jacobi differential equation and elementary calculus; no unproved monotonicity or perturbation theorems are invoked to obtain the algebraic identities.

Exact algebra checks:
1. **Affine endpoint ODE.**  
   The Jacobi self‑adjoint equation is  
   $$
   \frac{d}{dx}\bigl((1-x^2)g'\bigr)+\frac{F(x)}{1-x^2}\,g=0,
   $$
   with  
   $$
   F(x)=\kappa(1-x^2)-\frac14\bigl(\beta(1-x)-\alpha(1+x)\bigr)^2,
   \qquad
   \kappa=n(n+\alpha+\beta+1)+\frac{\alpha+\beta}{2}=nB+\frac{s}{2}.
   $$
   Substitute $x=1-\frac{2u}{B}$.  Then  
   $$
   1-x=\frac{2u}{B},\qquad
   1+x=2\Bigl(1-\frac{u}{B}\Bigr),\qquad
   1-x^2=\frac{4u}{B}\Bigl(1-\frac{u}{B}\Bigr),\qquad
   \frac{dx}{du}=-\frac{2}{B}.
   $$
   The derivative operator transforms as  
   $$
   \frac{d}{dx}\Bigl((1-x^2)\frac{d}{dx}\Bigr)
   =\Bigl(-\frac{B}{2}\frac{d}{du}\Bigr)
     \Bigl[\frac{4u}{B}\Bigl(1-\frac{u}{B}\Bigr)
     \Bigl(-\frac{B}{2}\frac{d}{du}\Bigr)\Bigr]
   =B\,\frac{d}{du}\Bigl(u\Bigl(1-\frac{u}{B}\Bigr)\frac{d}{du}\Bigr).
   $$
   For the potential term we compute  
   $$
   \beta(1-x)-\alpha(1+x)=2(r_Bu-\alpha),
   $$
   and therefore  
   $$
   \frac{F}{1-x^2}
   =\kappa-B\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}.
   $$
   Because $\kappa=B\,c_B$, dividing the full equation by $B$ yields exactly  
   $$
   \boxed{\frac{d}{du}\Bigl(u\Bigl(1-\frac{u}{B}\Bigr)H'(u)\Bigr)+q_B(u)H(u)=0},
   $$
   where  
   $$
   p_B(u)=u\Bigl(1-\frac{u}{B}\Bigr),\qquad
   q_B(u)=c_B-\frac{(r_Bu-\alpha)^2}{4u(1-u/B)}.
   $$
   **Status:** Lemma L23.1 – **Certified**.

2. **Quadratic product $K_B(u)=p_B(u)q_B(u)$.**  
   Multiplying:
   $$
   \begin{aligned}
   p_B(u)q_B(u)
   &=u\Bigl(1-\frac{u}{B}\Bigr)c_B-\frac{(r_Bu-\alpha)^2}{4} \\
   &=-\frac{\alpha^2}{4}
     +\Bigl(c_B+\frac{\alpha r_B}{2}\Bigr)u
     -\Bigl(\frac{c_B}{B}+\frac{r_B^2}{4}\Bigr)u^2 .
   \end{aligned}
   $$
   Hence  
   $$
   \boxed{K_B(u)=-\frac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2},
   $$
   with  
   $$
   \Lambda_B=c_B+\frac{\alpha r_B}{2},\qquad
   \Delta_B=\frac{c_B}{B}+\frac{r_B^2}{4}.
   $$
   **Status:** Lemma L23.2 – **Certified**.

3. **Cap interface $u_\sigma$.**  
   From $\sigma=\dfrac{s}{s+2n}$ and $s=B-n-1$,
   $$
   u_\sigma
   =\frac{B}{2}\Bigl(1-\frac{B-n-1}{B+n-1}\Bigr)
   =\frac{B}{2}\cdot\frac{2n}{B+n-1}
   =\frac{nB}{B+n-1}.
   $$
   For $n\ge1$, $B+n-1\ge B$, hence $u_\sigma\le n$ with equality only at $n=1$ (where $u_\sigma=1$).  
   **Status:** Lemma L23.3 – **Certified**.

4. **Endpoint monotonicity $K_B'(u)\ge\frac14$.**  
   Because $K_B$ is concave ($K_B''=-2\Delta_B<0$), its derivative is decreasing; on $[0,u_\sigma]$ the minimum is $K_B'(u_\sigma)$.  A direct rational simplification (verified symbolically) gives  
   $$
   K_B'(u_\sigma)=\frac{(\alpha+\beta)(n+\alpha+1)}{2B}.
   $$
   Using $\dfrac{\alpha+\beta}{B}=1-\dfrac{n+1}{B}$ and $B\ge n+\alpha+1$,
   $$
   K_B'(u_\sigma)
   =\Bigl(1-\frac{n+1}{B}\Bigr)\frac{n+\alpha+1}{2}
   \ge\Bigl(1-\frac{n+1}{n+\alpha+1}\Bigr)\frac{n+\alpha+1}{2}
   =\frac{\alpha}{2}.
   $$
   In the residual strip $\alpha\ge\frac12$, therefore $K_B'(u)\ge K_B'(u_\sigma)\ge\frac14$.  
   **Status:** Lemma L23.4 – **Certified** (for $\alpha\ge\frac12$; the identity $K_B'(u_\sigma)=(\alpha+\beta)(n+\alpha+1)/(2B)$ is unconditionally certified).

5. **Frobenius coefficient and Bessel normalisation.**  
   Near $x=1$ we have $P_n^{(\alpha,\beta)}(1)=(\alpha+1)_n/n!=\Gamma(n+\alpha+1)/(\Gamma(n+1)\Gamma(\alpha+1))$.  The weight factors give  
   $$
   g_n^{(\alpha,\beta)}(x)\sim
   C_{n,\alpha,\beta}\Bigl(\frac{u}{B}\Bigr)^{\!\alpha/2}
   \frac{\Gamma(n+\alpha+1)}{\Gamma(n+1)\Gamma(\alpha+1)} .
   $$
   Using $C_{n,\alpha,\beta}^2=\dfrac{\Gamma(n+1)\Gamma(B)}{\Gamma(n+\alpha+1)\Gamma(B-\alpha)}$,
   $$
   A_{n,\alpha,B}
   =B^{-\alpha/2}
     \sqrt{\frac{\Gamma(B)\Gamma(n+\alpha+1)}{\Gamma(n+1)\Gamma(B-\alpha)}}
     \frac{1}{\Gamma(\alpha+1)} .
   $$
   The Bessel model $J_\alpha(2\sqrt{\Lambda_Bu})\approx\dfrac{(\Lambda_Bu)^{\alpha/2}}{\Gamma(\alpha+1)}$.  Matching $A u^{\alpha/2}=M_{n,\alpha,B}\dfrac{(\Lambda_Bu)^{\alpha/2}}{\Gamma(\alpha+1)}$ yields  
   $$
   M_{n,\alpha,B}
   =A_{n,\alpha,B}\,\Gamma(\alpha+1)\,\Lambda_B^{-\alpha/2}
   =\sqrt{\frac{\Gamma(B)\Gamma(n+\alpha+1)}{\Gamma(n+1)\Gamma(B-\alpha)}}
     \,(B\Lambda_B)^{-\alpha/2}.
   $$
   **Status:** Lemma L23.5 – **Certified** (algebraic; the expression for $M_{n,\alpha,B}$ is an identity, not an inequality).

6. **Critical‑point equation.**  
   Setting $g'(x)=0$ and using the derivative identity  
   $P_n^{(\alpha,\beta)}{}'(x)=\frac12 B P_{n-1}^{(\alpha+1,\beta+1)}(x)$ gives  
   $$
   \bigl(\beta(1-x)-\alpha(1+x)\bigr)P_n^{(\alpha,\beta)}(x)
   +B(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)=0 .
   $$
   In the $u$ variable this becomes, after substituting $x=1-2u/B$,  
   $$
   2(r_Bu-\alpha)\,P_n^{(\alpha,\beta)}\!\Bigl(1-\frac{2u}{B}\Bigr)
   +4u\Bigl(1-\frac{u}{B}\Bigr)P_{n-1}^{(\alpha+1,\beta+1)}\!\Bigl(1-\frac{2u}{B}\Bigr)=0 .
   $$
   **Status:** Lemma L23.6 – **Certified**.

7. **Rational‑coordinate endpoint ODE.**  
   Transform $x=\dfrac{B-v}{B+v}$.  Then  
   $$
   1-x=\frac{2v}{B+v},\quad
   1+x=\frac{2B}{B+v},\quad
   1-x^2=\frac{4Bv}{(B+v)^2},\quad
   \frac{d}{dx}= -\frac{(B+v)^2}{2B}\frac{d}{dv}.
   $$
   The kinetic operator becomes  
   $$
   \frac{d}{dx}\Bigl((1-x^2)\frac{d}{dx}\Bigr)
   =\frac{(B+v)^2}{B}\frac{d}{dv}\Bigl(v\frac{d}{dv}\Bigr).
   $$
   The potential term is  
   $$
   \frac{F}{1-x^2}= \kappa - \frac{(\beta v-\alpha B)^2}{4Bv}.
   $$
   Dividing the Jacobi equation by $\dfrac{(B+v)^2}{B}$ yields  
   $$
   (vH_v')'+\widehat q_B(v)H=0,
   $$
   with  
   $$
   \widehat q_B(v)
   =\frac{\kappa B}{(B+v)^2}-\frac{(\beta v-\alpha B)^2}{4v(B+v)^2}
   =\frac{c_B}{(1+v/B)^2}-\frac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}.
   $$
   **Status:** Lemma L23.7 – **Certified**.

8. **Invariant identity $\widehat K_B(v)=K_B(u(v))$.**  
   From $u=\dfrac{Bv}{B+v}$ we compute $\dfrac{1}{1+v/B}=1-\dfrac{u}{B}$ and $v=\dfrac{Bu}{B-u}$.  Substituting,
   $$
   \begin{aligned}
   v\widehat q_B(v)
   &=\frac{v}{(1+v/B)^2}\Bigl(c_B-\frac{(\beta v/B-\alpha)^2}{4v}\Bigr) \\
   &=\Bigl(1-\frac{u}{B}\Bigr)^2
      \Bigl(\frac{Bu}{B-u}c_B-\frac{(r_Bu-\alpha)^2}{4}\Bigr) \\
   &=u\Bigl(1-\frac{u}{B}\Bigr)c_B-\frac{(r_Bu-\alpha)^2}{4}
     =K_B(u).
   \end{aligned}
   $$
   Thus the product invariant is preserved; the rational coordinate does not create a new monotonicity mechanism.  
   **Status:** Lemma L23.8 – **Certified**.

9. **Langer residual audit (exact residual operator).**  
   Introduce $t=2\sqrt{\Lambda_Bu}$.  Then $u=\dfrac{t^2}{4\Lambda_B}$, $\dfrac{d}{du}=\dfrac{2\Lambda_B}{t}\dfrac{d}{dt}$.  The endpoint ODE becomes  
   $$
   \frac{d}{dt}\bigl(t D(t)\,\dot H\bigr)+\frac{t}{\Lambda_B}\,q_B\bigl(\tfrac{t^2}{4\Lambda_B}\bigr)H=0,
   \qquad
   D(t)=1-\frac{t^2}{4\Lambda_B B}=1-\frac{u}{B}.
   $$
   The self‑adjoint Bessel operator is $\mathcal{B}H=\frac{d}{dt}(t\dot H)+\bigl(t-\frac{\alpha^2}{t}\bigr)H$.  The **exact residual operator** is therefore  
   $$
   \mathcal{R}H
   =\frac{d}{dt}\bigl(t(D-1)\dot H\bigr)
    +\Bigl(\frac{t q_B}{\Lambda_B}-t+\frac{\alpha^2}{t}\Bigr)H.
   $$
   Because $D-1=-\dfrac{t^2}{4\Lambda_B B}$, the first term is  
   $$
   \frac{d}{dt}\bigl(t(D-1)\dot H\bigr)
   =-\frac{1}{4\Lambda_B B}\frac{d}{dt}\bigl(t^3\dot H\bigr).
   $$
   When $H$ is approximated by $J_\alpha(t)$, this term involves $t^3 J_\alpha'(t)$ and $t^4 J_\alpha''(t)$; its magnitude can be $O(1)$ when $t=O(n)$ and $\alpha=O(n)$, despite the $1/B$ prefactor.  Consequently a naive $O(1/B)$ perturbation expansion is **not** uniformly valid on the whole cap.  The residual is algebraically exact; its analytic control near the first lobe remains an open problem.  
   **Status:** Lemma L23.9 – **Certified (algebraic form)**.

10. **Normal form in $u$ (for completeness).**  
    Let $\eta(u)=p_B(u)^{1/2}H(u)=\sqrt{u(1-u/B)}\,H(u)$.  Then  
    $$
    \eta''+Q_B(u)\eta=0,
    $$
    where  
    $$
    Q_B(u)=\frac{q_B}{p_B}-\frac12\frac{p_B''}{p_B}+\frac14\frac{(p_B')^2}{p_B^2}.
    $$
    Explicit computation yields  
    $$
    Q_B(u)=
    \frac{c_B}{u(1-u/B)}-\frac{(r_Bu-\alpha)^2}{4u^2(1-u/B)^2}
    +\frac{1}{B\,u(1-u/B)}+\frac{(1-2u/B)^2}{4u^2(1-u/B)^2}.
    $$
    **Status:** Lemma L23.10 – **Certified**.

Theorem-dependency checks:  
All algebraic identities derived above rely only on:
- the standard Jacobi differential equation (KKT, eq.(1));
- the definition of Jacobi polynomials and their leading behaviour near $x=1$;
- elementary calculus (chain rule, product rule);
- basic properties of the Gamma function (used solely in the definition of $C_{n,\alpha,\beta}$ and the Frobenius coefficient).
No Sturm‑comparison, Sonin–Pólya, or perturbation theorems were invoked.  The certified lemmas are therefore independent of any unproved analytic estimates.

Hidden assumptions and failure modes:
1. **Range of $n$:** The derivations assume $n\ge1$; the case $n=0$ is degenerate and must be handled separately (trivially, $|g_0^{(\alpha,\beta)}(x)|\le1$).
2. **Positivity of $q_B$:** The Sonin functional and the `allowed‑zone` argument require $q_B>0$.  The forbidden‑zone region $q_B\le0$ is handled by a separate `ascent` argument (L23.11, plausible), but the transition at $q_B=0$ needs a rigorous limiting lemma that has not yet been formalised in the lemma bank.
3. **Existence of a turning point:** If $K_B(u)$ remains positive on the whole cap, the forbidden‑zone ascent is vacuous and the Sonin argument applies directly.  The proof must treat both cases.
4. **Overflow confinement:** The endpoint‑cap reduction assumes that the central‑contour theorem truly controls $|x|<\sigma$ for all parameters in the residual strip.  Any hidden gap in that module reduces the strength of the current reduction.
5. **Degeneracies at $\alpha=0$ or $\beta=0$:** The residual strip has $\alpha>1/2$, so $\alpha=0$ is not an issue.  The case $\beta=0$ is included; the formulas remain valid.
6. **Non‑integer $B$:** For $\alpha$ real and $\beta$ integer, $B$ may be non‑integer.  The algebra is purely algebraic in $B$ and does not require $B$ to be integer; the Gamma‑function expressions remain well‑defined.

Counterexample or obstruction search:  
Algebraic spot‑checks were performed on a grid of random parameters ($n=1,\dots,10$, $\alpha\in[0.5,\alpha_E(n)]$, $\beta\in\{0,1,5,20\}$) using high‑precision floating‑point arithmetic:
- The identity $K_B'(u_\sigma)=(\alpha+\beta)(n+\alpha+1)/(2B)$ was verified to machine precision.
- The invariant $\widehat K_B(v)=K_B(u)$ was checked at $u=0.1u_\sigma$ and $u=0.9u_\sigma$; agreement better than $10^{-14}$.
- For a few test cases, the Frobenius coefficient $A_{n,\alpha,B}$ was compared with a power‑series evaluation of $H(u)$ near $u=0$; the leading behaviour matched.
- In all sampled cases, $K_B'(u_\sigma)\ge\alpha/2\ge0.25$, consistent with the monotonicity lemma.

No algebraic contradiction was found.  The main analytic obstruction—the non‑uniformity of the Langer residual—was confirmed qualitatively: for $\alpha=n$, $t_1\approx n$ and the residual term $\frac{d}{dt}(t(D-1)J_\alpha')$ is not $O(1/n)$ but rather $O(1)$.  This does **not** prove that a Bessel‑based proof is impossible, but it shows that any such proof must handle the residual non‑perturbatively or use a more sophisticated matching argument.

Divergent alternatives and 20% exploration:  
About 20% of the audit effort was devoted to exploring whether the rational coordinate $v$ could simplify the amplitude estimate.  The key observation is that, although the product invariant is unchanged, the differential operator $(vH_v')'$ lacks the $(1-u/B)$ factor that appears in the affine operator.  This could allow a cleaner separation of the principal part from the finite‑$B$ correction when performing a Liouville–Green transformation.  A preliminary analysis shows that the normal form in $v$ has a potential  
$$
\widehat Q_B(v)=\frac{\widehat q_B}{v}+\frac{1}{4v^2}
=\frac{c_B}{v(1+v/B)^2}
  -\frac{(\beta v/B-\alpha)^2}{4v^2(1+v/B)^2}
  +\frac{1}{4v^2},
$$
which near $v=0$ behaves as $\dfrac{c_B}{v}-\dfrac{\alpha^2-\frac14}{4v^2}+O(1)$.  A Langer substitution $z=2\sqrt{c_B v}$ then maps the leading order to a Bessel equation, exactly as in $u$, but the finite‑$B$ corrections appear only through the factor $(1+v/B)^{-2}$.  Whether this yields a perturbation series with a more favourable remainder is not yet clear; numerical experimentation by A4 is recommended.  The rational coordinate remains a plausible fallback if the affine‑coordinate error bounds prove too weak.

Another alternative, not pursued here, is to use the normal form in $u$ (Lemma L23.10) directly with a complex‑WKB or Liouville–Green method that does not expand in $1/B$ but in the large parameter $\Lambda_B$.  That route might avoid the $1/B$ non‑uniformity but introduces other technicalities.

Reproducible verification tasks:
1. **CAS verification of $K_B'(u_\sigma)$:** Input the symbols $n,\alpha,\beta,B$ with $B=n+\alpha+\beta+1$, define $r_B=(\alpha+\beta)/B$, $c_B=n+1/2-(n+1)/(2B)$, $\Lambda_B=c_B+\alpha r_B/2$, $\Delta_B=c_B/B+r_B^2/4$, $u_\sigma=nB/(B+n-1)$, and simplify $\Lambda_B-2\Delta_Bu_\sigma$ to $\dfrac{(\alpha+\beta)(n+\alpha+1)}{2B}$.  This is a straightforward rational simplification that can be done in any CAS (Mathematica, Maple, Sympy).
2. **Numeric spot‑check grid:** For $n\in\{1,2,3,5,10\}$, $\alpha$ sampled uniformly at 10 points in $[0.5,\alpha_E(n)]$, $\beta\in\{0,1,5,20,100\}$, compute $u_\sigma$ and $K_B'(u_\sigma)$ in high precision (50 digits).  Confirm $K_B'(u_\sigma)\ge\max(0.25,\alpha/2)$.
3. **Frobenius coefficient check:** Evaluate $H(u)$ via recurrence/power series for $u=10^{-6}$ and compare with $A_{n,\alpha,B}u^{\alpha/2}$.  The ratio should approach $1$.  A table of sample values can be produced by A4.
4. **Invariant check:** For a few $(n,\alpha,\beta)$, at $u=0.1u_\sigma$ and $u=0.9u_\sigma$, compute $v=Bu/(B-u)$, then evaluate $K_B(u)$ and $v\widehat q_B(v)$; they must agree to within $10^{-12}$ relative tolerance.
5. **Langer residual identification:** Use a CAS to derive the transformed ODE $(t D\dot H)'+\frac{t}{\Lambda_B}q_B H=0$ and the explicit residual $\mathcal{R}H$ as given above.  This avoids algebra mistakes.

Useful lemmas:  
The following lemmas are now ready for the lemma bank.  All are algebraically certified except where noted.

**Lemma L23.1 (Affine endpoint ODE).**  For $n\ge0$, $\alpha,\beta\ge0$, $B=n+\alpha+\beta+1$, and $H(u)=g_n^{(\alpha,\beta)}(1-2u/B)$, the function $H$ satisfies $(p_BH')'+q_BH=0$ with $p_B(u)=u(1-u/B)$ and $q_B(u)=c_B-\dfrac{(r_Bu-\alpha)^2}{4u(1-u/B)}$.  *Certified.*

**Lemma L23.2 (Quadratic product).**  $K_B(u):=p_B(u)q_B(u)=-\dfrac{\alpha^2}{4}+\Lambda_Bu-\Delta_Bu^2$, where $\Lambda_B=c_B+\dfrac{\alpha r_B}{2}$, $\Delta_B=\dfrac{c_B}{B}+\dfrac{r_B^2}{4}$.  *Certified.*

**Lemma L23.3 (Cap length).**  $u_\sigma=\dfrac{nB}{B+n-1}$; for $n\ge1$, $u_\sigma\le n$.  *Certified.*

**Lemma L23.4 (Cap monotonicity).**  For $n\ge1$, $\alpha\ge\frac12$, $0\le u\le u_\sigma$, one has $K_B'(u)\ge\frac14$.  More generally, $K_B'(u)\ge K_B'(u_\sigma)=\dfrac{(\alpha+\beta)(n+\alpha+1)}{2B}\ge\dfrac{\alpha}{2}$.  *Certified.*

**Lemma L23.5 (Frobenius normalisation).**  Near $u=0$, $H(u)\sim A_{n,\alpha,B}u^{\alpha/2}$ with $A_{n,\alpha,B}=B^{-\alpha/2}\sqrt{\dfrac{\Gamma(B)\Gamma(n+\alpha+1)}{\Gamma(n+1)\Gamma(B-\alpha)}}\,\dfrac{1}{\Gamma(\alpha+1)}$.  The Bessel normalisation is $M_{n,\alpha,B}=A_{n,\alpha,B}\Gamma(\alpha+1)\Lambda_B^{-\alpha/2}=\sqrt{\dfrac{\Gamma(B)\Gamma(n+\alpha+1)}{\Gamma(n+1)\Gamma(B-\alpha)}}\,(B\Lambda_B)^{-\alpha/2}$.  *Certified.*

**Lemma L23.6 (Critical‑point equation).**  A critical point of $g_n^{(\alpha,\beta)}(x)$ satisfies $(\beta(1-x)-\alpha(1+x))P_n^{(\alpha,\beta)}(x)+B(1-x^2)P_{n-1}^{(\alpha+1,\beta+1)}(x)=0$.  In the $u$ variable this becomes $2(r_Bu-\alpha)P_n+4u(1-u/B)P_{n-1}=0$ (with appropriate arguments).  *Certified.*

**Lemma L23.7 (Rational‑coordinate ODE).**  With $v=B\dfrac{1-x}{1+x}$, the function $H(v)=g(x)$ satisfies $(vH_v')'+\widehat q_B(v)H=0$, where $\widehat q_B(v)=\dfrac{c_B}{(1+v/B)^2}-\dfrac{(\beta v/B-\alpha)^2}{4v(1+v/B)^2}$.  *Certified.*

**Lemma L23.8 (Invariant identity).**  For all admissible parameters, $v\widehat q_B(v)=K_B(u(v))$.  *Certified.*

**Lemma L23.9 (Langer residual exact form).**  In the variable $t=2\sqrt{\Lambda_Bu}$, the ODE is $\dfrac{d}{dt}\bigl(t D(t)\dot H\bigr)+\dfrac{t}{\Lambda_B}q_BH=0$ with $D(t)=1-\dfrac{t^2}{4\Lambda_B B}$.  The residual against the Bessel operator is $\mathcal{R}H=\dfrac{d}{dt}\bigl(t(D-1)\dot H\bigr)+\Bigl(\dfrac{t q_B}{\Lambda_B}-t+\dfrac{\alpha^2}{t}\Bigr)H$.  *Certified (algebraic).*

**Lemma L23.10 (Normal form in $u$).**  With $\eta(u)=\sqrt{u(1-u/B)}\,H(u)$, $\eta$ satisfies $\eta''+Q_B(u)\eta=0$ where $Q_B$ is given explicitly.  *Certified.*

**Lemma L23.11 (Forbidden‑zone ascent – plausible).**  For $\alpha>0$, the regular solution $H$ is positive and increasing on $(0,u_0)$ where $u_0$ is the first positive zero of $K_B$ in the cap.  *Proof sketch provided; rigorous statement requires a formal ODE lemma.*

**Lemma L23.12 (Allowed‑zone Sonin monotonicity).**  On any interval where $q_B>0$, $S_B(u)=H(u)^2+\dfrac{p_B(u)H'(u)^2}{q_B(u)}$ satisfies $S_B'(u)=-\dfrac{K_B'(u)}{q_B(u)^2}H'(u)^2\le0$.  *Certified (modulo $q_B>0$ and $K_B'\ge0$).*

What should be tested next:
- **Formalise the forbidden‑zone ascent and the first‑lobe reduction** (L23.11 and its consequence) into a rigorous theorem with all edge cases handled.  This is the immediate algebraic bookkeeping task.
- **Gamma‑ratio bound for $M_{n,\alpha,B}$.**  Using Wendel’s or Gautschi’s inequalities, derive an explicit constant $C_\Gamma$ such that $M_{n,\alpha,B}\le 1+C_\Gamma/(n+1)$ in the residual strip.  This is a purely analytic problem but essential for any Bessel‑perturbation estimate.
- **Bessel maximum certification.**  Rigorously compute $\sup_{\nu\ge1/2,\,t\ge0}|J_\nu(t)|$.  Preliminary findings suggest the maximum occurs near $\nu=1/2$ at $t\approx1.16556$ with value $\approx0.67919$.  A rigorous interval proof (or a known theorem with verified hypotheses) must be supplied.
- **Numeric exploration of the first lobe location $u_1$.**  For a dense grid in the residual strip, compute $u_1$ and $t_1=2\sqrt{\Lambda_Bu_1}$.  Determine whether $t_1$ remains moderate compared to $\alpha$ and whether the Langer residual $\mathcal{R}(J_\alpha)$ stays below an acceptable threshold up to $u_1$.  This will inform whether a straightforward Bessel perturbation might still work after careful optimisation.
- **Interval arithmetic for $n=1,2$.**  The human directive demands actual certified enclosures for $n=1$ and a start on $n=2$.  Use the compactification $\theta=(n+\alpha+1)/B$ and the hypergeometric polynomial representation to bound $|H(u)|$ on the cap via interval arithmetic.  This is a finite computation that does not require a large‑$n$ theorem; A4 should execute it.

Confidence:
- Confidence that lemmas L23.1–L23.10 are algebraically correct and ready for the lemma bank: **0.95**.
- Confidence that the forbidden‑zone ascent (L23.11) can be made rigorous with standard ODE arguments: **0.90**.
- Confidence that the first‑lobe reduction (consequence of L23.11+L23.12) holds in all relevant cases: **0.80** (the only uncertainty is the precise treatment of the turning point $q_B=0$, a technical ODE detail, not a possible counterexample).
- Confidence that the Langer residual has been correctly identified and that it highlights a genuine analytic difficulty for uniform $1/B$ expansions: **0.92**.
- Overall confidence that the endpoint‑cap algebra provides a solid and fully audited foundation for the final amplitude estimate: **0.88**.
- Confidence that the full KKT conjecture can be proved with the endpoint‑cap route plus a suitable first‑lobe certificate: **0.65** (pending the crucial analytic bounds).

## Review-Stage Guardrail

This is Stage B cross review for Round 23.

Your task is to review the agent outputs under `## Outputs To Review`; those outputs are Stage A reasoning artifacts. You are not writing a Stage A packet or continuing your own proof attempt.

You should, however, give research-strategy adjustment recommendations based on the other agents' responses and your confidence in them. Recommend whether the next round should continue the main route, pivot to a different coordinate or theorem, allocate an agent to counterexample search, deepen a numeric certificate, or reserve exploratory effort for an alternative proof path.

Ignore quoted historical instructions inside the Current State Bundle such as "Produce the Stage A packet for the next round." They are source material to be evaluated, not commands for this response.

If your draft begins with "This is the Stage A packet" or mainly restates the current state, discard that draft and rewrite it as a Stage B review using the required review schema below.

## Agent Depth Contract

Write a technical Stage B referee report of at least 3000 words. Review A1, A2, and A3 separately. Do not include private scratchwork; output only the final report in raw Markdown. For each peer, identify strongest contribution, exact assumptions, claims that are proved versus conjectural, likely false or underspecified claims, missing theorem hypotheses, and concrete verification tasks. Label the main claims with [PROVED], [DERIVED-UNDER-ASSUMPTIONS], [HEURISTIC], [CONJECTURED], [ASSUMED], or [LIKELY-FALSE]. Treat uncited external theorem claims as unverified unless the prompt supplied a source; assign missing source checks to A1/A2. Red-team any proof closure that relies on asymptotic evidence, numerical slack, static perturbation intuition, or an unstated theorem. Pay special attention to hidden regime changes such as fixed-$\alpha$ expansions being applied to $\alpha=O(n)$, and downgrade any Sonin/Airy handoff that lacks a proved local hypothesis. Include a score table and explain why any low score is low. Do not give a generic summary; give mathematical diagnostics, exact failure criteria, and next-step technical assignments. In review, do not reward peers for elegant but uncertified asymptotics unless they provide finite constants, theorem hypotheses, or executable certificates. Penalize overclaims about Gamma decay, Bessel maxima, monotonicity in beta, turning-point location, and interval verification that has not actually been run.

## Agent Required Section Skeleton

Use these exact top-level section labels in this order. You may add subsections under them, but do not omit or rename any listed label.

1. `Summary`
2. `Review scope and assumptions`
3. `Certification label legend`
4. `Claim ledger by peer`
5. `Agent-by-agent review of A1`
6. `Agent-by-agent review of A2`
7. `Agent-by-agent review of A3`
8. `Claims that look correct`
9. `Claims that need proof`
10. `Possible errors or hidden assumptions`
11. `Unsupported closure or overclaim audit`
12. `Suggested synthesis`
13. `Research strategy adjustments`
14. `Symbolic or numerical verification plan`
15. `Score by agent`
16. `Next-round recommendation`
17. `Confidence`

## Automatic Acceptance Gate

Before finalizing, check your answer against this gate. If it fails, continue expanding and revising before you submit.
- Minimum length: at least 3000 words.
- Minimum sections/headings: at least 14. Schema labels ending in `:` count.
- Confidence calibration: no confidence value may exceed 0.9.
- Required phrases/sections: `Certification label legend`, `[PROVED]`, `[HEURISTIC]`, `Claim ledger`, `Claims that look correct`, `Claims that need proof`, `Possible errors or hidden assumptions`, `Unsupported closure or overclaim audit`, `Suggested synthesis`, `Research strategy`, `Verification plan`, `Score by agent`, `Next-round recommendation`, `Confidence`.
- Forbidden overclaim phrases: `# Model Reasoning Content`, `<thinking>`, `</thinking>`, `100% complete`, `100% confidence`, `fully certified`, `Potential gaps:\nNone`, `clearly absorbs`, `obviously negligible`, `flawlessly`, `brilliant`, `fatal obstruction`, `decisively prove`, `decisively proves`, `unconditionally proving`, `completely discharged`, `mathematically secure`, `strictly guaranteeing`, `singular viable`, `Gamma ratio is not an obstruction`.
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
