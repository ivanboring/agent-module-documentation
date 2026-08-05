<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
UIkit Image Formatter renders image fields as a UIkit 3 lightbox, slideshow or slider, for sites whose theme is already built on UIkit.

---

The value here is entirely in the qualifier. There are many lightbox and slider modules, and choosing one usually means adding a second JavaScript library to a site that already has one, with its own styling conventions that then have to be overridden to match the theme. A site built on **UIkit** already ships the lightbox, slideshow and slider components as part of the framework, so a formatter that drives UIkit's own components adds no library, no extra weight, and produces markup that matches the rest of the site by default. On a UIkit site this is the obvious choice; on any other site it is the wrong one, and that is worth establishing before recommending it. Version **8.x-1.13** on core `^10.1 || ^11`, no module dependencies — the UIkit assets come from the theme, which is the arrangement that makes it lightweight and also the thing to verify, since the formatter produces markup and attributes that do nothing at all if UIkit's JavaScript is not present. The accessibility question that applies to every lightbox applies here too — focus trapped inside the dialog while open, focus returned to the trigger on close, Escape to dismiss, dialog role announced — with the advantage that it is UIkit's implementation being judged rather than the module's, so the answer is the same across every site using the framework.

---

- Add a lightbox on a UIkit site.
- Build a slider with UIkit components.
- Show images in a UIkit slideshow.
- Avoid adding a second JS library.
- Match a UIkit theme's styling.
- Render a gallery consistently.
- Use the framework already loaded.
- Show product images in a lightbox.
- Build a portfolio slider.
- Reduce page weight on a UIkit site.
- Keep markup consistent with the theme.
- Show a media field as a carousel.
- Add a lightbox without new CSS.
- Present an image gallery.
- Show press photos at full size.
- Build a testimonial slider.
- Use UIkit's own components from a field.
- Support a UIkit-based design system.
