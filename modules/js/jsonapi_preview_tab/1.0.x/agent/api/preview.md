<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# JSON:API preview routes and access

**Supported entity types** (hard-coded in both the route subscriber and the
local-task deriver): `media`, `menu_link_content`, `node`, `taxonomy_term`.

**Route:** `entity.<type>.jsonapi_preview` → path `/<type>/{<type>}/jsonapi-preview`
→ `JsonapiPreviewTabController::build`. Added as an admin route with a single
requirement: `_permission: access jsonapi preview tab`.

**Controller behaviour:**
- Loads the entity from the route parameter.
- Builds a link to the canonical JSON:API URL
  (`jsonapi.<type>--<bundle>.individual`, by uuid).
- Serializes the entity with `jsonapi_extras`'
  `EntityToJsonApi::serialize()`, pretty-prints it and runs it through the
  `Highlight\Highlighter` for display in a `<pre><code>` block.

**Access caveat (important):** the route enforces only the coarse
`access jsonapi preview tab` permission. It does **not** add
`_entity_access: '<type>.view'`, and `build()` serializes the loaded entity
without an access check. The JSON:API normalizer applies field access, so
restricted fields are dropped, but entity-level view access (e.g. unpublished
content) is not enforced. Anyone with the permission can therefore read the
JSON:API representation of any node/media/term/menu link, published or not.

**Hardening:** add an `_entity_access` requirement to the generated routes (in
a route subscriber) if untrusted roles will hold the permission.
