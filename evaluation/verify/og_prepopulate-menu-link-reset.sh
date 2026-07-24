#!/usr/bin/env bash
# Execution RESET: delete any menu_link_content titled "OG Prepopulate Eval Link" so verify
# fails on empty state. Idempotent. Exit 0.
set -uo pipefail
cd /var/www/html
drush php:eval '
  use Drupal\menu_link_content\Entity\MenuLinkContent;
  $ids = \Drupal::entityQuery("menu_link_content")->accessCheck(FALSE)
    ->condition("title", "OG Prepopulate Eval Link")->execute();
  if ($ids) { \Drupal::entityTypeManager()->getStorage("menu_link_content")->delete(MenuLinkContent::loadMultiple($ids)); }
  print "reset: removed " . count($ids) . " menu link(s)\n";
' 2>/dev/null
drush cr >/dev/null 2>&1
exit 0
