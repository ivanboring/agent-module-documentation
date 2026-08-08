<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Controlled Access Terms provides authority-controlled vocabulary types — topic, geographic, person, family, and corporate body — plus an authority-link field, for sites that need rigorous, standards-based subject and name authorities (common in libraries, archives and digital collections).

---

Cultural-heritage and scholarly metadata does not use free-text tags; it uses **authorities** — a controlled record for a person, place or subject, often linked to an external identifier (LCNAF, VIAF, geonames). Modelling that in Drupal means specific vocabulary shapes and a field that can carry the authority link. This module (part of the Islandora-adjacent ecosystem) supplies those: structured entities for the standard agent and subject types, and an authorities-link field to connect a local term to an external authority record.

It depends on **Geolocation** (for geographic terms) and **Token**, and it is squarely for the metadata-serious use case — a digital collection, an archive, a research repository — not a general content site, where it would be far more structure than needed. It provides the entities and the field; how you catalogue with them is your metadata practice.

For libraries, archives and digital-humanities projects on Drupal, it brings recognised authority modelling. A `_defaults` submodule ships default configuration to get started.

---

- Model subject authorities.
- Model name authorities.
- Add geographic authority terms.
- Add person and family agents.
- Add corporate body agents.
- Link a term to an external authority.
- Catalogue with controlled vocabularies.
- Support library metadata.
- Support archival description.
- Build a digital collection.
- Connect to LCNAF or VIAF.
- Provide authority-link fields.
- Use geolocation for places.
- Model agents rigorously.
- Adopt standards-based metadata.
- Start from default authority config.
- Run a research repository.
- Avoid free-text subject tags.
- Structure heritage metadata.
- Integrate with an Islandora-style stack.