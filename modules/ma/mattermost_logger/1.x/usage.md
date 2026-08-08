<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mattermost Logger sends Drupal log messages to a Mattermost channel via Mattermost incoming webhooks.

---

Teams using Mattermost want Drupal alerts in their channel — errors, security events. Mattermost Logger forwards log messages to Mattermost via an incoming webhook. Two security-relevant points: the webhook URL is a secret (anyone with it can post to the channel), so keep it out of plain config; and log messages can contain sensitive data (the campaign has repeatedly seen modules log credentials, tokens or personal data), so forwarding logs to a chat channel forwards whatever those messages contain — configure which severities/types are sent, and be mindful that the destination channel now holds potentially-sensitive log content. Send only appropriate log levels and treat the channel accordingly.

---

- Send logs to Mattermost.
- Alert a channel on errors.
- Forward Drupal logs to chat.
- Get log alerts in Mattermost.
- Configure a webhook.
- Keep the webhook URL secret.
- Send only appropriate log levels.
- Beware sensitive data in logs.
- Filter by severity/type.
- Treat the channel as holding log data.
- Monitor via Mattermost.
- Route alerts to a channel.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.