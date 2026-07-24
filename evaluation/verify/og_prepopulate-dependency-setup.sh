#!/usr/bin/env bash
# Introspection SETUP: put the site in the known state the case asks about — the parent
# prepopulate module installed and enabled, og_prepopulate NOT installed (its og:og dependency
# is absent from the codebase). Idempotent, makes no destructive change. Exit 0.
set -uo pipefail
cd /var/www/html
drush en prepopulate -y >/dev/null 2>&1
drush php:eval '
  $mods = \Drupal::config("core.extension")->get("module");
  print "prepopulate=" . (isset($mods["prepopulate"]) ? "enabled" : "disabled")
      . " og_prepopulate=" . (isset($mods["og_prepopulate"]) ? "enabled" : "disabled")
      . " og_dir=" . (is_dir("/var/www/html/web/modules/contrib/og") ? "present" : "absent") . "\n";
' 2>/dev/null
echo "setup: prepopulate enabled; og_prepopulate left uninstalled"
exit 0
