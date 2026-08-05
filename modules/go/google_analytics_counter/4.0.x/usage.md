<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Google Analytics Counter pulls page-view figures from Google Analytics back into Drupal and stores them per node, so "most read" listings and view counters can be built from real analytics data rather than Drupal's own request counting.

---

Drupal's core Statistics module counts requests itself, which is inaccurate behind a CDN or page cache and adds a write to every page view. This module takes the opposite approach: Google Analytics already counts views accurately, so it fetches those numbers on cron and stores them locally. A settings form at `/admin/config/system/google-analytics-counter` holds the API credentials and sync options, a second form configures which content types get a counter field, and a dashboard at `…/google-analytics-counter/dashboard` reports what has been fetched and how much of the queue remains. Because the counts land in Drupal storage, they are available to Views (`google_analytics_counter.views.inc` provides the integration) for building "most popular" blocks, and to a field for display on the node itself. A single permission, `administer google analytics counter`, gates the configuration screens. The module is deliberately lightweight — it does not embed tracking JavaScript (that is `google_analytics`'s job); it only reads the resulting data back.

---

- Show accurate page-view counts that survive page caching and CDNs.
- Build a "most read articles" block from real analytics data.
- Sort a view by popularity.
- Replace core Statistics without losing view counts.
- Display a view counter on article pages.
- Import historical analytics figures into Drupal.
- Sync view data on cron rather than per request.
- Choose which content types carry a counter field.
- Monitor sync progress from a dashboard.
- Avoid a database write on every page view.
- Keep popularity data available to Views and blocks.
- Feed a recommendation block with view counts.
- Report on content performance inside Drupal.
- Give editors visibility of what is being read.
- Combine analytics counts with editorial promotion.
- Support GA4 property data.
- Restrict analytics configuration to administrators.
- Rank search results by popularity.
- Identify unread content for archiving.
- Keep the tracking snippet in the google_analytics module where it belongs.
