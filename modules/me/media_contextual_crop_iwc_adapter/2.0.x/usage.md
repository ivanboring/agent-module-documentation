<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media Contextual Crop IWC Adapter lets Image Widget Crop supply the cropping interface for Media Contextual Cropping.

---

The problem behind both modules is that one image is used in several places and the right crop differs per place. A landscape photograph works as a wide hero and needs a different crop as a square thumbnail; cropping the media entity once forces one answer for every use.

Media Contextual Cropping addresses that by allowing a crop *per usage context*. This adapter plugs Image Widget Crop — the established cropping UI in the Drupal ecosystem — in as the interface for doing it, rather than a second crop tool with its own conventions.

That is the value of an adapter module and worth stating: a site that already uses Image Widget Crop keeps one cropping experience and one set of crop types, instead of editors learning two. Where a site does not already use it, the adapter is not needed.

Practical note: contextual crops multiply derivatives — one image with four contexts and three image styles each is twelve files. That is fine and worth knowing when sizing storage for a media-heavy site, and worth checking that derivative generation is not happening on request for a page full of them.

---

- Crop one image differently per usage.
- Give a hero and a thumbnail different crops.
- Reuse Image Widget Crop's interface.
- Keep one cropping experience for editors.
- Avoid a second crop tool's conventions.
- Reuse existing crop types.
- Plan storage for multiplied derivatives.
- Check derivative generation timing.
- Crop a portrait for a landscape context.
- Preserve the subject in every crop.
- Configure crop types per context.
- Audit derivative counts on a media-heavy site.
- Decide whether the adapter is needed.
- Train editors on contextual cropping.
- Document the crop contexts a site defines.
- Review crop quality after a theme change.
