<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# WalkScore (walkscore) — agent index
**Fetches Walk Score walkability ratings from the Walk Score API for geolocation fields and displays them.**

- **Version:** 2.0.x
- **Core:** ^9 || ^10
- **Depends:** geolocation
- **Configure:** `/admin/config/services/walkscore` (`WalkScoreForm`, perm `administer walkscore`).
- **Service:** `walkscore.service` (`WalkScore`, `@http_client`) — queries `https://api.walkscore.com/score`.
- **Field plugins:** WalkScoreItem (field type), WalkScoreWidget, WalkScoreFormatter.

**Security:** Outbound GET to a fixed HTTPS host (endpoint not user-controllable → no SSRF); Guzzle default TLS verification (no `verify => false`). API key passed as `wsapikey` query param, stored in plain `walkscore.settings` config. Config route permission-gated; no anonymous/mutating endpoint. No security findings beyond plaintext key storage.

See [configure/setup.md](configure/setup.md).
