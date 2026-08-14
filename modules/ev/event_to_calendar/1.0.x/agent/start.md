<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Event to Calendar (event_to_calendar) — agent index

**iCal/vCal/CSV downloads, RSS feed and Google/Outlook/Yahoo add-to-calendar links for event nodes via configured date/location field mappings. See security finding.**

- **Version:** 1.0.x  •  core: `^10`  •  package: Custom  •  depends on `node`, `views`, `field`.
- **Routes (all `_permission: 'access content'`):** `/event/{event_id}/ical|google|outlook|yahoo|rss|vcs|csv` → `EventToCalendarController`; settings `/admin/config/event-to-calendar` (`administer site configuration`).
- **Config:** `content_types` + per-type `{type}_start_date` / `_end_date` / `_location` field names. Block `AddToCalendarBlock`.

**Security finding (D2, info disclosure / missing access check):** the single-node endpoints (`generateIcal`, `generateVcs`, `generateCsv`, `getGoogleCalendarUrl`, `getOutlookCalendarUrl`, `getYahooCalendarUrl` in `src/Controller/EventToCalendarController.php`) load the node by ID and emit title/body/location with NO `$node->access('view')` and no published check, while routes require only `access content` (anonymous by default). An unauthenticated user can read any configured-type node's title/body/location by ID, including unpublished / node-access-restricted content. (`generateRssFeed` does filter `status = 1`.) Fix: enforce `$node->access('view')` on every per-node route.
