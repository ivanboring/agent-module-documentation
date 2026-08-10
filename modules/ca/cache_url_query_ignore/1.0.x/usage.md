<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cache URL Query Ignore alters the URL cache context to ignore specified query parameters (better cache hit rates).

---

Cache URL Query Ignore **alters the URL cache context to ignore specified query parameters** — so tracking/
marketing query args (e.g. utm_*, fbclid) don't fragment the page cache into separate variants, improving cache
hit rates. It is in the Performance package.

Use it to stop tracking params busting the cache. It is a performance feature affecting the cache-context keying;
it has no content or access role. Note: only ignore params that genuinely **don't change the page output** —
ignoring a param that DOES affect output would serve wrong cached content. Configure the ignored query
parameters.

---

- Ignore query params in URL cache context.
- Stop tracking args fragmenting cache.
- Improve cache hit rates.
- Serve performance.
- Handle utm_/fbclid params.
- Affect cache-context keying.
- Only ignore params that don't change output.
- Not ignore output-affecting params (would serve wrong cache).
- Have no content/access role.
- Configure the ignored params.
- Handle cache context.
- Ignore query params.
- Configure the params.
- Improve caching.
- Handle the cache.
- Merge variants.
- Configure performance.
- Ignore tracking args.
- Set the params.
- Provide query-param cache ignore.
