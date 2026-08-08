<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Useit Drupal Info (useit_drupal_info) — agent index

On **cron**, POSTs the site's **Drupal/PHP version + full module inventory (installed & latest
versions)** to an admin-configured `destination_url` + `api_key`. Version **3.1.0**. Settings gated by
`administer site configuration`.

**Data caveat:** this is sensitive **reconnaissance** — a complete map of which modules are installed,
their versions, and which are **outdated/vulnerable**. Admin-configured/opt-in (the right control),
but: use an **HTTPS** destination (don't send in clear), confirm you **trust the receiving endpoint**,
keep the **API key** secure. Misconfigured, it hands out the site's vulnerability map.