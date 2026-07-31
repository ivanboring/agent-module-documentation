#!/usr/bin/env bash
# Disable the tome_sync_autoclean submodule, restoring baseline (ships disabled). Doubles as
# the execution RESET (verify FAILS while disabled). Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush pmu tome_sync_autoclean -y >/dev/null 2>&1
echo "cleanup: tome_sync_autoclean disabled"
