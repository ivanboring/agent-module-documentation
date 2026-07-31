#!/usr/bin/env bash
# Enable the tome_sync_autoclean submodule. Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush en tome_sync_autoclean -y >/dev/null 2>&1
echo "setup: tome_sync_autoclean enabled"
