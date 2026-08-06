<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Override Cache Control Headers (override_cache_control_headers) — agent index

Sets `Cache-Control` per URL, overriding what Drupal computes.
Configure at `override_cache_control_headers.admin`. Version **1.0.5**.
Core `^8 || ^9 || ^10 || ^11`.

Permission: `administer override cache control headers` — **`restrict access: true`**. Correct for
a setting with this reach.

**Say that Cache-Control is a security control, not only a performance one.** It decides whether a
shared cache — CDN, corporate proxy, browser on a shared machine — may store a response. A
too-permissive override on a personalised path is how one user's page is served to another.
**The direction of the mistake matters:** too conservative costs performance, too permissive leaks
data.

Review every override that touches a path returning anything user-specific.