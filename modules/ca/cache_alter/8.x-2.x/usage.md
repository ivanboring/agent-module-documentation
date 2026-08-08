<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CacheAlter adds a cookie-based cache context and removes utm_* parameters from the page cache key.

---

CacheAlter adjusts Drupal's page caching in two ways: it adds a cookie-based cache context (so cached
output can vary by a cookie), and it strips `utm_*` (campaign-tracking) query parameters from the cache key —
so URLs that differ only by UTM parameters share a cache entry instead of fragmenting the cache (UTM params
don't change page content, only tracking). It is in the Performance and scalability package.

Use it to improve cache hit rates on UTM-tagged URLs and to vary cache by a cookie. It is a performance/
caching feature. Note: adding a cookie cache context can fragment the cache by that cookie's values (so use
a low-cardinality cookie), and stripping UTM from the cache key is safe only if UTM params genuinely don't
affect output on your site (confirm nothing renders differently based on UTM). It has no access-control
role. Configure the cache behaviour.

---

- Strip UTM params from the cache key.
- Add a cookie cache context.
- Improve cache hit rates on UTM URLs.
- Share cache across UTM variants.
- Vary cache by a cookie.
- Avoid cache fragmentation from UTM.
- Use a low-cardinality cookie.
- Confirm UTM doesn't affect output.
- Have no access-control role.
- Improve caching performance.
- Handle campaign-tagged URLs.
- Configure the cache behaviour.
- Remove utm_* from cache key.
- Vary output by cookie.
- Reduce cache fragmentation.
- Optimize page cache.
- Handle UTM parameters.
- Improve cache efficiency.
- Configure cache context.
- Optimize caching.
