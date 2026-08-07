<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
File Inspector scans the file system for files Drupal does not know about, and lets an administrator inspect them, delete them, or import them into the media library.

---

Every long-lived Drupal site accumulates unmanaged files: uploads from a module that has since been removed, files restored from a backup, artefacts of a migration, things copied in over SFTP. Drupal has no idea they exist, so they never appear in the media library, are never cleaned up, and quietly become most of the site's storage.

Finding them means walking the filesystem and comparing against `file_managed`, which is what this does — with configurable excluded folders, MIME types and stream wrappers, so the scan can skip the directories that are legitimately outside Drupal's model.

**The three permissions are separated exactly right, and the separation is the point.** `view file inspector` sees the report, `import unmanaged files` brings a file into the media library, and `administer file inspector` (`restrict access: true`) configures the scan. Those are three different levels of trust and it would have been easy to collapse them into one.

**Two things to weigh before granting `view file inspector`.** The report is a **directory listing of the site's file system**, including private files, and knowing that a file exists at a path is often most of the way to reading it — for `public://` it is all of the way. And the module can **delete**, which on a filesystem containing things Drupal does not track is irreversible in the way a content deletion is not: there is no revision, no unpublish, and no reference to tell you what the file was for. Scan and inspect first, and treat a bulk delete as a backup-first operation.

---

- Find files Drupal does not know about.
- Discover storage consumed by orphaned uploads.
- Import an unmanaged file into the media library.
- Clean up after a removed module.
- Audit files left by a migration.
- Exclude folders from the scan.
- Exclude MIME types or stream wrappers.
- Separate viewing from importing from configuring.
- Restrict who can see the file listing.
- Consider private files appearing in the report.
- Back up before a bulk delete.
- Recognise that unmanaged deletion is irreversible.
- Inspect a file before deleting it.
- Reduce a site's storage footprint.
- Run the scan as a batch job.
- Investigate unexplained storage growth.
