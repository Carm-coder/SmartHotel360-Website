#!/usr/bin/env bash
# Usage: ./scripts/new-video.sh <number> "<title>"
set -euo pipefail
cd "$(dirname "$0")/.."
num=$(printf '%03d' "$1")
slug=$(echo "$2" | tr '[:upper:]' '[:lower:]' | sed -E 's/[^a-z0-9]+/-/g; s/^-|-$//g')
dest="04-videos/${num}-${slug}"
[ -e "$dest" ] && { echo "Already exists: $dest"; exit 1; }
cp -r 04-videos/_TEMPLATE "$dest"
find "$dest" -name .gitkeep -delete
echo "Created $dest"
