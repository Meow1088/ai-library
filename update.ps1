# Cập nhật (git pull) các repo theo manifest repos.txt — repos.txt là source of truth.
# Repo có trên đĩa nhưng không nằm trong manifest sẽ chỉ bị cảnh báo, không pull.
$Root = $PSScriptRoot
$ok = 0; $fail = @(); $missing = @(); $known = @{}

foreach ($line in Get-Content (Join-Path $Root 'repos.txt')) {
    $line = $line.Trim()
    if (-not $line -or $line.StartsWith('#')) { continue }

    $parts = $line -split '\|'
    if ($parts.Count -ne 2) { Write-Warning "Dòng sai format: $line"; continue }

    $category = $parts[0].Trim()
    $name     = ($parts[1].Trim() -split '/')[-1] -replace '\.git$', ''
    $rel      = "$category\$name"
    $known[$rel] = $true
    $dest     = Join-Path $Root $rel

    if (-not (Test-Path (Join-Path $dest '.git'))) {
        Write-Host "MISS  $rel (chưa clone — chạy clone.ps1)" -ForegroundColor Yellow
        $missing += $rel
        continue
    }

    Write-Host "PULL  $rel" -ForegroundColor Green
    git -C $dest pull --ff-only
    if ($LASTEXITCODE -ne 0) { $fail += $rel } else { $ok++ }
}

# Repo trên đĩa nhưng không có trong manifest
Get-ChildItem $Root -Directory | ForEach-Object {
    $category = $_
    Get-ChildItem $category.FullName -Directory | ForEach-Object {
        $rel = "$($category.Name)\$($_.Name)"
        if ((Test-Path (Join-Path $_.FullName '.git')) -and -not $known.ContainsKey($rel)) {
            Write-Host "NGOAI MANIFEST  $rel (không pull — thêm vào repos.txt hoặc xóa)" -ForegroundColor Yellow
        }
    }
}

Write-Host ""
Write-Host ("Xong: {0} OK, {1} lỗi, {2} chưa clone" -f $ok, $fail.Count, $missing.Count)
if ($fail.Count) {
    Write-Host ("Lỗi: " + ($fail -join ', ')) -ForegroundColor Red
    exit 1
}
