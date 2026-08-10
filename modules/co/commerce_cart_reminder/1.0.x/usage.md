<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Commerce Cart Reminder sends reminder emails for abandoned carts.

---

Commerce Cart Reminder **sends reminder emails for abandoned carts** — detecting carts that were left
without checkout and emailing the customer (token-personalized) a nudge to complete the purchase. It depends on
core Commerce Cart and Token, provides its own permissions, in the Commerce package.

Use it to recover abandoned carts via email. It is an e-commerce/marketing feature. Data-handling note: it emails
**customers** using their cart/account data (personal data — respect marketing-consent/privacy rules and
unsubscribe expectations), and sends mail automatically (via cron/queue) — keep the sending sane to avoid
spamming. It has no access-control role beyond its permission. Configure the reminder timing and template.

---

- Email reminders for abandoned carts.
- Detect carts left without checkout.
- Nudge customers to complete.
- Depend on core Commerce Cart and Token.
- Provide its own permissions.
- Personalize with tokens.
- Email customers using cart/account data (PII).
- Respect marketing-consent/unsubscribe.
- Avoid spamming (sane sending).
- Have no access-control role beyond permission.
- Configure timing and template.
- Handle cart reminders.
- Send reminders.
- Configure the reminders.
- Recover carts.
- Handle the emails.
- Nudge customers.
- Email carts.
- Respect consent.
- Provide cart reminders.
