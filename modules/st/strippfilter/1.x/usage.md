<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Strip Filter is a text filter that strips specific HTML tags (such as paragraph tags) from text.

---

Sometimes content should not carry certain tags — a title area that should not wrap in <p>, an inline context. Strip Filter removes specific HTML tags via a text-format filter. It removes markup rather than adding it, so it does not introduce an XSS surface (stripping tags is safe). Confirm the strip configuration removes only the intended tags, since over-stripping can break content structure. As a filter it applies wherever its text format is used.

---

- Strip paragraph tags.
- Remove specific HTML tags.
- Clean up markup.
- Strip tags in a context.
- Configure which tags to strip.
- Avoid wrapping <p>.
- Confirm the strip scope.
- Apply as a text filter.
- Remove unwanted tags.
- Clean content output.
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