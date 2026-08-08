<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Link Fix Absolute URLs converts absolute URLs in link fields that point to the current site into internal path references.

---

Content authored with full URLs to the site's own pages (pasted from a browser) becomes brittle — the links break if the domain changes and do not benefit from Drupal's internal link handling. Link Fix Absolute URLs converts such same-site absolute URLs in link fields to internal path references. It is a content-hygiene utility with no security surface; it only rewrites links that point at the current site. Confirm it does not rewrite intentionally-absolute links (e.g. a canonical external mirror), and that the conversion matches your link-handling expectations.

---

- Convert same-site absolute URLs to internal.
- Fix pasted full URLs in links.
- Make links domain-independent.
- Use internal path references.
- Clean up link fields.
- Avoid brittle absolute links.
- Confirm intentional-absolute links.
- Benefit from internal link handling.
- Rewrite own-site links.
- Improve link hygiene.
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
- Use deliberately.
- Review after upgrades.