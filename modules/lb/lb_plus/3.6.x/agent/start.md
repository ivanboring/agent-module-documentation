<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder + (lb_plus) — agent index

Drop-in replacement for the Layout Builder UI: drag-and-drop, block sidebar, and **nested
sections**. Shares `navigation_plus.settings` as its configure route.
Version **3.6.12**. Core **`^11` only** — no Drupal 10 path.
Depends on `layout_builder`, `block`, **`tempstore_plus`**, **`navigation_plus`**.

Permissions: `administer layout builder + configuration`, `promote layout builder + blocks`.

AJAX routes under `/lb-plus/…` — duplicate block, edit block, layout options, load place-block
sidebar, place block, move section, move block, add empty section, configure section layout
change. **All use core's own `_layout_builder_access: 'view'`**, i.e. the same requirement core's
Layout Builder routes carry; authority comes from the section storage, not a new permission.

Nesting: `SectionStorage/TreeIndex`, `TreeIndexInterface`, `NestedSectionStorageInterface`.
Also `InlineBlockUsage`, `InlineBlockEntityOperations`, `Dropzones`, `LbPlusServiceProvider`.

Submodules:

- `lb_plus_section_library` — Section Library support (needs `section_library`, `navigation_plus`).
- `lb_plus_lb_block_decorator` — nested layout support for `lb_block_decorator`.
- `lb_plus_edit_plus` — **deprecated** (`lifecycle: deprecated`). Functionality moved into
  `lb_plus`; it exists only so database updates can uninstall it. Do not recommend it.

**Weigh the footprint before recommending:** this pulls in the `navigation_plus` / `tempstore_plus`
family, which jointly replace parts of the editing experience. It is an adoption decision, not a
single module.