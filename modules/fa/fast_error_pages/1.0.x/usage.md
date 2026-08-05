<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Fast Error Pages caches the site's themed 404 and 403 pages and serves them from cache, so a flood of invalid URLs does not cost a full page render each time.

---

Error responses are the cheapest thing a site should serve and often the most expensive: every 404 renders the whole themed page — menus, blocks, everything — and a site being crawled or scanned takes thousands of them. Core's Fast 404 answers this by returning static HTML, at the cost of losing the themed page entirely. This module keeps the themed page and caches it. The mechanism is worth understanding: an exception subscriber intercepts the error **for anonymous users only**, looks up a cached copy keyed on the status code, and on a miss fetches the configured error page over a **loopback HTTP request** to the site itself, marked with an `X-Drupal-Fast-Error-Pages` header so the subscriber skips its own request. Crucially, the cached response keeps its **cache tags and contexts**, with `4xx-response` and `url` added, so Drupal's ordinary invalidation still applies — the improvement over Fast 404 that the README claims. There is a `FastErrorPage` plugin type per status code and a `hook_fast_error_pages_cache_contexts` alter, which matters more than it sounds: the default cache id is the status code alone, so a multilingual or multi-domain site must add to it or one language's 404 will be served to every visitor.

---

- Serve 404s without a full page render.
- Reduce load from crawlers hitting invalid URLs.
- Keep a themed error page while caching it.
- Improve performance under a scanning attack.
- Cache 403 responses too.
- Preserve cache tags on error pages.
- Avoid core Fast 404's static HTML limitation.
- Reduce database load from error traffic.
- Handle a spike of broken inbound links.
- Serve error pages from a reverse proxy.
- Invalidate cached error pages on content change.
- Add a status-code plugin for another error.
- Vary cached error pages per language.
- Reduce origin load behind a CDN.
- Improve response time for missing pages.
- Support a high-traffic site's error handling.
- Keep branded 404s without the cost.
- Reduce cost of a link-rot backlog.
