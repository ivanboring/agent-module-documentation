<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Allowed Text Format Field Widget lets a field's widget settings decide which text formats are offered on that field, instead of offering every format the user may use.

---

Drupal's text format selector shows the intersection of the formats that exist and the formats the current user has permission to use, which is a permission question and not a content-modelling one. The result is that an editor holding Full HTML sees it offered on every text field on the site — including the ones where it makes no sense: a short summary that should be plain text, a caption, a teaser intended for a fixed presentation. Nothing stops them choosing it, and once one node's caption contains a table and an inline style, the design accommodates it or the content gets fixed by hand. Restricting the choice per field expresses the content model's intent: *this* field is a caption, and a caption is plain text regardless of what its author is allowed to do elsewhere. Version **1.1.0-rc1** — a release candidate — on `^8` through `^11`, depending on core `field` and `filter`. The distinction to keep clear is the one this module is easy to misread as: **it narrows what is offered, not what is permitted**. The security boundary remains the text format's own filter chain and the `use text format X` permissions — a user who may use Full HTML still may, and anything that writes to the field outside this widget (a migration, JSON:API, a webform handler, a second form display) is unaffected. Treat it as content-model enforcement and editorial guidance, and never as a control that stops someone using a format they hold the permission for.

---

- Restrict a summary field to plain text.
- Offer only one format on a caption.
- Keep Full HTML off a teaser field.
- Express a content model's intent.
- Reduce inconsistent markup in short fields.
- Limit format choice per field.
- Simplify an editor's options.
- Prevent tables in a caption.
- Restrict formats on a listing field.
- Keep a field's markup predictable.
- Reduce design breakage from content.
- Offer a restricted format on a form.
- Guide editors to the right format.
- Standardise markup across a content type.
- Limit formats on a webform-adjacent field.
- Prevent style attributes in a summary.
- Reduce editorial decisions per field.
- Support a design system's constraints.
