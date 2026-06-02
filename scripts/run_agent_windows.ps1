param(
    [string] $Agents = "A3,A4",
    [ValidateSet("reasoning", "review")]
    [string] $Stage = "reasoning",
    [int] $Round = 14,
    [string] $RunId = "kkt-main",
    [string] $Config = "config/agents.web-test.json",
    [int] $Timeout = 7200,
    [switch] $Force,
    [switch] $SkipMissingApi,
    [switch] $Preview
)

$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..")
$LogDir = Join-Path $Root "tmp\agent-runs"
New-Item -ItemType Directory -Force -Path $LogDir | Out-Null

$AgentList = @(
    $Agents -split "," |
        ForEach-Object { $_.Trim() } |
        Where-Object { $_ }
)

if ($AgentList.Count -eq 0) {
    throw "No agents specified."
}

foreach ($Agent in $AgentList) {
    $Stamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $LogPath = Join-Path $LogDir "$RunId-round_$('{0:D3}' -f $Round)-$Stage-$Agent-$Stamp.log"
    $ForceArg = if ($Force) { " --force" } else { "" }
    $SkipArg = if ($SkipMissingApi) { " --skip-missing-api" } else { "" }
    $Title = "KKT $RunId round $Round $Agent $Stage"

    $Command = @"
`$Host.UI.RawUI.WindowTitle = "$Title"
Set-Location -LiteralPath "$Root"
`$env:PYTHONIOENCODING = "utf-8"
Remove-Item Env:\MATH_COLLAB_ACCEPT_EXISTING_REASONING -ErrorAction SilentlyContinue
Start-Transcript -Path "$LogPath" -Append | Out-Null
try {
    python -m math_collab.run_single_agent --agent "$Agent" --stage "$Stage" --round $Round --run-id "$RunId" --config "$Config" --timeout $Timeout$ForceArg$SkipArg
    `$exitCode = `$LASTEXITCODE
} finally {
    Stop-Transcript | Out-Null
}
Write-Host ""
Write-Host "Log: $LogPath"
Write-Host "Exit code: `$exitCode"
if (`$exitCode -ne 0) {
    Write-Host "FAILED: inspect the log above." -ForegroundColor Red
} else {
    Write-Host "OK: $Agent $Stage round $Round finished." -ForegroundColor Green
}
"@

    if ($Preview) {
        Write-Host "Preview: would start $Agent in a separate PowerShell window."
        Write-Host "  Command: python -m math_collab.run_single_agent --agent $Agent --stage $Stage --round $Round --run-id $RunId --config $Config --timeout $Timeout$ForceArg$SkipArg"
    } else {
        Start-Process powershell.exe `
            -ArgumentList @("-NoExit", "-ExecutionPolicy", "Bypass", "-Command", $Command) `
            -WindowStyle Normal

        Write-Host "Started $Agent in a separate PowerShell window."
    }
    Write-Host "  Log: $LogPath"
}
