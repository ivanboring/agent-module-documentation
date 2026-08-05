<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Guzzle Cache Backend lets the Guzzle HTTP caching middleware store its responses in Drupal's cache system, so outbound API calls are cached alongside everything else the site caches.

---

Every integration makes the same mistake once: a block calls a remote API on every render, and the site's response time becomes the API's response time plus its own. The usual fix is caching the *result* — store the parsed data in `cache.default` with a lifetime. That works and it discards what HTTP already told you: the response's own `Cache-Control`, its `ETag`, its `Last-Modified`, and therefore the ability to revalidate cheaply with a conditional request rather than refetching. The Guzzle caching middleware implements the HTTP caching model properly, and this module gives it a Drupal-backed store — so cached API responses live in Redis or Memcached with the rest of the site's cache, are cleared by a cache rebuild, and are visible to the same monitoring. Version **3.1.0** on core `^10 || ^11`, with a `guzzle_cache_middleware` submodule. Two points. **A cached API response is data at rest**, so an endpoint returning personal or authorised data is now storing it in the shared cache backend — check that the cache key includes whatever the response varies by, because a per-user API response cached under a shared key is served to the wrong person, which is the classic and severe form of this mistake. And **respecting upstream cache headers means trusting them**: an API that sends no `Cache-Control` gets whatever default is configured, and one that sends a long lifetime on data that actually changes will be stale for exactly as long as it said.

---

- Cache outbound API responses.
- Stop calling a remote API on every render.
- Use HTTP cache headers properly.
- Revalidate with ETags instead of refetching.
- Store API responses in Redis.
- Reduce integration latency.
- Clear API caches with a cache rebuild.
- Improve a page that calls a slow service.
- Reduce third-party API costs.
- Handle a rate-limited API.
- Cache a weather or currency feed.
- Improve resilience to API slowness.
- Share an API cache across requests.
- Reduce load on a partner's service.
- Monitor API caching with existing tools.
- Cache a product availability lookup.
- Speed up a decoupled data fetch.
- Reduce outbound request volume.
