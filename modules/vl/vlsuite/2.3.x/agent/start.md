<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# VLSuite (vlsuite) — agent index

Page-building suite on **Layout Builder**: block types, collections, media types, layouts,
animations, icon fonts, utility classes. Configure at `/admin/config/vlsuite`.
Version **2.3.3**. Core `^10.3 || ^11`. Depends on `layout_builder`.

Permission: `administer vlsuite settings` — **`restrict access: true`**.

**16 top-level submodules; ~36 components enabled in practice.** This is an adoption decision, not
an install — cherry-picking brings the foundation anyway, and the value is the coherence of the
set.

Groups: `vlsuite_block*` (cta, headings_menu, icon, image, local_video, remote_video, paragraph,
text, webform, attachments), `vlsuite_collection*` (card, gallery, hero, stmt),
`vlsuite_media*` (document, icon, image, local_video, remote_video), `vlsuite_layout` +
`vlsuite_layout_builder` + `vlsuite_layout_tabs`, `vlsuite_slider`, `vlsuite_modal`,
`vlsuite_animations`, `vlsuite_icon_font`, `vlsuite_utility_classes`, `vlsuite_format`,
`vlsuite_bundle_field`, `vlsuite_landing` (+ `_content_editor`).

Three to point at specifically: **`vlsuite_shuttle`** — the setup helper the project description
recommends "to optimize initial setup time"; **`vlsuite_generator`** — generates components;
**`vlsuite_demo`** — example content, the fastest way to evaluate the suite and something to
remove before launch.

`VLSuiteUninstallValidator` guards uninstall — good sign in a suite this size; it stops a piece
being removed out from under the others.