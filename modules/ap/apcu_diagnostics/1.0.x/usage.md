<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
APCu Diagnostics integrates the APCu tools (krakjoe/apcu) into Drupal, surfacing APCu cache diagnostics.

---

APCu Diagnostics brings the diagnostic tools from the APCu extension (krakjoe/apcu) into Drupal,
letting administrators inspect the state of the APCu in-memory cache — usage, hit/miss statistics and
entries — from within the site. APCu is often used as a fast cache backend or for the class/metadata
cache, and this module makes its runtime state visible for tuning and troubleshooting. It provides its
own permissions.

Use it to monitor and diagnose APCu on servers where it backs caching. It is an administration/developer
diagnostic tool that reads APCu state; access is gated by its permission (grant it only to trusted
administrators, since cache internals can reveal operational detail). It has no effect on content or
site access.

---

- Inspect APCu cache state in Drupal.
- View APCu usage statistics.
- See APCu hit/miss rates.
- Diagnose APCu caching.
- Integrate krakjoe/apcu tools.
- Tune APCu-backed caches.
- Provide its own permissions.
- Grant diagnostics to trusted admins.
- Troubleshoot cache performance.
- Monitor in-memory cache entries.
- Read APCu runtime state.
- Support cache tuning.
- Surface APCu diagnostics.
- Have no content/access effect.
- Inspect the metadata cache.
- Check APCu memory use.
- Aid performance troubleshooting.
- View cache internals (restrict access).
- Diagnose an APCu backend.
- Monitor caching health.
