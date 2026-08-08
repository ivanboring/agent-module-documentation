<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Exclusive Boolean adds an option to boolean fields to ensure only one node of the same type can have the field checked at a time.

---

Exclusive Boolean adds an option to boolean fields that enforces exclusivity — ensuring only one node of
a given content type can have that boolean checked at any time (so checking it on one node automatically
unchecks it on the previous one). This suits "single featured item", "current homepage hero" or similar
one-at-a-time flags. It depends on core Field, in the Custom package.

Use it for single-selection boolean flags. It is a content-editing/data feature enforcing single-value
exclusivity across a content type; it manages the field's value and has no access-control role. Enable the
exclusive option on the boolean field.

---

- Ensure only one node has the boolean checked.
- Enforce boolean exclusivity per type.
- Auto-uncheck the previous node.
- Depend on core Field.
- Support single-featured flags.
- Handle current-hero style flags.
- Manage the field value.
- Have no access-control role.
- Enable the exclusive option.
- Enforce single selection.
- Handle exclusive booleans.
- Configure exclusivity.
- Support one-at-a-time flags.
- Handle the boolean field.
- Enforce one checked.
- Manage single flags.
- Configure the field.
- Handle featured flags.
- Enforce exclusivity.
- Manage exclusive booleans.
