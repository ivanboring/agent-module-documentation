#!/usr/bin/env bash
# Introspection SETUP: no-op. The baseline site already has the core Tome submodules
# (tome_base, tome_static, tome_sync) enabled; the agent inspects live module state. Exit 0.
set -uo pipefail
cd /var/www/html
echo "setup: (no-op) inspect which Tome submodules are enabled via drush pm:list"
