<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Scheduled Updates (scheduled_updates) — agent index

Sets **field values on entities at a future time** — any field, any entity type, not just node
publishing. Updates are themselves entities (listable, revisable, reviewable before they fire).
Depends on core `options` and **`inline_entity_form`**. Configure at
`/admin/config/.../scheduled_update`. Version **3.0.1**.

**Core requirement `^10.4 || ^11.3 || ^12`** — note `^11.3` excludes earlier 11.x, and `^12`
reaches into a major that does not exist yet.

Permissions: `administer scheduled update types`, `administer scheduled updates`,
`view scheduled update entities`, plus **`permission_callbacks`** →
`Permissions::scheduledUpdateTypesPermissions` generating per-type permissions, so different
teams can own different kinds of update.

Key facts:
- **Broader than `scheduler`**, which handles node publish/unpublish only. Use this when the thing
  changing is a price, a flag, a user field or a term field.
- **Cron is the timing constraint.** An update fires when cron runs, not at the configured
  instant. Hourly cron cannot honour a nine-o'clock embargo to the minute. If the timing matters —
  a press release, a regulated disclosure — fix cron frequency first, and confirm what happens to
  an update whose moment passed while cron was down.
