<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Charts Exposed Settings (charts_exposed_settings) — agent index
**Views field/filter plugins that expose chart title, subtitle, and X/Y axis-label inputs to visitors.**

- **Version:** 1.0.x
- **Core:** ^8.8 || ^9 || ^10 || ^11
- **Depends:** charts:charts
- **Views handlers:** `field_exposed_title`, `field_exposed_subtitle`, `field_exposed_xaxis_title`, `field_exposed_yaxis_title` (each registered as both field and filter, global group).
- **Mechanism:** `hook_views_pre_view()` reads `chart_title`/`chart_subtitle`/`y_axis_title`/`x_axis_title` query params and writes them into the Charts style settings.
- No configuration UI, no permissions, no stored config.

**Security:** All request-supplied label values pass through `Xss::filter()` before being applied to the chart, and output adds a `url` cache context. No routes, no mutating endpoints. No security findings.
