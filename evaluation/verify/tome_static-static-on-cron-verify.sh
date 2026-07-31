#!/usr/bin/env bash
# Execution VERIFY: PASS when static-on-cron is configured: the tome_static_cron module is
# enabled AND a valid base_url is set in tome_static_cron.settings. exit 0 pass / 1 fail.
set -uo pipefail
cd /var/www/html
out=$(drush php:eval '
  $on = \Drupal::moduleHandler()->moduleExists("tome_static_cron");
  $u = $on ? \Drupal::config("tome_static_cron.settings")->get("base_url") : NULL;
  $valid = is_string($u) && $u !== "" && \Drupal\Component\Utility\UrlHelper::isValid($u, TRUE);
  print (($on && $valid) ? "PASS" : "FAIL") . " enabled=" . var_export($on, TRUE) . " base_url=" . var_export($u, TRUE) . "\n";
' 2>/dev/null)
echo "$out"
echo "$out" | grep -q '^PASS' && exit 0 || exit 1
