<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Twig SVG adds a Twig function that inlines an SVG file's contents into a template.

---

Inlining an SVG rather than referencing it with an `<img>` tag is what makes an icon controllable: the markup is in the document, so CSS can set its colour from `currentColor`, it inherits font size, it can be animated, and it costs no extra request. Doing that by hand in a template means reading a file and printing it unescaped, which is a `file_get_contents` in a preprocess function and a `|raw` in the template — repeated per project and easy to get wrong in the direction that matters. A dedicated function does it once. Version **8.x-1.7** on core `^10 || ^11`, with settings behind `administer twig svg configuration`. **The security point is the whole of what to understand about this module, and it runs against the grain of Twig's defaults.** Twig autoescapes, and inlining SVG necessarily bypasses that — the file's contents are printed as markup. **SVG is not an image format for these purposes; it is an XML document that can contain `<script>`, event handlers and external references**, so an inlined SVG executes in the page with the site's origin. That is fine when the files are part of the theme, committed to the repository and reviewed like any other code, which is the intended use. It is not fine if the path can come from content, from a field or from an uploaded file — at which point the function becomes a way to execute script by uploading an icon. Confirm the source is a fixed theme directory and not a user-supplied path, and keep SVG out of the extensions any untrusted role may upload.

---

- Inline an icon in a Twig template.
- Colour an SVG icon with CSS.
- Avoid an extra request per icon.
- Animate an inlined SVG.
- Inherit font size in an icon.
- Add a logo as inline SVG.
- Use currentColor on icons.
- Inline a theme's icon set.
- Avoid file_get_contents in preprocess.
- Add decorative SVG to a template.
- Inline an illustration.
- Use SVG sprites in a theme.
- Style icon strokes with CSS.
- Add a themed arrow icon.
- Inline a social media icon.
- Support a design system's icons.
- Reduce icon HTTP requests.
- Add an accessible inline icon.
