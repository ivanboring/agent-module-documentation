<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# REST Absolute URLs (rest_absolute_urls) — agent index

Rewrites relative URLs to absolute in REST-serialised content. Depends on core `serialization`.
Core requirement `^8 || ^9 || ^10 || ^11`. No routes, permissions or configuration.

Key facts:
- **The problem:** Drupal renders URLs relative to the site root, which is right in a page and
  useless in an API response. Every consumer otherwise prefixes the base URL itself, in several
  places, inconsistently.
- **Check the base URL Drupal believes it has.** Behind a reverse proxy or CDN this depends on
  **`trusted_host_patterns`** and the `reverse_proxy` settings in `settings.php`. Get those wrong
  and the absolute URLs are wrong — visibly in the API, invisibly in the browser, which is why
  the bug is usually found late.
- Applies at the **serialisation layer**, so every REST consumer benefits without knowing about it.
