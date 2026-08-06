<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Backgrounds lets an editor set a background image or colour on a Layout Builder section.

---

It is the first thing anyone asks for after Layout Builder is enabled, and core does not provide it: sections have a layout and a set of blocks, and no notion of how the band behind them looks. Without it a page alternating white and tinted bands — which is the most common visual structure a marketing page has — needs a layout plugin per background variant, or a class field that editors type into, or a theme that infers it from position. Attaching it to the section itself is the right place, because a background belongs to the band rather than to anything inside it. The dependency list is substantial — core `image`, `media`, `media_library`, plus **`layout_builder_styles`** and `media_library_form_element` — which tells you the architecture: styles come from `layout_builder_styles`' vocabulary of classes, and the image comes from the media library rather than a bare file field, so background images are managed assets with alt text, reuse and access. Version **8.x-1.1** on `^8.8` through `^11`. Three things worth checking on any background feature. **Contrast is the accessibility question** — text over a photograph or a mid-tone colour frequently fails the 4.5:1 requirement, and nothing in the interface warns an editor, so a background chooser is a way to break contrast one page at a time unless the palette is constrained. **A background image is a page-weight decision**: a full-bleed photograph is often the largest asset on the page and the one blocking Largest Contentful Paint, so it needs responsive image styles rather than the original. And **decorative backgrounds must not carry meaning**, since a background image is not announced to a screen reader — any information in it has to exist as text as well.

---

- Add a background image to a section.
- Set a coloured band behind content.
- Alternate white and tinted sections.
- Add a hero background to a layout.
- Set a section's background from media.
- Build a marketing page's visual structure.
- Add a background colour per section.
- Support a design's alternating bands.
- Add a full-bleed image behind content.
- Give a call-to-action section emphasis.
- Set backgrounds without a theme change.
- Build a landing page's sections.
- Add a gradient background to a band.
- Reuse a managed background image.
- Style a section's container.
- Add a background to a testimonial band.
- Support a page-builder workflow.
- Set section backgrounds per page.
