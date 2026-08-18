<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Contextual Cropping API lets the same media image carry a different crop for each place it is used, instead of one crop for all uses.

---

Core's crop handling attaches a crop to the media entity, which forces one answer to a question that has several. A landscape photograph is a wide hero on the homepage, a square thumbnail in a card grid and a portrait in a sidebar; the right crop preserves a different part of the picture each time, and a single stored crop cannot. This module makes the crop a property of the *usage* rather than of the media entity. Two plugin types express that: `MediaContextualCropPluginManager` (discovery dir `Plugin/MediaContextualCrop`) for the cropping mechanisms and `MediaContextualCropUseCasePluginManager` (discovery dir `Plugin/MediaContextualCropUseCase`) for the contexts in which a crop applies. A `PathProcessorImageStyles` handles the URL side, since a contextual derivative needs to be addressable, and a `ContextualImageStyleDownloadController` serves each derivative through a route as close as possible to core's `image` delivery. Being an API module, it does nothing visible on its own — a UI adapter supplies the cropping interface, which is what `media_contextual_crop_iwc_adapter` (Image Widget Crop) and `media_contextual_crop_fp_adapter` (Focal Point) do. As of 2.2, the module targets Drupal core `^11.4` only (Drupal 10 support dropped) and relies on a core patch that refactors `ImageStyleDownloadController` so the contextual controller can reuse core's token, scheme and access checks.

---

- Crop one image differently per usage context.
- Keep a subject visible in every crop.
- Give a hero and a thumbnail different crops.
- Define a cropping mechanism as a plugin.
- Define a usage context as a plugin.
- Address a contextual derivative by URL.
- Add a UI adapter for the cropping interface (Image Widget Crop or Focal Point).
- Extend the API with a custom use case.
- Serve contextual derivatives via the dedicated download controller.
- Migrate a display back to the plain `image` formatter when its style no longer multi-crops (`drush media_contextual_crop:migrateToImageFormatter`).
- Plan storage for multiplied derivatives.
- Confirm derivatives are pre-generated.
- Guide editors on per-context cropping.
- Avoid crops set for one context only.
- Reuse crop types across contexts.
- Audit derivative counts on a media library.
- Decide which contexts genuinely need their own crop.
- Rely on the new `crop_field_data(context, cid)` index for faster context lookups.
