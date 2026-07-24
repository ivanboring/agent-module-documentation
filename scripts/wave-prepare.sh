#!/usr/bin/env bash
# Prepare an installed wave for documentation: resolve each project's real module
# machine names, enable them, and print a manifest the doc agents work from.
#
# Drupal project names and module machine names are not the same thing
# (project `private_files_download_permission` ships module `pfdp`), and
# `drush en` is all-or-nothing, so one un-enableable module would block the whole
# wave. We resolve names from the info.yml files on disk and bisect on failure.
#
# Usage (inside the DDEV web container, cwd = /var/www/html):
#   scripts/wave-prepare.sh --file wave.txt      (one project machine name per line)
#
# Prints a TSV manifest to stdout:
#   <project>\t<version>\t<main_module>\t<enabled|FAILED>\t<submodule,submodule,...>
set -uo pipefail

cd /var/www/html
CONTRIB=web/modules/contrib

projects=()
if [ "${1:-}" = "--file" ]; then
  while read -r n; do [ -n "$n" ] && projects+=("$n"); done < "$2"
else
  projects=("$@")
fi
[ "${#projects[@]}" -gt 0 ] || { echo "usage: wave-prepare.sh --file <list>" >&2; exit 1; }

# The main module of a project is the info.yml at the project root; if there are
# several, prefer one named after the project, else the first alphabetically.
main_module() {
  local dir="$CONTRIB/$1" f best=
  [ -d "$dir" ] || return 1
  if [ -f "$dir/$1.info.yml" ]; then echo "$1"; return 0; fi
  for f in "$dir"/*.info.yml; do
    [ -e "$f" ] || continue
    best=$(basename "$f" .info.yml)
    break
  done
  [ -n "$best" ] && { echo "$best"; return 0; }
  return 1
}

# Every info.yml below the project root that is not the main module.
submodules() {
  local dir="$CONTRIB/$1" main="$2"
  [ -d "$dir" ] || return 0
  find "$dir" -mindepth 2 -name '*.info.yml' -not -path '*/tests/*' 2>/dev/null \
    | while read -r f; do
        n=$(basename "$f" .info.yml)
        [ "$n" = "$main" ] || echo "$n"
      done | sort -u | paste -sd, -
}

version_of() {
  composer show "drupal/$1" --format=json 2>/dev/null \
    | php -r '$j=json_decode(stream_get_contents(STDIN),true); echo $j["versions"][0] ?? "";'
}

FAILED_EN=()
try_en() { drush en "$@" -y >/dev/null 2>&1; }
do_en() {
  local n=$#
  if try_en "$@"; then return 0; fi
  if [ "$n" -eq 1 ]; then FAILED_EN+=("$1"); return 1; fi
  local half=$(( n / 2 ))
  do_en "${@:1:half}"
  do_en "${@:half+1}"
}

# Resolve names first, then enable everything resolvable in one bisected pass.
declare -A MAIN
to_enable=()
for p in "${projects[@]}"; do
  if m=$(main_module "$p"); then
    MAIN["$p"]="$m"
    to_enable+=("$m")
  fi
done

[ "${#to_enable[@]}" -gt 0 ] && do_en "${to_enable[@]}"
drush cr >/dev/null 2>&1

enabled_list=$(drush pm:list --status=enabled --field=name 2>/dev/null)

for p in "${projects[@]}"; do
  m="${MAIN[$p]:-}"
  if [ -z "$m" ]; then
    printf '%s\tNOT_INSTALLED\t-\tFAILED\t\n' "$p"
    continue
  fi
  v=$(version_of "$p")
  if echo "$enabled_list" | grep -qx "$m"; then st=enabled; else st=FAILED; fi
  printf '%s\t%s\t%s\t%s\t%s\n' "$p" "${v:-UNKNOWN}" "$m" "$st" "$(submodules "$p" "$m")"
done
