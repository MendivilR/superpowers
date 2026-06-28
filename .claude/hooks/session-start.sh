#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install shellcheck for linting bash scripts
if ! command -v shellcheck &>/dev/null; then
  apt-get install -y -q shellcheck
fi
