<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Image Hover Effects (image_hover_effects) — agent index

Adds a **hover effect option to the image field formatter** (zoom, fade, slide, etc.), configured
per display. Depends on core `image` **and `responsive_image`**. Package `Sooperthemes`
(a commercial theme vendor; the module itself is GPL). Version **2.0.2**.
Core requirement `^8.8 || ^9 || ^10 || ^11`.

- **The `responsive_image` dependency is the notable part** — effects apply to responsive image
  fields, not only plain ones. That is the usual shortcoming in modules of this kind.
- **Why a formatter setting rather than theme CSS:** the choice lands where the rest of display
  configuration lives — in the view mode, exportable with config, changeable by whoever manages
  displays rather than whoever can deploy CSS.

**Two things to raise when this is proposed:**
1. **Hover does not exist on touch devices.** An effect that *reveals information* rather than
   decorating needs a non-hover path, and an overlay that appears on tap and stays can block the
   link underneath.
2. **Performance.** An effect animating size or position rather than `transform`/`opacity` costs
   layout work every frame — check a grid of thirty cards on a mid-range phone.
