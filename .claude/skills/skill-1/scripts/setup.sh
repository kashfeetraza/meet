#!/usr/bin/env bash
# Usage: bash setup.sh [project-name]   (default: backend)
set -euo pipefail

NAME="${1:-backend}"
HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v uv >/dev/null 2>&1; then
  echo "uv is not installed. See https://docs.astral.sh/uv/getting-started/installation/" >&2
  exit 1
fi

uv init "$NAME"
cd "$NAME"
cp "$HERE/main.py" main.py   # Hello World template
uv run main.py
uv sync
echo "Done. Project ready in ./$NAME"
