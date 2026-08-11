<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CWV captures real-user Core Web Vitals in a self-hosted beacon and enriches them with Drupal signal.

---

CWV provides real-user Core Web Vitals (RUM) tracking: bundled JavaScript captures LCP, INP, CLS, FCP and TTFB from visitor sessions and posts them to an in-Drupal beacon endpoint, which stores each measurement in a custom table enriched with Drupal-side signal (route, role, cache state) via a tagged-service collector that sibling modules can extend. It is fully self-hosted end-to-end — no external services.

The beacon endpoint accepts measurements from visitors (including anonymous) by design; operators should be aware it writes to a custom storage table and consider rate-limiting/retention. Permissions cover administration (`administer cwv`) and reports (`view cwv reports`). Supports Drupal 10.3+ and 11.

---

- Track real-user Core Web Vitals.
- Capture LCP/INP/CLS/FCP/TTFB.
- Post to an in-Drupal beacon.
- Store measurements in a custom table.
- Enrich with route/role/cache signal.
- Use a tagged-service collector.
- Let sibling modules extend collection.
- Stay fully self-hosted.
- Accept visitor (incl. anonymous) beacons.
- Consider rate-limiting/retention.
- Gate admin with `administer cwv`.
- Gate reports with `view cwv reports`.
- Support Drupal 10.3+ and 11.
- Avoid external services.
- Correlate performance with Drupal state.
- Bundle the tracking JS.
- Report Core Web Vitals.
- Monitor real-user performance.
