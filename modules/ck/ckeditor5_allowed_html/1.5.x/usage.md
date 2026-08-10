<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Allowed HTML provides a filter for extra allowed HTML.

---

CKEditor 5 Allowed HTML provides a **filter that declares additional allowed HTML tags/attributes** for a
text format used with CKEditor 5 — so custom/extra markup can pass the format's filtering and round-trip through
the editor. It works across core 8–11.

Use it to permit extra HTML in a CKEditor 5 format. It is a content-editing/filter feature and it is
**security-relevant**: allowing more HTML **widens what content can contain**, so any tag/attribute you allow is
a potential XSS vector if the format is available to less-trusted authors — only add what you need, avoid
enabling script/event-handler-bearing markup, and keep permissive formats restricted to trusted roles. It has no
access-control role. Configure the allowed HTML on the text format.

---

- Declare extra allowed HTML.
- Permit custom tags/attributes.
- Let markup round-trip through CKEditor 5.
- Serve content editing.
- Extend the format's allow-list.
- Pass the format's filtering.
- BE security-relevant (widens allowed content).
- Add only what you need (XSS risk).
- Keep permissive formats to trusted roles.
- Avoid script/event-handler markup.
- Have no access-control role.
- Configure the allowed HTML.
- Handle allowed HTML.
- Allow tags.
- Configure the filter.
- Permit markup.
- Handle the format.
- Extend HTML.
- Restrict permissive formats.
- Provide extra allowed HTML.
