<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Data allows storing custom data per entity.

---

Entity Data provides an **API to store arbitrary custom data per entity** — a key/value-style store keyed
by entity, so modules can attach extra data to an entity without adding fields or altering its schema. It
requires PHP 8.1, in the Entity package.

Use it as a developer store for per-entity side data. It is a developer/API module — the data it stores is
whatever calling code puts there (no UI of its own), so access/sensitivity is the responsibility of the code
that uses it; entity_data itself has no content or access role. Use its service to read/write per-entity
data.

---

- Store custom data per entity.
- Provide a per-entity key/value store.
- Attach extra data without fields.
- Avoid schema changes.
- Require PHP 8.1.
- Serve developers.
- Leave data sensitivity to calling code.
- Have no content/access role.
- Use its service to read/write.
- Handle per-entity data.
- Store side data.
- Configure nothing (API).
- Attach entity data.
- Handle the store.
- Store key/value data.
- Read entity data.
- Handle the API.
- Store extra data.
- Use the service.
- Provide entity data storage.
