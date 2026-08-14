<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CookieCuttr shows an EU cookie-law consent notice/banner on the site, driven by the CookieCuttr jQuery plugin.

---

A `page_attachments_alter` hook (`CookiecuttrHooks`) attaches the `cookiecuttr/cookiecuttr` library and passes the module's settings to the front end via `drupalSettings` (built by `cookiecuttr_settings()`), so the notice is rendered on every page. All wording, colours, link targets and behaviour (accept/decline, reset link, whether scripts are blocked until consent) are controlled from a single settings form at `/admin/config/user-interface/cookiecuttr`, gated by the `administer cookiecuttr` permission. The module depends on the `js_cookie` library module.

This is a purely presentational/consent widget: it exposes one admin configuration route and no mutating or anonymous endpoints. Setup is: enable the module and `js_cookie`, then open the settings form and enter your cookie-policy text and link.

---

- Show an EU cookie-consent notice on every page.
- Configure the notice text at `/admin/config/user-interface/cookiecuttr`.
- Set the "read more" cookie-policy page link.
- Customise Accept and Decline button labels.
- Provide a "reset cookie choice" link for visitors.
- Style the banner colours and position.
- Choose whether the notice appears at top or bottom.
- Restrict configuration to users with `administer cookiecuttr`.
- Comply with EU cookie-law disclosure requirements.
- Localise the consent message.
- Show or hide the notice based on prior consent (stored via js_cookie).
- Block or allow analytics scripts until consent is given.
- Set how long the consent choice is remembered.
- Attach the CookieCuttr library site-wide automatically.
- Pass module settings to JS through drupalSettings.
- Pair with analytics modules for consent-gated tracking.
- Provide a clear opt-out mechanism for GDPR.
- Adjust wording for different jurisdictions.
