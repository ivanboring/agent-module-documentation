<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Title HTML allows a node's title to contain HTML tags, rendering a separate HTML-title field through the text-format filter system.

---

Sometimes a title needs formatting — an italicised term, a superscript, a line break. Core node titles are plain text. Title HTML lets a node type designate a separate field as an HTML title, and renders it in place of the plain title on the node page. The security-relevant fact, verified by reading, is that it renders that field through `check_markup($value, $format)` — Drupal's text-format filter pipeline — not as raw HTML. So the HTML is sanitized by the field's text format, exactly the correct mechanism, and it even strips tags for the site-branding block where plain text is needed. That means its XSS safety is the text format's safety: with a restricted format (basic_html) the title HTML is filtered and safe; with an unfiltered format (Full HTML) an author could inject script. So the rule is to use a restricted format for the HTML-title field. Also worth knowing: titles appear in many contexts that expect plain text (the HTML <title> tag, breadcrumbs, admin lists) — this module overrides the node-title field display, so those other contexts show the title as plain/escaped text, which is fine, just not formatted.

---

- Allow HTML in a node title.
- Italicise a term in a title.
- Add a superscript to a title.
- Use a formatted title.
- Render an HTML title field.
- Rely on check_markup filtering.
- Use a restricted text format.
- Avoid Full HTML for the title field.
- Keep titles safe by format.
- Format a node title.
- Understand other contexts show plain title.
- Confirm the field's format is filtered.
- Add a line break to a title.
- Style a title term.
- Sanitize via the text format.
- Grant a filtered format for titles.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.