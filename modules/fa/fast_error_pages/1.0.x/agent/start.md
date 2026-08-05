<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Fast Error Pages (fast_error_pages) — agent index

Caches the site's **themed** 404/403 pages and serves them from cache. No module dependencies,
no routes, no permissions, no configuration — it uses the 404/403 pages from basic site settings.
Core requirement `^10.3 || ^11`.

Key facts:
- **Anonymous only.** `onException()` returns immediately for authenticated users
  (`!$this->currentUser->isAnonymous()`), so no authenticated content is ever cached or served
  this way. That is the right boundary and worth knowing when testing — logged in, you will see no
  effect.
- **The error page is fetched over a loopback HTTP request** (`getPage()` → `httpClient->request()`
  against the configured error URL), tagged with `X-Drupal-Fast-Error-Pages: 1` so the subscriber
  skips its own request. Two implications: the web container must be able to reach itself, and the
  outbound `Host` comes from `$request->getHost()` — so Drupal's **`trusted_host_patterns`** should
  be configured, as it should be anyway.
- The URL comes from a **`FastErrorPage` plugin** per status code, not from the request — no SSRF.
- **Cacheability is preserved**: `4xx-response` tag and `url` context are added on top of the
  page's own tags and contexts. That is the advantage over core's Fast 404, which returns static
  HTML.
- **Operational gotcha:** the default cache id is the **status code alone**. On a multilingual or
  multi-domain site, implement `hook_fast_error_pages_cache_contexts()` to add language/domain to
  `$cid_parts`, or one language's 404 will be served to everyone.
