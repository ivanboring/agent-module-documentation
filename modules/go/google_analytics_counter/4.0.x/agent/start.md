<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Google Analytics Counter (google_analytics_counter) — agent index

Fetches page-view counts from Google Analytics on cron and stores them per node for use in Views
and fields. Depends on core `node`. Config UI
`/admin/config/system/google-analytics-counter` (`configure:
google_analytics_counter.admin_settings_form`).

Key facts:
- Routes (all gated by the single permission **`administer google analytics counter`**):

  | Route | Path |
  |---|---|
  | `google_analytics_counter.admin_settings_form` | `/admin/config/system/google-analytics-counter` |
  | `google_analytics_counter.configure_types_form` | `/admin/config/system/google-analytics-counter-configure-types` |
  | `google_analytics_counter.admin_dashboard_form` | `…/google-analytics-counter/dashboard` |

- It **does not add tracking JavaScript** — that is the separate `google_analytics` module's job.
  This one only reads the resulting figures back via the API, so a site needs both.
- Counts are synced on **cron** into Drupal storage, then exposed to Views through
  `google_analytics_counter.views.inc` and to a per-bundle counter field configured on the
  *configure types* form.
- Because the data is a periodic snapshot, counts lag reality by the cron interval — do not use
  it where a live counter is expected.
- Credentials for the Google API are entered in the settings form; on this repo's convention,
  prefer sourcing them from an environment variable rather than committing them in exported
  config.

```bash
drush cget google_analytics_counter.settings
drush cron    # sync happens here
```
