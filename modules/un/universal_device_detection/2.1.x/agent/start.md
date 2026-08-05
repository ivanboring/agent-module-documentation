<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Universal Device Detection (universal_device_detection) — agent index

Service wrapper around **`matomo/device-detector ~6`**. No routes, no permissions, no config,
no blocks. Core requirement `^9 || ^10 || ^11`.

Key facts:
- Whole module: `src/Detector/`, `universal_device_detection.services.yml`, info/composer/licence.
  Enabling it alone does nothing — inject the service and query it.
- **Cache-context warning, the main thing to get right.** Any response that varies on the result
  must declare a matching cache context. Without it the internal page cache serves one device's
  variant to the next visitor. The failure is silent and appears only under real traffic.
- **Prefer CSS where you can.** Media queries and responsive images respond to the actual
  viewport; user-agent parsing is a guess, and browsers are actively freezing and reducing UA
  strings. Server-side detection earns its place for analytics, app-store redirects and
  decisions CSS genuinely cannot make — not for layout.
- Matomo's library is maintained alongside Matomo Analytics with a current device database, which
  is why it is the right dependency for this job; keep it updated or detection quality decays.
