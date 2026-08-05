<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Group Metadata moves metadata fields into a sidebar on the node form, so the editing screen separates "what this content says" from "how it is filed" — the layout core already uses for authoring information and revision log.

---

Drupal's node form puts the vertical tabs — authoring information, promotion options, revision log — in a right-hand column, and everything else in one long vertical stack. On a content type with twenty fields, the fields that matter editorially (title, body, images) end up interleaved with the ones that matter operationally (internal reference, review date, taxonomy for filtering), and the form becomes a scroll. This module extends the sidebar treatment to field groups: `FieldGroupMetadataPreRenderer` relocates a designated group into that column at pre-render time, so the arrangement is presentational and nothing about storage changes. It is small — one class plus a `.module` file — and depends on `field_group` (`~3.0 || ~4.0`), with a wide core range of `^8 || ^9 || ^10 || ^11`. There are no routes, permissions or configuration of its own; which group is treated as metadata is decided in the field group's own settings, so it exports with the form display. Note `"minimum-stability": "dev"` in the composer file, which is worth knowing when resolving versions.

---

- Move metadata fields into the node form sidebar.
- Separate editorial fields from operational ones.
- Shorten a long content editing form.
- Group taxonomy and workflow fields together.
- Match core's authoring-information layout.
- Improve editor focus on the main content.
- Reduce scrolling on a complex content type.
- Put review dates in the sidebar.
- Keep internal reference fields out of the way.
- Reuse field_group's existing configuration.
- Improve a migrated content type's form.
- Give editors a cleaner first impression.
- Reduce training on a busy form.
- Keep the change presentational only.
- Export the arrangement with the form display.
- Tidy a form without removing fields.
- Highlight the fields editors use most.
- Apply consistent form layout across types.
