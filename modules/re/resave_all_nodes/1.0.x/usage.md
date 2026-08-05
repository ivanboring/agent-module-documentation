<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Resave All Nodes re-saves every node, or every node of one content type, through Batch API — the standard way to make presave logic that was added after the content was created actually take effect.

---

A great deal of Drupal behaviour hangs off `hook_ENTITY_TYPE_presave()` and friends: Pathauto generates aliases, Search API queues items, computed fields populate, Metatag defaults resolve, denormalised values get written. All of it runs on save, which means content created before the logic existed simply does not have it. The remedy is to touch every node, and doing that in a loop times out on any real site. This module supplies the batched version twice over: a form at `/admin/config/development/resave-all-nodes` with a content-type selector, and a Drush command for CI or long runs, sharing the batch code in `src/Batch`. Its single permission, `resave all nodes`, is marked **`restrict access: TRUE`**, which is right — a resave fires every presave and update hook on the site, can rewrite aliases, re-queue indexes, bump `changed` timestamps and generate a revision per node depending on the content type's settings. On a large site it is a heavy, wide-reaching operation, and the Drush path is the one to prefer.

---

- Generate path aliases for content created before Pathauto.
- Re-index content into Search API after a configuration change.
- Populate a computed field added later.
- Apply new metatag defaults to existing nodes.
- Re-run presave logic after deploying a hook.
- Refresh denormalised values across content.
- Trigger media usage tracking retroactively.
- Rebuild derived data for one content type only.
- Run the operation from Drush in CI.
- Avoid a timeout on a manual resave loop.
- Fix content missing a field default.
- Re-fire workflow transitions on save.
- Recalculate a rating or score field.
- Re-generate summaries after a formatter change.
- Restrict the operation to a trusted role.
- Reprocess content after a migration.
- Refresh entity reference denormalisation.
- Warm caches by touching every node.
