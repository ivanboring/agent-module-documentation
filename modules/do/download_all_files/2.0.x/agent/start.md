<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Download All Files (download_all_files) — agent index

Field formatter and block that zip an entity's file field on demand. Depends on core `file`.
Route: `/download_all_files/{entity_type}/{entity}/{field_name}` with
`_custom_access: DownloadController::access`. Version **2.0.2**. Core requirement `^10.2 || ^11`.

**The idea is right** — the alternative sites reach for is a second, manually maintained zip that
immediately falls out of step with the field it duplicates.

**Three defects in 2.0.2, all found on review; none hard to fix, all present:**
1. **`{field_name}` is unvalidated** beyond `$entity->hasField()`. Naming a non-file field on any
   viewable entity reaches `$file_storage->load($file['target_id'])` with NULL —
   **verified anonymously**: `HTTP 500, AssertionError: Cannot load the "file" entity with NULL ID`.
   A cheap unauthenticated way to flood the error log, and a stack trace where display is on.
2. **No field-level access check.** `access()` tests `$entity->access('view')`; the controller then
   reads whatever field it was handed. `hook_entity_field_access()` is never consulted. The
   per-file `$file_obj->access('view')` saves the **private**-scheme case (core consults referencing
   entities) but **not the public** one — public files are not access-controlled. So a field hidden
   from this user, holding public files, is downloadable.
3. **Zips are never deleted**, written to
   `temp://daf_zips/{entity_type}/{id}-{lang}-{field}-{uid}.zip` — a predictable path and unbounded
   growth. Directly fetchable if `file_temp_path` is inside the public files directory.

Fixes: check the field's type and `->access('view')` before reading; delete or GC the archive.
