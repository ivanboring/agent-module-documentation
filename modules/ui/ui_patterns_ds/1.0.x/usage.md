<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
UI Patterns DS lets a Display Suite field use a UI Patterns component — or a Single Directory Component — as its template, instead of Display Suite's own field markup.

---

Display Suite and UI Patterns solve adjacent problems and do not natively meet. Display Suite controls how an entity's fields are arranged and wrapped; UI Patterns (and, increasingly, core's SDC) define reusable components with declared props. A site using both ends up with components for everything except the field level, where Display Suite's field templates take over and the design system stops applying.

This module bridges that: a Display Suite field can be rendered through a pattern, with the field's values mapped onto the component's props. The practical effect is that a field renders as the same component the rest of the site uses, so a change to the component propagates everywhere rather than only outside Display Suite regions.

It depends on `ui_patterns`, `ui_patterns_layouts` and `ds_extras`, so it is only meaningful where that whole stack is already in place — a site that has committed to both systems, which is the situation the module exists for.

**Two things to be aware of.** The release is **1.0.0-alpha1**, an alpha on a rendering integration, so verify it against the specific Display Suite and UI Patterns versions in use. And on this install composer placed it in a directory named `ui_patterns_ds-ui_patterns_ds`; Drupal discovers modules by the `.info.yml` filename rather than the directory, so it still registers correctly as `ui_patterns_ds`, but tooling that scans directory names will report it under the doubled name.

---

- Render a Display Suite field through a UI Patterns component.
- Use an SDC as a Display Suite field template.
- Apply a design system at the field level.
- Map field values onto component props.
- Keep component changes propagating into DS regions.
- Avoid duplicate markup between DS and components.
- Reuse one card component across DS and Layout Builder.
- Bring a legacy Display Suite site onto a component system.
- Standardise field markup across display modes.
- Verify the bridge against the installed DS version.
- Audit which fields bypass the design system.
- Plan a migration from DS field templates to components.
- Understand a doubled install directory name.
- Confirm the full UI Patterns stack is installed.
- Verify field rendering after an alpha upgrade.
