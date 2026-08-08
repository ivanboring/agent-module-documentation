<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Delete Check checks all entity reference fields for usages of the entity about to be deleted.

---

Entity Reference Delete Check guards against **deleting an entity that is still referenced** — before an
entity is deleted it scans entity-reference fields for usages and warns (or blocks), so you don't silently
break content that points at the entity (dangling references). It ships an
`entity_reference_delete_check_paragraph_url` submodule.

Use it to catch referential-integrity problems at delete time. It is a data-integrity/administration feature;
it surfaces where an entity is used (which can reveal that referencing content exists) and it has no
access-control role. Enable it to check references on delete.

---

- Check references before delete.
- Warn/prevent deleting referenced entities.
- Avoid dangling references.
- Scan entity-reference fields for usages.
- Protect referential integrity.
- Ship a paragraph_url submodule.
- Surface where an entity is used.
- Have no access-control role.
- Enable the delete check.
- Handle delete checks.
- Check usages.
- Configure the check.
- Prevent broken references.
- Handle the check.
- Guard deletes.
- Check references.
- Handle integrity.
- Catch dangling refs.
- Configure deletion.
- Provide reference checks.
