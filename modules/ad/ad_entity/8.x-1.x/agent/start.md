<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advertising Entity (ad_entity) — agent index

Framework for **ad management** — ads as entities, pluggable providers. Version **8.x-1.6**.
Submodules: `ad_entity_dfp` (Google Ad Manager), `ad_entity_adtech`/`_adtech_v2`, `ad_entity_generic`,
`ad_entity_fallback`.

**Privacy:** loads third-party ad scripts that track users — gate behind cookie/tracking consent;
provider scripts are third-party origins.