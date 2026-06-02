param(
    [string] $RunId = "kkt-main",
    [string] $Config = "config/agents.web-test.json"
)

$ErrorActionPreference = "Stop"

$Python = "python"

& $Python -m math_collab.bootstrap_judge `
    --config $Config `
    --problem problems/kkt_conjecture.md `
    --run-id $RunId
