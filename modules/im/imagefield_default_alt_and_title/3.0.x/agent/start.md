<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Imagefield Default Alt And Title (imagefield_default_alt_and_title) — agent index

Fills empty image **alt** and **title** attributes from the host entity's title, with a **batch**
form for existing content. PHP >= 8.1. Core requirement `^10.3 || ^11`.
Settings at `/admin/config/search/imagefield-default-alt-and-title`, plus a batch form at
`.../batch-page` — both `administer site configuration`.

Key facts:
- **The batch is what earns its place**: an existing site with thousands of empty alt attributes
  can be filled in one operation (`src/ImagefieldDefaultAltAndTitleBatch.php`).
- **Be honest about quality when recommending it.** A title-derived alt says *what the image
  belongs to*, not *what it shows*. For an illustrative photo accompanying an article that is often
  adequate; for an informational diagram or chart it is not, and a decorative image should have
  **empty** alt rather than a title.
- Compare `auto_alter` (wave 64): that generates a description from the image via a vision service
  — better output, per-image cost, and the image leaves the site. This is free, offline and cruder.
  A site doing accessibility work seriously will want written alt text for meaningful images and
  can use either of these for the long tail.
- The `title` attribute is not a substitute for `alt` and is not reliably announced by assistive
  technology — setting it is an SEO/tooltip nicety, not an accessibility fix.
