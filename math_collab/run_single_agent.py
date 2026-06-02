from __future__ import annotations

import argparse
import os
import shutil
import sys
import time
from pathlib import Path

from .orchestrator import (
    Agent,
    approximate_word_count,
    is_section_heading_line,
    load_config,
    load_env_file,
    prompt_filename,
    quality_gate_issues,
    response_quality_text,
    round_name,
    run_agent,
    usable_web_response,
)


def output_subdir(stage: str) -> str:
    if stage == "reasoning":
        return "responses"
    if stage == "review":
        return "reviews"
    raise ValueError(f"Unsupported agent stage: {stage}")


def archive_existing(path: Path) -> Path | None:
    if not path.exists():
        return None
    stamp = time.strftime("%Y%m%d-%H%M%S")
    rejected = path.parent / "rejected"
    rejected.mkdir(parents=True, exist_ok=True)
    archive = rejected / f"{path.stem}.{stamp}{path.suffix}"
    shutil.move(str(path), str(archive))
    return archive


def find_agent(agents: list[Agent], agent_id: str) -> Agent:
    for agent in agents:
        if agent.id == agent_id:
            return agent
    known = ", ".join(agent.id for agent in agents)
    raise SystemExit(f"Unknown agent {agent_id!r}. Known agents: {known}")


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Run one configured math-collab agent and quality-check the result."
    )
    parser.add_argument("--agent", required=True, help="Agent id, e.g. A3 or A4.")
    parser.add_argument("--stage", choices=["reasoning", "review"], default="reasoning")
    parser.add_argument("--round", type=int, required=True, dest="round_index")
    parser.add_argument("--run-id", default="kkt-main")
    parser.add_argument("--config", default="config/agents.web-test.json")
    parser.add_argument("--timeout", type=int, default=7200)
    parser.add_argument(
        "--skip-missing-api",
        action="store_true",
        help="Write a pending marker instead of failing when the API key is missing.",
    )
    parser.add_argument(
        "--force",
        action="store_true",
        help="Move an existing output to rejected/ and call the API again.",
    )
    args = parser.parse_args(argv)

    root = Path.cwd()
    load_env_file(root / ".env")
    os.environ.pop("MATH_COLLAB_ACCEPT_EXISTING_REASONING", None)

    agents, _, _ = load_config(root / args.config)
    agent = find_agent(agents, args.agent)

    stage_dir = output_subdir(args.stage)
    round_dir = root / "rounds" / args.run_id / round_name(args.round_index)
    handoff_dir = root / "handoff" / args.run_id / round_name(args.round_index)
    prompt_path = round_dir / "prompts" / prompt_filename(
        agent.id, args.stage, args.round_index
    )
    output_path = round_dir / stage_dir / f"{agent.id}.md"
    handoff_path = handoff_dir / stage_dir / f"{agent.id}.md"

    if not prompt_path.exists():
        print(f"Missing prompt file: {prompt_path}", file=sys.stderr)
        return 1

    if args.force:
        archive = archive_existing(output_path)
        if archive:
            print(f"Archived existing output to: {archive}")

    prompt = prompt_path.read_text(encoding="utf-8")
    print(
        f"Running {agent.id} {args.stage} round {args.round_index} "
        f"with timeout={args.timeout}s"
    )
    print(f"Prompt: {prompt_path}")
    print(f"Output: {output_path}")

    try:
        output = run_agent(
            agent=agent,
            prompt=prompt,
            prompt_path=prompt_path,
            output_path=output_path,
            handoff_response_path=handoff_path,
            stage=args.stage,
            round_index=args.round_index,
            dry_run=False,
            generate_prompts_only=False,
            web_mode="prompts-only",
            timeout=args.timeout,
            skip_missing_api=args.skip_missing_api,
        )
    except Exception as exc:
        print(f"{agent.id} ERROR: {exc}", file=sys.stderr)
        return 1

    text = output or usable_web_response(output_path) or ""
    if not text.strip():
        print(f"{agent.id} produced no output.", file=sys.stderr)
        return 1

    target = response_quality_text(text)
    headings = sum(1 for line in target.splitlines() if is_section_heading_line(line))
    issues = quality_gate_issues(agent, args.stage, text)
    print(
        f"{agent.id} words={approximate_word_count(target)} "
        f"headings={headings} chars={len(target)}"
    )
    if issues:
        print(f"{agent.id} QUALITY ISSUES:")
        for issue in issues:
            print(f"- {issue}")
        return 2

    print(f"{agent.id} OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
