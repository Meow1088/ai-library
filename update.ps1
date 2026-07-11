# Cập nhật (git pull) toàn bộ repo đã clone trong thư viện.
# Repo tải về dạng zip (không có .git) sẽ được bỏ qua.
$Root = $PSScriptRoot

Get-ChildItem $Root -Directory | ForEach-Object {
    $category = $_
    Get-ChildItem $category.FullName -Directory | ForEach-Object {
        if (-not (Test-Path (Join-Path $_.FullName '.git'))) {
            Write-Host "SKIP  $($category.Name)\$($_.Name) (không phải git repo)" -ForegroundColor DarkGray
            return
        }
        Write-Host "PULL  $($category.Name)\$($_.Name)" -ForegroundColor Green
        git -C $_.FullName pull --ff-only
    }
}
