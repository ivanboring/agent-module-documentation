<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Alert Telegram integrates with Telegram for quick alerts.

---

Alert Telegram **sends alert/notification messages to Telegram** — pushing site events/alerts to a Telegram
chat/channel via a bot, for quick operator notifications. It depends on core Block, provides its own permissions,
in the Custom package.

Use it to get site alerts in Telegram. It is an integration/notifications feature. Security/data handling: it
authenticates with a **Telegram bot token** (store it as a **secret** — env/Key — over HTTPS; a leaked bot token
lets anyone post as the bot) and sends messages to a configured chat — keep alert content free of sensitive data.
It has no access-control role beyond its permission. Configure the bot token and chat.

---

- Send alerts to Telegram.
- Push events to a chat/channel.
- Use a Telegram bot.
- Depend on core Block.
- Provide its own permissions.
- Notify operators quickly.
- Store the bot token as a secret.
- Use HTTPS (leaked token = post as bot).
- Keep alert content non-sensitive.
- Have no access-control role beyond permission.
- Configure the bot token and chat.
- Handle Telegram alerts.
- Send messages.
- Configure the bot.
- Push alerts.
- Handle the integration.
- Notify via Telegram.
- Alert operators.
- Secure the token.
- Provide Telegram alerts.
