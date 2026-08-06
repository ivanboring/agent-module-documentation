<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Crop Image (crop_image) — agent index

Brings cropping into the **media selection** step rather than only the media item. Requires
`image_widget_crop` and **`entity_browser (>=2.10)`**. Version **2.1.1**.
Core requirement `^9.3 || ^10 || ^11`.

**The structural awkwardness it addresses:** a crop set with `image_widget_crop` belongs to the
**media entity**, so it is **one crop shared by every usage** — right when the crop is about the
image (removing a distracting edge), wrong when it is about the context (wide banner here, square
thumbnail there).

**Two things to establish — they decide whether it does what people expect:**
1. **Where the crop is stored is the whole question.** A crop saved on the **media entity** is still
   shared however it was set; a **per-usage** crop needs somewhere per-usage to live, usually the
   referencing field. **The difference is invisible in the interface and obvious the moment someone
   changes a shared image.**
2. **`entity_browser` is a heavier dependency than it looks** — an older architecture that core's
   **media library** has largely displaced. A site on the core library is being asked to add a
   parallel selection system. Weigh against **`focal_point`**, which solves much of the same problem
   by storing a **point** rather than a rectangle.
