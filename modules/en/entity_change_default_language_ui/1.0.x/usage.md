<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity change default language UI adds a user interface, on top of the `entity_change_default_language` API module, for changing the default (original) language of content entities — for a single node or in bulk via a batch.

---

It exposes two routes: a per-node form at `/node/{node}/change-default-language` (`ChangeDefaultLanguageForm`) and a site-wide batch form at `/admin/config/regional/change-default-language` (`ChangeDefaultLanguageBatchForm`). The form lets you pick the new original language, optionally create the translation in that language if it does not exist, and choose which existing translations to preserve — all others are removed. The actual work is delegated to the `entity_change_default_language_ui.updater` service (`Updater`), which loads and rewrites the entity's langcode and translations.

Both routes are gated only by the `access administration pages` permission. This is a broad admin-ish permission that is **not** the same as node edit access: a user who has `access administration pages` but no edit rights on a given node can still open `/node/{node}/change-default-language` and perform a destructive change (switch the original language and delete non-selected translations). Treat this as a potential broken-access-control weakness on a mutating operation, and restrict the `access administration pages` permission accordingly (or add per-entity edit-access checking). The `Updater` uses `accessCheck(FALSE)` on its internal entity query, which is expected for an administrative bulk operation but reinforces that route-level access is the only guard.

---
- Enable the `entity_change_default_language` API module, then this UI.
- Open `/node/{node}/change-default-language` for a single node.
- Choose the new original (default) language for the node.
- Optionally create the translation in the new language if missing.
- Select which existing translations to keep (others are removed).
- Run the batch form at `/admin/config/regional/change-default-language`.
- Bulk-change default language across many entities.
- Fix content imported under the wrong original language.
- Consolidate translations after a language migration.
- Preserve only the translations you still need.
- Review the resulting default language on the node.
- Restrict `access administration pages` to trusted roles (destructive op).
- Audit who can reach the change-default-language routes.
- Combine with core translation UI for follow-up edits.
- Use the batch form for site-wide language corrections.
