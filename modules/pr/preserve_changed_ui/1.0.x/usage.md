<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Preserve Changed Timestamp UI adds a checkbox to the node form that stops a save from updating the `changed` timestamp — the fix for a one-character typo correction pushing an article back to the top of every "recently updated" listing.

---

The `changed` field drives more than it appears to: "latest updates" views sort on it, sitemaps publish it as `lastmod`, feeds order by it, search indexers use it to decide what to re-crawl, and caches key on it. So a trivial edit has consequences out of all proportion to the change, and the usual workarounds — editing the database, or a `hook_node_presave()` that guesses — are worse than the problem. This module surfaces the decision as an explicit editorial choice. `preserve_changed_ui.module` adds the checkbox, `src/Form/SettingsForm` at `/admin/config/system/preserve-changed-ui` controls where it appears, and two permissions govern it: `administer preserve_changed_ui configuration` for the settings, and **`preserve_changed_ui allow preserve changed time`** for the checkbox itself — both marked `restrict access: true`. That second one is the interesting one: suppressing `changed` hides an edit from every audit trail and listing that depends on it, so restricting it is a deliberate and correct choice. Core requirement is a wide `^8.8 || ^9 || ^10 || ^11`; the current release is 1.0.0-beta2.

---

- Fix a typo without bumping an article to the top of listings.
- Keep a sitemap's lastmod accurate to real changes.
- Avoid re-notifying subscribers over a trivial edit.
- Preserve chronology in a "recently updated" view.
- Correct metadata without changing publication order.
- Stop a bulk edit reshuffling every listing.
- Keep feed ordering meaningful.
- Let only trusted editors suppress the timestamp.
- Avoid database edits to fix a timestamp.
- Restrict the checkbox to specific content types.
- Retain accurate change history for real revisions.
- Prevent unnecessary search re-indexing.
- Keep cache keys stable across a cosmetic edit.
- Make the decision visible on the edit form.
- Support an editorial policy about what counts as an update.
- Fix an accessibility issue without a "new" flag.
- Correct an author byline quietly.
- Audit who is allowed to preserve timestamps.
