<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Clean Filename sanitizes file upload names to safe, clean values.

---

Clean Filename ensures new file uploads get clean filenames — sanitizing/transliterating upload names to safe, consistent values (removing special characters, spaces, diacritics) and can rename existing files, improving URL cleanliness and avoiding filename issues.

Administration is gated by `administer clean filename`. It's a file-handling utility; depends on core `file`, `field`, and `system`; supports Drupal 10 and 11.

---

- Clean uploaded filenames.
- Sanitize/transliterate names.
- Remove special chars/spaces/diacritics.
- Rename existing files.
- Improve URL cleanliness.
- Avoid filename issues.
- Gate admin with `administer clean filename`.
- Depend on core `file`, `field`, `system`.
- Support Drupal 10 and 11.
- Configure the cleaning.
- Handle uploads.
- Aid file management.
- Rename files
- Sanitize names
- Support consistent names.
- Clean files.
- Handle filenames.
- Improve uploads
