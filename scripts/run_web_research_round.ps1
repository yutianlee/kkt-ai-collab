param(
    [string] $RunId = "kkt-main",
    [int] $Round = 12
)

$ErrorActionPreference = "Stop"

$Python = "python"

& $Python -m math_collab.orchestrator `
    --config config/agents.web-test.json `
    --problem problems/kkt_conjecture.md `
    --run-id $RunId `
    --start-round $Round `
    --rounds 1 `
    --timeout 1800 `
    --skip-missing-api

Write-Host ""
Write-Host "Next:"
Write-Host "1. Open prompt files under rounds/$RunId/round_$($Round.ToString('000'))/prompts."
Write-Host "   Prompt filenames include the round suffix, e.g. *_$Round.md."
Write-Host "2. Paste A1 prompts into ChatGPT Extended Pro and A2 prompts into Gemini Pro DeepThink."
Write-Host "3. Make sure DEEPSEEK_API_KEY and QWEN_API_KEY are set so A3/A4 can run."
Write-Host "4. Use Copy response and save A1/A2 Markdown under handoff/$RunId/round_$($Round.ToString('000'))."
Write-Host "5. Rerun this script for the same round until judge completes, then increment -Round."
