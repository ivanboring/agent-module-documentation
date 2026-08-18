#!/usr/bin/env bash
#
# scan-new-minors.sh — find contrib modules that have a NEWER STABLE minor
# branch upstream than the one we have documented under modules/.
#
# Data source: the Drupal.org release-history feed, the same endpoint core's
# Update Status uses:
#
#     https://updates.drupal.org/release-history/<project>/current
#
#   * /current returns only the project's *currently supported* branches,
#     newest release first. (Use this, not /all, so abandoned old branches
#     don't come back.)
#   * Unknown project -> "<error>...</error>" body with HTTP 200, so we match
#     on the <error> tag, never on the status code.
#
# Stop rule (per the campaign spec): walk releases newest-first, derive each
# minor branch (3.6.3 -> 3.6.x ; legacy 8.x-1.23 -> 1.23.x). For each new minor
# not present as modules/<xx>/<project>/<minor>/, emit it as needing a new agent
# description. The moment we reach a minor we already have a directory for, STOP
# — every older minor is already covered.
#
# Stable-only: a minor counts only once it has a clean stable release. Any
# -alpha / -beta / -rc / -dev / -unstable release is ignored.
#
# Usage:
#   scripts/scan-new-minors.sh admin_toolbar paragraphs ai      # explicit list
#   scripts/scan-new-minors.sh --list projects.txt              # one name/line
#   scripts/scan-new-minors.sh --all                            # every module dir in the repo
#
# Output (stdout): tab-separated worklist, one line per missing minor:
#   <project>\t<minor-branch>\t<latest-stable-version>\t<dir-path>
# Diagnostics go to stderr.

set -uo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"
MODULES_DIR="modules"

# --- collect the project list -------------------------------------------------
projects=()
case "${1:-}" in
  --all)
    while IFS= read -r d; do projects+=("$(basename "$d")"); done \
      < <(find "$MODULES_DIR" -mindepth 2 -maxdepth 2 -type d | sort -u)
    ;;
  --list)
    [ -n "${2:-}" ] || { echo "--list needs a file" >&2; exit 2; }
    while IFS= read -r line; do
      line="${line%%#*}"; line="$(echo "$line" | xargs)"
      [ -n "$line" ] && projects+=("$line")
    done < "$2"
    ;;
  "" ) echo "usage: $0 <project...> | --list FILE | --all" >&2; exit 2 ;;
  * )  projects=("$@") ;;
esac

# derive the 2-char shard dir the repo uses (first two chars of machine name)
shard() { echo "${1:0:2}"; }

# is this version a clean STABLE release? (no alpha/beta/rc/dev suffix)
is_stable() {
  local v="$1"
  [[ "$v" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]] && return 0   # modern semver: 3.6.3
  [[ "$v" =~ ^[0-9]+\.x-[0-9]+\.[0-9]+$ ]] && return 0  # legacy stable: 8.x-1.23
  return 1
}

# minor branch dir name for a version: 3.6.3 -> 3.6.x ; 8.x-1.23 -> 1.23.x
minor_of() {
  local v="$1"
  if [[ "$v" =~ ^([0-9]+)\.([0-9]+)\.[0-9]+$ ]]; then
    echo "${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.x"
  elif [[ "$v" =~ ^[0-9]+\.x-([0-9]+)\.([0-9]+)$ ]]; then
    echo "${BASH_REMATCH[1]}.${BASH_REMATCH[2]}.x"
  fi
}

total_missing=0
for proj in "${projects[@]}"; do
  sh="$(shard "$proj")"
  xml="$(curl -sfL "https://updates.drupal.org/release-history/${proj}/current")"
  if [ -z "$xml" ] || grep -q '<error>' <<<"$xml"; then
    echo "skip: $proj (no release history)" >&2
    continue
  fi

  have_none=1; [ -d "${MODULES_DIR}/${sh}/${proj}" ] && have_none=0
  seen_minor=""
  stopped=0

  # versions, newest-first, stable only, first occurrence of each minor
  while IFS= read -r v; do
    is_stable "$v" || continue
    m="$(minor_of "$v")"
    [ -n "$m" ] || continue
    # de-dupe minors within this project
    case " $seen_minor " in *" $m "*) continue ;; esac
    seen_minor="$seen_minor $m"

    dir="${MODULES_DIR}/${sh}/${proj}/${m}"
    if [ -d "$dir" ]; then
      stopped=1
      break                      # reached a minor we already have -> STOP
    fi
    printf '%s\t%s\t%s\t%s\n' "$proj" "$m" "$v" "$dir"
    total_missing=$((total_missing+1))
    # if we have the project but never hit a known minor, only the newest
    # stable minor is really actionable; keep listing but the stop above is
    # the normal exit. For a brand-new project (have_none) list just newest:
    if [ "$have_none" -eq 1 ]; then break; fi
  done < <(grep -oP '(?<=<version>)[^<]+' <<<"$xml")
done

echo "---" >&2
echo "missing stable minors: $total_missing" >&2
