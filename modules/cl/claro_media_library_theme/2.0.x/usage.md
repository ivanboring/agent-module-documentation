<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Add Claro Media Library to Theme registers Claro's media library templates in the active theme, so the media library looks and behaves correctly when it opens outside the admin theme.

---

This is a fix for a specific, irritating symptom. Drupal's media library is a modal, and its templates and preprocessing live in **Claro**, the admin theme. Open it from a node form in the admin theme and it is fine. Open it from anywhere rendered in the **front-end theme** — an inline form, a Layout Builder off-canvas dialog, a front-end editing interface, a custom form on a public page — and the templates are missing, so the grid collapses into an unstyled list and the widget becomes hard to use. The usual workaround is copying Claro's templates into the front-end theme, which then has to be kept in step with core on every update. This module adds them to the active theme's registry instead, so core remains the source. Version **2.0.0-beta1** on **`^11.4`** — an exceptionally tight core requirement that pins it to one minor, so check compatibility again at every core update; it depends on core `media_library`. The narrowness is the point: it does one thing, has no configuration and no permissions, and is a candidate for removal if a future core release moves the library's theming out of the admin theme. Worth confirming whether the problem is actually present before installing, since it only appears where the library is opened outside the admin theme.

---

- Fix an unstyled media library in a front-end theme.
- Use the media library on a public form.
- Open the library from Layout Builder.
- Support front-end editing with media.
- Avoid copying Claro templates into a theme.
- Keep media library styling on core updates.
- Fix a broken media modal.
- Support an inline entity form with media.
- Use the library in a custom form.
- Restore the media grid layout.
- Support a decoupled admin experience.
- Fix media selection in an off-canvas dialog.
- Keep the library usable outside admin.
- Avoid maintaining forked templates.
- Support a custom admin theme.
- Fix media library on a member-facing form.
- Keep editorial media tools consistent.
- Reduce theme maintenance burden.
