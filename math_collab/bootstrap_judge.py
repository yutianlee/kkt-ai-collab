from __future__ import annotations

import argparse
from datetime import datetime
from pathlib import Path

from .orchestrator import (
    WEB_RESPONSE_MARKER,
    active_agents_block,
    human_bundle,
    load_config,
    markdown_math_rule,
    read_text,
    research_quality_rubric,
    state_bundle,
    usable_web_response,
    write_text,
)


def bootstrap_prompt(
    *,
    judge_name: str,
    judge_role: str,
    problem: str,
    protocol: str,
    active_agents: str,
    state: str,
    human: str,
) -> str:
    return f"""You are {judge_name}, acting as {judge_role}.

We are about to start normalized Round 12 of the KKT multi-AI research workflow.

Before Round 12 begins, your job is to judge the legacy material:

- A1-11.md
- A2-11.md
- A3-11.md
- A4-11.md
- A1-Strategy.md
- A2-Strategy.md

The old workflow mixed review and reasoning in one response. The new workflow separates:

1. Stage A independent reasoning by A1/A2/A3/A4;
2. Stage B review of the other Stage A responses;
3. Stage C A1 judge synthesis and next-round prompts.

Your bootstrap judge synthesis should convert the legacy mixed-format state into a clean starting point for Round 12.

{active_agents}

## Protocol

{protocol}

{markdown_math_rule()}

{research_quality_rubric()}

## Problem

{problem}

## State And Legacy Seed Bundle

{state}

## Human Intervention Bundle

{human}

## Your Task

Produce a judge synthesis that Round 12 can use as its starting decision.

Do not claim the KKT conjecture is solved unless the proof is explicit and all constants and bridges are supplied. Treat inherited proof architectures as hypotheses to audit.

## Required Output Schema

Bootstrap verdict:
Certified claims from legacy material:
Plausible but unproved claims:
Rejected or risky claims:
Best current route:
Exact gaps to carry into Round 12:
State updates recommended:
Next-round prompts by agent:
For A1:
For A2:
For A3:
For A4:
Confidence:
"""


def update_manifest(root: Path, run_id: str, judge_text: str | None) -> None:
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    if judge_text:
        text = f"""# Round 11 Bootstrap Judge

Generated from A1/GPT before normalized Round 12.

Run: `{run_id}`
Timestamp: {timestamp}

{judge_text.strip()}
"""
    else:
        text = """# Round 11 Bootstrap Judge

Status: pending.

Run `python -m math_collab.bootstrap_judge --run-id kkt-main`, paste the generated prompt into A1/ChatGPT Extended Pro, save the copied response to `handoff/kkt-main/round_011/judge/bootstrap_judge.md`, then rerun the same command to ingest it.
"""
    write_text(root / "manifests" / "round_011_bootstrap_judge.md", text)


def update_reading_packet(root: Path, run_id: str) -> None:
    packet = f"""# Reading Packet

## Problem

Study KKT Conjecture 6.1 for the weighted normalized Jacobi expression $g_n^{{(\\alpha,\\beta)}}(x)$ with real $\\alpha,\\beta\\ge0$. The main target is the sharp bound $|g_n|\\le1$ and the stronger KKT Lemma 4.3 type factor. The near-term target is $\\alpha\\ge0$, $\\beta\\in\\mathbb N_0$.

## Current State

The full real-parameter statement appears open. Existing legacy AI work has narrowed attention to endpoint-cap analysis after central-region and energy reductions. The remaining obstacle is an explicit endpoint/Laguerre certificate with constants and a finite-$\\beta$ bridge.

## Bootstrap Judge

Before normalized Round 12, A1/GPT should judge the legacy Round 11 seed and the two latest strategies. The bootstrap judge output is stored in `manifests/round_011_bootstrap_judge.md`.

## Most Important Gaps

1. Verify the endpoint-cap algebra and exact ODE.
2. Produce a sharp first-lobe Laguerre/Bessel or Sonin certificate.
3. Quantify finite-$\\beta$ perturbation from Laguerre to Jacobi.
4. Keep proof claims separated from plausible but uncertified architecture.

## Suggested Next Round

Use the bootstrap judge decision, then ask each active AI to make a fresh Stage A reasoning attempt:

- A1 should synthesize the endpoint-cap strategy and later judge the round.
- A2 should stress-test the certified hybrid strategy and hidden hypotheses.
- A3 should audit endpoint ODE algebra, constants, and false compactness claims.
- A4 should generate checkable lemmas and symbolic/numeric verification plans.

Run: `{run_id}`
"""
    write_text(root / "manifests" / "reading_packet.md", packet)


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Generate or ingest the A1/GPT bootstrap judge before normalized Round 12."
    )
    parser.add_argument("--config", default="config/agents.web-test.json")
    parser.add_argument("--problem", default="problems/kkt_conjecture.md")
    parser.add_argument("--run-id", default="kkt-main")
    args = parser.parse_args(argv)

    root = Path.cwd()
    agents, judge_id, _ = load_config(root / args.config)
    agents_by_id = {agent.id: agent for agent in agents}
    judge = agents_by_id.get(judge_id, agents[0])

    round_dir = root / "rounds" / args.run_id / "round_011"
    handoff_path = root / "handoff" / args.run_id / "round_011" / "judge" / "bootstrap_judge.md"
    prompt_path = round_dir / "prompts" / "bootstrap_judge.md"
    output_path = round_dir / "judge" / "bootstrap_judge.md"

    prompt = bootstrap_prompt(
        judge_name=judge.display_name,
        judge_role=judge.role,
        problem=read_text(root / args.problem),
        protocol=read_text(root / "protocol.md"),
        active_agents=active_agents_block(agents),
        state=state_bundle(root),
        human=human_bundle(root),
    )
    write_text(prompt_path, prompt)

    response = usable_web_response(handoff_path)
    if response:
        write_text(output_path, response)
        update_manifest(root, args.run_id, response)
        update_reading_packet(root, args.run_id)
        print(f"Ingested bootstrap judge response: {output_path}")
        print("Updated manifests/round_011_bootstrap_judge.md and manifests/reading_packet.md")
        return 0

    if not handoff_path.exists():
        write_text(handoff_path, WEB_RESPONSE_MARKER + "\n\n")
    update_manifest(root, args.run_id, None)
    print(f"Bootstrap judge prompt: {prompt_path}")
    print(f"Save A1/GPT response to: {handoff_path}")
    print("Then rerun this command to ingest the response.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
