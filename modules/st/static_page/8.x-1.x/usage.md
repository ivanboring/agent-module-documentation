<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Static Page lets a node type be configured so its output is defined by a text area holding static markup, rather than assembled from fields.

---

Some pages are just a block of authored markup — a landing page, a one-off. Static Page lets a node type serve output from a text-area field of static content. The security consideration is the text format of that field: if the static content is rendered through a permissive format (Full HTML), an author can put arbitrary markup — including script — into the page, a stored-XSS capability. So the field should use a restricted, filtered text format for anyone but fully-trusted authors, and the static markup is only as safe as that format. Used with a sensible format and trusted authors it is a simple way to serve static pages; with an unfiltered format it hands editors raw HTML.

---

- Serve a static-markup page.
- Define output from a text area.
- Build a one-off landing page.
- Use a static content type.
- Author raw page markup.
- Use a restricted text format.
- Avoid Full HTML for untrusted authors.
- Treat as safe as the format.
- Confirm the field's format.
- Serve authored markup.
- Grant to trusted authors.
- Build simple static pages.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.