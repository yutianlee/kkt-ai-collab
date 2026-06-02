param(
    [Parameter(Mandatory = $true)]
    [string] $OutputPath,

    [switch] $NoNormalize
)

$ErrorActionPreference = "Stop"

$Text = Get-Clipboard -Raw
if ([string]::IsNullOrWhiteSpace($Text)) {
    throw "Clipboard is empty. Click Copy response in the web UI first."
}

$Directory = Split-Path -Parent $OutputPath
if ($Directory) {
    New-Item -ItemType Directory -Force -Path $Directory | Out-Null
}

Set-Content -LiteralPath $OutputPath -Value $Text -Encoding UTF8

if (-not $NoNormalize) {
    $Python = "python"
    & $Python -m math_collab.normalize_markdown $OutputPath | Write-Host
}

Write-Host "Saved clipboard response to:"
Write-Host "  $OutputPath"
