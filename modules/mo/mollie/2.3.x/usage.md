<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mollie for Drupal integrates the Mollie payment service provider — widely used in the Netherlands and Belgium for iDEAL, cards and local payment methods — with Drupal, both as a Commerce gateway and as a way to take payment from a webform.

---

The project's shape is worth understanding: a base module holding the API client and a `mollie_payment` entity, plus three submodules for the contexts payments happen in. **mollie_commerce** is the Drupal Commerce gateway; **mollie_webform** takes payment as part of a webform submission, which is the route for donations, event fees and registrations where a full shop is unnecessary; and **mollie_customers** manages Mollie customer records for recurring or stored-payment scenarios. The API work is done by `mollie/mollie-api-php ^2.52`. Both declared permissions — `access mollie payments overview` and `administer mollie` — are marked **`restrict access: TRUE`**, correctly, since the payments overview lists financial records. Note the requirement mismatch worth checking on a host: the info file declares **`php: 8.3`** while composer says `>=8.1`; the stricter one wins at install time. As with any PSP integration, the API key is a live credential belonging in an environment variable rather than exported configuration, and the webhook that Mollie calls to confirm payment is the security-critical path — it must be authenticated by verifying the payment status with Mollie rather than trusting the callback's contents.

---

- Take iDEAL payments on a Drupal site.
- Add Mollie as a Commerce payment gateway.
- Collect a donation through a webform.
- Charge a registration fee at submission.
- Accept cards and local payment methods.
- Manage Mollie customers for recurring payments.
- View a payments overview in Drupal.
- Take payment without a full shop.
- Support Dutch and Belgian payment habits.
- Reconcile payments against submissions.
- Restrict the payments overview to finance staff.
- Handle payment confirmation webhooks.
- Refund through the gateway.
- Support an event booking flow.
- Take a deposit on a form.
- Integrate with Drupal Commerce checkout.
- Store a customer for later charges.
- Report on payment status.
