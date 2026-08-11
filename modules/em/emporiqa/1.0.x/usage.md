<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Integrates Drupal Commerce with the Emporiqa chat assistant.

---

Emporiqa integrates Drupal Commerce with the Emporiqa chat assistant — embedding an on-site AI shopping-chat widget that can read the visitor's cart and add/update items via small JSON cart endpoints, plus a signed user-identity token so the widget can identify the shopper.

The cart endpoints operate on the current session's cart via Commerce's cart provider (with a CSRF token service), and the user token is HMAC-signed with an admin-configured `webhook_secret` (set it strongly, env-backed; the token endpoint returns null if unset). Depends on `commerce_product` and core `node`; supports Drupal 10.3+, 11, and 12.

---

- Integrate Commerce with Emporiqa.
- Embed an AI shopping chat.
- Read the visitor's cart.
- Add/update cart items via JSON.
- Operate on the session cart (CSRF).
- Issue a signed user token.
- Sign with an admin `webhook_secret`.
- Set the secret strongly (env-backed).
- Depend on `commerce_product` and core `node`.
- Support Drupal 10.3+, 11, and 12.
- Aid commerce chat.
- Handle the assistant
- Support Drupal.
- Support Drupal.
- Support Drupal.
