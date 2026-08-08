<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Revisions Context adds contextual data attributes to the entity reference revisions field formatter.

---

Entity Reference Revisions Context adds contextual data attributes to the output of entity-reference-
revisions fields (used by Paragraphs) — attaching `data-*` attributes with context about the referenced
revision, useful for JS/behaviour hooks or front-end tooling that needs to know the referenced entity's
context. It depends on the Entity Reference Revisions module, in the Field types package.

Use it to expose referenced-revision context in markup. It is a content-display/formatter feature adding
attributes; the referenced entities render respecting their own access, and it has no access-control role.
Select the formatter with context on the ERR field.

---

- Add data attributes to ERR fields.
- Attach referenced-revision context.
- Support JS/front-end tooling.
- Depend on Entity Reference Revisions.
- Add data-* context attributes.
- Expose revision context in markup.
- Respect the references' access.
- Have no access-control role.
- Select the formatter with context.
- Handle ERR context.
- Add context attributes.
- Configure the formatter.
- Expose context.
- Handle the attributes.
- Add revision context.
- Configure context.
- Handle ERR formatting.
- Add attributes.
- Configure the field.
- Add contextual data.
