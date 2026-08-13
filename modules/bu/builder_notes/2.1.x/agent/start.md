<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Builder Notes (builder_notes) — agent index

**Injects a 'Builder Notes' textarea into config-entity edit forms and stores the text as a third-party setting on the entity.**

- **Version:** 2.1.x
- **Core:** ^8 || ^9 || ^10 || ^11
- **Dependencies:** field_ui
- **Mechanism:** `builder_notes_form_alter()` adds a notes `details`/`textarea` (in `additional_settings`) to these config forms: entity form/view display edit, field config/storage config, node type, user role, image style, responsive image style. An `#entity_builders` callback saves it via `setThirdPartySetting('builder_notes','notes', …)`.
- **Routes / permissions / services:** none of its own; visibility follows the existing admin/Field-UI permissions for each form.
- **Security:** no routes, no anonymous surface, no mutating endpoints; notes are only editable by users who already administer the underlying config entity.
