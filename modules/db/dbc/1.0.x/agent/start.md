<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Base Css (dbc) — agent index

**Loads a per-domain CSS stylesheet into every page head for Domain-module sites.**

- **Version:** 1.0.x · **Core:** ^9 || ^10 || ^11 · **Depends on:** domain
- **Route:** `dbc.settings` → `/admin/config/domain/domain_css_switcher` (permission `administer domain css switcher setting`).
- **Mechanism:** `hook_page_attachments_alter()` reads `dbc.settings:uploaded_css_uploader_<domain_id>`, loads the File, and attaches a `<link>` (`dbc.module`).
- **Config:** one `managed_file` (`.css`, `public://dbc/`) per domain, saved on the settings form.
- **Security:** single admin config route, permission-gated; no anonymous, mutating, or callback endpoints; only injects a site-admin-uploaded stylesheet.
