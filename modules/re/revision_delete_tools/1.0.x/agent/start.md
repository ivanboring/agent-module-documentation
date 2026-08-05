<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Revision Delete Tools (revision_delete_tools) — agent index

Queued, chunked bulk deletion of entity revisions via Drush + cron. No dependencies, no routes,
no permissions, no config, no UI. Installed release **1.0.0-beta3**.

> **Irreversible.** Deleted revisions are gone; there is no confirmation step and no dry-run.
> Take a database backup before the first run on production.

Key facts:
- Drush command **`rdt:remove-revisions`** (`Drush\Commands\RemoveRevisionsCommands`, attribute
  style):

  | Argument / option | Meaning |
  |---|---|
  | `entityType` | e.g. `node`, `media` — optional; omitted = all revisionable types |
  | `bundle` | e.g. `page` — optional |
  | `entityId` | a single entity — optional |
  | `--keep` | revisions to retain, default **3** (`RemoveRevisions::REVISIONS_TO_KEEP`) |

  ```bash
  drush rdt:remove-revisions                        # everything revisionable
  drush rdt:remove-revisions node                   # all node revisions
  drush rdt:remove-revisions node page --keep=5     # page nodes, keep 5
  drush rdt:remove-revisions node page 123 --keep=3 # one node
  ```

  `--keep` below 1 is rejected ("At least the default revision must be kept"), and an entity type
  that is not revisionable is refused up front via
  `RemoveRevisionsService::getRevisionableEntityTypes()`.
- **The command only queues.** Deletion happens in the `RemoveRevisions` **queue worker**
  (`@QueueWorker`, `cron = {"time" = 60}`), which processes revisions in chunks of
  `REVISION_CHUNK_SIZE = 500`. Nothing is deleted until cron runs (or you run the queue yourself):

  ```bash
  drush queue:list
  drush queue:run <queue name>
  ```

- Service `revision_delete_tools.remove_revisions` (`Services\RemoveRevisionsService`):
  `queueRevisionsByType()`, `queueRevisionsByBundle()`, `queueRevisionsByEntityId()`,
  `getEntityIds()`, `getBundleNames()`, `getRevisionableEntityTypes()` — use these to build a
  custom retention policy.

Because the work is queued, a mistake is only partly recoverable: clearing the queue before cron
runs prevents the pending deletions, but anything already processed is gone.
