#!/usr/bin/env bash
# Simple helper to preview the static landing page locally.
set -euo pipefail
PORT=${1:-8000}
DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$DIRECTORY"
python -m http.server "$PORT"
