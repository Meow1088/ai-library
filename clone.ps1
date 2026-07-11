# Clone toàn bộ repo trong repos.txt vào thư mục category tương ứng.
# Repo đã tồn tại sẽ được skip. Clone --depth 1 để tiết kiệm dung lượng.
$Root = $PSScriptRoot

Get-Content (Join-Path $Root 'repos.txt') | ForEach-Object {
    $line = $_.Trim()
    if (-not $line -or $line.StartsWith('#')) { return }

    $parts = $line -split '\|'
    if ($parts.Count -ne 2) { Write-Warning "Dòng sai format: $line"; return }

    $category = $parts[0].Trim()
    $url      = $parts[1].Trim()
    $name     = ($url -split '/')[-1] -replace '\.git$', ''
    $dest     = Join-Path $Root "$category\$name"

    if (Test-Path $dest) {
        Write-Host "SKIP  $category\$name" -ForegroundColor DarkGray
        return
    }

    New-Item -ItemType Directory -Force (Join-Path $Root $category) | Out-Null
    Write-Host "CLONE $category\$name" -ForegroundColor Green
    git clone --depth 1 $url $dest
}
