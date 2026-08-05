<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Edit Link puts an edit link next to a selected entity in a reference field's widget, so the referenced item can be opened for editing from the form that references it.

---

The friction is small, constant and cumulative. An editor working on an article selects a related term, an author profile or a linked page, notices something wrong with it, and has to leave the form — losing unsaved work unless they save first — open the admin listing, search for the item, edit it, and navigate back. On a content model with several reference fields per node that happens many times a day. A link beside the reference removes the navigation entirely, and opening it in a dialog removes the loss of context as well. Version **1.1.6** on core `^9 || ^10 || ^11`, configured at `/admin/config/entity-reference-edit-link` behind `administer site configuration`. Two things to expect. **The link must respect the referenced entity's own access**, so a reference to something the editor may see but not edit should not offer an edit link — and if it does, the resulting access-denied page is a usability problem rather than a security one, since the entity form enforces its own access regardless. And **editing the referenced entity changes it everywhere**, which is exactly what reference fields are for and exactly what an editor may not expect from a link inside "their" form: a term edited here is edited for every node using it. That is worth saying in editorial guidance rather than assuming, because a link that looks local and acts globally is how shared content gets damaged.

---

- Edit a referenced term from a node form.
- Fix a linked page without leaving the form.
- Open a referenced entity in a dialog.
- Reduce navigation while editing.
- Edit an author profile from an article.
- Correct a referenced item quickly.
- Avoid losing unsaved work.
- Speed up editorial workflows.
- Edit a media item from the reference.
- Reduce clicks in a content model.
- Fix a typo in a referenced entity.
- Support a reference-heavy content type.
- Edit a related product from an order.
- Improve editorial efficiency.
- Access a referenced entity's form.
- Edit a taxonomy term inline.
- Reduce context switching.
- Support a complex content structure.
