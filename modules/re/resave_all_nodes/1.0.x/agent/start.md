<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Resave All Nodes (resave_all_nodes) — agent index

Batch-resaves all nodes, or all nodes of one type. Depends on core `node`.
Core requirement `^8.8 || ^9 || ^10 || ^11`.
Form at `/admin/config/development/resave-all-nodes`; Drush command in `src/Commands`
(registered via `drush.services.yml`).

Key facts:
- Single permission **`resave all nodes`**, marked `restrict access: TRUE`. Correct: a resave
  fires every `presave`/`update` hook on the site.
- Side effects to warn about before running it:
  - path aliases may be regenerated (Pathauto), changing URLs;
  - Search API and other queues get re-populated;
  - `changed` timestamps move — pair with `preserve_changed_ui` (also documented in this wave)
    if that matters;
  - **a new revision per node** if the content type creates revisions by default;
  - anything subscribing to entity update events fires, including outbound integrations.
- Prefer the Drush command over the form on any site with real volume; both use Batch API, but
  only Drush avoids the browser round trip.
- The `.info.yml` reports the legacy `version: '8.x-1.0-beta2'` — this is a **beta** release.
