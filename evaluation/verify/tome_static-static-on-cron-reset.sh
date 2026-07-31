#!/usr/bin/env bash
# Execution RESET: disable tome_static_cron and delete its settings, so static-on-cron is NOT
# configured (verify FAILS until the agent enables cron and sets a base_url). Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush php:eval '\Drupal::configFactory()->getEditable("tome_static_cron.settings")->delete();' >/dev/null 2>&1
drush pmu tome_static_cron -y >/dev/null 2>&1
echo "reset: tome_static_cron disabled and settings cleared"
