<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Iconify Field (iconify_field) — agent index

Icon **field type + picker widget + formatter** backed by the Iconify icon sets, plus
**`iconify_field_ckeditor`** for icons in body text. Depends on core `field`.
Version **1.2.1**.

**Core requirement is `^11.2` — will NOT install on Drupal 10.** Unusually tight; check this first.

Key facts:
- **Icons come from the `iconify/json` Composer package on disk, not from Iconify's API.**
  `IconResolver` reads collection JSON via `Iconify\IconsJSON\Finder`, inlines the SVG body into
  the render array and caches it. Consequences:
  - no runtime request to a third-party host — good for privacy, offline environments, and CSP;
  - the icon data is a **large Composer dependency**, and updating icon sets is a Composer
    operation, not a UI one.
- Naming scheme is `collection:name` (e.g. `mdi:home`). An unresolvable name falls back to a
  `<span>` containing the raw name rather than erroring.
- Contrast with icon modules that hit a remote API or load a webfont at render time.
