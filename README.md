# KKT Multi-AI Research Collaboration

This repository is a public-memory workflow for cross-AI research on the KKT Jacobi polynomial conjecture from Koornwinder-Kostenko-Teschl.

The workflow is adapted from `yutianlee/gauss-circle-ai-collab`: each round has independent reasoning, cross review, judge synthesis, and a compact state update. The full archive stays in GitHub, while the next AI prompt reads only the problem, compact state, human directives, and selected legacy manifest.

## Target

The main target is KKT Conjecture 6.1: prove or disprove the sharp bounds for

$$
g_n^{(\alpha,\beta)}(x)
=
\left(
\frac{\Gamma(n+1)\Gamma(n+\alpha+\beta+1)}
{\Gamma(n+\alpha+1)\Gamma(n+\beta+1)}
\right)^{1/2}
\left(\frac{1-x}{2}\right)^{\alpha/2}
\left(\frac{1+x}{2}\right)^{\beta/2}
P_n^{(\alpha,\beta)}(x)
$$

for real parameters $\alpha,\beta\ge 0$ and $x\in[-1,1]$, especially the stronger KKT Lemma 4.3 style estimate.

The near-term practical target is the one-real-one-integer case

$$
\alpha\ge0,\qquad \beta\in\mathbb N_0,
$$

which is enough for the discrete Laguerre dispersive application.

## Layout

```text
problems/
  kkt_conjecture.md
protocol.md
config/
  agents.example.json
  agents.web-test.json
math_collab/
  orchestrator.py
  human.py
  normalize_markdown.py
state/
  current_state.md
  lemma_bank.md
  gap_register.md
  best_proof_draft.md
human/
  current_directives.md
  goals.md
  ideas.md
  references.md
  inbox/
manifests/
  reading_packet.md
  legacy_outputs.md
  round_011_seed.md
  round_011_bootstrap_judge.md
rounds/
  legacy-review-reason/
  ...
handoff/
  ...
```

The existing `A1-*`, `A2-*`, `A3-*`, `A4-*`, `*-Strategy.md`, and `*-S1.md` files are preserved as legacy research artifacts. Available pre-normalized rounds are mirrored under `rounds/legacy-review-reason/`.

The normalized workflow starts with a bootstrap judge before round 12. A1/GPT judges `A1-11.md`, `A2-11.md`, `A3-11.md`, `A4-11.md`, `A1-Strategy.md`, and `A2-Strategy.md`, then the result is stored in `manifests/round_011_bootstrap_judge.md`.

## Quick Start

Smoke test the file layout without calling any external API:

```powershell
python -m math_collab.orchestrator --config config/agents.example.json --problem problems/kkt_conjecture.md --rounds 1 --dry-run --run-id smoke --no-state-update
```

Recommended: generate the A1/GPT bootstrap judge prompt first:

```powershell
python -m math_collab.bootstrap_judge --run-id kkt-main
```

Paste `rounds/kkt-main/round_011/prompts/bootstrap_judge.md` into ChatGPT Extended Pro, save the copied response to `handoff/kkt-main/round_011/judge/bootstrap_judge.md`, then rerun:

```powershell
python -m math_collab.bootstrap_judge --run-id kkt-main
```

Then generate prompts for the first normalized manual web/API mixed round:

```powershell
python -m math_collab.orchestrator --config config/agents.web-test.json --problem problems/kkt_conjecture.md --run-id kkt-main --start-round 12 --rounds 1 --skip-missing-api
```

For A1/A2 web agents, paste prompts from:

```text
rounds/kkt-main/round_012/prompts/
```

Then save copied responses under:

```text
handoff/kkt-main/round_012/responses/
handoff/kkt-main/round_012/reviews/
handoff/kkt-main/round_012/judge/
```

Set `DEEPSEEK_API_KEY` for A3 and `QWEN_API_KEY` for A4 before a real API run. Rerun the same command after filling each stage. The orchestrator enforces round barriers.

API key setup and smoke tests are documented in `docs/api-setup.md`. The short version:

```powershell
Copy-Item .env.example .env
notepad .env
python -m math_collab.api_smoke --agents A3,A4
```

## Human Steering

Edit these files before the next round:

- `human/current_directives.md`: active instructions for the next round.
- `human/goals.md`: research and workflow goals.
- `human/ideas.md`: ideas to test.
- `human/references.md`: papers, links, theorem names, citations, or notes.
- `human/inbox/`: timestamped human notes.

You can add a note from the command line:

```powershell
python -m math_collab.human --kind idea --title "Endpoint cap" --text "Ask every agent to verify the exact endpoint differential equation and finite-beta bridge." --activate
```

## Publishing

This `kkt` directory currently lives inside the parent Git checkout at `D:\BaiduSyncdisk\Codex`. To publish it as its own public GitHub repository, copy or move this directory outside that parent repo, then run:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\scripts\publish_public_repo.ps1 -RemoteUrl https://github.com/<your-user>/<repo-name>.git
```

If you prefer to keep it inside the parent checkout, stage only the `kkt/` paths from the parent repository.
