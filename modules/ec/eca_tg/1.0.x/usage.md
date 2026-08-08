<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECA Telegram provides an ECA action to send a message to Telegram.

---

ECA Telegram provides an ECA (Event-Condition-Action) action for sending messages to Telegram — so
no-code ECA models can send notifications to a Telegram chat/channel (via a Telegram bot) when events occur.
It depends on the ECA module, in the ECA package.

Use it to send Telegram notifications from ECA automations. Security note: it uses a Telegram **bot token**
to send — **store that token as a secret** (not in exported config), operate over HTTPS, and be mindful of
what content is sent to Telegram (avoid sending sensitive data to an external chat). It has no access-control
role. Configure the Telegram bot and ECA action.

---

- Send Telegram messages from ECA.
- Provide an ECA Telegram action.
- Notify a Telegram chat/channel.
- Depend on the ECA module.
- Use a Telegram bot.
- Store the bot token as a secret.
- Operate over HTTPS.
- Avoid sending sensitive data to Telegram.
- Have no access-control role.
- Configure the Telegram bot.
- Handle Telegram notifications.
- Send notifications.
- Configure the ECA action.
- Notify via Telegram.
- Handle messaging.
- Send messages.
- Configure notifications.
- Handle credentials securely.
- Configure Telegram.
- Send to Telegram.
