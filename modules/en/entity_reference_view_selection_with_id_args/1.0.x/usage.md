<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Provides a views entity reference selection that passes id arguments.

---

Entity Reference View Selection with ID Args provides a **views-based entity-reference selection handler
that passes the host entity's id (and related ids) as a Views contextual argument** — so the list of selectable
referenced entities can be filtered by the current entity's context. It depends on core Field and Views, in the
Fields package.

Use it to context-filter reference autocomplete/select options. It is a site-building/fields feature; the
selection view's own access/filters apply, and it has no access-control role. Configure the reference field's
selection handler.

---

- Pass the host id as a view argument.
- Context-filter reference options.
- Use a Views selection handler.
- Depend on core Field and Views.
- Serve site building.
- Filter selectable entities.
- Apply the selection view's access/filters.
- Have no access-control role.
- Configure the selection handler.
- Handle contextual selection.
- Filter options.
- Configure the field.
- Pass id args.
- Handle the handler.
- Filter references.
- Configure fields.
- Handle selection.
- Context references.
- Set the handler.
- Provide contextual reference selection.
