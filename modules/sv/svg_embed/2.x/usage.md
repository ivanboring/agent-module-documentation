<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SVG Embed lets SVG graphics be embedded into text (like images) with in-text translation of SVG strings, and sanitizes the SVG before output.

---

Embedding SVG inline — rather than as an <img> — lets it be styled and, here, have its text strings translated to the node's language. The danger with inline SVG is that SVG is an executable document format: an SVG can carry `<script>` and event handlers, so embedding untrusted SVG inline is a classic stored-XSS vector. SVG Embed handles this correctly: it runs the SVG through the well-regarded `enshrined/svg-sanitizer` library before output (`$sanitizer->sanitize($text)`), which strips scripts, event handlers and other dangerous constructs. Verified by reading: the sanitizer is applied in the processing path, not merely imported. That makes inline embedding safe against the SVG-XSS risk, which is exactly the control this feature needs. The remaining consideration is simply to keep the sanitizer library current, and to remember that inline SVG still renders with the page's privileges — but with the sanitizer in place, SVG Embed is a correct implementation of a feature that is dangerous done naively.

---

- Embed SVG inline in text.
- Translate SVG text strings.
- Style embedded SVG with CSS.
- Sanitize SVG before output.
- Strip scripts from SVG.
- Avoid SVG-based XSS.
- Rely on the enshrined sanitizer.
- Keep the sanitizer current.
- Embed a logo as inline SVG.
- Translate an SVG diagram.
- Use SVG like an image.
- Render SVG safely.
- Embed icons inline.
- Confirm sanitization on untrusted SVG.
- Style SVG per theme.
- Localise SVG labels.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.