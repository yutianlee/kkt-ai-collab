param(
    [string] $RunId = "kkt-main",
    [int] $Round = 12,
    [int] $DelaySeconds = 7,
    [switch] $Submit
)

$ErrorActionPreference = "Stop"

function Get-RoundName([int] $RoundNumber) {
    return "round_{0:D3}" -f $RoundNumber
}

function Get-PromptPath([string] $Base, [string] $AgentId, [string] $Stage, [int] $RoundNumber) {
    $Suffixed = "$Base\$($AgentId)_$($Stage)_$RoundNumber.md"
    if (Test-Path -LiteralPath $Suffixed) {
        return $Suffixed
    }
    return "$Base\$($AgentId)_$($Stage).md"
}

$RoundName = Get-RoundName $Round
$Base = "rounds\$RunId\$RoundName\prompts"
$GptPrompt = Get-PromptPath $Base "A1" "review" $Round
$GeminiPrompt = Get-PromptPath $Base "A2" "review" $Round

Write-Host ""
Write-Host "Step 1/2: A1 ChatGPT Extended Pro review prompt"
Write-Host "Focus the ChatGPT input box before the countdown ends."
$GptArgs = @(
    "-NoProfile",
    "-ExecutionPolicy", "Bypass",
    "-File", "scripts\paste_web_prompt.ps1",
    "-PromptPath", $GptPrompt,
    "-DelaySeconds", $DelaySeconds
)
if ($Submit) {
    $GptArgs += "-Submit"
}
& powershell @GptArgs

Write-Host ""
Write-Host "Step 2/2: A2 Gemini Pro DeepThink review prompt"
Write-Host "Focus the Gemini input box before the countdown ends."
$GeminiArgs = @(
    "-NoProfile",
    "-ExecutionPolicy", "Bypass",
    "-File", "scripts\paste_web_prompt.ps1",
    "-PromptPath", $GeminiPrompt,
    "-DelaySeconds", $DelaySeconds
)
if ($Submit) {
    $GeminiArgs += "-Submit"
}
& powershell @GeminiArgs

Write-Host ""
Write-Host "After both models finish, use Copy response and save to:"
Write-Host "  handoff\$RunId\$RoundName\reviews\A1.md"
Write-Host "  handoff\$RunId\$RoundName\reviews\A2.md"
