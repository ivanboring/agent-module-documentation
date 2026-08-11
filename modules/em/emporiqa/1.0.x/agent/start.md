<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Emporiqa — agent index

**Drupal Commerce ↔ Emporiqa AI chat assistant**. Version **1.0.31**. Core `^10.3||^11||^12`.

Public cart endpoints use the Commerce cart provider (current session, CSRF); user token HMAC-signed with config `webhook_secret` (set strongly). Depends on `commerce_product`, core `node`.