<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Asset cache bust overrides the CSS/JS collection renderers to re-add a cache-bust query string to aggregated CSS and JS assets.

---

Asset cache bust overrides Drupal's `CSSCollectionRenderer` and `JsCollectionRenderer` services to
re-add a cache-busting query-string parameter to aggregated CSS and JS — ensuring browsers/CDNs fetch the
new aggregate after a change rather than serving a stale cached version. This addresses cases where the
default aggregation caching leaves clients on old assets.

Use it where CSS/JS updates aren't reliably picked up by clients/CDN due to caching. It is a performance/
front-end feature affecting asset URLs; it has no content or access role. Enable it where cache-busting on
aggregates is needed.

---

- Cache-bust aggregated CSS/JS.
- Re-add a query-string to aggregates.
- Avoid stale cached assets.
- Override the collection renderers.
- Ensure clients fetch new aggregates.
- Fix CDN asset caching.
- Have no content/access role.
- Bust cache on asset change.
- Improve asset freshness.
- Enable cache-busting.
- Update client assets reliably.
- Handle aggregation caching.
- Add a cache-bust param.
- Serve fresh CSS/JS.
- Avoid old aggregates.
- Improve deploy asset updates.
- Bust CDN cache for assets.
- Force asset re-fetch.
- Manage asset cache.
- Refresh aggregated assets.
