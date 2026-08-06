<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Contextual Cropping API lets the same media image carry a different crop for each place it is used, instead of one crop for all uses.

---

Core's crop handling attaches a crop to the media entity, which forces one answer to a question that has several. A landscape photograph is a wide hero on the homepage, a square thumbnail in a card grid and a portrait in a sidebar; the right crop preserves a different part of the picture each time, and a single stored crop cannot.

This module makes the crop a property of the *usage* rather than of the media entity. Two plugin types express that: `MediaContextualCropPluginManager` for the cropping mechanisms and `MediaContextualCropUseCasePluginManager` for the contexts in which a crop applies. A `PathProcessorImageStyles` handles the URL side, since a contextual derivative needs to be addressable.

Being an API module, it does nothing visible on its own — a UI adapter supplies the cropping interface, which is what `media_contextual_crop_iwc_adapter` does with Image Widget Crop.

Two things worth planning. **Derivatives multiply**: one image across four contexts and three image styles is twelve files, so a media-heavy site should size storage accordingly and confirm derivatives are not generated on request for a page full of them. And **editors need to understand what they are cropping**: a per-context crop is a more sophisticated model than a single crop, and without a clear UI and some guidance the usual outcome is crops set for one context and forgotten for the others, which looks worse than no contextual cropping at all.

---

- Crop one image differently per usage context.
- Keep a subject visible in every crop.
- Give a hero and a thumbnail different crops.
- Define a cropping mechanism as a plugin.
- Define a usage context as a plugin.
- Address a contextual derivative by URL.
- Add a UI adapter for the cropping interface.
- Extend the API with a custom use case.
- Plan storage for multiplied derivatives.
- Confirm derivatives are pre-generated.
- Guide editors on per-context cropping.
- Avoid crops set for one context only.
- Reuse crop types across contexts.
- Audit derivative counts on a media library.
- Decide which contexts genuinely need their own crop.
