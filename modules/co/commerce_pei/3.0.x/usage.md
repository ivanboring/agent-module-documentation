<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Pei adds an on-site Pei payment gateway for Drupal Commerce.

---

Commerce Pei integrates the Pei payment provider with Drupal Commerce as an on-site payment gateway — the customer enters payment details during checkout and the payment is created/captured synchronously, with buyer authorization handled in the payment-method creation step.

As an on-site gateway, it processes payment during checkout with the buyer present (no anonymous async callback). Configure the Pei API credentials securely (env-backed). Depends on Commerce `commerce_payment` and core `telephone`; supports Drupal 10 and 11.

---

- Integrate the Pei payment provider.
- Provide an on-site gateway.
- Capture payment during checkout.
- Create payments synchronously.
- Handle buyer authorization at method creation.
- Configure Pei credentials securely.
- Keep credentials env-backed.
- Depend on Commerce `commerce_payment`.
- Depend on core `telephone`.
- Support Drupal 10 and 11.
- Process payment with the buyer present.
- Avoid async callback risk.
- Support card entry at checkout.
- Complete payments on capture.
- Integrate with Commerce checkout.
- Manage payment methods.
- Support the Pei gateway.
- Handle synchronous authorization.
