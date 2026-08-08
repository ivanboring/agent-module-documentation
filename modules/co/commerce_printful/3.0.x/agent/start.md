<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Printful — agent index

Integrates Drupal Commerce with **Printful** (print-on-demand — product sync + order fulfillment + shipment
webhook). Depends on `commerce`; Drush + permissions. Version **3.0.1**. Core `^10.1||^11`.

**SECURITY CAVEAT (3.0.1):** the fulfillment webhook `/commerce-printful/webhooks` is **unauthenticated** —
no signature/secret/store check; `package_shipped` writes `setShippedTime`/`setTrackingCode`/
`setShippingService` from the payload with **no re-fetch** from Printful's API. An attacker who guesses a
shipment `external_id` can forge shipped status + inject tracking (fulfillment spoofing/tampering — NOT a
payment bypass). Mitigate the webhook (secret/allow-list); API key as secret; HTTPS. See `security.md`.
