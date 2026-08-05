<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Taxonomy Term Revision (taxonomy_term_revision) — agent index

Revision UI for taxonomy terms: revisions listing, view/revert/delete, a visible revision log
message, and content moderation support. No config, no schema, no Drush. Requires core `taxonomy`.

Key facts:
- **Every term save creates a revision.** `hook_entity_presave()` calls
  `setNewRevision(TRUE)`, `setRevisionUserId(current user)` and
  `setRevisionCreationTime(REQUEST_TIME)` for *any* `TermInterface`. There is no per-vocabulary
  opt-out — expect term revision tables to grow on sites that save terms programmatically
  (migrations, imports, cron sync).
- `hook_entity_base_field_info_alter()` exposes core's `revision_log_message` on terms: label
  *Revision log message*, revisionable, default `''`, form widget `string_textarea`
  (weight 25, 4 rows).
- `hook_entity_type_alter()` sets the `taxonomy_term` entity's **`moderation` handler** to
  `Drupal\content_moderation\Entity\Handler\ModerationHandler` — core deliberately leaves this
  unset, so this module is what makes terms moderatable. Enabling it changes behaviour for any
  workflow that targets taxonomy terms.
- Routes:

  | Route | Path | Requirement |
  |---|---|---|
  | `taxonomy_term_revision.all` | `/taxonomy/term/{taxonomy_term}/revisions` | `view term revision list` |
  | `taxonomy_term_revision.view` | `/taxonomy/term/{taxonomy_term}/revision/{revision_id}` | `_entity_access: taxonomy_term.view` |
  | `taxonomy_term_revision.revert` | `…/revisions/revert/{id}` | `revert term revision` |
  | `taxonomy_term_revision.delete` | `…/revisions/delete/{id}` | `delete term revision` |

- Permissions: `view term revision list`, `view term revision data`, `revert term revision`,
  `delete term revision`. **Note** the view route uses entity view access, *not*
  `view term revision data` — so anyone who can view the term can view an individual revision by
  id; the permission gates other paths in the code.
- Classes: `Controller\TermRevisionController` (`getRevisions()`, `revisionShow()`,
  `revisionPageTitle()`), `Form\TermRevisionRevertForm`, `Form\TermRevisionDeleteForm` (both
  `ConfirmFormBase`).

```bash
drush role:perm:add content_editor 'view term revision list'
drush role:perm:add content_editor 'revert term revision'
# How many term revisions exist?
drush sqlq "SELECT COUNT(*) FROM taxonomy_term_field_revision"
```
