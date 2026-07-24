#!/usr/bin/env bash
# Introspection CLEANUP: remove field_ogp_audience from Article (and its storage) plus the node
# created by the matching setup. Restores baseline. Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush php:eval '
  use Drupal\field\Entity\FieldStorageConfig;
  use Drupal\field\Entity\FieldConfig;
  use Drupal\node\Entity\Node;
  if ($fc = FieldConfig::loadByName("node", "article", "field_ogp_audience")) { $fc->delete(); }
  if ($fs = FieldStorageConfig::loadByName("node", "field_ogp_audience")) { $fs->delete(); }
  $ids = \Drupal::entityQuery("node")->accessCheck(FALSE)->condition("title", "OG Prepopulate Eval Group")->execute();
  if ($ids) { \Drupal::entityTypeManager()->getStorage("node")->delete(Node::loadMultiple($ids)); }
' >/dev/null 2>&1
drush cr >/dev/null 2>&1
echo "cleanup: field_ogp_audience and the OG Prepopulate Eval Group node removed"
exit 0
