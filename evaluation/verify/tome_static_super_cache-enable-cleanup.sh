#!/usr/bin/env bash
# Disable the tome_static_super_cache submodule, restoring baseline (it ships disabled).
# Doubles as the execution RESET (verify FAILS while disabled). Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush pmu tome_static_super_cache -y >/dev/null 2>&1
echo "cleanup: tome_static_super_cache disabled"
