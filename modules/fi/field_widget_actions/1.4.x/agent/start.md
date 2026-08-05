<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Widget Actions (field_widget_actions) — agent index

Attaches configurable action buttons to **field widgets**. **No module dependencies.**
Core requirement `^10.3 || ^11.1 || ^12` (already declares Drupal 12).

Key facts:
- Defines a **`FieldWidgetAction`** plugin type: `FieldWidgetActionBase` plus
  `RefinementAwareInterface` — the latter is for actions whose result can be iteratively
  refined, i.e. the AI-suggestion shape the module is aimed at.
- Modal route `/admin/field-widget-action/modal/{plugin_id}/{tempstore_id}` is declared
  `_permission: 'access content'` with the comment *"Access is checked in the form wrapper build
  form."* The real control is that state lives in **`tempstore.private`**, which is namespaced
  per user — `$store->get($tempstore_id)` returns nothing for another user's id, so the
  permissive-looking requirement does not expose other users' state. Any custom action must not
  weaken that by moving state to the shared tempstore.
- Actions are configured **per field widget** in the form display, so which fields get a button
  is a display-config decision that exports with the site.
- Four stylesheets including a dedicated **`gin-modal-compatibility-fix.css`** — Gin is
  explicitly supported.
- Docs are maintained as an `mkdocs.yml` site, not only a README.
