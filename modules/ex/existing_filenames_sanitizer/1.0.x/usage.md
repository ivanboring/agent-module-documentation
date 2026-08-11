<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Existing Filename Sanitizer provides Drush commands to sanitize existing (already-uploaded) filenames.

---

Existing Filename Sanitizer **provides Drush commands to sanitize existing filenames** — renaming
already-uploaded files whose names contain problematic characters (spaces, non-ASCII, unsafe characters) to clean,
safe names, updating references. It depends on core File and System.

Use it to clean up legacy filenames in bulk. It is a file-management/developer tool run via Drush. Security note:
sanitizing filenames is a **data-integrity operation** (it renames files and should update references) — run it
carefully, back up first, and verify references are updated so links don't break. Cleaner filenames also reduce
risk from special-character filenames in downstream processing. It has no access-control role. Run the sanitizer
via Drush.

---

- Sanitize existing filenames.
- Rename problematic uploaded files.
- Update references.
- Depend on core File + System.
- Serve file management (Drush).
- Clean legacy filenames.
- BE a data-integrity operation (renames files).
- Run carefully + back up + verify references.
- Reduce special-character-filename risk downstream.
- Have no access-control role.
- Run the sanitizer via Drush.
- Handle filename sanitizing.
- Sanitize files.
- Configure nothing (Drush).
- Rename files.
- Handle the references.
- Clean filenames.
- Fix filenames.
- Back up first.
- Provide filename sanitizing.
