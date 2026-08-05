<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Scheduled Updates changes field values on entities at a chosen time — publish at nine on Monday, switch a price on the first of the month, clear a banner when a campaign ends.

---

The common case is publishing, and `scheduler` covers that well for nodes. This is the general version: any field on any entity type, including users and taxonomy terms, set to a new value at a future moment. That covers things the publishing-only modules cannot — embargoing a document until an announcement, rotating a promoted flag, changing a price, expiring a status field on a user account. Updates are entities themselves, so they are listable, revisable and reviewable before they fire. Version **3.0.1**, depending on core `options` and on `inline_entity_form`, with a core requirement of `^10.4 || ^11.3 || ^12` — note **`^11.3`**, which excludes earlier 11.x releases, and a reach into a core major that does not exist yet. Permissions include `administer scheduled update types`, `administer scheduled updates` and `view scheduled update entities`, plus a `permission_callbacks` entry generating per-type permissions so different teams can own different kinds of update. The operational reality to plan for is **cron**: an update fires when cron runs, not at the instant configured, so a site whose cron runs hourly cannot honour a nine-o'clock embargo to the minute. If the timing matters — a press release, a regulated disclosure — cron frequency is the constraint to fix first, and it is worth confirming what happens to an update whose moment passed while cron was not running.

---

- Publish a page at a set time.
- Unpublish a campaign when it ends.
- Change a price on a date.
- Embargo a document until an announcement.
- Expire a promoted flag.
- Schedule a field value change.
- Update a user field on a date.
- Clear a banner automatically.
- Schedule a status change on a term.
- Plan a coordinated content release.
- Automate a seasonal change.
- Schedule an update for review first.
- Let a team own its own update type.
- Retire content on a schedule.
- Change a taxonomy field later.
- Schedule bulk field updates.
- Support an editorial calendar.
- Time a product launch.
