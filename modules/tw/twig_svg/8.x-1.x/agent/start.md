<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twig SVG (twig_svg) — agent index

Twig function that **inlines an SVG file's contents** into a template. Settings behind
`administer twig svg configuration`. Version **8.x-1.7**. Core requirement `^10 || ^11`.

**Why inline rather than `<img>`:** the markup is in the document, so CSS can set colour from
`currentColor`, it inherits font size, it can be animated, and it costs **no extra request**. By
hand that means `file_get_contents` in preprocess plus `|raw` in the template — reinvented per
project.

**The security point is the whole of what to understand here, and it runs against Twig's defaults.**
Twig autoescapes; inlining necessarily **bypasses that** — the file's contents are printed as
markup. **SVG is not an image format for these purposes: it is an XML document that can contain
`<script>`, event handlers and external references**, so an inlined SVG **executes in the page with
the site's origin**.

- **Fine** when the files are part of the **theme**, committed to the repository and reviewed like
  any other code — the intended use.
- **Not fine** if the path can come from **content, a field or an uploaded file**, at which point
  the function becomes a way to execute script by uploading an icon.

**Confirm the source is a fixed theme directory, not a user-supplied path**, and keep `svg` out of
the extensions any untrusted role may upload (see `file_upload_options`, same wave).
