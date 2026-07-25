#!/usr/bin/env bash
# Print the next N undocumented projects from the campaign list, in popularity order.
#
# "Undocumented" is recomputed from disk every call: a project is skipped if a directory
# modules/<project>/ exists. This is self-correcting — as each wave lands new dirs, they
# drop out of the next pick automatically, so there is no cursor to keep in sync.
#
# It cannot see project→module renames (project private_files_download_permission ships
# module pfdp), so a handful of already-done projects may reappear; the installer and
# wave-prepare treat those as no-ops. Known-unresolvable projects are listed in
# scripts/.campaign-skip and filtered out here.
#
# Usage (from the repo root, host or container):
#   scripts/next-wave.sh [N]          (default 40)
# Prints one project machine name per line.
set -uo pipefail
cd "$(dirname "$0")/.."

N="${1:-40}"
LIST=".campaign-5000.txt"
SKIP="scripts/.campaign-skip"
[ -f "$LIST" ] || { echo "missing $LIST" >&2; exit 1; }

awk -F'\t' -v n="$N" -v modns="modules" -v skipf="$SKIP" '
  BEGIN {
    while ((getline line < skipf) > 0) { if (line !~ /^#/ && line != "") skip[line]=1 }
  }
  {
    proj=$2
    if (proj in skip) next
    # skip if already documented on disk
    cmd="test -d " modns "/" proj " && echo yes"
    have=""
    cmd | getline have
    close(cmd)
    if (have=="yes") next
    print proj
    if (++c>=n) exit
  }
' "$LIST"
