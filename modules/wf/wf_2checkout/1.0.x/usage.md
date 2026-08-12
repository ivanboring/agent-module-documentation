<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
A 2Checkout (Verifone) payment integration for Webform.

---

Webform 2Checkout provides 2Checkout payment integration with Webform — so a webform can collect payment via 2Checkout / Verifone's hosted secure checkout, with a return handler that records the payment on the submission.

**Security warning (as shipped, 1.0.0):** the return endpoint `/wf-2checkout/return` is `_access: 'TRUE'` and, while it validates the ConvertPlus buyer-return HMAC signature, it **skips signature verification for any request it treats as a 'status callback'** (which is triggered merely by the request carrying a `status`/`message_type`/etc. key — attacker-controllable) and performs **no INS `HASH` verification** — so an anonymous attacker can forge a 'complete' payment status on any submission. **Verify the 2Checkout INS HASH for status callbacks and reject unsigned callbacks.** The 2Checkout secret word is admin-configured (store securely). Depends on `webform`; supports Drupal 10 and 11.

---

- Integrate 2Checkout with Webform.
- Collect payment via hosted checkout.
- Record payment on the submission.
- Validate the buyer-return signature.
- WARNING: status callbacks skip signature check.
- Verify the INS HASH for callbacks.
- Reject unsigned callbacks.
- Depend on `webform`.
- Support Drupal 10 and 11.
- Store the secret word securely.
- Handle 2Checkout.
- Take payments.
- Support Drupal.
- Support Drupal.
- Support Drupal.
