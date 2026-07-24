#!/usr/bin/env bash
# Audit: does every enabled contrib module's shipped default config actually exist?
#
# A module can end up listed in core.extension while its config/install/*.yml was never
# imported (interrupted installs, or an install that was retried and reported "Already
# installed" so the config step was skipped). The module then looks Enabled but behaves
# as if unconfigured — which silently corrupts any documentation or eval case written
# against it.
#
# Usage (inside the DDEV web container, cwd = /var/www/html):
#   scripts/check-default-config.sh              # audit every enabled contrib module
#   scripts/check-default-config.sh --fix        # also install the missing default config
#
# Prints:  <module>\tMISSING\t<config name>   for each shipped config object not present.
set -uo pipefail
cd /var/www/html

FIX=0
[ "${1:-}" = "--fix" ] && FIX=1

drush php:eval '
  $fix = (bool) getenv("CDC_FIX");
  $handler = \Drupal::service("module_handler");
  $storage = \Drupal::service("config.storage");
  $installer = \Drupal::service("config.installer");
  $missing_by_module = [];

  foreach ($handler->getModuleList() as $name => $ext) {
    $path = DRUPAL_ROOT . "/" . $ext->getPath();
    // contrib/custom only — core modules are installed by the installer itself
    if (strpos($ext->getPath(), "core/") === 0) { continue; }
    $dir = $path . "/config/install";
    if (!is_dir($dir)) { continue; }
    foreach (glob($dir . "/*.yml") as $file) {
      $cname = basename($file, ".yml");
      // skip optional// and entity config that legitimately may be absent
      if (!$storage->exists($cname)) {
        $missing_by_module[$name][] = $cname;
      }
    }
  }

  if (!$missing_by_module) { print "ALL-DEFAULT-CONFIG-PRESENT\n"; return; }

  foreach ($missing_by_module as $name => $cnames) {
    foreach ($cnames as $c) { print $name . "\tMISSING\t" . $c . "\n"; }
  }
  print "modules-affected=" . count($missing_by_module) . "\n";

  if ($fix) {
    foreach (array_keys($missing_by_module) as $name) {
      try { $installer->installDefaultConfig("module", $name); print "FIXED\t" . $name . "\n"; }
      catch (\Throwable $e) { print "FIX-FAILED\t" . $name . "\t" . $e->getMessage() . "\n"; }
    }
  }
' 2>/dev/null
