#!/usr/bin/env bash
# Execution CLEANUP: delete tome_static_cron.settings and disable the tome_static_cron
# submodule, restoring baseline. Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush php:eval '\Drupal::configFactory()->getEditable("tome_static_cron.settings")->delete();' >/dev/null 2>&1
drush pmu tome_static_cron -y >/dev/null 2>&1
echo "cleanup: tome_static_cron disabled and settings cleared"
