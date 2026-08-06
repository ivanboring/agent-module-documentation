<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# UI Patterns DS (ui_patterns_ds) — agent index

Renders a **Display Suite** field through a **UI Patterns component / SDC** instead of DS's own
field template. Version **1.0.0-alpha1** (**alpha**). Core `^10 || ^11`.
Depends on `ui_patterns`, `ui_patterns_layouts`, `ds:ds_extras`.

**The gap it closes:** DS controls field arrangement and wrapping; UI Patterns/SDC define reusable
components. Without a bridge, everything is a component *except* the field level, where DS
templates take over and the design system stops applying.

Only meaningful where both stacks are already committed to.

**Install-path quirk on this site:** composer placed it at
`web/modules/contrib/ui_patterns_ds-ui_patterns_ds`. Drupal discovers by `.info.yml` filename, not
directory, so it registers correctly as `ui_patterns_ds` — but directory-scanning tooling reports
the doubled name.