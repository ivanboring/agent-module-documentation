<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Leaflet Mapbox adds Mapbox tile layers to the Leaflet module, so maps rendered with Leaflet can use Mapbox's basemaps and styles instead of the default tiles.

---

Leaflet is the mapping library and is agnostic about where its tiles come from; the default is usually OpenStreetMap's public tile servers, which are free and explicitly **not intended for production traffic** — their usage policy asks heavy users to run their own or pay a provider. Mapbox is one of the standard answers: commercial tiles with custom styling, so a map can match a site's design rather than looking like OpenStreetMap. This module supplies the integration, depending on `leaflet` and targeting `^10 || ^11`. Two things belong in any recommendation and neither is technical. Mapbox is **billed per map load** above a free tier, so a map on a high-traffic page is a running cost that should be understood before launch, not discovered on an invoice. And the **access token is a credential** — Mapbox tokens are public by necessity, since the browser uses them, which is exactly why they should be scoped with URL restrictions at Mapbox rather than treated as harmless; an unrestricted token found in page source can be used by anyone, on the site owner's account.

---

- Use Mapbox basemaps with Leaflet.
- Style a map to match a site's design.
- Replace OpenStreetMap's public tiles.
- Comply with OSM's tile usage policy.
- Show a branded map.
- Use satellite imagery as a basemap.
- Improve map appearance on a site.
- Support a location directory's maps.
- Add a custom map style.
- Use a commercial tile provider.
- Show a store locator map.
- Improve map performance under traffic.
- Support a property listing map.
- Use a dark-mode basemap.
- Show a map on a high-traffic page.
- Switch tile providers without changing Leaflet.
- Add terrain or outdoor styles.
- Support a travel site's maps.
