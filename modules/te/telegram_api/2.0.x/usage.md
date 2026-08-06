<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Telegram API provides a Telegram bot client for other modules, with a `telegram_api_webform` submodule that posts form submissions to a chat.

---

Telegram is the notification channel of choice in a large part of eastern Europe, central Asia and the Middle East, and increasingly for technical teams anywhere, because a bot posting into a group chat reaches people where they already are — unlike email, which is checked, and unlike SMS, which costs money per message. The pattern is the same one every operations team eventually builds: a form submission, an order, a failed cron run or a new registration arrives in a channel the relevant people already have open. The webform submodule covers the most common case directly. Version **2.0.2** on core `^10 || ^11`. Three things belong in the deployment. **The bot token is the bot** — anyone holding it can read everything the bot can see and post as it, so it belongs in an environment variable behind a Key entity, and rotating it means talking to BotFather rather than editing a config file. **A group chat is not a private channel**: anyone in the group sees every message the bot posts, and groups accumulate members, so a bot posting form submissions is publishing whatever those submissions contain to whoever has been added since — which for a contact form means names, email addresses and free text, and is the failure that turns a convenience into a data-protection incident. And **Telegram is a third-party processor outside the EU for most deployments**, so a notification carrying personal data is a transfer, and "it's just our team chat" is not a lawful basis. Sending a link rather than the content is usually the right shape.

---

- Post form submissions to a Telegram chat.
- Notify a team of a new order.
- Alert on a failed cron run.
- Send registration notifications to a channel.
- Reach a team where they already are.
- Post a contact form enquiry to a group.
- Notify moderators of new content.
- Send an alert to an operations channel.
- Post a deployment notification.
- Notify staff of a booking.
- Send a support request to a chat.
- Alert on a payment failure.
- Notify a team without email.
- Post a summary to a channel.
- Send a link to new submissions.
- Support a Telegram-first organisation.
- Provide a bot client to a custom module.
- Notify on a workflow transition.
