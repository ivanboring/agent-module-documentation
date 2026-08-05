<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Facets autocomplete (facets_autocomplete) — agent index

Autocomplete **widget plugin** for the Facets module. Composer: `drupal/facets ^2.0 || ^3.0`.
Core requirement `^9.2 || ^10 || ^11`.

Key facts:
- **A widget, not a new facet type.** It is chosen per facet in the Facets UI; the facet's
  definition, source and indexing are untouched, so switching to or from it is a one-setting
  change with no re-index.
- Surface: `src/Plugin/` (the widget), `config/schema`, `js/autocomplete-widget.js`,
  `css/autocomplete-widget.css`, `templates/facets-autocomplete.html.twig`.
- Spans both current Facets majors (`^2.0 || ^3.0`) — useful when a site is mid-upgrade.
- Two things to check when configuring: behaviour with **zero results**, and interaction with
  the facet's **hard limit / show-all** settings. Autocomplete changes discovery — a visitor can
  only find values they can partially spell — so a facet meant for browsing may be worse as an
  autocomplete than as a truncated list.
