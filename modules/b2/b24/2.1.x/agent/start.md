<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# b24 — agent index

Integrates Drupal with **Bitrix24 CRM** (push leads/contacts/orders; commerce/contact/user/utm/webform
submodules). Config at `b24.credentials`; provides permissions. Version **2.1.1**. Core `^9||^10||^11`.

**Security:** store Bitrix24 API credentials (webhook/OAuth) as **secrets**; HTTPS; data sent is PII
(privacy). No access role beyond permission.
