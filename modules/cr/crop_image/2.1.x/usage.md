<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Crop Image lets an editor crop an image at the point of selecting it from the media library, rather than only on the media item itself.

---

Cropping in Drupal has a structural awkwardness. A crop set with `image_widget_crop` belongs to the **media entity**, so it is one crop shared by every place that image is used — which is right when the crop is about the image (removing a distracting edge) and wrong when it is about the context (a wide banner here, a square thumbnail there, a portrait card somewhere else). An editor selecting a photograph for a hero wants to choose what the hero shows without changing how that photograph appears on the twelve other pages using it. This module brings the crop interface into the selection step, requiring `image_widget_crop` and **`entity_browser`** at 2.10 or later. Version **2.1.1** on core `^9.3 || ^10 || ^11`. Two things to establish, because they decide whether it does what people expect. **Where the crop is stored** is the whole question: a crop saved on the media entity is still shared no matter where it was set, and a per-usage crop needs somewhere per-usage to live — usually the field that references the media. Confirm which, because the difference is invisible in the interface and obvious the moment someone changes a shared image. And **`entity_browser` is a heavier dependency than it looks** — an older architecture that core's media library has largely displaced — so a site on the core library is being asked to add a parallel selection system, which is worth weighing against `focal_point`, which solves much of the same problem by storing a point rather than a rectangle.

---

- Crop an image when selecting it.
- Crop a hero image per page.
- Choose a different crop for a thumbnail.
- Crop without changing other usages.
- Give editors crop control in the library.
- Crop a photograph for a card.
- Adjust framing for a banner.
- Crop media at selection time.
- Support per-context image framing.
- Crop a portrait for a listing.
- Improve image presentation control.
- Crop an image for a teaser.
- Support an editorial cropping workflow.
- Frame an image for a specific layout.
- Crop from an entity browser.
- Adjust a crop without editing the media.
- Support several aspect ratios.
- Crop images for a gallery.
