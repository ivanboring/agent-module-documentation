<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Path Redirect (domain_path_redirect) — agent index

Per-domain redirects for Domain Access sites, as a content entity alongside the Redirect module.
Requires `domain` and **`redirect >= 1.12.0`**. No `configure` route in info.yml; admin lives
under `/admin/config/search/domain_path_redirect`. No permissions of its own — it reuses
Redirect's.

Key facts:
- Content entity **`domain_path_redirect`**: `bundle_label` *Redirect type*,
  `base_table: domain_path_redirect`, **`translatable = FALSE`**,
  `admin_permission: administer redirects`.
- Routes:

  | Route | Path | Requirement |
  |---|---|---|
  | `domain_path_redirect.list` | `/admin/config/search/domain_path_redirect` (`_entity_list`) | `administer redirects` |
  | `entity.domain_path_redirect.canonical` | `…/edit/{domain_path_redirect}` (`_entity_form: domain_path_redirect.edit`) | entity access |

  plus the usual add/delete forms, with `links.action.yml` / `links.task.yml` wiring the UI.
- `hook_field_widget_redirect_source_form_alter()` adapts Redirect's source widget so a
  domain-scoped source can be entered like an ordinary redirect source.
- `domain_path_redirect.libraries.yml` + `domain_path_redirect.services.yml` provide the admin
  assets and services.

Notes:
- Because redirects are **content**, they do not travel with a config export — plan a content
  migration (or an entity export) when moving between environments.
- The entity is explicitly non-translatable; a multilingual multi-domain site needs the domain to
  carry the language distinction.
- Permission reuse means anyone who can `administer redirects` can manage **all** domains'
  redirects; there is no per-domain permission split.
