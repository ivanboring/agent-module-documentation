<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media AV Portal (media_avportal) — agent index

Media source for the **European Commission's Audiovisual Portal**. Depends on core `media`.
Core requirement `^10 || ^11`.

Key facts:
- Client layer: `AvPortalClient` / `AvPortalClientInterface` /
  `AvPortalClientFactory(Interface)`, with `AvPortalResource` modelling a returned item. Media
  are **referenced remotely**, not copied locally.
- `src/StreamWrapper/` registers a stream wrapper so portal assets can be addressed like files
  by the rest of Drupal — useful, and the reason image styles and formatters work on them.
- **`AvPortalMediaUpdater` + `src/Commands/`** exist because remote metadata drifts: titles,
  descriptions and availability change upstream after an item is referenced. Schedule the Drush
  refresh rather than assuming stored metadata stays correct.
- Comes from the **OpenEuropa** (EU institutional Drupal) ecosystem. Well maintained for that
  context and deliberately narrow — it integrates the AV Portal specifically, not remote media
  in general.
- Availability of the referenced media depends on the portal being reachable; there is no local
  fallback copy.
