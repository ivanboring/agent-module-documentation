<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Geo (localgov_geo) — agent index

LocalGov wrapper around the **Geo Entity** module: default config, two bundles (via submodules),
an Ordnance Survey Places geocoder plugin and editorial polish. No `configure` route, no
permissions of its own (it *grants* Geo Entity's), no config schema, no Drush.

Submodules (own docs):
- `localgov_geo_address` → [../../modules/localgov_geo_address/2.1.x/agent/start.md](../../modules/localgov_geo_address/2.1.x/agent/start.md)
- `localgov_geo_area` → [../../modules/localgov_geo_area/2.1.x/agent/start.md](../../modules/localgov_geo_area/2.1.x/agent/start.md)
- `localgov_geo_update` (hidden bridge) → [../../modules/localgov_geo_update/2.1.x/agent/start.md](../../modules/localgov_geo_update/2.1.x/agent/start.md)

Key facts:
- **The entity type is not defined here.** Since 2.x it comes from `geo_entity:geo_entity`; this
  module is configuration + integration. `localgov_geo_update_last_removed()` returns `8810`,
  marking where the pre-Drupal-10 update hooks (now in geo_entity) were cut.
- **`hook_install()` grants `view geo` to anonymous *and* authenticated roles** (skipped when
  `$is_syncing`). The source explains why: location data is intended to be public, and Search API
  indexes what anonymous users can see — without the grant, locations vanish from search results.
  If your site must hide locations, revoke it after install and expect search consequences.
- Install also calls `\Drupal::service('router.builder')->rebuild()` first, to work around a
  route-cache ordering problem when this module and core `filter` are installed in the same
  `ModuleInstaller` call.
- Geocoder plugin `LocalgovOsPlacesGeocoder`
  (`@GeocoderProvider`, extends `configurableProviderUsingHandlerWithAdapterBase`) — wraps the
  **Ordnance Survey Places** API (UK addresses; free for UK local authorities). Requires the
  `localgovdrupal/localgov_os_places_geocoder_provider` Composer package and an API key.
  Known geocoder-module quirk noted in the README: new provider plugins sometimes do not appear in
  the *Geocoder provider* dropdown until PHP is restarted.
- Defaults ship pointed at **OpenStreetMap** for tiles and geocoding, so the module works before
  any API key exists.
- Presentational hooks: `hook_menu_local_actions_alter()`, `hook_menu_local_tasks_alter()`,
  `hook_preprocess_breadcrumb()`, `hook_preprocess_html()`, `hook_preprocess_page_title()`.
- `hook_localgov_roles_default()` grants the LocalGov roles their geo permissions.
