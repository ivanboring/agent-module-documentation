<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views striping adds alternating classes to Views rows — zebra striping and its relatives — as a pluggable system rather than a fixed odd/even pair.

---

Views already emits `views-row` classes and themes commonly add `odd`/`even` in a template, which covers the simplest case and nothing beyond it. Real designs ask for more: repeating every third row, alternating in pairs, striping that restarts per group, or classes derived from the row's own data. This module makes striping a **plugin type** — `ViewsStripingTypeManager` with `src/Annotation` and a `views_striping.plugin_type.yml`, plus `views_striping.api.php` documenting the contract — so a site can add a striping strategy without a template override, and choose per view which one applies. It depends on core `views` alone, has no routes, permissions or configuration pages, and spans `^8 || ^9 || ^10 || ^11`. It is presentational only: the classes land on rows and everything else about the view is untouched, so it is a cheap thing to try and a cheap thing to remove.

---

- Add zebra striping to a view.
- Alternate row classes in pairs.
- Stripe every third row.
- Restart striping per group.
- Add classes derived from row data.
- Avoid a template override for striping.
- Choose a striping strategy per view.
- Write a custom striping plugin.
- Improve readability of a long table.
- Style alternating rows in a listing.
- Support a design system's row treatment.
- Highlight rows by position.
- Apply striping consistently across views.
- Stripe a grid rather than a table.
- Add classes for the first and last rows.
- Reduce theme code for common patterns.
- Support a site still on Drupal 8.
- Prototype row styling from the Views UI.
