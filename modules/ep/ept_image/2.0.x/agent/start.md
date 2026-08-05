<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extra Paragraph Types (EPT): Image (ept_image) — agent index

Image paragraph type for the **Extra Paragraph Types** family. Depends on `ept_core ^2.0`,
`paragraphs ^1.0` and core `image` + **`media`**.
Core requirement `^10.1 || ^11 || ^12` (declares Drupal 12).

> **Install note from this campaign.** `drush en ept_image` **failed on a minimal install** with an
> unmet configuration dependency on **`media.type.image`** — a media type the Standard profile
> creates and a minimal profile does not. Create the `image` media type first, or install on a
> Standard-based site.

Key facts:
- Configuration + presentation, like its siblings: `config/install` (paragraph type + media
  field), a template, plus `src/Plugin/`, `src/Hook/`, `src/Services/`.
- Shared settings (background, spacing, container width) come from `ept_core` — same trade-off as
  `ept_text` (wave 56) and `ept_basic_button` (wave 62): many small modules, one shared core.
- Pulled in `glightbox` transitively on install here — check what lightbox behaviour is expected
  before assuming.
