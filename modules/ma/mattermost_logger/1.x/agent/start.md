<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mattermost Logger (mattermost_logger) — agent index

Sends Drupal **log messages to a Mattermost channel** via incoming webhook. Version **1.0.1**.

**Security:** the webhook URL is a **secret** (keep out of plain config); **logs can contain
sensitive data** (credentials/tokens/PII) — forwarding logs forwards that to the channel. Filter
severities/types; treat the destination channel as holding log content.