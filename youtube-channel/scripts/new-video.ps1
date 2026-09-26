# Usage: powershell -File scripts\new-video.ps1 -Number 1 -Title "my first video"
param([Parameter(Mandatory)][int]$Number, [Parameter(Mandatory)][string]$Title)
$root = Split-Path $PSScriptRoot -Parent
$slug = ($Title.ToLower() -replace '[^a-z0-9]+', '-').Trim('-')
$dest = Join-Path $root ("04-videos\{0:D3}-{1}" -f $Number, $slug)
if (Test-Path $dest) { Write-Error "Already exists: $dest"; exit 1 }
Copy-Item (Join-Path $root "04-videos\_TEMPLATE") $dest -Recurse
Get-ChildItem $dest -Recurse -Force -Filter .gitkeep | Remove-Item -Force
Write-Host "Created $dest"
