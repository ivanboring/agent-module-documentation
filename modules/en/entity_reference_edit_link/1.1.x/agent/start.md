<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Reference Edit Link (entity_reference_edit_link) — agent index

Adds an **edit link beside a selected entity** in a reference field's widget. Configure at
`/admin/config/entity-reference-edit-link` behind `administer site configuration`.
Version **1.1.6**. Core requirement `^9 || ^10 || ^11`.

**The friction it removes is small, constant and cumulative:** leave the form (losing unsaved work
unless you save first), open the admin listing, search, edit, navigate back — many times a day on a
content model with several reference fields per node.

**Two things to expect:**
1. **The link should respect the referenced entity's own access.** A reference to something the
   editor may view but not edit should not offer an edit link. If it does, the resulting
   access-denied page is a **usability** problem rather than a security one — the entity form
   enforces its own access regardless.
2. **Editing the referenced entity changes it everywhere.** That is what reference fields are for,
   and it is not what an editor expects from a link inside "their" form — a term edited here is
   edited for every node using it. **Put this in editorial guidance**: a link that looks local and
   acts globally is how shared content gets damaged.
