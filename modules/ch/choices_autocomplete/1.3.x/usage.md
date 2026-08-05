<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Choices.js Autocomplete replaces the entity reference autocomplete widget with one built on Choices.js — a modern select/tagging library giving searchable dropdowns, removable tags and keyboard navigation.

---

Drupal's core entity reference autocomplete is a plain text field with a suggestion list: it works, and it shows selected values as text in the box, which for a multi-value field means an editor sees `Item A (12), Item B (7), Item C (3)` and edits it as a string. Choices.js renders selections as removable chips, keeps the search field separate, and handles keyboard interaction properly. This module wires that in: `choices_autocomplete.libraries.yml` and `public/js` supply the library integration, `src/Plugin` the widget, `config/schema` its settings, and `choices_autocomplete.api.php` documents extension points. It depends only on core, with a range of `^9 || ^10 || ^11`. Two points to weigh: it is a widget substitution, so the field type and stored data are unchanged and switching back is free; and because the interaction moves entirely into JavaScript, it should be checked with a keyboard and a screen reader before rollout — Choices.js is a well-regarded library, but any replacement of a native control inherits responsibility for the accessibility the native one provided.

---

- Show selected references as removable tags.
- Search a long reference list from a dropdown.
- Improve multi-value reference editing.
- Replace comma-separated autocomplete text.
- Give editors keyboard navigation in a picker.
- Reduce mistakes when removing a reference.
- Improve a taxonomy tagging field.
- Make a long vocabulary usable.
- Show entity labels as chips.
- Improve reference entry on mobile.
- Keep the field type unchanged.
- Switch widget per form display.
- Improve a content-relations field.
- Reduce editor confusion on multi-value fields.
- Speed up tagging.
- Style the picker to match an admin theme.
- Extend behaviour through the module's API.
- Support a site still on Drupal 9.
