<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Formatter Pattern provides custom HTML pattern attribute settings for field formatters, letting field output carry configured attributes.

---

Field output sometimes needs specific HTML attributes — a data-attribute, a class pattern. Field Formatter Pattern adds pattern attribute settings to field formatters. It is a display/theming feature. The mild consideration is that any mechanism adding attributes to output should not let untrusted values become attributes that could be XSS vectors (e.g. an on* handler) — the pattern is admin-configured on the formatter, so it is trusted, but confirm the configured patterns are static/safe values and not derived from untrusted content.

---

- Add attributes to field output.
- Configure a data-attribute pattern.
- Add a class pattern to a field.
- Customize field HTML.
- Set formatter attributes.
- Confirm patterns are safe.
- Avoid untrusted attribute values.
- Add markup hooks.
- Style field output.
- Configure per formatter.
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