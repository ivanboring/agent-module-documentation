<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Hover Effects extends the image field formatter with a selectable hover effect — zoom, fade, slide and similar — configured per display rather than written per theme.

---

Card grids want a hover treatment, and it is always the same handful of effects. Implemented in a theme that means a CSS class on the field template, a template override to add it, and a note in the styleguide that nobody reads; done per project it is re-implemented every time. Making it a **formatter setting** puts the choice where the rest of the display configuration already lives — in the view mode, exportable with config, changeable by whoever manages displays rather than by whoever can deploy CSS. Version **2.0.2** on `^8.8` through `^11`, depending on core `image` and `responsive_image`; the responsive dependency is the notable one, since it means the effects apply to responsive image fields too rather than only to plain ones — the common shortcoming in modules of this kind. The package is `Sooperthemes`, a commercial theme vendor, which is worth knowing for provenance though the module is GPL like any other. Two things to hold in mind. **Hover does not exist on touch devices**, so any effect that reveals information rather than decorating it needs a non-hover path, and an overlay that appears on tap and stays can block the link underneath. And a hover effect that animates size or position rather than `transform` and `opacity` will cost layout work on every frame — worth checking on a grid of thirty cards on a mid-range phone.

---

- Add a zoom effect to card images.
- Fade an image on hover.
- Configure a hover effect per view mode.
- Avoid writing hover CSS per project.
- Apply an effect to responsive images.
- Add a caption overlay on hover.
- Give a teaser grid some motion.
- Standardise hover behaviour across displays.
- Let a site builder choose an effect.
- Add a subtle image transition.
- Style a product grid.
- Add hover to a gallery.
- Apply effects without a theme change.
- Differentiate a featured image.
- Keep effects in exported configuration.
- Apply a slide effect to a banner.
- Add polish to a listing page.
- Match a design's hover states.
