<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
SMS Framework (machine name sms) is an extensible API connecting Drupal to SMS gateways — sending and receiving text messages, with pluggable gateway providers, phone-number verification and per-user routing.

---

Text messaging shows up across many features: two-factor codes, order updates, appointment reminders, alerts. Rather than each feature integrating a gateway directly, SMS Framework is the shared layer: a provider-agnostic API where the gateway (Twilio, and others) is a plugin, and modules send messages through a stable interface. It handles the message lifecycle, delivery reports where the gateway supports them, inbound messages, and binding phone numbers to users.

The security-relevant parts are the phone-number and gateway handling. It defines `administer smsframework` and, notably, `sms verify phone number` — phone verification is an identity-adjacent capability, and the framework provides the verification flow that features like SMS-based 2FA build on. Gateway credentials (a Twilio auth token, for example) are the secret to protect: they authorise sending messages that cost money and reach real phones, so they belong in secure configuration, not plain config that lands in git. Submodules add blast (bulk send), send-to-phone, and per-user features.

For any site that needs to send or receive SMS, this is the foundation the ecosystem builds on. Protect the gateway credentials, restrict who can administer it and trigger sends, and treat inbound/verification flows as the identity surface they are.

---

- Send an SMS from Drupal.
- Receive inbound SMS.
- Connect a Twilio gateway.
- Verify a user's phone number.
- Send a 2FA code by SMS.
- Send appointment reminders.
- Route messages per user.
- Add a pluggable SMS gateway.
- Send bulk SMS with sms_blast.
- Send content to a phone.
- Bind a phone number to a user.
- Handle delivery reports.
- Restrict who can send SMS.
- Protect gateway credentials.
- Send order updates.
- Provide an SMS API to other modules.
- Support SMS-based 2FA.
- Send alerts by text.
- Configure a gateway plugin.
- Keep the auth token out of git.
- Manage phone verification.
- Send transactional texts.