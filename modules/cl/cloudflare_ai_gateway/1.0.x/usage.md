<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cloudflare AI Gateway builds AI Gateway URLs and cf-aig-* controls for caching, metadata and fallbacks.

---

Cloudflare AI Gateway is a client for the Cloudflare AI Gateway (gateway.ai.cloudflare.com) — providing URL building and `cf-aig-*` request controls for caching, metadata and fallbacks, so AI calls made through Drupal can be routed via Cloudflare's gateway for caching, analytics, rate-limiting and provider fallback.

It builds on the Cloudflare API and Cloudflare SDK (credentials resolved from settings.php/env by the SDK, never committed). It's the layer an AI provider uses to route through the gateway. Depends on `cloudflare_sdk` and `cloudflare_api`; supports Drupal 10.5+, 11, and 12.

---

- Provide a Cloudflare AI Gateway client.
- Build AI Gateway URLs.
- Set cf-aig-* request controls.
- Control caching/metadata/fallbacks.
- Route AI calls via Cloudflare.
- Enable gateway analytics/rate-limiting.
- Support provider fallback.
- Build on Cloudflare API + SDK.
- Resolve credentials from settings.php/env.
- Never commit credentials.
- Depend on `cloudflare_sdk` and `cloudflare_api`.
- Support Drupal 10.5+, 11, and 12.
- Underpin an AI provider
- Handle gateway URLs
- Support AI routing.
- Cache AI responses.
- Integrate Cloudflare AI.
- Keep secrets secure
