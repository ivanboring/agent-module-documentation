<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# SharePoint Integration — agent index

Establishes a **connection between Microsoft SharePoint and Drupal** (miniOrange — integration/SSO/content).
Config at `sharepoint_integration.connection`; provides permissions. Version **1.1.0**. Core `^10||^11`.

**Security:** store SharePoint/Azure app credentials as secrets; HTTPS. **Caveat (low impact):** the
miniOrange **support/trial-query helper** (`MOSupport::callService`) uses `verify => FALSE` (disabled TLS) —
affects only the support *ping* (leaks admin email + site/PHP version + a hardcoded shared miniOrange key,
NOT your SharePoint credentials/session); the real SharePoint path uses standard TLS. Avoid submitting the
in-module support form over untrusted networks. See `security.md`.
