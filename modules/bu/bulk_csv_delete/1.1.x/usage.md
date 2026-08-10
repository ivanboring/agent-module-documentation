<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Bulk CSV Delete provides a Drush command to bulk delete entities.

---

Bulk CSV Delete provides a **Drush command to bulk-delete entities listed in a CSV file** — reading entity
ids from a CSV and deleting them in efficient batches, for large-scale cleanup. It is in the Administration
package.

Use it for bulk entity cleanup from the command line. It is a **Drush/CLI administration tool**: it exposes no
web route (so it is inherently limited to whoever has shell/Drush access — a fully-trusted operator), and it
calls `$storage->delete()` on the ids directly, **without a per-entity delete-access check** — which is fine for
a CLI admin tool (CLI access already implies full privilege) but means it is a blunt instrument: it will delete
whatever ids you give it. Back up first and double-check the CSV/entity type. Do not attempt to wrap it in a
web-exposed form without adding permission + per-entity access checks. It has no web-facing access surface. Run
the Drush command with your CSV.

---

- Bulk-delete entities from a CSV.
- Read ids from a CSV file.
- Delete in efficient batches.
- Expose NO web route (Drush/CLI only).
- Limit use to trusted shell/Drush operators.
- Serve large-scale cleanup.
- Call storage->delete() by raw id.
- Do NO per-entity delete-access check (blunt CLI tool).
- Back up + verify the CSV first.
- Not wrap it web-exposed without perms/access checks.
- Have no web-facing access surface.
- Run the Drush command.
- Handle bulk delete.
- Delete entities.
- Configure the CSV.
- Delete in bulk.
- Handle the command.
- Clean up entities.
- Verify before deleting.
- Provide CSV bulk delete.
