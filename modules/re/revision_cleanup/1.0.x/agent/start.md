<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Revision Cleanup (revision_cleanup) — agent index

Deletes old entity revisions on a schedule. No dependencies.
Core requirement `^8 || ^9 || ^10 || ^11`.
Settings at `/admin/config/system/revision-cleanup` (`administer site configuration`).

Key facts:
- Surface: `src/Services/` (deletion logic), `src/Plugin/` (scheduled execution),
  `revision_cleanup.services.yml`, `config/install`, `config/schema`. No permission of its own.
- **Deletion is irreversible, and revisions are often the audit trail.** Before the first run:
  - agree the retention rule as a policy, not a setting;
  - check whether revision history is a compliance requirement for this content;
  - test on a copy of production;
  - take a backup.
- Two interactions to check on a moderated site: the **default revision** must never be pruned,
  and **content moderation states live on revisions**, so pruning affects moderation history and
  can affect what "previous state" means.
- Pairs with `resave_all_nodes` (wave 60) in the opposite direction: that one *creates* a revision
  per node if the type is configured to, which is exactly the growth this module prunes.
