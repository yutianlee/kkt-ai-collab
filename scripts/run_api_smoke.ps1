param(
    [string] $Agents = "A3,A4",
    [string] $Config = "config/agents.web-test.json",
    [int] $Timeout = 120
)

$ErrorActionPreference = "Stop"

$Python = "python"

& $Python -m math_collab.api_smoke `
    --config $Config `
    --agents $Agents `
    --timeout $Timeout
