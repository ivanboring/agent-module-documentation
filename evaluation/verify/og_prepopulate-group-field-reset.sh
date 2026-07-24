#!/usr/bin/env bash
# Execution RESET: remove field_ogp_group from Article so the agent has to build it.
# Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush php:eval '
  use Drupal\field\Entity\FieldStorageConfig;
  use Drupal\field\Entity\FieldConfig;
  if ($fc = FieldConfig::loadByName("node", "article", "field_ogp_group")) { $fc->delete(); }
  if ($fs = FieldStorageConfig::loadByName("node", "field_ogp_group")) { $fs->delete(); }
  print "reset: field_ogp_group present=" . (FieldConfig::loadByName("node", "article", "field_ogp_group") ? "yes" : "no") . "\n";
' 2>/dev/null
drush cr >/dev/null 2>&1
exit 0
