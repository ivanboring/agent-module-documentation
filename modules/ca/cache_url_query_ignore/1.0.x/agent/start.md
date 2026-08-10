<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cache URL Query Ignore — agent index

**Alters URL cache context keys to ignore specified query parameters** (utm_*/fbclid — improve cache hit rates).
Version **1.0.0**. Core `^10||^11`.

Performance — only ignore params that **don't change output** (else wrong cached content); no content/access
role.
