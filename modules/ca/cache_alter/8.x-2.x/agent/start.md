<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CacheAlter — agent index

Adds a **cookie cache context** + **strips `utm_*` from the page cache key** (URLs differing only by UTM
share a cache entry — better hit rate). Version **8.x-2.2**. Core `^10||^11`.

Performance/caching. **Caveats:** cookie context can fragment cache (use a low-cardinality cookie);
stripping UTM is safe only if UTM doesn't affect output (confirm). No access role.
