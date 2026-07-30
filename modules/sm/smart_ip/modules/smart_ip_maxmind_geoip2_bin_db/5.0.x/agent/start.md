# Smart IP MaxMind GeoIP2 binary database (smart_ip_maxmind_geoip2_bin_db) — agent index

A **Smart IP data source**: offline geolocation against a downloaded MaxMind GeoIP2/GeoLite2
`.mmdb` file (via `geoip2/geoip2`). Depends on `smart_ip`. No admin page of its own — it injects
a section into Smart IP's settings form (`/admin/config/people/smart_ip`).

**To activate:** `drush en smart_ip_maxmind_geoip2_bin_db -y`, then set
`smart_ip.settings:data_source` = **`maxmind_geoip2_bin_db`** (this source's `sourceId()`).

Key facts:
- `sourceId()` = `maxmind_geoip2_bin_db`; `configName()` = `smart_ip_maxmind_geoip2_bin_db.settings`.
- Config `smart_ip_maxmind_geoip2_bin_db.settings`:
  - `version` — `lite` (free GeoLite2) or a commercial edition. Default `lite`.
  - `edition` — `city` or `country`. Default `city`.
  - `user_account` — MaxMind account id (for downloads). Default null.
  - `license_key` — MaxMind license key. Default null.
  - `db_auto_update` — refresh the `.mmdb` on cron. Default **true**.
  - `bin_file_custom_path` — use your own database file. Default null.
- Implemented as `SmartIpEventSubscriber extends SmartIpEventSubscriberBase`:
  `processQuery()` (lookup), `manualUpdate()` + `cronRun()` (download/refresh via
  `DatabaseFileUtility`), `formSettings()`/`validateFormSettings()`/`submitFormSettings()`
  (admin sub-form).
- Requires the `geoip2/geoip2` PHP library.
- Query API, location keys, events, and the data-source model: see
  modules/sm/smart_ip/5.0.x/agent/ (`api/location.md`, `extend/data-source.md`).

Set the source with drush:

```bash
drush cset smart_ip_maxmind_geoip2_bin_db.settings edition city -y
drush cset smart_ip.settings data_source maxmind_geoip2_bin_db -y
```
