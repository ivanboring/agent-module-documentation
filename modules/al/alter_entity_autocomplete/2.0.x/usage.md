<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alter Entity Autocomplete enhances entity reference autocomplete fields by allowing direct input of entity IDs, emails, URLs or path aliases for core entity types.

---

Alter Entity Autocomplete enhances entity-reference autocomplete fields — letting editors reference an
entity by typing its **ID, email address, URL or path alias** directly (for Node, User, Taxonomy Term)
instead of only the autocomplete label, which speeds up referencing known entities. It is configured at
`alter_entity_autocomplete.admin_settings`.

Use it to make entity referencing more flexible. It is a content-editing/reference-widget feature. One thing
to keep in mind: the standard autocomplete filters suggestions by the entity's access (you only see what you
can access) — allowing direct **ID** input means an editor could name an entity by ID that the autocomplete
wouldn't have suggested; the reference field's own **selection/access validation still applies on save** (a
reference to an inaccessible entity should be rejected by the field's referenceable-entities check), but
verify that behaviour for your fields if the referenced set is access-sensitive. It has no access-control
role. Configure which entity types allow direct input.

---

- Enter entity IDs/emails/URLs/aliases directly.
- Reference by ID vs the label.
- Support Node/User/Term.
- Configure at the admin settings.
- Speed up referencing known entities.
- Enhance reference autocompletes.
- Know autocomplete filters by access, direct-ID doesn't suggest.
- Rely on the field's selection/access validation on save.
- Verify behaviour for access-sensitive fields.
- Have no access-control role.
- Configure which types allow direct input.
- Reference entities flexibly.
- Handle direct input.
- Configure the autocomplete.
- Reference by URL/alias.
- Enhance autocompletes.
- Handle reference fields.
- Configure direct input.
- Reference by email.
- Speed up referencing.
