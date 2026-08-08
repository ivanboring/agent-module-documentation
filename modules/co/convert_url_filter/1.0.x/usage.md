<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Convert URL Filter provides a text-format filter to convert internal absolute URLs to relative URLs in content output.

---

Convert URL Filter provides a text-format filter that converts internal absolute URLs to relative
URLs in rendered content — so links/references that were entered as absolute internal URLs (e.g.
`https://example.com/page`) output as relative (`/page`). This helps with domain migrations, multi-
environment consistency and avoiding hard-coded domains in content. It depends on core Filter.

Use it on text formats where content may contain absolute internal URLs that should be relative. It is a
content-display/filter feature affecting output; the stored value is unchanged and it has no access role.
Add the filter to the relevant text format(s).

---

- Convert absolute internal URLs to relative.
- Filter content URLs on output.
- Avoid hard-coded domains in content.
- Help with domain migrations.
- Depend on core Filter.
- Output /page instead of full URL.
- Improve multi-environment consistency.
- Not change stored values.
- Have no access role.
- Add to a text format.
- Relativize internal links.
- Handle absolute internal URLs.
- Filter rendered content.
- Convert links on display.
- Support environment portability.
- Configure the filter.
- Relative internal URLs.
- Clean up content URLs.
- Apply to text formats.
- Convert URLs in output.
