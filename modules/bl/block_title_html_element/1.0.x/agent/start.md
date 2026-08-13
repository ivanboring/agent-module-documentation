<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Title HTML Element (block_title_html_element) — agent index

**Admin picks the HTML element wrapping a block title, from a safe allowlist.**

- **Version:** 1.0.x (1.0.0-beta1), core `^9 || ^10 || ^11`, PHP 8.1, depends on `drupal:block`
- **Permission:** `administer block title element`
- **Service:** `block_title_html_element.validator` (`ElementValidator`) — allowlist `h2–h6, span, p, em, b, i` (no h1)
- **Storage:** block third-party setting `title_element`; render via `title_element` Twig var (default `strong`)
- **Hooks:** `block_form_alter` (permission-gated), `block_presave` (unsets invalid/empty values), `hook_block_title_html_element_allowed_elements_alter`
- **Security:** value validated against a server-side allowlist at save and gated by `administer block title element`; no routes; no XSS/markup-injection surface (arbitrary elements rejected).
