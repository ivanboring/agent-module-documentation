<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Decoupled Preview (simple_decoupled_preview) — agent index

Redirects Preview to a decoupled front end, passing the draft node via JSON:API; logs each
preview as a `preview_log_entity`.
Configure at `/admin/config/services/simple_decoupled_preview/settings`;
logs at `/admin/config/services/simple_decoupled_preview/preview/logs`.
Version **2.0.1**. Core `^10.2 || ^11`.

Dependencies: `node`, `jsonapi`, `rest`, **`restui`** (note: a UI module in the runtime dependency
list — enabling this brings the REST resource UI), and its own submodule
`simple_decoupled_preview_jsonapi` (exposes node previews on JSON:API).

Permissions: `administer simple decoupled preview` (**restrict**),
`administer preview log entity entities` (**restrict**), plus add/delete for log entities.

Config `simple_decoupled_preview.settings`: `preview_callback_url`, `bundles`, `includes`,
`delete_log_entities` (default true), `log_expiration` (default `86400`).

Classes: `Plugin/rest/resource/PreviewResource`, `PreviewLogger`,
`Entity/PreviewLogEntity` (+ ViewsData, ListBuilder), `PreviewLogEntityAccessControlHandler`.

**Deployment note to raise every time:** the payload carries **unpublished** content. The callback
URL must not be publicly guessable or unauthenticated, and the JSON:API preview resource's access
needs reviewing rather than assuming.