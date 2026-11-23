# Cập nhật (git pull) các repo theo manifest repos.txt — repos.txt là source of truth.
# Repo có trên đĩa nhưng không nằm trong manifest sẽ chỉ bị cảnh báo, không pull.
$Root = $PSScriptRoot
[Console]::OutputEncoding = [Text.Encoding]::UTF8  # doc dung tieu de commit co dau / CJK tu git
$ok = 0; $fail = @(); $missing = @(); $known = @{}; $log = @()

foreach ($line in Get-Content (Join-Path $Root 'repos.txt')) {
    $line = $line.Trim()
    if (-not $line -or $line.StartsWith('#')) { continue }

    $parts = $line -split '\|'
    if ($parts.Count -ne 2) { Write-Warning "Dòng sai format: $line"; continue }

    $category = $parts[0].Trim()
    $name     = ($parts[1].Trim() -split '/')[-1] -replace '\.git$', ''
    $rel      = "$category\$name"
    if ($known.ContainsKey($rel)) { continue }  # dong trung trong repos.txt
    $known[$rel] = $true
    $dest     = Join-Path $Root $rel

    if (-not (Test-Path (Join-Path $dest '.git'))) {
        Write-Host "MISS  $rel (chưa clone — chạy clone.ps1)" -ForegroundColor Yellow
        $missing += $rel
        continue
    }

    Write-Host "PULL  $rel" -ForegroundColor Green
    $before = git -C $dest rev-parse HEAD
    git -C $dest pull --ff-only
    if ($LASTEXITCODE -ne 0) { $fail += $rel; continue }
    $ok++
    $after = git -C $dest rev-parse HEAD
    if ($before -ne $after) {
        $n    = git -C $dest rev-list --count "$before..$after" 2>$null
        $d0   = git -C $dest log -1 --format=%cs $before
        $d1   = git -C $dest log -1 --format=%cs $after
        $subj = git -C $dest log --format='- %s' -10 "$before..$after"
        $log += @("## $rel - $n commit ($d0 -> $d1)") + $subj + @('')
    }
}

# Nhat ky: chi repo co commit moi; moi lan chay 1 file moi, khong ghi de
if ($log.Count) {
    $dir = Join-Path $Root '_cap-nhat'
    New-Item -ItemType Directory -Force $dir | Out-Null
    $stem = Get-Date -Format 'yy-MM-dd'; $file = Join-Path $dir "$stem.md"; $i = 2
    while (Test-Path $file) { $file = Join-Path $dir "$stem-$i.md"; $i++ }
    $head = @("# Cap nhat thu vien $(Get-Date -Format 'yyyy-MM-dd HH:mm') - $env:COMPUTERNAME (log tho tu update.ps1)", '')
    [IO.File]::WriteAllLines($file, [string[]]($head + $log), (New-Object Text.UTF8Encoding $false))
    Write-Host "Nhat ky: $file"
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
