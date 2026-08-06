<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Clean Files Entity (clean_files_entity) — agent index

Finds files nothing references and **deletes** them, matched by a **filename template**. Package
`Media`. Version **2.0.0**. Core requirement `^10 || ^11`.

**Why the need is real:** Drupal's file storage grows monotonically. Core collects **temporary**
files after six hours, but only where the reference count reached zero — and files referenced by a
**deleted revision**, an **unpublished translation**, a **replaced paragraph** or a **rolled-back
migration** stay **permanent and unreferenced forever**, occupying the filesystem, every backup, and
the time an environment sync takes.

**This deletes data, so the cautions are the substance:**
1. **"No longer used" is a judgement, and Drupal's usage tracking is incomplete.** A file referenced
   only from a **body field's HTML**, a **configuration object**, a **custom table**, or by an
   **external system linking to its URL**, has a usage count of zero and **is not unused**.
2. **Back up, and run in a reporting mode first.** Treat a **large deletion list as a sign that
   something is not tracking usage**, not as a large win.
3. **A filename template is a blunt selector** — a pattern meant for generated derivatives can match
   uploads sharing a naming convention.
4. **Deleted files break existing links**, including in emails already sent and documents already
   circulated. The usage table cannot know about those.
