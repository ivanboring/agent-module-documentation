<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Better field descriptions replaces a field's plain help text with a themeable description that can be positioned relative to the label and widget, and edits those descriptions from one screen instead of field by field.

---

Field descriptions are the cheapest editorial improvement a site can make and the most neglected, because editing them means opening every field's settings form one at a time and the result is an unstyled sentence wedged under the widget where nobody reads it. This module fixes both halves: a single administration screen at `/admin/config/content/better_field_descriptions` lists bundles and their fields for bulk editing, and the description renders through a **theme template** with a configurable **position** — above the label, below the label, below the widget — so it can be styled as real guidance rather than fine print. Version **2.0.3**, core `^9.3 || ^10 || ^11`, no dependencies. Two permissions: `administer better field descriptions settings` for the settings form, and `add better descriptions to fields` for the bundle and entity screens where the text is written. On the markup question — the descriptions accept HTML, and both the form defaults and the rendered output pass through `FieldFilteredMarkup::create()`, core's restricted allowed-tags filter, so a holder of the editing permission can add emphasis and links but not scripts or event handlers; that is the correct primitive for this job. Worth noting the second permission is not marked `restrict access`, and it does let its holder change help text across every bundle on the site, so grant it as an editorial-lead permission rather than a general editor one.

---

- Style field help text properly.
- Move a description above the label.
- Edit all field descriptions in one screen.
- Give editors clearer guidance.
- Add a link inside help text.
- Standardise help text across bundles.
- Improve a complex content type's usability.
- Explain a field's expected format.
- Reduce editorial mistakes.
- Add emphasis to important instructions.
- Position guidance where it is read.
- Theme descriptions to match the admin theme.
- Document a field's character limit.
- Improve onboarding for new editors.
- Replace unstyled default descriptions.
- Bulk-review help text before launch.
- Add guidance to a media field.
- Explain a workflow field's options.
