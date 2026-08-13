<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DOCX to HTML Converter (docx_to_html) — agent index

**An admin page that converts an uploaded .docx to HTML in the browser via Mammoth.js.**

- **Version:** 1.0.x (1.0.0)
- **Core:** ^10 || ^11
- **Route:** `docx_to_html.page` → `/docx-to-html` (also `configure` link)
- **Permission:** `access docx to html converter`
- **Controller:** DocxToHtmlController::content (renders template + attaches library)
- **Library:** mammoth.browser.min.js + docx_to_html.js (client-side only)
- **Template:** docx-to-html-page.html.twig (file input, #output, copy button)

**Security:** Conversion is 100% client-side; no file is uploaded, parsed, or stored server-side. The page is permission-gated (`access docx to html converter`). Note: the JS injects Mammoth's output via `innerHTML` without sanitising (js/docx_to_html.js:displayResult), but the scope is only the requesting user's own browser and own file (self-XSS), with no persistence or cross-user reflection.