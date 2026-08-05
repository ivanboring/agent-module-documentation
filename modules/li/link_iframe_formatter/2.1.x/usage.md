<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Link Iframe Formatter renders a link field as an `<iframe>` rather than as an anchor, embedding the target page in place.

---

The use case is legitimate and specific: an editor supplies a URL — a form hosted elsewhere, a dashboard, a document viewer, a booking widget — and the site should show it inline rather than sending the visitor away. Making that a **field formatter** means the decision lives in Manage Display and the editor supplies only a URL, which is simpler than teaching them embed markup and safer than allowing raw HTML in a text field. That said, embedding is delegation, and this is the module where that matters most in this wave: whatever is at the URL renders inside the site's page, executing its own JavaScript in the visitor's browser, and the URL comes from whoever can edit the field. Three things belong in any deployment. Set the iframe's **`sandbox`** attribute so the embedded page cannot script the parent or navigate it. Constrain **which hosts** may be embedded, either through the field's own validation or a Content-Security-Policy `frame-src` directive — an unconstrained iframe formatter lets a content editor embed anything, which is a phishing surface inside the site's own chrome. And treat it as a consent question where a consent manager is in use, since the embedded origin sees the visitor.

---

- Embed an external form in a page.
- Show a hosted dashboard inline.
- Display a document viewer.
- Embed a booking widget.
- Let editors supply only a URL.
- Avoid teaching editors embed markup.
- Show a third-party map.
- Embed a legacy application.
- Display an external report.
- Keep visitors on the site.
- Configure embedding in Manage Display.
- Show a survey hosted elsewhere.
- Embed a video player by URL.
- Display a status page inline.
- Reuse a link field for embedding.
- Show a partner's content.
- Embed an internal tool.
- Avoid raw HTML in content.
