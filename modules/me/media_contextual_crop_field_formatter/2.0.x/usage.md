<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Contextual Crop Reference lets the same media item be cropped differently depending on where it is used, so one photo can be a wide banner on the homepage and a square thumbnail in a card without a duplicate media entity.

---

Drupal's crop handling attaches the crop to the *media item*, which is correct for a canonical crop and wrong for reuse: the moment an image appears in two contexts with different aspect ratios, a media-level crop forces a compromise or a copy. This module moves the crop decision to the *reference* — the field instance where the media is used — so the crop travels with the usage rather than the asset. It is a formatter (`src/Plugin`) rather than a new field type, so it applies through the field display settings of an existing media reference field. The dependency chain is the notable part: it needs both `media_contextual_crop` (the crop storage and logic) and `media_library_media_modify` (which allows per-reference modification from the media library), and its composer file requires `cweagans/composer-patches` — meaning the install applies patches, and that plugin must be in `config.allow-plugins` or the require fails outright. It also accepts `media_library_media_modify` at `^2.0.0@beta`, a beta constraint. Core requirement is `^10 || ^11`.

---

- Crop one image differently in two places.
- Use a wide crop on a banner and a square in a card.
- Avoid duplicating a media item for a second crop.
- Keep the canonical asset while varying its presentation.
- Set the crop where the media is referenced.
- Give editors per-usage cropping control.
- Reduce media library clutter from near-duplicates.
- Apply a portrait crop in a sidebar.
- Support a design system with several aspect ratios.
- Fix awkward automatic cropping per context.
- Keep alt text and metadata on one item.
- Crop for a mobile-specific layout.
- Reuse stock imagery across page types.
- Let editors adjust focus per placement.
- Reduce storage from duplicated images.
- Support a magazine-style layout.
- Crop a person's face consistently in a listing.
- Change a crop without affecting other usages.
