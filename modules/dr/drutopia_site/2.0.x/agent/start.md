<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drutopia Site (drutopia_site) — agent index

**Configuration-only base feature that installs Drutopia's text formats/CKEditor 5, `basic`+`slide` block content types, and editorial roles.**

- **Version:** 2.0.x (dev branch `2.0.x`; no tagged release in checkout)
- **Core:** ^10.2 || ^11 || ^12
- **Provides:** text formats (basic/full/restricted_html) + CKEditor 5 editors, `block_content` bundles `basic` & `slide` with displays, roles via `config/actions` (contributor/editor/manager), autosave_form settings.
- **Routes/permissions/services:** none of its own. No controllers or forms.
- **Update hooks:** `_8101` swaps admin_links_access_filter → admin_toolbar_links_access_filter; `_8102`/`_9201` enable autosave_form, menu_admin_per_menu, role_delegation, wysiwyg_linebreaks, admin_toolbar_search.
- **Key deps:** drutopia_core, admin_toolbar(+tools/search), ds, paragraphs, entity_reference_revisions, menu_admin_per_menu, role_delegation, autosave_form.

**Security:** Config-only; no routes, services, or endpoints. No anonymous or mutating code paths. Access posture is whatever the imported roles/text-format permissions grant.
