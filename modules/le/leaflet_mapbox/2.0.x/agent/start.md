<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Leaflet Mapbox (leaflet_mapbox) — agent index

Adds **Mapbox** tile layers to the **Leaflet** module. Depends on `leaflet`.
Core requirement `^10 || ^11`.

Key facts — both non-technical and both decisive:
- **Cost.** Mapbox bills **per map load** above a free tier. A map on a high-traffic page is a
  running cost; establish it before launch rather than on an invoice.
- **The access token is public by necessity** — the browser uses it — which is exactly why it must
  be **scoped with URL restrictions at Mapbox**. An unrestricted token found in page source can be
  used by anyone on the site owner's account.
- **Why not the default tiles:** Leaflet's usual default is OpenStreetMap's public tile servers,
  whose usage policy explicitly excludes heavy production traffic. Choosing a provider is the
  correct action; Mapbox is one option among several.
- Compare `map_provider` (wave 59), which abstracts tile providers so several mapping features
  share one configuration.
