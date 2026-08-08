<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cache Tags CDN Optimizer replaces the core cache tags for referenced entities so purging clears cached content only when necessary.

---

Cache Tags CDN Optimizer refines cache-tag behaviour for referenced entities — replacing core's cache
tags so that a CDN/reverse-proxy purge clears cached content only when it actually needs to, reducing
over-broad invalidation (where updating one referenced entity needlessly purges many pages). This improves
CDN cache hit rates on sites with heavy entity referencing.

Use it to reduce unnecessary CDN purges from referenced-entity changes. It is a performance/caching feature
affecting cache-tag invalidation; it changes when cached content is purged, not access, and it has no
access-control role. Enable it to optimize referenced-entity cache tags.

---

- Refine cache tags for referenced entities.
- Purge only when necessary.
- Reduce over-broad invalidation.
- Improve CDN cache hit rates.
- Replace core cache tags.
- Avoid needless purges.
- Change purge timing, not access.
- Have no access-control role.
- Enable cache-tag optimization.
- Optimize referenced-entity tags.
- Reduce CDN purges.
- Handle cache invalidation.
- Improve caching.
- Optimize purging.
- Refine invalidation.
- Handle referenced entities.
- Reduce invalidation.
- Optimize cache tags.
- Improve CDN caching.
- Purge efficiently.
