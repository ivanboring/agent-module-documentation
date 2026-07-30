# Smart IP IP2Location binary database (smart_ip_ip2location_bin_db) — agent index

A **Smart IP data source**: offline geolocation against a downloaded IP2Location **BIN** database
(via `ip2location/ip2location-php`). Depends on `smart_ip`. No admin page of its own — injects a
section into Smart IP's settings form (`/admin/config/people/smart_ip`).

**To activate:** `drush en smart_ip_ip2location_bin_db -y`, then set
`smart_ip.settings:data_source` = **`ip2location_bin_db`**.

Key facts:
- `sourceId()` = `ip2location_bin_db`; `configName()` = `smart_ip_ip2location_bin_db.settings`.
- Config `smart_ip_ip2location_bin_db.settings`:
  - `version` — `lite` (free IP2Location LITE) or a commercial edition. Default `lite`.
  - `edition` — BIN code, e.g. `DB11`. Default `DB11`.
  - `token` — IP2Location download token. Default null.
  - `db_auto_update` — refresh BIN on cron. Default **false**.
  - `caching_method` — reader cache mode (`no_cache` default; shared-memory/file options).
  - `bin_file_custom_path` — use your own BIN file. Default null.
- Implemented as `SmartIpEventSubscriber extends SmartIpEventSubscriberBase`: `processQuery()`
  (lookup via `Ip2locationBinDb`), `manualUpdate()` + `cronRun()` (download/refresh via
  `DatabaseFileUtility`), plus the admin sub-form methods.
- Requires the `ip2location/ip2location-php` PHP library.
- Query API, location keys, events, data-source model: see modules/sm/smart_ip/5.0.x/agent/.

```bash
drush cset smart_ip_ip2location_bin_db.settings edition DB11 -y
drush cset smart_ip.settings data_source ip2location_bin_db -y
```
