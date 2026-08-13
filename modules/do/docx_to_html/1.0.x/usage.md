<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DOCX to HTML Converter provides an admin utility page where a user picks a Word `.docx` file and gets its HTML markup, produced client-side by the bundled Mammoth.js library.

---

The controller (`DocxToHtmlController::content`) simply returns a render array attaching the `docx_to_html/docx_to_html` library and a small template with a file input, an output `<div>` and a "Copy the HTML" button. All the work happens in the browser: `docx_to_html.js` validates the MIME type, reads the file as an ArrayBuffer via FileReader, calls `mammoth.convertToHtml()`, and writes the result into the output div with `innerHTML`; a copy button selects the output and runs `document.execCommand('copy')`. Nothing is uploaded, parsed, or stored server-side.

The page lives at `/docx-to-html` (also linked under Configuration › Content authoring and as an admin shortcut) and is gated by the `access docx to html converter` permission. Because conversion and rendering are entirely local to the requesting user's browser, the converted HTML is injected unsanitised into that same user's DOM only — there is no persistence and no cross-user exposure. Editors typically use it to turn a Word document into HTML they can paste into a WYSIWYG field.

---

- Convert a `.docx` file to HTML markup in the browser.
- Copy the generated HTML to the clipboard for pasting into a WYSIWYG field.
- Give content authors a self-service Word-to-HTML tool.
- Reach the tool at `/docx-to-html` or via its Configuration menu link.
- Restrict access with the `access docx to html converter` permission.
- Avoid server-side upload/storage of source documents (all client-side).
- Preview the converted markup before copying.
- Reject non-DOCX files (MIME-type check in JS).
- Use Mammoth.js's clean semantic-HTML output rather than Word's bloated markup.
- Migrate legacy Word content into Drupal nodes.
- Bootstrap body copy for a new page from an existing Word doc.
- Provide the tool as an admin shortcut for frequent use.
- Keep conversion local so sensitive documents never leave the browser.
- Sanitise/clean the pasted result afterward via the WYSIWYG's own filters.
- Extend or restyle the tool via the module's small CSS/JS library.