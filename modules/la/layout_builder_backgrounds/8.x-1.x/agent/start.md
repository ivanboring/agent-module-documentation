<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder Backgrounds (layout_builder_backgrounds) — agent index

Background **images and colours on Layout Builder sections**. Depends on core `image`, `media`,
`media_library`, plus **`layout_builder_styles`** and `media_library_form_element (>=2.0)`.
Version **8.x-1.1**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The first thing anyone asks for after enabling Layout Builder**, and core does not provide it —
sections have a layout and blocks, and **no notion of how the band behind them looks**. Without it,
a page alternating white and tinted bands needs a **layout plugin per variant**, a class field
editors type into, or a theme inferring it from position.

**The dependency list tells you the architecture:** styles come from **`layout_builder_styles`**'
vocabulary of classes, and the image comes from the **media library** rather than a bare file
field — so background images are managed assets with alt text, reuse and access.

**Three things to check on any background feature:**
1. **Contrast is the accessibility question.** Text over a photograph or mid-tone colour frequently
   fails **4.5:1**, and nothing warns the editor. A background chooser breaks contrast **one page at
   a time** unless the palette is constrained.
2. **A background image is a page-weight decision** — often the largest asset and the one blocking
   **Largest Contentful Paint**. Use responsive image styles, not the original.
3. **Decorative backgrounds must not carry meaning** — a background image is **not announced** to a
   screen reader. Any information in it must exist as text too.
