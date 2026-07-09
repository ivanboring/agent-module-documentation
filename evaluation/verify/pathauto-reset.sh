#!/usr/bin/env bash
# Reset pathauto to a clean state between eval runs so each condition is independent:
# delete every pathauto_pattern config entity and any /blog/* aliases left behind.
set -uo pipefail
cd /var/www/html
drush php:eval '
  foreach (\Drupal::entityTypeManager()->getStorage("pathauto_pattern")->loadMultiple() as $p) { $p->delete(); }
  \Drupal::database()->delete("path_alias")->condition("alias", "/blog/%", "LIKE")->execute();
' >/dev/null 2>&1
drush cr >/dev/null 2>&1
echo "reset: pathauto patterns cleared"
