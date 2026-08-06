<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Telegram API (telegram_api) — agent index

Telegram **bot client** for other modules, with **`telegram_api_webform`** posting form submissions
to a chat. Version **2.0.2**. Core requirement `^10 || ^11`.

**Why the channel:** Telegram is the default notification channel across much of eastern Europe,
central Asia and the Middle East, and increasingly for technical teams anywhere — a bot posting into
a group reaches people **where they already are**, unlike email (checked) and SMS (costs per
message).

**Three things for the deployment:**
1. **The bot token is the bot.** Anyone holding it can read what the bot sees and **post as it** —
   environment variable behind a **Key** entity, and rotating means talking to **BotFather**, not
   editing a config file.
2. **A group chat is not a private channel.** Everyone in the group sees every message, and **groups
   accumulate members** — a bot posting form submissions publishes them to whoever has been added
   since. For a contact form that is names, email addresses and free text. This is the failure that
   turns a convenience into a data-protection incident.
3. **Telegram is a third-party processor, outside the EU for most deployments.** A notification
   carrying personal data is a **transfer**, and *"it's just our team chat"* is not a lawful basis.

**Sending a link rather than the content is usually the right shape.**
