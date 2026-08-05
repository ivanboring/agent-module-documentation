<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Carousels (varbase_carousels) — agent index

Carousel **block content type** for Varbase — editors create carousels and place them anywhere.
`core_version_requirement: ~11.4.0` (a single core minor).

> **Documented from source.** `drush en varbase_carousels` failed on bare Drupal 11.4:
> `core.entity_view_display.block_content.varbase_carousel_block.default` has an unmet dependency
> on **`ds`** (Display Suite), which the Varbase distribution supplies. Install the distribution,
> or `ds`, first.

Key facts:
- Info-file dependencies are all **core** (`block`, `block_content`, `text`, `field`, `user`,
  `options`, `link`, `filter`) — the distribution coupling is in composer:
  `varbase_media ~10.1.0`, `ctools ~3 || ~4`, plus two Vardot tooling packages:
  - **`vardot/module-installer-factory`** — install-time module enabling across the family;
  - **`vardot/entity-definition-update-manager`** — applies entity definition changes on update.
  Note it does **not** require `vardot/varbase-patches`, so no extra composer-plugin allowance.
- Configuration-first: `config/install`, `config/optional`, and a **`config/permissions`**
  directory (the Varbase convention for shipping permission grants).
- Carousel comparison across this campaign: `varbase_heroslider_media` (wave 56, **deprecated**,
  homepage-specific), `ebt_slideshow` (wave 60, FlexSlider, EBT family), `diba_carousel`
  (wave 55, standalone Bootstrap). This is the general-purpose Varbase-native option.
