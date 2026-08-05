<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Iconify Icons connects Drupal to the Iconify API, giving editors a picker across Iconify's very large collection of icon sets without any icon font or SVG sprite being installed locally.

---

Iconify hosts hundreds of open icon sets and serves individual icons over an HTTP API. This module consumes that API: `src/IconifyApi.php` (behind `IconifyApiInterface`) makes the calls, `src/IconsCache.php` (behind `IconsCacheInterface`) stores the results so the same icon is not fetched repeatedly, `src/Plugin` supplies the field type and widget, and `src/Form/Settings.php` at `/admin/config/iconify_icons/settings` chooses which icon sets are offered. There is a `css/gin.css` alongside the general stylesheet, so the picker is styled specifically for the Gin admin theme as well as generically. Two facts shape whether it fits a given site. First, `core_version_requirement: '>=11.1.0'` — this release is Drupal 11.1+ only, with no Drupal 10 support at all, which is unusually narrow. Second, icon rendering depends on an outbound HTTP call to Iconify: the cache softens that, but an air-gapped site, a strict egress policy, or an outage upstream all affect it, and requests carry the site's traffic pattern to a third party. Where those matter, `font_iconpicker` (also documented in this wave) is the self-hosted alternative.

---

- Give editors access to hundreds of icon sets.
- Add icons without installing an icon font.
- Pick an icon from a searchable admin widget.
- Limit the offered sets to an approved list.
- Style the picker for the Gin admin theme.
- Add an icon field to a paragraph or node.
- Cache fetched icons to reduce API calls.
- Use consistent iconography across a site.
- Try several icon styles before standardising.
- Avoid shipping unused icons in a sprite.
- Render icons as inline SVG.
- Extend a design system with a broad icon catalogue.
- Give a component library an icon selector.
- Swap icon sets without changing content.
- Match icons to a brand's visual language.
- Support editors unfamiliar with icon class names.
- Add icons to menu or card components.
- Reduce theme asset size by fetching on demand.
