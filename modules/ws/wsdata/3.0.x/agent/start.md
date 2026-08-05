<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Web Service Data (wsdata) — agent index

Models external web services as **configuration entities**. No hard dependencies.
Core requirement `^9 || ^10 || ^11`.
Settings at `/admin/config/services/wsdata` (`administer site configuration`).

Four plugin types compose an integration:

| Plugin type | Role |
|---|---|
| **WSConnector** | transport (HTTP, SOAP, …) |
| **WSEncoder** | request format |
| **WSDecoder** | response format |
| **WSReplacement** | token substitution into the request |

| Submodule | Consumption point |
|---|---|
| `wsdata_field` | a service as an entity **field** |
| `wsdata_block` | a service as a **block** |
| `wsdata_extras` | additional plugins |
| `wsdata_example` | worked example — read this first |

Key facts:
- **Credentials are configuration.** Any API key or password the service needs ends up in a config
  entity and therefore in `drush cex` output. Source it from an environment variable / Key entity
  instead, per this repo's convention — the same issue recorded as a finding against
  `services_api_key_auth` (wave 65) and `cache_utility` (wave 61).
- **A page rendering a live external call inherits that service's latency and availability.**
  Settle caching and failure behaviour before putting one on a high-traffic page.
- Start from `wsdata_example`; the abstraction is hard to grasp from the plugin interfaces alone.
