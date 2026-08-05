<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference UUID stores a reference by the target's UUID instead of its numeric entity ID.

---

Entity IDs are local: node 42 on production and node 42 on staging are different nodes, and nothing about the number carries meaning between installations. That is fine while everything stays in one database and becomes a real problem the moment content moves — a migration renumbers everything, a content deployment carries an entity whose references point at IDs that mean something else on the target, a default-content export references nodes that do not exist yet, and a multisite arrangement sharing content has no stable way to name anything. UUIDs solve it because they are generated once and travel with the entity: the same content has the same UUID everywhere it exists, so a reference by UUID survives being moved. Version **3.0.1** on **`^11.1`** — Drupal 11.1 or later only, a tight requirement — in the Field types package. Three things worth knowing. **UUID lookups cost more than ID lookups**: a UUID is a 36-character string rather than an indexed integer, so a reference resolved per row in a large listing is measurably slower, and that is the trade being made for portability. **The target may not exist yet**, which is the point during a deployment and means rendering has to tolerate an unresolvable reference rather than erroring. And **core already uses UUIDs for exactly this** in `default_content` and in config entity dependencies, so the pattern is established rather than novel — this makes it available to ordinary content fields.

---

- Reference content that will be deployed.
- Survive a migration's renumbering.
- Share references between environments.
- Export default content with references.
- Reference entities across a multisite.
- Keep references stable after an import.
- Support a content deployment workflow.
- Reference content by a portable identifier.
- Avoid broken references after a rebuild.
- Support a staging-to-production content flow.
- Reference an entity before it exists.
- Keep references valid across databases.
- Support a decoupled content pipeline.
- Migrate references reliably.
- Reference content in a config export.
- Support a repeatable site build.
- Keep references intact after a restore.
- Reference entities from a fixture.
