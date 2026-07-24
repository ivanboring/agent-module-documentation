#!/usr/bin/env bash
# Introspection CLEANUP: the matching setup only asserted the baseline (prepopulate enabled,
# og_prepopulate uninstalled), so this restores nothing beyond making sure the agent did not
# leave og_prepopulate half-installed. Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush pm:uninstall og_prepopulate -y >/dev/null 2>&1
drush php:eval '
  $mods = \Drupal::config("core.extension")->get("module");
  print "og_prepopulate=" . (isset($mods["og_prepopulate"]) ? "enabled" : "disabled") . "\n";
' 2>/dev/null
echo "cleanup: baseline (og_prepopulate not installed)"
exit 0
