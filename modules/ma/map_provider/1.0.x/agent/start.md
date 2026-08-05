<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Map Provider (map_provider) — agent index

Plugin manager for **map tile providers** plus a Leaflet render element. No dependencies, no
routes, no permissions, no config forms. Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- Providers can be declared in **YAML** rather than PHP — `YamlMapProviderManager` discovers
  them, and `map_provider.map.provider.yml` holds the module's own definitions. Adding a tile
  provider is a file, not a class. (`src/Annotation/` supports annotation-declared providers too.)
- `src/Element/` is the render element; `js/map.js` + `map_provider.libraries.yml` draw the map
  with **Leaflet**.
- Developer-facing infrastructure: enabling it alone renders nothing. It exists so several
  mapping features can share one provider list and one set of credentials.
- **Operational caution worth passing on:** tile providers have usage terms. OpenStreetMap's
  public tile servers explicitly are not for heavy production traffic, and commercial providers
  bill per tile. Choosing a provider here is a licensing and cost decision as much as a
  technical one.
- The description's "Drupal 8 Plugin API" wording is dated, not a compatibility statement — the
  module declares support through Drupal 11.
