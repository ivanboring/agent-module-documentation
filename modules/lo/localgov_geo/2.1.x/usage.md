<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LocalGov Geo gives a LocalGov Drupal site reusable geographic records: a location entity (points with addresses, or polygons) built on Geo Entity, pre-wired to OpenStreetMap tiles and geocoding, with an optional Ordnance Survey Places geocoder for UK addresses.

---

Since version 2 the entity itself lives in the contrib **Geo Entity** module; LocalGov Geo is the LocalGov-flavoured wrapper around it, supplying default configuration, two bundles via submodules — `localgov_geo_address` (a point plus a structured address) and `localgov_geo_area` (polygons) — and the editorial polish that makes the entity usable inside a council site. That polish is mostly presentational: `hook_menu_local_actions_alter()` and `hook_menu_local_tasks_alter()` tidy the action/tab links, and preprocess hooks for breadcrumb, html and page title adjust how location pages appear. The module also ships a Drupal geocoder plugin, `LocalgovOsPlacesGeocoder`, wrapping the Ordnance Survey Places PHP geocoder — the address source UK local authorities actually want, free for them, and requiring an API key plus the `localgovdrupal/localgov_os_places_geocoder_provider` package. Out of the box the defaults point at OpenStreetMap for both tiles and geocoding so the module works before any key is obtained. One install-time decision is worth knowing: `hook_install()` grants **`view geo` to both anonymous and authenticated users**, with a comment in the source explaining the reasoning — location data is meant to be public, and Search API indexes what anonymous users can see, so withholding it would strip locations from search results. A hidden `localgov_geo_update` submodule bridges older installs to Geo Entity.

---

- Store an address once and reference it from many content items.
- Attach a geocoded location to a directory venue.
- Draw a ward or catchment boundary as a polygon.
- Geocode UK addresses accurately with Ordnance Survey Places.
- Fall back to OpenStreetMap geocoding without an API key.
- Show locations on OpenStreetMap tiles by default.
- Reuse one location record across events, venues and services.
- Support proximity search by supplying coordinates to Search API.
- Keep location data in a dedicated entity rather than duplicated fields.
- Let editors search for an address rather than typing coordinates.
- Swap the geocoder provider without changing content.
- Publish location data so it appears in anonymous search results.
- Model both point locations and areas in one system.
- Migrate legacy LocalGov Geo data onto Geo Entity.
- Give locations their own pages with tidy breadcrumbs and titles.
- Share a location between two services that operate from one building.
- Provide coordinates for map rendering with Leaflet.
- Support address autocomplete in editorial forms.
- Keep UK postcode lookups accurate for council services.
- Build catchment-based content targeting on stored polygons.
