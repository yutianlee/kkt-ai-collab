[CmdletBinding(PositionalBinding = $false)]
param(
    [string[]] $Agents = @("A3", "A4"),
    [ValidateSet("reasoning", "review")]
    [string] $Stage = "reasoning",
    [int] $Round = 14,
    [string] $RunId = "kkt-main",
    [string] $Config = "config/agents.web-test.json",
    [int] $Timeout = 7200,
    [switch] $Force,
    [switch] $SkipMissingApi,
    [switch] $Preview,
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]] $ExtraAgents
)

$ErrorActionPreference = "Stop"

$Root = Resolve-Path (Join-Path $PSScriptRoot "..")
$LogDir = Join-Path $Root "tmp\agent-runs"
New-Item -ItemType Directory -Force -Path $LogDir | Out-Null

$AgentList = @(
    @($Agents) + @($ExtraAgents) |
        ForEach-Object { $_ -split "[,\s]+" } |
        ForEach-Object { $_.Trim() } |
        Where-Object { $_ }
)

if ($AgentList.Count -eq 0) {
    throw "No agents specified."
}

function Quote-PSString {
    param([Parameter(Mandatory = $true)][string] $Value)
    return "'" + ($Value -replace "'", "''") + "'"
}

foreach ($Agent in $AgentList) {
    $Stamp = Get-Date -Format "yyyyMMdd-HHmmss"
    $LogPath = Join-Path $LogDir "$RunId-round_$('{0:D3}' -f $Round)-$Stage-$Agent-$Stamp.log"
    $ScriptPath = Join-Path $LogDir "$RunId-round_$('{0:D3}' -f $Round)-$Stage-$Agent-$Stamp.ps1"
    $Title = "KKT $RunId round $Round $Agent $Stage"

    $PythonArgs = @(
        "-m",
        "math_collab.run_single_agent",
        "--agent",
        $Agent,
        "--stage",
        $Stage,
        "--round",
        [string] $Round,
        "--run-id",
        $RunId,
        "--config",
        $Config,
        "--timeout",
        [string] $Timeout
    )
    if ($Force) {
        $PythonArgs += "--force"
    }
    if ($SkipMissingApi) {
        $PythonArgs += "--skip-missing-api"
    }
    $PythonArgBlock = ($PythonArgs | ForEach-Object { "    $(Quote-PSString $_)" }) -join ",`n"
    $PreviewCommand = "python " + (($PythonArgs | ForEach-Object {
        if ($_ -match "[\s`"']") { '"' + ($_ -replace '"', '\"') + '"' } else { $_ }
    }) -join " ")

    $Command = @"
`$ErrorActionPreference = 'Stop'
`$logPath = $(Quote-PSString $LogPath)
`$agentName = $(Quote-PSString $Agent)
`$stageName = $(Quote-PSString $Stage)
`$roundIndex = $Round
`$Host.UI.RawUI.WindowTitle = $(Quote-PSString $Title)
Set-Location -LiteralPath $(Quote-PSString ([string] $Root))
`$env:PYTHONIOENCODING = 'utf-8'
Remove-Item Env:\MATH_COLLAB_ACCEPT_EXISTING_REASONING -ErrorAction SilentlyContinue
`$transcriptStarted = `$false
try {
    Start-Transcript -Path `$logPath -Append | Out-Null
    `$transcriptStarted = `$true
    `$pythonArgs = @(
$PythonArgBlock
    )
    python @pythonArgs
    `$exitCode = `$LASTEXITCODE
} catch {
    Write-Error `$_
    `$exitCode = 1
} finally {
    if (`$transcriptStarted) {
        Stop-Transcript | Out-Null
    }
}
Write-Host ''
Write-Host "Log: `$logPath"
Write-Host "Exit code: `$exitCode"
if (`$exitCode -ne 0) {
    Write-Host 'FAILED: inspect the log above.' -ForegroundColor Red
} else {
    Write-Host "OK: `$agentName `$stageName round `$roundIndex finished." -ForegroundColor Green
}
"@

    if ($Preview) {
        Write-Host "Preview: would start $Agent in a separate PowerShell window."
        Write-Host "  Command: $PreviewCommand"
    } else {
        Set-Content -LiteralPath $ScriptPath -Value $Command -Encoding UTF8
        Start-Process powershell.exe `
            -ArgumentList "-NoExit -ExecutionPolicy Bypass -File `"$ScriptPath`"" `
            -WindowStyle Normal

        Write-Host "Started $Agent in a separate PowerShell window."
        Write-Host "  Script: $ScriptPath"
    }
    Write-Host "  Log: $LogPath"
}
