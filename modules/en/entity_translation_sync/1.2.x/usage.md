<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Translation Sync copies selected field values across an entity's translations when it is saved, so fields that should never differ by language — a price, a date, an image, a reference — stay identical without an editor updating each translation by hand.

---

Drupal's `content_translation` decides translatability per field, which sounds like it solves this and does not quite: marking a field untranslatable makes it genuinely shared, which breaks as soon as one language legitimately needs to differ, and changing that setting later is a data migration. This module works at the other end — the fields stay translatable, but on save the configured ones are propagated to the other translations. That leaves the escape hatch open and makes the sharing an editorial policy rather than a schema decision. The settings form at `/admin/config/regional/entity-translation-sync` chooses which fields sync, `src/EventSubscriber` performs the propagation, and `src/Access` plus `EntityTranslationSyncPermissions` supply the access layer. Permissions are partly **generated**: `entity_translation_sync.permissions.yml` declares `synchronize any entity translation` and then a `permission_callbacks` entry pointing at the permissions class, so finer-grained per-context permissions appear at runtime and will not be found by grepping the YAML alone. Note that the settings form is gated by core's `administer site configuration` rather than by any of the module's own permissions. Dependency is core `content_translation`; core range `^9 || ^10 || ^11`.

---

- Keep a product price identical across translations.
- Sync an image field to every language.
- Propagate a date field across translations.
- Keep entity references aligned between languages.
- Avoid marking a field untranslatable permanently.
- Let one language deviate when it genuinely must.
- Reduce duplicated editing across languages.
- Keep a taxonomy reference consistent site-wide.
- Sync a boolean flag across translations.
- Maintain shared metadata in a multilingual site.
- Fix drift between translations of the same node.
- Apply an editorial policy about shared fields.
- Keep media attachments identical per language.
- Reduce translation-workflow errors.
- Restrict who may synchronise translations.
- Sync fields on save without a batch job.
- Keep prices consistent for a multilingual shop.
- Support a translation team working asynchronously.
