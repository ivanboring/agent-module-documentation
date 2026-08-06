<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder + replaces core's Layout Builder interface with one built around drag-and-drop, a block-placement sidebar and — the substantive addition — nested sections.

---

Core Layout Builder is capable and its UI is the part people complain about: every operation is a modal, sections cannot contain sections, and moving a block means a dialog rather than a drag. This module swaps the interface out. Its routes under `/lb-plus/…` cover duplicating a block, editing a block in the layout, changing section layout options, loading the place-block sidebar, moving sections and blocks, and adding empty sections — all as AJAX operations against a `TreeIndex` section storage that supports nesting.

Nested sections are the reason most sites adopt it. Real page designs are columns inside rows inside a full-width band, and expressing that in flat core sections means either a custom layout plugin per arrangement or giving up. `NestedSectionStorageInterface` and the tree index make nesting a first-class feature.

The dependency footprint is the thing to weigh. It requires `navigation_plus` and `tempstore_plus` and shares `navigation_plus`'s settings route, so adopting it means adopting a small family of modules that jointly replace parts of the editing experience. It is also `^11` only — no Drupal 10 path — and at 3.6.12 it is a mature release of a module that is moving quickly.

Access on the AJAX routes uses core's own `_layout_builder_access: 'view'`, the same requirement core's Layout Builder routes carry, so authority comes from the section storage rather than from a new permission. Its two own permissions are `administer layout builder + configuration` and `promote layout builder + blocks`.

Three submodules ship with it: `lb_plus_section_library` (Section Library support), `lb_plus_lb_block_decorator` (nested layout support for Layout Builder Block Decorator), and `lb_plus_edit_plus`, which is **deprecated** — its functionality moved into `lb_plus` and it exists only so that database updates can uninstall it.

---

- Replace the Layout Builder UI with a drag-and-drop one.
- Nest sections inside sections.
- Build a column arrangement inside a full-width band.
- Place blocks from a sidebar instead of a modal.
- Duplicate a block in place.
- Move a section without a dialog.
- Edit a block inline in the layout.
- Add an empty section quickly.
- Change a section's layout options in place.
- Give editors a faster page-building experience.
- Avoid a custom layout plugin for every arrangement.
- Integrate with the Section Library module.
- Add nested layout support to Layout Builder Block Decorator.
- Promote selected blocks for easier placement.
- Restrict who may configure the module.
- Uninstall the deprecated `lb_plus_edit_plus` submodule.
- Evaluate the navigation_plus family before adopting.
- Plan a Drupal 11-only page-building stack.