<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Title HTML (title_html) — agent index

Renders a **separate HTML-title field** in place of the plain node title. Version **2.1.3**. Submodule
`commerce_title_html`.

**Security (verified):** it renders via **`check_markup($value, $format)`** — the text-format filter
pipeline, NOT raw HTML — and strips tags for the branding block. So XSS safety = **the field's text
format**: use a **restricted format** (basic_html); Full HTML would let an author inject script.
Titles in other contexts (HTML `<title>`, breadcrumbs, admin lists) show as plain/escaped text.