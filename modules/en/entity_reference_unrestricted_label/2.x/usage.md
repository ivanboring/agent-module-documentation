<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Unrestricted Label is a field formatter that displays the label of referenced entities WITHOUT performing any access check — a deliberate access bypass that can disclose labels of entities the user cannot access.

---

Core's entity-reference label formatter filters out referenced entities the user cannot view (showing nothing, or '- Restricted access -'), so a user never sees the labels of entities they lack access to. This module provides a formatter that deliberately does the opposite: its annotation states plainly that it displays labels 'without performing any access check', and it is titled 'Label (access bypass)'. Verified by reading: its `getEntitiesToView()` returns every referenced entity with no access filter — the core access check is removed — so it renders the labels/titles of referenced entities regardless of whether the current user may access them. That is a real information-disclosure capability, and it is easy to misuse: entity labels are frequently sensitive (an unpublished node's title, a private document's name, a restricted user's name), and this formatter leaks them to any user who can see the field. The module is honest — the name and description announce the bypass — so it is a documented footgun rather than a hidden bug. Use it only where you are certain the referenced entities' labels are themselves non-sensitive (e.g. a public taxonomy), and never on a field that references access-restricted content whose titles should not be exposed. If in doubt, use core's access-respecting label formatter instead.

---

- Show referenced labels without access checks.
- Bypass entity access on labels.
- Display labels of restricted entities.
- Understand this is a deliberate bypass.
- Use only for non-sensitive labels.
- Never use on restricted-content references.
- Prefer core's access-respecting formatter.
- Know it leaks titles of inaccessible entities.
- Confirm labels are non-sensitive.
- Avoid on unpublished-content references.
- Display all reference labels.
- Treat it as a disclosure footgun.
- Use on public taxonomies only.
- Review what labels it exposes.
- Avoid on private-content fields.
- Choose it consciously.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.