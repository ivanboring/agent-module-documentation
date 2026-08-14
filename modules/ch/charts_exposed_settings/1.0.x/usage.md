<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Charts Exposed Settings adds Views field and filter plugins that let visitors set a chart's title, subtitle, and X/Y axis labels through the exposed form.
---
The module targets Views-based charts built with the Charts module. Normally the chart title and axis labels are fixed in the Views style configuration. This module registers global Views field and filter handlers (`field_exposed_title`, `field_exposed_subtitle`, `field_exposed_xaxis_title`, `field_exposed_yaxis_title`) that render as exposed textfields, so an end user can type the title/labels when viewing the chart.

It works via `hook_views_pre_view()`: for a Charts style display it reads the `chart_title`, `chart_subtitle`, `y_axis_title`, and `x_axis_title` query parameters from the request and writes them into the chart style's settings (`display/title`, `display/subtitle`, `yaxis/title`, `xaxis/title`). Each incoming value is passed through `Xss::filter()` before being applied and a `url` cache context is added, so reflected values are sanitized. There is no configuration UI and no stored data — the exposed inputs simply drive the chart labels for that request.

Typical setup: build a chart in Views, add one of the exposed chart fields or filters to the display, expose it, and give it the expected identifier so its query parameter maps onto the chart setting.
---
- Let visitors set a chart's main title via an exposed form input.
- Let visitors set a chart subtitle at view time.
- Expose an editable X-axis label on a Views chart.
- Expose an editable Y-axis label on a Views chart.
- Drive chart titles from URL query parameters (`?chart_title=...`).
- Add exposed chart labels as Views fields.
- Add exposed chart labels as Views filters (InOperator-based).
- Build a dashboard where users rename the chart before exporting/screenshotting.
- Pre-fill chart labels via a shareable URL with query parameters.
- Combine several exposed label inputs on one chart display.
- Sanitize user-supplied chart text automatically with Xss::filter.
- Keep chart output cache-varied per URL for exposed values.
- Provide report titles that reflect the current filter selection.
- Hide operator/value UI on the exposed filter so only the label field shows.
- Set the exposed identifier (e.g. `chart_title`) so the parameter maps correctly.
- Give non-technical users control over chart presentation without editing the View.
- Support any Charts render library that reads title/subtitle/axis settings.
