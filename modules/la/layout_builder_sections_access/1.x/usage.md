<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Sections Access adds per-section options in Layout Builder to deactivate a section or restrict its rendering to certain roles.

---

Layout Builder builds a page from sections, and sometimes a section should be shown only to certain roles, or switched off without deleting it. Layout Builder Sections Access adds two per-section options: deactivate the section, or restrict it to selected roles. The important thing to understand is the layer at which this operates: it controls whether a section is **rendered**, by role. For hiding a marketing block from anonymous users that is fine, and because the section is skipped server-side the restricted content is not in the HTML for non-matching roles — better than a CSS hide. But it is section-render control, not deep access control: any block placed in a restricted section still has its own access, and content within should not be relied upon as protected solely by section restriction if that content is also reachable another way (its own URL, JSON:API, another placement). Use it for role-targeted layout, and back sensitive content with the block's/entity's own access.

---

- Restrict a section to roles.
- Deactivate a section.
- Show a section by role.
- Hide a marketing block from anonymous.
- Target layout by role.
- Switch off a section without deleting.
- Understand it controls rendering.
- Back sensitive content with block access.
- Confirm content isn't reachable elsewhere.
- Role-target a layout.
- Configure per section.
- Skip a section server-side.
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