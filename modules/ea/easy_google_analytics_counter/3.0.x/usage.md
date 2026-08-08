<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Easy Google Analytics Counter fetches and displays page-view counts from Google Analytics, showing content popularity.

---

Easy Google Analytics Counter fetches page-view statistics from Google Analytics and displays them —
showing how many views a page/content has according to GA, for surfacing popularity ("most viewed") without
maintaining a local counter. It is configured at `easy_google_analytics_counter.admin_form`.

Use it to show GA-based view counts on content. It connects to Google Analytics with API credentials — store
them as secrets. Note it reads analytics data (not visitor-facing tracking itself), so the data-flow is
Drupal→GA (fetching stats); still, be mindful of the Google credential's scope. It is an integration/analytics
feature with no access-control role. Configure the GA connection and display.

---

- Show GA page-view counts.
- Display content popularity.
- Fetch stats from Google Analytics.
- Show most-viewed content.
- Configure at the admin form.
- Store GA credentials as secrets.
- Avoid a local view counter.
- Scope the Google credential.
- Have no access-control role.
- Read analytics data.
- Display view counts.
- Surface popularity.
- Connect to Google Analytics.
- Show GA-based counts.
- Configure the GA connection.
- Fetch view statistics.
- Display popularity data.
- Handle credentials securely.
- Show page views.
- Configure the display.
