<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Iconify Icons (iconify_icons) — agent index

Icon field/widget backed by the **Iconify API**. No module dependencies.
**Core requirement `>=11.1.0` — Drupal 11.1+ only, no Drupal 10 support.**
Settings at `/admin/config/iconify_icons/settings`, gated by `administer site configuration`
(no module-specific permission).

Key facts:
- **Outbound HTTP is required.** `src/IconifyApi.php` calls the Iconify API; `src/IconsCache.php`
  caches responses. Implications to raise before recommending it:
  - an air-gapped site or one with restricted egress cannot render icons on a cache miss;
  - an upstream outage degrades the picker;
  - requests disclose usage to a third party.
  - The self-hosted alternative documented in this same wave is `font_iconpicker`.
- Surface: `src/IconifyApi(Interface).php`, `src/IconsCache(Interface).php`, `src/Plugin/`
  (field type + widget), `src/Form/Settings.php`, `iconify_icons.services.yml`,
  `css/iconify_icons.css` and a dedicated **`css/gin.css`** for the Gin admin theme.
- Ships `package.json`/`yarn.lock` for front-end builds; the released tarball includes the
  built CSS, so a yarn install is not required to use it.
