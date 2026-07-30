# Smart IP MaxMind GeoIP2 Precision web service (smart_ip_maxmind_geoip2_web_service) — agent index

A **Smart IP data source**: geolocation via MaxMind's hosted **GeoIP2 Precision** web service.
Depends on `smart_ip`. No admin page of its own — injects a section into Smart IP's settings form
(`/admin/config/people/smart_ip`).

**To activate:** `drush en smart_ip_maxmind_geoip2_web_service -y`, then set
`smart_ip.settings:data_source` = **`maxmind_geoip2_web_service`**.

Key facts:
- `sourceId()` = `maxmind_geoip2_web_service`; `configName()` =
  `smart_ip_maxmind_geoip2_web_service.settings`.
- Config `smart_ip_maxmind_geoip2_web_service.settings`:
  - `service_type` — MaxMind Precision endpoint: `country` / `city` / `insights`. Default `city`.
  - `user_id` — MaxMind account/user id. Default null.
  - `license_key` — MaxMind license key. Default null.
- Implemented as `SmartIpEventSubscriber extends SmartIpEventSubscriberBase`; `processQuery()`
  calls the MaxMind web service (via `WebServiceUtility` + `geoip2/geoip2`) and fills the location.
  Makes a **per-lookup API call**; no local database, no cron download (no `manualUpdate`/`cronRun`
  database logic).
- Query API, location keys, events: see modules/sm/smart_ip/5.0.x/agent/
  (`api/location.md`, `extend/data-source.md`).

```bash
drush cset smart_ip_maxmind_geoip2_web_service.settings service_type city -y
drush cset smart_ip.settings data_source maxmind_geoip2_web_service -y
```
