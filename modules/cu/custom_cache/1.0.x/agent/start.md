<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom cache (custom_cache) — agent index

Cache backend imposing a **maximum lifetime on `CACHE_PERMANENT`** items.
Version **1.0.2**. Core `^8.8 || ^9 || ^10 || ^11`. No dependencies.

**The failure it hedges against:** an invalidation that never fires makes a permanent item
permanently wrong, fixable only by a manual cache clear.

**Describe it as a mitigation, not a fix.** A site relying on the cap has a bug it can no longer
see, and the cap makes it **intermittent** rather than absent — harder to diagnose, not easier.
Right use: a safety net where some data comes from outside Drupal's invalidation reach, with the
cap long enough not to mask a real problem.

Set the cap against **acceptable staleness**, not against desired cache-miss frequency.