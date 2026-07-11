#!/usr/bin/env bash
# Bản Linux của clone.ps1 — clone repo trong repos.txt vào thư mục category.
# Repo đã tồn tại sẽ được skip. Clone --depth 1 để tiết kiệm dung lượng.
set -u
cd "$(dirname "$0")"

while IFS='|' read -r category url; do
    category="$(echo "${category:-}" | xargs)"
    url="$(echo "${url:-}" | xargs)"
    [ -z "$category" ] && continue
    case "$category" in \#*) continue ;; esac
    [ -z "$url" ] && { echo "Dòng sai format: $category" >&2; continue; }

    name="$(basename "$url" .git)"
    dest="$category/$name"

    if [ -d "$dest" ]; then
        echo "SKIP  $dest"
        continue
    fi

    mkdir -p "$category"
    echo "CLONE $dest"
    git clone --depth 1 "$url" "$dest"
done < repos.txt
