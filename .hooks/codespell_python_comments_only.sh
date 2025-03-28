#!/bin/bash
set -euo pipefail

for file in "$@"; do
  if [[ "$file" == *.py ]]; then
    grep -hoP '^\s*#.*' "$file" | conda run -n dev codespell --ignore-words .codespell-ignore -
  fi
done
