#!/usr/bin/env bash
set -euo pipefail

if ! command -v hugo >/dev/null 2>&1; then
  echo "hugo is not installed." >&2
  echo "On macOS, install it with: brew install hugo" >&2
  exit 1
fi

cd "$(dirname "$0")"

if [[ -f .gitmodules ]]; then
  git submodule update --init --recursive
fi

exec hugo server --buildDrafts --bind 127.0.0.1 --port "${1:-${PORT:-1313}}" --disableFastRender
