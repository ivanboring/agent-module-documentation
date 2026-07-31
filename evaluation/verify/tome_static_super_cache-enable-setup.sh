#!/usr/bin/env bash
# Enable the tome_static_super_cache submodule (so its state / Views cache plugin is
# discoverable). Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush en tome_static_super_cache -y >/dev/null 2>&1
echo "setup: tome_static_super_cache enabled"
