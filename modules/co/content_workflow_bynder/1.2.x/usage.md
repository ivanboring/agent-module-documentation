<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Workflow (by Bynder) migrates content items from the Content Workflow platform into Drupal.

---

Content Workflow (by Bynder) imports content items from the Content Workflow platform (formerly GatherContent) into your Drupal site, mapping the platform's structured content to Drupal nodes, taxonomy, media and menu links via the Migrate framework. It streamlines moving editorial content produced in Content Workflow into Drupal.

Import runs through Migrate (migrate_plus/migrate_tools) and pulls from the Content Workflow API, so store API credentials securely (env-backed) and import from trusted projects. Gated by `administer content_workflow_bynder`; depends on many core modules plus migrate_plus/migrate_tools. Supports Drupal 9.2+, 10, and 11.

---

- Import from Content Workflow (Bynder).
- Map platform content to Drupal.
- Create nodes/taxonomy/media/menus.
- Use the Migrate framework.
- Pull from the Content Workflow API.
- Store API credentials securely.
- Keep credentials env-backed.
- Import from trusted projects.
- Gate with `administer content_workflow_bynder`.
- Depend on migrate_plus/migrate_tools.
- Depend on core node/taxonomy/media/menu.
- Support Drupal 9.2+, 10, and 11.
- Streamline editorial import.
- Migrate structured content.
- Handle GatherContent legacy.
- Map fields to entities.
- Run content imports.
- Integrate with an external CMS workflow.
