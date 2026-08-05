<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Revision Cleanup deletes old entity revisions on a schedule, so a site that has been creating a revision on every save for several years stops carrying the whole history in its database.

---

Revisions are cheap individually and expensive in aggregate: a content type that creates one per save, edited daily for five years, leaves close to two thousand rows per node across the revision tables, and on a large site that becomes the majority of the database — slowing backups, restores and the entity queries that join those tables. Core offers no retention policy, so the options are a custom script or a module. This one supplies a settings form at `/admin/config/system/revision-cleanup` gated by `administer site configuration`, with `src/Services` holding the deletion logic and `src/Plugin` the scheduled execution. There are no dependencies beyond core and the range is wide, `^8 || ^9 || ^10 || ^11`. What matters when adopting it is not the mechanics but the policy: **revision deletion is irreversible**, and revisions are frequently the only record of who changed what — which can be a compliance requirement, not merely a convenience. Establish the retention rule deliberately, test it on a copy of production, and keep a backup from before the first run. Note also that a default revision must never be deleted, and that content moderation states live on revisions, so pruning interacts with moderation history.

---

- Reduce database size on a long-lived site.
- Delete revisions older than a retention period.
- Keep a fixed number of revisions per node.
- Speed up backups and restores.
- Reduce revision table bloat.
- Apply a retention policy to content history.
- Clean up after a bulk resave.
- Schedule cleanup rather than running it by hand.
- Free space before a migration.
- Reduce query time on revision joins.
- Prune revisions on selected content types.
- Meet a data-minimisation obligation.
- Shrink a database dump for local development.
- Remove revisions from an abandoned workflow.
- Control growth on a high-edit site.
- Reduce hosting storage costs.
- Prepare a site for an upgrade.
- Enforce a documented retention rule.
