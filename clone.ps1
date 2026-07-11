# Clone toàn bộ repo trong repos.txt vào thư mục category tương ứng.
# Repo đã tồn tại sẽ được skip. Clone --depth 1 để tiết kiệm dung lượng.
$Root = $PSScriptRoot
$ok = 0; $skip = 0; $fail = @()

foreach ($line in Get-Content (Join-Path $Root 'repos.txt')) {
    $line = $line.Trim()
    if (-not $line -or $line.StartsWith('#')) { continue }

    $parts = $line -split '\|'
    if ($parts.Count -ne 2) { Write-Warning "Dòng sai format: $line"; continue }

    $category = $parts[0].Trim()
    $url      = $parts[1].Trim()
    $name     = ($url -split '/')[-1] -replace '\.git$', ''
    $dest     = Join-Path $Root "$category\$name"

    if (Test-Path $dest) {
        Write-Host "SKIP  $category\$name" -ForegroundColor DarkGray
        $skip++
        continue
    }

    New-Item -ItemType Directory -Force (Join-Path $Root $category) | Out-Null
    Write-Host "CLONE $category\$name" -ForegroundColor Green
    git clone --depth 1 $url $dest
    if ($LASTEXITCODE -ne 0) { $fail += "$category\$name" } else { $ok++ }
}

Write-Host ""
Write-Host ("Xong: {0} clone, {1} skip, {2} lỗi" -f $ok, $skip, $fail.Count)
if ($fail.Count) {
    Write-Host ("Lỗi: " + ($fail -join ', ')) -ForegroundColor Red
    exit 1
}
