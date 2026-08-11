<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cloudflare SDK provides credential sets, settings.php secret resolution and a shared client factory for the Cloudflare suite.

---

Cloudflare SDK is the base framework for the Cloudflare module suite — providing credential sets, settings.php secret resolution (so tokens are read from environment/settings, not config), a shared HTTP client factory, and the Cloudflare asset registry (a `cloudflare_asset` entity and asset-kind/resolver framework with a unified assets admin page).

It resolves secrets from settings.php/environment (a secure pattern) and is gated by `administer cloudflare`. Depends on `cloudflare_api`; supports Drupal 10.5+, 11, and 12.

---

- Provide the Cloudflare suite base framework.
- Manage credential sets.
- Resolve secrets from settings.php/env.
- Provide a shared HTTP client factory.
- Offer a Cloudflare asset registry.
- Define a cloudflare_asset entity.
- Provide asset-kind/resolver framework.
- Gate admin with `administer cloudflare`.
- Read tokens securely (not from config).
- Depend on `cloudflare_api`.
- Support Drupal 10.5+, 11, and 12.
- Underpin cloudflare_ai etc.
- Provide a unified assets admin page
- Handle credentials securely
- Aid developers.
- Support the suite.
- Manage assets.
- Keep secrets in settings.php
