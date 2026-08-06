<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Request Info (request_info) — agent index

Shows **request details on the status report**. Version **8.x-1.5**.
Core `^8 || ^9 || ^10 || ^11`. No dependencies, routes or permissions of its own.

Answers "what does Drupal actually see?" behind a proxy or CDN — wrong client IP, wrong scheme
causing redirect loops, wrong host breaking absolute URLs, trusted-proxy mismatches.

**Be deliberate about what it displays.** Headers can include cookies, authorization values and
forwarding chains revealing internal network structure. The status report is behind `administer
site configuration`, but that page now carries request detail — **sanitise before sharing a
screenshot**, which is exactly what people do when asking for help with an environment problem.