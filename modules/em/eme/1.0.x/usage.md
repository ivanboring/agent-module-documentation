<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Migrate Export takes content that exists on a site and writes out a **migration module** that recreates it — turning "these fifty nodes should exist on every environment" into code rather than a manual task.

---

Getting content into a new environment has three usual answers, all imperfect: a database copy (too much, and wrong for a fresh site), Default Content (good, but a distinct format with its own limits), or hand-writing migrations (correct and slow). This module generates the third automatically. You choose entities through a form at `/admin/config/development/entity-export`, optionally building a **collection** at `.../collection` to gather related content, and the module writes a module directory containing migration YAML and the data files — which can then be committed, reviewed, and run with the ordinary migrate tooling on any environment. `src/Export`, `src/Utility`, `InterfaceAwareExportBatchRunner` and Drush command support carry the work. Both permissions — `export content` and `manage content export settings` — are marked **`restrict access: TRUE`**, correctly: exporting content extracts it wholesale, so the permission is effectively read-everything-and-take-it-away, and it should be treated as a data-egress control rather than a convenience. Requirements are core `^8.9 || ^9 || ^10 || ^11`; `migrate_plus` appears in `require-dev`, so check it on the target site.

---

- Turn existing content into a migration module.
- Ship reference content with a codebase.
- Recreate a set of nodes on a fresh environment.
- Export content for a client handover.
- Review content changes in a merge request.
- Seed a new site with starter content.
- Move content between environments reproducibly.
- Avoid a database copy for a few entities.
- Export a collection of related entities.
- Generate migrations rather than writing them.
- Rebuild demo content after a reset.
- Version-control structural content.
- Provide test fixtures from real content.
- Export taxonomy alongside nodes.
- Run the generated migration from Drush.
- Recreate content during CI.
- Hand content to another team as code.
- Migrate a site section into a new build.
