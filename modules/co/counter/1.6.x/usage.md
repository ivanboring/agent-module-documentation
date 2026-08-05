<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Counter displays site statistics in a block — total visits, node count, unique visitors, and the visitor's own IP address — the "you are visitor number 12,345" pattern, implemented locally rather than through an analytics service.

---

Configuration is split across an admin section at `/admin/config/counter` with basic and advanced forms, all behind the module's own `administer counter` permission, and the display is a block with its own stylesheets including a dashboard view. It requires `matomo/device-detector ^5.0.3`, the same library `universal_device_detection` wraps (wave 59) — used here to classify visitors rather than to expose a service, which is why unique-visitor counting can distinguish browsers from crawlers. The `interface translation project` key means UI strings come from drupal.org's localisation server. Three things are worth weighing before adding it to a public site. Counting visitors locally means **recording visitor data** — IP addresses, at minimum — which is personal data under GDPR and needs a lawful basis and a retention plan. Displaying a visitor's **own IP address** back to them is harmless in itself but surprising, and on a site behind a proxy or CDN it will show the wrong address unless trusted-proxy settings are correct. And a counter that writes on every request interacts badly with page caching — the usual outcome is either an inaccurate count or a hole in the cache. Core requirement is `^9 || ^10 || ^11`.

---

- Show a visit counter in a block.
- Display the total number of nodes.
- Count unique visitors to a site.
- Show a visitor their own IP address.
- Provide simple statistics without an analytics service.
- Keep visitor counts inside Drupal.
- Show statistics on an intranet dashboard.
- Distinguish visitors from crawlers.
- Give a community site a visible counter.
- Display counts in a footer block.
- Restrict counter configuration to administrators.
- Report content volume to stakeholders.
- Provide statistics where external analytics is blocked.
- Show growth on a project site.
- Style the counter to match a theme.
- Translate counter labels.
- Provide a nostalgic hit counter.
- Show statistics without third-party tracking.
