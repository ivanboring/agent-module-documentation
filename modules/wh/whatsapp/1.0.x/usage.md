<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal WhatsApp sends messages through WhatsApp's Business API, for notifications on the channel a large part of the world actually reads.

---

In much of Latin America, South Asia, Africa and southern Europe, WhatsApp is the default messaging channel and email is something people check occasionally — a delivery notification, an appointment reminder or a booking confirmation sent by email is simply less likely to be seen than the same message on WhatsApp. This module supplies the integration, and the notable detail is its dependency: **`key`**, the standard Drupal module for credential storage, is a hard requirement rather than a suggestion. That is exactly the right decision and unusual enough to be worth calling out — most integration modules put an API token in a settings form and therefore into exported configuration, where it reaches version control; requiring a Key entity means the token can come from an environment variable and never touch config. Version **1.0.5** on core `^10.2 || ^11`, with `whatsapp configuration form` marked `restrict access: true`. Two things to understand about the channel rather than the module. WhatsApp's Business API is **template-based for business-initiated messages**: outside a 24-hour window opened by the user contacting you, only pre-approved message templates may be sent, so the copy has to be submitted to Meta and approved before the site can use it — which changes the development workflow, since message text is no longer something a developer edits freely. And it is a **paid, per-conversation** channel with an account that can be suspended for policy violations, so the failure modes include commercial and policy ones, not just technical.

---

- Send order updates over WhatsApp.
- Notify users on their preferred channel.
- Send appointment reminders.
- Confirm a booking by message.
- Reach users who do not read email.
- Send delivery notifications.
- Support a Latin American audience.
- Send a two-factor code by WhatsApp.
- Notify about a support ticket update.
- Send event reminders.
- Reach customers in South Asia.
- Send a shipping notification.
- Support a messaging-first market.
- Send a payment confirmation.
- Notify about an account change.
- Store the API token in a Key entity.
- Send template-based business messages.
- Reduce missed notifications.
