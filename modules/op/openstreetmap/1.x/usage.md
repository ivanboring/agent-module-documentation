<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OpenStreetMap provides tools for keeping Drupal nodes in sync with OpenStreetMap data, with queries and Views integration submodules.

---

Sites that map real-world features — points of interest, boundaries — may want Drupal content synced with OpenStreetMap. OpenStreetMap provides tools for that sync, with `openstreetmap_queries` (Overpass-style queries) and `openstreetmap_views` submodules. It talks to OSM's public APIs; no credentials are typically needed for reads. The consideration is rate-limiting and API etiquette (OSM's APIs have usage policies), and that syncing external data means trusting/validating what comes back before it becomes content.

---

- Sync nodes with OpenStreetMap.
- Query OSM data.
- Integrate OSM with Views.
- Map points of interest.
- Keep content in sync with OSM.
- Run Overpass queries.
- Respect OSM API policies.
- Validate synced data.
- Import map features.
- Display OSM-backed content.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.