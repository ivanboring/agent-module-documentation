<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Nid adds a field to the node creation form that lets a permitted user choose the node's ID, rather than taking the next value from the sequence.

---

This exists for one real problem: preserving URLs and references when content moves into Drupal from elsewhere. If a legacy system's article 4217 is linked from a thousand external pages and its Drupal URL must remain `/node/4217`, the node ID has to be set rather than assigned. Migrate can do this, but for a handful of nodes recreated by hand, or content restored after a mistaken deletion, a field on the form is the proportionate tool. The module is four files, with one permission — **`custom_nid access`**, marked `restrict access: true`. That restriction is not decorative. Node IDs are the primary key: choosing one can collide with an existing node, can create gaps or jump the sequence so that future auto-assigned IDs behave unexpectedly, and any system that assumed IDs are monotonic or dense will be surprised. It is a tool for a migration window, not a permission to leave granted. Core requirement is `^9.2 || ^10 || ^11`, and the version numbering (11.0.0) tracks the core major rather than semantic versioning.

---

- Preserve legacy node IDs during a migration.
- Keep /node/4217 pointing at the same article.
- Recreate a deleted node with its original ID.
- Match IDs with an external system.
- Restore content after an accidental deletion.
- Keep inbound links working after a rebuild.
- Recreate a small set of nodes by hand.
- Align node IDs across environments.
- Fix a node created with the wrong ID.
- Support a phased migration.
- Keep references from a legacy database valid.
- Avoid a full migration for a few nodes.
- Reproduce a production node on staging.
- Maintain stable identifiers for an API consumer.
- Restrict ID assignment to a migration role.
- Preserve IDs referenced in printed material.
- Rebuild a site section without breaking links.
- Test behaviour at a specific node ID.
