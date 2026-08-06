<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple Decoupled Preview redirects the editor's Preview button to a decoupled front end, passing the unsaved node through JSON:API, and records every preview attempt as a `preview_log_entity`.

---

Preview is the hardest thing to keep working in a headless build. The editor is in Drupal, the rendering is somewhere else, and the content being previewed does not exist in any saved form the front end can fetch. This module's answer is to send the front end to a configured callback URL with enough context to request the draft through JSON:API, using the bundled `simple_decoupled_preview_jsonapi` submodule which exposes node previews on that API. Settings choose the callback URL, which bundles are covered, and which relationships to include in the payload.

The logging half is what makes it operable. Every preview creates a `preview_log_entity` with its own list builder, views data and access control handler, so when an editor says "preview is broken" there is a record of what was requested and when. Log entities expire — `log_expiration` defaults to 86400 seconds and `delete_log_entities` defaults to true — so the table does not grow without bound.

Permissions are properly separated: `administer simple decoupled preview` and `administer preview log entity entities` are both `restrict access: TRUE`, with distinct add/delete permissions for the log entities. Note the hard dependency on `restui` — a UI module for REST resources — which is unusual in a runtime dependency list and means enabling this brings the REST resource UI along with it.

The main thing to get right at deployment is the trust boundary between Drupal and the front end. The preview payload contains unpublished content, so whatever the callback URL points at must not be publicly guessable or unauthenticated, and the JSON:API preview resource needs its access reviewed rather than assumed.

---

- Preview unsaved content in a decoupled front end.
- Send an editor's Preview button to a Next.js preview route.
- Expose node previews through JSON:API.
- Limit preview support to selected content types.
- Include referenced entities in the preview payload.
- Log every preview request for troubleshooting.
- Expire preview log entries automatically.
- List and filter preview logs in a view.
- Diagnose why a preview failed for an editor.
- Keep preview configuration in exported config.
- Separate who may configure preview from who may read its logs.
- Give a front-end team a stable preview contract.
- Support draft mode in a static-generated site.
- Preview a translation before publishing it.
- Review access on the JSON:API preview resource before go-live.
- Retire a bespoke preview integration.