#!/usr/bin/env bash
# Bản Linux của update.ps1 — pull các repo theo manifest repos.txt (source of truth).
# Repo có trên đĩa nhưng không nằm trong manifest sẽ chỉ bị cảnh báo, không pull.
set -u
cd "$(dirname "$0")"

ok=0; fail=""; missing=0
known_file="$(mktemp)"

while IFS='|' read -r category url; do
    category="$(echo "${category:-}" | xargs)"
    url="$(echo "${url:-}" | xargs)"
    [ -z "$category" ] && continue
    case "$category" in \#*) continue ;; esac
    [ -z "$url" ] && { echo "Dòng sai format: $category" >&2; continue; }

    name="$(basename "$url" .git)"
    rel="$category/$name"
    echo "$rel" >> "$known_file"

    if [ ! -d "$rel/.git" ]; then
        echo "MISS  $rel (chưa clone — chạy clone.sh)"
        missing=$((missing+1))
        continue
    fi

    echo "PULL  $rel"
    if git -C "$rel" pull --ff-only; then
        ok=$((ok+1))
    else
        fail="$fail $rel"
    fi
done < repos.txt

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
