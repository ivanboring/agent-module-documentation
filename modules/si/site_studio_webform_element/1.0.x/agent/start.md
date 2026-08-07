<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Site Studio Webform Element (site_studio_webform_element) — agent index

Adds a **Webform picker** to the Site Studio builder. Version **1.0.2**. Core `^9 || ^10 || ^11`.
Depends on **`cohesion`** and `webform`. Requires the Site Studio stack — Acquia's commercial
product; nothing to do on any other site.

Same shape as `site_studio_views_element` (wave 84): every existing capability needs re-exposing in
the builder's terms — a recurring cost of a proprietary page builder.

**Two checks on any placed webform:** the form's **own access settings still apply** (a restricted
form on a public page renders as **nothing at all**, which is why it gets reported as "the form
disappeared"), and a public form **will be found by bots** — confirm the site's CAPTCHA/honeypot
applies.