<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Contextual Crop Reference (media_contextual_crop_field_formatter) — agent index

Field **formatter** letting the same media item be cropped per *reference* rather than per media
entity. Core requirement `^10 || ^11`.

Dependencies — the notable part:
- `media_contextual_crop ~2.0` (crop storage and logic)
- `media_library_media_modify ^1.0.0 || **^2.0.0@beta**` (per-reference modification) — a beta
  constraint
- core `field`, `media`
- **`cweagans/composer-patches ^1.7`** — installation applies patches, so that plugin must be in
  `config.allow-plugins` or `composer require` aborts with a PluginManager exception.

Key facts:
- It is a **formatter**, not a field type: configured through a media reference field's display
  settings, so adding or removing it changes no stored field schema.
- The crop is attached to the usage, not the asset — that is the whole point, and it is what
  lets one media item carry different aspect ratios in different placements without a duplicate
  entity.
- Surface is small (`src/Plugin/`, `.module`, `.install`); nearly all the behaviour lives in the
  two parent modules. Debug there first.
