<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Field Fetch creates a field that references fields on other entities.

---

Entity Field Fetch provides a **field that fetches/mirrors field values from other entities** — an entity
can display a field value pulled from a different (configured) entity, e.g. mirror a value from a referenced
node or paragraph. It is in the Field types package.

Use it to surface another entity's field value on a host entity. It is a fields/content-display feature, and it
carries an **important access caveat**: the fetch loads the source entity and returns its field value **without
checking the source entity's view access or the field's access** — so the mirrored value is shown to anyone who
can view the **host** entity, regardless of whether they could view the **source**. Do **not** use it to mirror
fields from **access-restricted or unpublished** entities onto a more-public host, or that restricted data will
leak through the host; only mirror fields whose visibility matches (or is broader than) the host's. It has no
access-control role of its own. Configure the fetch source/field.

---

- Mirror a field value from another entity.
- Fetch fields cross-entity.
- Surface a source entity's field.
- Serve content display.
- Reference other entities' fields.
- Configure the fetch source.
- NOT check the source entity's view/field access.
- Show the value to whoever can view the HOST.
- Not mirror restricted/unpublished fields onto public hosts.
- Only mirror fields whose visibility matches the host.
- Have no access-control role of its own.
- Configure the source/field.
- Handle field fetching.
- Fetch fields.
- Configure the field.
- Mirror values.
- Handle the field.
- Pull values.
- Avoid leaking restricted data.
- Provide cross-entity field fetch.
