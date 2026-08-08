<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce CardPointe provides Commerce integration for CardPointe Payments.

---

Commerce CardPointe provides a Drupal Commerce payment gateway for CardPointe — the CardConnect / Fiserv
payment platform — so a store can process card payments through CardPointe (tokenized card handling). It
provides its own permissions, depends on Drupal Commerce, in the Commerce (contrib) package.

Use it to accept payments via CardPointe. Security notes for the payment integration: store the CardPointe
**API credentials as secrets** (not exported config), operate over HTTPS, and rely on **server-side**
authorization/capture against CardPointe's authenticated API (with tokenized card data kept off your server
where possible) rather than trusting a client result. Confirm test vs live mode. It is an e-commerce/payment
feature. Configure the CardPointe credentials.

---

- Provide a CardPointe payment gateway.
- Process card payments via CardPointe.
- Use CardConnect/Fiserv.
- Depend on Drupal Commerce.
- Provide its own permissions.
- Store CardPointe credentials as secrets.
- Operate over HTTPS.
- Authorize/capture server-side against CardPointe's API.
- Keep tokenized card data off the server.
- Confirm test vs live mode.
- Configure the CardPointe credentials.
- Handle CardPointe payments.
- Process payments securely.
- Configure the gateway.
- Handle credentials securely.
- Accept card payments.
- Integrate CardPointe.
- Configure payments.
- Handle the gateway.
- Process CardPointe charges.
