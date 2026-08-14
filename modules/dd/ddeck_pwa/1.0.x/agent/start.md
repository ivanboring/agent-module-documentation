<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DDECK PWA (ddeck_pwa) — agent index

**Adds a PWA nav bar (SDC), iOS meta tags, Apple splash screens and theme-based manifest icons on top of the contrib PWA module.**

- **Version:** 1.0.x
- **Core:** ^10 || ^11
- **Package:** DDECK
- **Dependencies:** sdc (core), pwa
- **Route:** `/admin/config/services/ddeck-pwa` (`administer ddeck pwa`) — settings form
- **Service:** `ddeck_pwa.context` (PwaContext)
- **SDC components:** `ddeck_pwa_loader`, `ddeck_pwa_navigation`; theme hook `ddeck_pwa_navigation_block`
- **Hooks:** `hook_page_attachments_alter` (Apple metas + splash links), `hook_preprocess_html` (nav SDC), `hook_pwa_manifest_alter` (icons)
- **Config:** `apple_app_title`, `enable_navigation`
- **Security:** Settings route admin-gated. Config values are plain labels; splash/icon hrefs built from the trusted active-theme path and validated with `file_exists` (not user input). No security findings.
