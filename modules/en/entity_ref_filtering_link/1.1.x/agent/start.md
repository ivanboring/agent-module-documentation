<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Filtering Link (entity_ref_filtering_link) — agent index

Entity reference formatters that link to a **view filtered by** the referenced entity rather than
to the entity's own page. Version **1.1.2**. Core `^9 || ^10 || ^11`.
No dependencies, routes, permissions, or config objects.

Plugins: `Plugin/Field/FieldFormatter/EntityReferenceFilteredLinkFormatter`,
`Plugin/Field/FieldFormatter/EntityReferenceFilteredLinkDisableFormatter` (suppresses the link).

Pairs with a Views page taking the reference as an **exposed filter or contextual argument** — a
lightweight substitute for a facets module when a site needs only one or two facets.

Two configuration checks: the target view must accept the parameter shape the formatter passes;
and decide what a link that yields an empty listing should do — a dead-end filtered page is worse
than no link.