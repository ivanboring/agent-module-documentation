<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views striping (views_striping) — agent index

Pluggable row striping for Views. Depends on core `views`.
Core requirement `^8 || ^9 || ^10 || ^11`. No routes, permissions or config pages.

Key facts:
- Defines a plugin type **`ViewsStripingType`**: `src/ViewsStripingTypeManager.php`,
  `src/Annotation/`, `views_striping.plugin_type.yml`, with `views_striping.api.php` documenting
  the contract. Adding a striping strategy is a plugin, not a template override.
- Chosen **per view**, so different listings can stripe differently.
- Purely presentational — it adds classes to rows and changes nothing about the query, the fields
  or access. Cheap to try, cheap to remove.
- Where core stops: Views emits `views-row` classes and themes usually add `odd`/`even` in a
  template. This covers repeating patterns, per-group restarts and data-derived classes that a
  fixed odd/even pair cannot express.
