<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dynamic Reference Selection provides an entity-reference selection handler whose allowed referenceable entities are determined dynamically by context.

---

An entity-reference field's list of selectable targets is usually fixed by the field settings; sometimes it needs to depend on context — the current user, another field's value, a role. Dynamic Reference Selection is a selection handler that narrows the referenceable entities dynamically. Because a selection handler governs what a user can reference, it has a mild access dimension: narrowing the list is a UI convenience, but it is not a security boundary — a determined user could reference an entity the handler would hide (via a crafted request) unless the underlying entity access also restricts it. So use it to guide selection, and rely on entity access for real restriction. Confirm the dynamic logic produces the intended list.

---

- Narrow reference options by context.
- Filter referenceable entities dynamically.
- Base selection on the current user.
- Vary options by another field.
- Guide entity reference selection.
- Use a dynamic selection handler.
- Confirm the dynamic list.
- Treat as UI, not access boundary.
- Rely on entity access for restriction.
- Configure contextual references.
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