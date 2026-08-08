<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mailjet API (mailjet_api) — agent index

Sends Drupal email through **Mailjet's API**. Version **8.x-1.6**. Core `^9 || ^10 || ^11`.
Permission `administer mailjet api`.

Configure it as the mail plugin. Needs Mailjet API key + secret — keep these out of plain config
(prefer a Key entity / env). Improves deliverability over local mail.