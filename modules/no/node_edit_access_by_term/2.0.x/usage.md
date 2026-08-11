<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node Edit Access by Term restricts node edit access by taxonomy term using user/role fields on terms.

---

Node Edit Access by Term **restricts node edit access by taxonomy term** — each taxonomy term gets a user/role
autocomplete field listing who may edit nodes tagged with it, so editing a node is limited to the users/roles
allowed by its terms. It provides its own permissions.

Use it to scope which editors can edit which term-tagged content. Be aware of a **critical implementation limitation**
that means it is **not a reliable access control**: the restriction is enforced entirely in
`hook_form_alter()` — when the editor is neither in the term's allowed roles nor allowed users it
`throw`s an `AccessDeniedHttpException`, blocking the **node edit form UI**. But the module implements **no
`hook_node_access()` / `hook_ENTITY_TYPE_access()`**, so the restriction only applies to that form. Any edit path
that doesn't build the node form **bypasses it**: **JSON:API `PATCH`** (core, often enabled), **REST** updates,
**Quick Edit** inline editing, **Views Bulk Operations** field modification, and programmatic/migration edits all
succeed for a user who holds core edit permission for the node type. So the term restriction is UI-only and gives a
**false sense of protection** (this is recorded as a campaign security finding). Until it is fixed to enforce via
`hook_node_access()`, do not rely on it where any of those alternate edit channels are enabled; enforce
sensitive edit restrictions with a proper entity-access mechanism. Configure the term allow-lists.

---

- Restrict node edit by taxonomy term.
- Use user/role allow-lists on terms.
- Limit editing to allowed users/roles.
- Provide its own permissions.
- Serve access control (intent).
- Scope editors by term.
- ENFORCE only in hook_form_alter (throws on the edit form) with NO hook_node_access.
- BE bypassed by JSON:API/REST PATCH, Quick Edit, VBO, programmatic edits.
- GIVE a false sense of protection (UI-only, not a real access control).
- Not be relied on where alternate edit channels are enabled (campaign finding).
- Need a hook_node_access() fix to enforce everywhere.
- Configure the term allow-lists.
- Handle term-based edit restriction.
- Restrict editing.
- Configure the allow-lists.
- Gate the edit form.
- Handle the terms.
- Limit editors.
- Enforce via node access (fix).
- Provide term-based edit restriction (UI-only).
