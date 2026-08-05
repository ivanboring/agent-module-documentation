<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Pipewrench lets base fields — the built-in ones like a node's Title — carry a description, which Field UI does not otherwise allow.

---

Drupal distinguishes configurable fields, which a site builder adds and can give a label and help text, from base fields, which are defined in code by the entity type. Title is a base field, and that is why the node form's Title has no help text: there is nowhere in Field UI to put it. In practice this is exactly where guidance is most wanted — "keep under 60 characters for search results", "start with the service name" — and the usual workaround is a form alter in a custom module, written once per project. This module supplies it generically: `src/Hook` and `src/Plugin` extend the base field configuration UI so a description can be set and shown. It depends on core `node` and `field`, has no routes, permissions or configuration pages of its own, and targets core `^10 || ^11`. The release is **1.0.0-alpha1**, an alpha. It is a small editorial-quality improvement of the same family as `fieldhelptext` (wave 61), which bulk-edits descriptions on configurable fields — the two are complementary rather than overlapping, since they address different halves of the same gap.

---

- Add help text to a node's Title field.
- Tell editors how long a title should be.
- Give guidance on title conventions.
- Document a base field's purpose.
- Avoid a custom form alter for help text.
- Improve a content type's editing experience.
- Explain a naming convention at the point of entry.
- Reduce inconsistent titles.
- Support editors on an unfamiliar content type.
- Add SEO guidance to the title field.
- Document a required title format.
- Improve onboarding for new editors.
- Reduce editorial review comments.
- Give base fields parity with configurable fields.
- Support a style guide in the UI.
- Reduce questions about field purpose.
- Add guidance without custom code.
- Complement bulk help-text editing.
