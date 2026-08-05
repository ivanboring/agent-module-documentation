#!/usr/bin/env bash
# Pre-filter project names by whether drupal.org has ANY Drupal 11 compatible release.
#
# Composer resolution is slow (30-120s per project) and this deep in the campaign most
# failures are simply "the project has no D11 release at all" - wave 52 lost 26 of 40
# projects that way before anyone looked at a composer error. Checking the release-history
# feed first costs ~1s per project and removes those before an install is attempted.
#
# The check is a heuristic, not an oracle: it looks for "11" inside any
# <core_compatibility> element of the project's current release feed. A project can pass
# here and still fail to install (dependency conflicts against the site's package tree),
# and a project with only an unpublished/dev D11 branch may pass too. Composer remains the
# arbiter - this only avoids wasting time on the hopeless cases.
#
# Usage (host or container; needs curl):
#   scripts/check-d11.sh name1 name2 ...
#   scripts/check-d11.sh --file list.txt
#   scripts/next-wave.sh 200 | scripts/check-d11.sh --stdin --only-ok
#
# Prints one line per project:  <project>\t<D11|NO-D11|UNKNOWN>
# --only-ok prints just the D11-capable project names (for piping into safe-install.sh).
set -uo pipefail

ONLY_OK=
names=()

while [ $# -gt 0 ]; do
  case "$1" in
    --only-ok) ONLY_OK=1; shift ;;
    --stdin)   while read -r n; do [ -n "$n" ] && names+=("$n"); done; shift ;;
    --file)    while read -r n; do [ -n "$n" ] && names+=("$n"); done < "$2"; shift 2 ;;
    *)         names+=("$1"); shift ;;
  esac
done

[ "${#names[@]}" -gt 0 ] || { echo "usage: check-d11.sh [--only-ok] <name...> | --file <list> | --stdin" >&2; exit 1; }

check_one() {
  local m="$1" xml ok
  xml=$(curl -s --max-time 15 "https://updates.drupal.org/release-history/$m/current") || xml=''
  if [ -z "$xml" ] || echo "$xml" | grep -q '<error>'; then
    printf '%s\tUNKNOWN\n' "$m"
    return
  fi
  ok=$(echo "$xml" | grep -oE '<core_compatibility>[^<]*</core_compatibility>' | grep -c '11')
  if [ "$ok" -gt 0 ]; then printf '%s\tD11\n' "$m"; else printf '%s\tNO-D11\n' "$m"; fi
}
export -f check_one

# 12 parallel lookups keeps this under ~30s for a 250-project scan without hammering d.o.
printf '%s\n' "${names[@]}" \
  | xargs -P 12 -I{} bash -c 'check_one "$@"' _ {} \
  | if [ -n "$ONLY_OK" ]; then awk -F'\t' '$2=="D11"{print $1}'; else cat; fi
