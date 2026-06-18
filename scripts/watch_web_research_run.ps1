param(
    [string] $RunId = "kkt-main",
    [int] $StartRound = 12,
    [int] $Rounds = 3,
    [int] $PollSeconds = 30
)

$ErrorActionPreference = "Stop"

$Python = "python"

function Get-RoundName([int] $Round) {
    return "round_{0:D3}" -f $Round
}

function Get-PromptPath([string] $PromptBase, [string] $Name, [int] $Round) {
    $Suffixed = "$PromptBase\$($Name)_$Round.md"
    if (Test-Path -LiteralPath $Suffixed) {
        return $Suffixed
    }
    return "$PromptBase\$Name.md"
}

function Get-JudgeFile([string] $Base, [int] $Round) {
    $RoundNo = "{0:D3}" -f $Round
    return "$Base\judge\judge-$RoundNo.md"
}

function Test-RealResponse([string] $Path) {
    if (-not (Test-Path -LiteralPath $Path)) {
        return $false
    }
    $Text = Get-Content -LiteralPath $Path -Raw
    if ([string]::IsNullOrWhiteSpace($Text)) {
        return $false
    }
    $Marker = "# Paste the web response below this line, then rerun the orchestrator."
    $Trimmed = $Text.Trim()
    if ($Trimmed -eq $Marker) {
        return $false
    }
    if ($Trimmed.StartsWith($Marker) -and $Trimmed.Substring($Marker.Length).Trim().Length -eq 0) {
        return $false
    }
    if ($Trimmed.StartsWith("# Pending API Response")) {
        return $false
    }
    return $true
}

function Invoke-Orchestrator([int] $Round) {
    & $Python -m math_collab.orchestrator `
        --config config/agents.web-test.json `
        --problem problems/kkt_conjecture.md `
        --run-id $RunId `
        --start-round $Round `
        --rounds 1 `
        --timeout 1800 `
        --skip-missing-api
}

function Normalize-IfPresent([string[]] $Paths) {
    $Existing = @($Paths | Where-Object { Test-Path -LiteralPath $_ })
    if ($Existing.Count -gt 0) {
        & $Python -m math_collab.normalize_markdown @Existing | Write-Host
    }
}

function Show-NeededFiles([int] $Round) {
    $RoundName = Get-RoundName $Round
    $Base = "handoff\$RunId\$RoundName"
    $PromptBase = "rounds\$RunId\$RoundName\prompts"

    $ResponseFiles = @(
        "$Base\responses\A1.md",
        "$Base\responses\A2.md",
        "rounds\$RunId\$RoundName\responses\A3.md",
        "rounds\$RunId\$RoundName\responses\A4.md"
    )
    $ReviewFiles = @(
        "$Base\reviews\A1.md",
        "$Base\reviews\A2.md",
        "rounds\$RunId\$RoundName\reviews\A3.md",
        "rounds\$RunId\$RoundName\reviews\A4.md"
    )
    $JudgeFile = Get-JudgeFile $Base $Round

    if (($ResponseFiles | Where-Object { -not (Test-RealResponse $_) }).Count -gt 0) {
        Write-Host ""
        Write-Host "Round $RoundName is waiting for reasoning responses."
        Write-Host "Paste these prompts into the fixed web conversations:"
        Write-Host "  $(Get-PromptPath $PromptBase 'A1_reasoning' $Round)"
        Write-Host "  $(Get-PromptPath $PromptBase 'A2_reasoning' $Round)"
        Write-Host "Then use Copy response and save Markdown to:"
        Write-Host "  $Base\responses\A1.md"
        Write-Host "  $Base\responses\A2.md"
        Write-Host "For A3/A4, set DEEPSEEK_API_KEY and QWEN_API_KEY, then rerun the watcher."
        return "responses"
    }

    Normalize-IfPresent @("$Base\responses\A1.md", "$Base\responses\A2.md")
    Invoke-Orchestrator $Round

    if (($ReviewFiles | Where-Object { -not (Test-RealResponse $_) }).Count -gt 0) {
        Write-Host ""
        Write-Host "Round $RoundName is waiting for cross reviews."
        Write-Host "Paste these review prompts:"
        Write-Host "  $(Get-PromptPath $PromptBase 'A1_review' $Round)"
        Write-Host "  $(Get-PromptPath $PromptBase 'A2_review' $Round)"
        Write-Host "Then use Copy response and save Markdown to:"
        Write-Host "  $Base\reviews\A1.md"
        Write-Host "  $Base\reviews\A2.md"
        Write-Host "For A3/A4 reviews, set DEEPSEEK_API_KEY and QWEN_API_KEY, then rerun the watcher."
        return "reviews"
    }

    Normalize-IfPresent @("$Base\reviews\A1.md", "$Base\reviews\A2.md")
    Invoke-Orchestrator $Round

    if (-not (Test-RealResponse $JudgeFile)) {
        Write-Host ""
        Write-Host "Round $RoundName is waiting for judge synthesis."
        Write-Host "Paste this judge prompt into ChatGPT Extended Pro (A1):"
        Write-Host "  $(Get-PromptPath $PromptBase 'judge' $Round)"
        Write-Host "Then use Copy response and save Markdown to:"
        Write-Host "  $JudgeFile"
        return "judge"
    }

    Normalize-IfPresent @($JudgeFile)
    Invoke-Orchestrator $Round
    Write-Host ""
    Write-Host "Round $RoundName is complete."
    return "complete"
}

Write-Host "Watching run '$RunId' from round $StartRound for $Rounds round(s)."
Write-Host "Press Ctrl+C to stop."

$EndRound = $StartRound + $Rounds - 1
for ($Round = $StartRound; $Round -le $EndRound; $Round++) {
    Invoke-Orchestrator $Round
    while ($true) {
        $Status = Show-NeededFiles $Round
        if ($Status -eq "complete") {
            break
        }
        Start-Sleep -Seconds $PollSeconds
    }
}

Write-Host ""
Write-Host "All requested rounds are complete."
