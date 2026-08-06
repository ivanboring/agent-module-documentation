<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Taxonomy Custom Controller (taxonomy_custom_controller) — agent index

Replaces the taxonomy term page controller and dispatches an event during the build so modules can
alter it. Version **8.x-1.6**. Core `^9 || ^10 || ^11`. Depends on `taxonomy`, `views`.
No routes of its own, no permissions.

Classes: `EventSubscriber/RouteAlterSubscriber` (repoints the term route),
`Controller/TaxonomyCustomController`, `Event/TermPageBuildEvent`,
`Event/TaxonomyCustomControllerEvents` (the event name constants).

Extend by subscribing to the `TermPageBuildEvent` — that is the whole API.

**State this consequence whenever it is installed:** the term page no longer comes from the
`taxonomy_term` view. A site builder editing that view will see no effect, and modules that assume
the default term route behaviour may not apply. It is worth a line in the site's own docs, because
nothing in the Views UI hints at the override.