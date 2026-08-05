<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Update Config Entity (update_config_entity) — agent index

A single Drush command that removes a stale bundle entry from Drupal's
`entity.definitions.bundle_field_map` key-value store. No hooks, no config, no permissions, no
schema, no module dependencies.

What it fixes: `A non-existent config entity name returned by
FieldStorageConfigInterface::getBundles()` — raised when the field map still lists a bundle that
no longer exists (removed comment type, uninstalled module, failed migration).

Key facts:
- Drush service `update.commands` → `Drupal\update_config_entity\Commands\UpdateCommands`,
  registered the classic way via `drush.services.yml` (tag `drush.command`), injecting `@keyvalue`.
- Command **`update:correct-field-config-storage`** with three arguments:
  `$entity_type`, `$bundle`, `$field_name`.
- Implementation is four lines:

  ```php
  $field_map_kv_store = $this->keyValueStore->get('entity.definitions.bundle_field_map');
  $map = $field_map_kv_store->get($entity_type);
  unset($map[$field_name]['bundles'][$bundle]);
  $field_map_kv_store->set($entity_type, $map);
  ```

Usage:

```bash
# The error message names the entity type and bundle, e.g. "entity type comment, bundle comment".
drush update:correct-field-config-storage comment comment field_foo
drush cr

# Inspect the map before/after:
drush php:eval '
$map = \Drupal::keyValue("entity.definitions.bundle_field_map")->get("comment");
print_r(array_map(fn($f) => array_keys($f["bundles"] ?? []), $map));'
```

Cautions:
- It edits a **derived cache-like store**, not config. If the underlying cause persists (a field
  storage still referencing the bundle), the entry can come back on the next rebuild — fix the
  root cause too.
- There is no dry-run and no confirmation; get the three arguments right. Back up the store first
  with the `php:eval` snippet above if you want a record.
- The module has no other purpose; uninstall it once the site is repaired.
