<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Translation Sync (entity_translation_sync) — agent index

Propagates selected field values across an entity's translations on save. Depends on core
`content_translation`. Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/regional/entity-translation-sync`.

Key facts:
- **Permissions are partly generated.** `entity_translation_sync.permissions.yml` declares
  `synchronize any entity translation` *and* a `permission_callbacks:` entry pointing at
  `Drupal\entity_translation_sync\EntityTranslationSyncPermissions::permissions`. Grepping the
  YAML alone will miss the runtime-generated permissions — read the class.
- **The settings form is gated by core's `administer site configuration`**, not by any of the
  module's own permissions. Those govern who may *perform* a sync, not who may configure it.
- Contrast with marking a field untranslatable in `content_translation`: that makes the field
  genuinely shared at the schema level and is a data migration to undo. This keeps fields
  translatable and syncs values on save, so a single language can still deviate — sharing
  becomes editorial policy rather than schema.
- Surface: `src/EventSubscriber/` (the propagation), `src/Access/`, `src/Form/SettingsForm.php`,
  `src/Plugin/`, `config/install`, `config/schema`.
- Sync happens **on save**. Values already divergent before a field is added to the sync set are
  not reconciled retroactively — combine with `resave_all_nodes` (this wave) to backfill.
