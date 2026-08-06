<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Clean Files Entity finds files that are no longer referenced by anything and deletes them, matched by a filename template.

---

Drupal's file storage grows monotonically and nothing prunes it. A file uploaded and then removed from the field becomes **temporary** and is collected by core after six hours — but only if the reference count reached zero, which it frequently does not: a file referenced by a deleted revision, by an unpublished translation, by a paragraph that was replaced, or by a migration that created references and was rolled back, stays **permanent** and unreferenced forever. On a site with a few years of editorial history the files directory contains a great deal that nothing points at, taking space in the filesystem, in every backup, and in the time it takes to sync an environment. A cleanup pass is genuinely useful maintenance. Version **2.0.0** on core `^10 || ^11`, in the Media package. **This deletes data, so the cautions are the substance rather than an afterthought.** "No longer used" is a judgement, and Drupal's usage tracking is not complete: a file referenced only from a **body field's HTML**, from a **configuration object**, from a **custom table**, or by an external system linking to its URL, has a usage count of zero and is not unused. **Take a backup and run in a reporting mode first**, and treat a large deletion list as a sign that something is not tracking usage rather than as a large win. Two further points: **a filename template is a blunt selector**, so a pattern intended to catch generated derivatives can match uploads that happen to share a naming convention; and **deleted files break existing links**, including ones in emails already sent and documents already circulated, which the usage table cannot know about.

---

- Delete files nothing references.
- Reclaim space in the files directory.
- Clean up after a rolled-back migration.
- Remove orphaned image derivatives.
- Reduce backup size.
- Clean up files from deleted revisions.
- Speed up environment syncs.
- Remove files left by replaced paragraphs.
- Audit unreferenced files.
- Clean up a long-lived site's storage.
- Remove temporary files never collected.
- Reduce storage costs.
- Clean up after bulk content deletion.
- Remove files by a naming pattern.
- Tidy an inherited site's uploads.
- Reduce file count before a migration.
- Clean up test uploads.
- Maintain a media-heavy site.
