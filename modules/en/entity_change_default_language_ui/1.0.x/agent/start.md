<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity change default language UI (entity_change_default_language_ui) — agent index

**UI to change a content entity's default/original language (single node form + site-wide batch), pruning translations.**

- **Version:** 1.0.x  **Core:** ^9.1 || ^10 || ^11
- **Depends:** entity_change_default_language (API module)
- **Routes:** `entity_change_default_language_ui.form` → `/node/{node}/change-default-language`; `entity_change_default_language_ui.batch_form` → `/admin/config/regional/change-default-language`.
- **Service:** `entity_change_default_language_ui.updater` (`Updater`) — rewrites langcode + translations; internal query uses `accessCheck(FALSE)`.
- **Security:** ⚠ both routes gated only by `_permission: 'access administration pages'` — NOT node edit access. A holder of that permission (without edit rights on the node) can destructively change any node's original language and delete non-preserved translations (`ChangeDefaultLanguageForm::submitForm` → `Updater::update`, routing.yml). Potential broken-access-control on a mutating op; restrict the permission or add per-entity edit checks.
