<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Web Accessibility (web_accessibility) — agent index

Registry that wires third-party **WCAG 2.0 validation services** into Drupal. No module
dependencies. Core requirement `^8 || ^9 || ^10 || ^11`.
Admin at `/admin/config/system/web_accessibility`.

Key facts:
- **It validates nothing itself.** There is no `http_client`/Guzzle/curl usage anywhere in
  `src/` — the module manages service definitions (`WebServiceManager`, `WebServiceInterface`)
  and the checking is done by whatever service is registered. Security, privacy and accuracy
  questions belong to that service, not to this module.
- Routes, both gated by the single permission **`administer_web_accessibility`** (spelled with
  underscores, unusual for a Drupal permission string):

  | Route | Path |
  |---|---|
  | `web_accessibility.settings` | `/admin/config/system/web_accessibility` |
  | `web_accessibility.delete_service` | `/admin/config/system/web_accessibility/delete/{service_id}` |

  The permission is **not** marked `restrict access: true`, although it decides which external
  endpoint the site talks to. Treat it as more sensitive than the title suggests.
- **Data-sharing caveat to raise:** validating a page means handing its content or URL to a
  third party. On a site with unpublished, embargoed or confidential content that is a decision
  to take deliberately.
- `web_accessibility.module:72` reads `markdown.settings` — an optional integration; harmless if
  Markdown is absent.
- `.info.yml` reports the legacy `version: '8.x-1.4'`.
