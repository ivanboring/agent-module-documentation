<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Eulerian integrates the Eulerian analytics platform for website tracking, with Commerce cart/checkout/product submodules.

---

Eulerian integrates the Eulerian analytics/marketing platform — adding Eulerian tracking to the site
so visitor behaviour and (via Commerce submodules) e-commerce events (cart, checkout, product) are sent
to Eulerian for analytics and attribution. It depends on core Path Alias, is configured at
`eulerian.settings_form`, ships `eulerian_commerce_*` submodules, and provides its own permissions.

Use it for Eulerian-based analytics/attribution. Like all analytics/tracking integrations, it has
privacy/consent implications: it sends visitor and (for Commerce) purchase/behaviour data to Eulerian —
obtain appropriate consent, integrate with your cookie-consent mechanism, disclose the tracking, and
store any Eulerian credentials as secrets. It is an integration/analytics feature with no access-control
role; configure the Eulerian account and which events are tracked.

---

- Track visitors with Eulerian.
- Send e-commerce events to Eulerian.
- Track cart/checkout/product.
- Depend on core Path Alias.
- Configure at eulerian.settings_form.
- Provide its own permissions.
- Use eulerian_commerce_* submodules.
- Obtain consent for tracking.
- Integrate cookie-consent.
- Disclose the tracking.
- Store Eulerian credentials as secrets.
- Send behaviour data to Eulerian.
- Support attribution.
- Configure tracked events.
- Mind privacy implications.
- Track purchases.
- Have no access-control role.
- Analyse visitor behaviour.
- Configure the Eulerian account.
- Send data to Eulerian.
