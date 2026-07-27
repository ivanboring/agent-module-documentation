#!/usr/bin/env bash
# Pollution-safe sequential installer.
#
# `composer require -W` does not reliably revert composer.json when a resolution fails, so a
# single unresolvable module poisons every subsequent require in a batch. This installs one
# module at a time and restores composer.json from a snapshot after any failure, so failures
# are isolated and never block the rest. Modules already on disk are skipped.
#
# Usage (inside the DDEV web container, cwd = /var/www/html):
#   scripts/safe-install.sh --file <list>     (one machine name per line)
# Prints:  <name>\t<version|FAILED|present>
set -uo pipefail
cd /var/www/html

names=()
if [ "${1:-}" = "--file" ]; then
  while read -r n; do [ -n "$n" ] && names+=("$n"); done < "$2"
else
  names=("$@")
fi

SNAP=$(mktemp)
cp composer.json "$SNAP"

for m in "${names[@]}"; do
  if [ -d "web/modules/contrib/$m" ]; then
    printf '%s\tpresent\n' "$m"
    cp composer.json "$SNAP"   # refresh snapshot to the last-good state
    continue
  fi
  if composer require "drupal/$m" -W --no-interaction --no-progress >/dev/null 2>&1 \
       && [ -d "web/modules/contrib/$m" ]; then
    v=$(composer show "drupal/$m" --format=json 2>/dev/null \
          | php -r '$j=json_decode(stream_get_contents(STDIN),true); echo $j["versions"][0] ?? "?";')
    printf '%s\t%s\n' "$m" "${v:-?}"
    cp composer.json "$SNAP"   # commit: this module stuck, make it the new baseline
  else
    printf '%s\tFAILED\n' "$m"
    cp "$SNAP" composer.json    # roll back the poisoned composer.json
  fi
done

rm -f "$SNAP"
