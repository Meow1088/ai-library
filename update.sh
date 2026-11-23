#!/usr/bin/env bash
# Bản Linux của update.ps1 — pull các repo theo manifest repos.txt (source of truth).
# Repo có trên đĩa nhưng không nằm trong manifest sẽ chỉ bị cảnh báo, không pull.
set -u
cd "$(dirname "$0")"

ok=0; fail=""; missing=0
known_file="$(mktemp)"
log_tmp="$(mktemp)"

while IFS='|' read -r category url; do
    category="$(echo "${category:-}" | xargs)"
    url="$(echo "${url:-}" | xargs)"
    [ -z "$category" ] && continue
    case "$category" in \#*) continue ;; esac
    [ -z "$url" ] && { echo "Dòng sai format: $category" >&2; continue; }

    name="$(basename "$url" .git)"
    rel="$category/$name"
    grep -qxF "$rel" "$known_file" && continue  # dòng trùng trong repos.txt
    echo "$rel" >> "$known_file"

    if [ ! -d "$rel/.git" ]; then
        echo "MISS  $rel (chưa clone — chạy clone.sh)"
        missing=$((missing+1))
        continue
    fi

    echo "PULL  $rel"
    before="$(git -C "$rel" rev-parse HEAD)"
    if git -C "$rel" pull --ff-only; then
        ok=$((ok+1))
        after="$(git -C "$rel" rev-parse HEAD)"
        if [ "$before" != "$after" ]; then
            n="$(git -C "$rel" rev-list --count "$before..$after" 2>/dev/null)"
            d0="$(git -C "$rel" log -1 --format=%cs "$before")"
            d1="$(git -C "$rel" log -1 --format=%cs "$after")"
            { echo "## $rel - $n commit ($d0 -> $d1)"
              git -C "$rel" log --format='- %s' -10 "$before..$after"
              echo; } >> "$log_tmp"
        fi
    else
        fail="$fail $rel"
    fi
done < repos.txt

# Nhật ký: chỉ repo có commit mới; mỗi lần chạy 1 file mới, không ghi đè
if [ -s "$log_tmp" ]; then
    mkdir -p _cap-nhat
    stem="$(date +%y-%m-%d)"; file="_cap-nhat/$stem.md"; i=2
    while [ -e "$file" ]; do file="_cap-nhat/$stem-$i.md"; i=$((i+1)); done
    { echo "# Cap nhat thu vien $(date '+%Y-%m-%d %H:%M') - $(hostname) (log tho tu update.sh)"; echo; cat "$log_tmp"; } > "$file"
    echo "Nhat ky: $file"
fi
rm -f "$log_tmp"

# Repo trên đĩa nhưng không có trong manifest
for d in */*/; do
    rel="${d%/}"
    if [ -d "$d/.git" ] && ! grep -qxF "$rel" "$known_file"; then
        echo "NGOAI MANIFEST  $rel (không pull — thêm vào repos.txt hoặc xóa)"
    fi
done
rm -f "$known_file"

failcount=$(echo "$fail" | wc -w)
echo ""
echo "Xong: $ok OK, $failcount lỗi, $missing chưa clone"
if [ -n "$fail" ]; then
    echo "Lỗi:$fail"
    exit 1
fi
exit 0
