<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Printful integrates Drupal Commerce with Printful for print-on-demand product sync and order fulfillment.

---

Commerce Printful integrates Drupal Commerce with Printful — the print-on-demand service — syncing
products and sending orders to Printful for fulfillment, and receiving fulfillment updates (e.g. shipment/
tracking) via a webhook. It depends on Drupal Commerce, provides Drush commands and its own permissions, in
the Commerce (contrib) package.

Use it to fulfill Commerce orders through Printful. **Security caveat for this version (3.0.1): the
fulfillment webhook is not authenticated.** The public route `/commerce-printful/webhooks`
(`PrintfulController::webhooks`) does no signature/secret/store validation — it decodes the POST JSON and,
for a `package_shipped` event, loads the `commerce_shipment` by the payload's `external_id` and writes the
shipped time, **tracking code and shipping service straight from the payload**, without re-fetching from
Printful's authenticated API. (Printful doesn't HMAC-sign webhooks, so the right mitigation is to validate
the store and/or re-fetch the order — this does neither.) So an unauthenticated attacker who knows/guesses a
shipment's external_id could POST a forged `package_shipped` event to mark orders shipped and inject
arbitrary tracking numbers (fulfillment-status spoofing / customer-visible fake tracking) — it is **not** a
payment bypass (payment is a separate gateway), but it is order-data tampering. Store the Printful **API key
as a secret**, operate over HTTPS, and mitigate the webhook (a front-controller secret/allow-list, or track
upstream for a fix). See the local security.md. Configure the Printful connection.

---

- Integrate Commerce with Printful.
- Sync print-on-demand products.
- Send orders to Printful for fulfillment.
- Receive fulfillment updates via webhook.
- Depend on Drupal Commerce.
- Provide Drush commands and permissions.
- KNOW the fulfillment webhook is unauthenticated (this version).
- Understand it writes payload tracking data without re-fetch.
- Know an attacker can spoof shipped status/tracking.
- Mitigate the webhook (secret/allow-list).
- Store the Printful API key as a secret.
- Operate over HTTPS.
- Not treat the webhook as trusted.
- Track upstream for a fix.
- Configure the Printful connection.
- Handle print-on-demand fulfillment.
- Sync products.
- Fulfill orders via Printful.
- Handle credentials securely.
- Configure fulfillment.
