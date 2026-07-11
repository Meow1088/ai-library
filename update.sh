#!/usr/bin/env bash
# Bản Linux của update.ps1 — git pull toàn bộ repo đã clone.
set -u
cd "$(dirname "$0")"

for d in */*/; do
    if [ -d "$d/.git" ]; then
        echo "PULL  $d"
        git -C "$d" pull --ff-only
    else
        echo "SKIP  $d (không phải git repo)"
    fi
done
