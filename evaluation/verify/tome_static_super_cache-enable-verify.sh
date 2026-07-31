#!/usr/bin/env bash
# VERIFY: PASS when tome_static_super_cache is enabled AND its Views cache plugin
# 'tome_static_super_cache_smart_tag' is available. exit 0 pass / 1 fail.
set -uo pipefail
cd /var/www/html
out=$(drush php:eval '
  $on = \Drupal::moduleHandler()->moduleExists("tome_static_super_cache");
  $plugin = $on && \Drupal::service("plugin.manager.views.cache")->hasDefinition("tome_static_super_cache_smart_tag");
  print (($on && $plugin) ? "PASS" : "FAIL") . " enabled=" . var_export($on, TRUE) . " smart_tag=" . var_export($plugin, TRUE) . "\n";
' 2>/dev/null)
echo "$out"
echo "$out" | grep -q '^PASS' && exit 0 || exit 1
