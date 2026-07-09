#!/usr/bin/env bash
# Validate a generated module doc directory.
# Usage:  scripts/validate-docs.sh modules/token/1.17.x
set -uo pipefail

DIR="${1:?usage: validate-docs.sh modules/<name>/<version>}"
fail=0
err() { echo "FAIL: $1"; fail=1; }

# data.json — must exist and be valid JSON
if [ ! -f "$DIR/data.json" ]; then err "$DIR/data.json missing"; else
  php -r 'json_decode(file_get_contents($argv[1])); exit(json_last_error() ? 1 : 0);' "$DIR/data.json" \
    || err "$DIR/data.json is not valid JSON"
fi

# usage.md — three '---'-separated blocks, 15–30 use-case bullets in the last block
if [ ! -f "$DIR/usage.md" ]; then err "$DIR/usage.md missing"; else
  seps=$(grep -cxE '\s*---\s*' "$DIR/usage.md")
  [ "$seps" -eq 2 ] || err "$DIR/usage.md has $seps '---' separators (want 2 → 3 blocks)"
  bullets=$(awk 'c==2 && /^[[:space:]]*[-*] /{n++} /^[[:space:]]*---[[:space:]]*$/{c++} END{print n+0}' "$DIR/usage.md")
  { [ "$bullets" -ge 15 ] && [ "$bullets" -le 30 ]; } || err "$DIR/usage.md has $bullets use-case bullets (want 15–30)"
fi

# agent/start.md — must exist and its relative links must resolve
if [ ! -f "$DIR/agent/start.md" ]; then err "$DIR/agent/start.md missing"; else
  grep -oE '\]\(([^)]+\.md)\)' "$DIR/agent/start.md" | sed -E 's/\]\((.*)\)/\1/' | while read -r link; do
    [ -f "$DIR/agent/$link" ] || echo "FAIL: broken link in start.md -> $link"
  done
  grep -qE '\]\(([^)]+\.md)\)' "$DIR/agent/start.md" && \
    grep -oE '\]\(([^)]+\.md)\)' "$DIR/agent/start.md" | sed -E 's/\]\((.*)\)/\1/' | while read -r link; do
      [ -f "$DIR/agent/$link" ] || exit 1
    done || err "$DIR/agent/start.md has a broken link (see above)"
fi

[ "$fail" -eq 0 ] && echo "OK: $DIR" || exit 1
