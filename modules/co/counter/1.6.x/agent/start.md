<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Counter (counter) — agent index

Block showing visit counts, node count, unique visitors and the client IP. Requires
`matomo/device-detector ^5.0.3`. Core requirement `^9 || ^10 || ^11`.
Admin at `/admin/config/counter` (basic + advanced forms), permission **`administer counter`**.

Key facts:
- Uses the same library as `universal_device_detection` (wave 59), here to classify visitors so
  unique counting can separate browsers from crawlers.
- **Three cautions to raise before a public deployment:**
  1. *Privacy.* Counting unique visitors means storing visitor data, including IP addresses —
     personal data under GDPR. Needs a lawful basis, a retention period and a privacy-notice
     entry. "It's just a counter" is not an exemption.
  2. *Proxies.* The client IP shown will be the proxy's unless Drupal's trusted-proxy settings
     (`reverse_proxy`, `reverse_proxy_addresses` in `settings.php`) are configured. Behind a CDN
     this is the default failure.
  3. *Page cache.* A counter that increments per request fights the internal page cache — you get
     either an inaccurate count or an uncacheable page. Check which, under anonymous traffic.
- `'interface translation project': counter` — strings come from drupal.org's localisation server.
- `.info.yml` reports the legacy `version: '8.x-1.6'`.
