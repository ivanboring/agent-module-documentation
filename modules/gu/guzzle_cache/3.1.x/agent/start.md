<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Guzzle Cache Backend (guzzle_cache) — agent index

Lets the **Guzzle HTTP caching middleware** store responses in **Drupal's cache system**.
Submodule `guzzle_cache_middleware`. No dependencies. Version **3.1.0**.
Core requirement `^10 || ^11`.

**Why this rather than caching the parsed result:** storing the result in `cache.default` with a
lifetime discards what HTTP already told you — the response's `Cache-Control`, `ETag` and
`Last-Modified`, and therefore the ability to **revalidate cheaply with a conditional request**
instead of refetching. The middleware implements the HTTP caching model; this gives it a
Drupal-backed store, so entries live in Redis/Memcached with everything else, clear on a cache
rebuild, and are visible to the same monitoring.

**Two points:**
1. **A cached API response is data at rest.** An endpoint returning personal or authorised data is
   now storing it in the **shared** cache backend. Check the cache key includes whatever the
   response varies by — **a per-user API response cached under a shared key is served to the wrong
   person**, the classic and severe form of this mistake.
2. **Respecting upstream headers means trusting them.** An API sending no `Cache-Control` gets the
   configured default; one sending a long lifetime on data that actually changes will be stale for
   exactly as long as it said.
