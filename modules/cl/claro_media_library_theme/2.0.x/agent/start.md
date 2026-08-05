<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Add Claro Media Library to Theme (claro_media_library_theme) — agent index

Registers **Claro's media library templates in the active theme**, so the library renders
correctly when opened outside the admin theme. Depends on core `media_library`.
Version **2.0.0-beta1** — beta.

**Core requirement is `^11.4` — pinned to a single minor.** Exceptionally tight; re-check at every
core update.

**The symptom it fixes:** the media library modal's templates and preprocessing live in **Claro**.
Opened from an admin-theme form it is fine. Opened from anything rendered in the **front-end
theme** — an inline form, a Layout Builder off-canvas dialog, front-end editing, a custom form on
a public page — the templates are missing and the grid collapses into an unstyled list.

The usual workaround is **copying Claro's templates into the front-end theme**, which must then be
kept in step with core forever. This adds them to the active theme's registry instead, so core
stays the source.

No configuration, no permissions, one job. A candidate for removal if a future core release moves
the library's theming out of the admin theme. **Confirm the symptom is actually present before
installing** — it only appears where the library opens outside the admin theme.
