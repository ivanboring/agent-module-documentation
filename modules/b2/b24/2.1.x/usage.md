<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
b24 provides tools for interactions with Bitrix24 CRM.

---

b24 integrates Drupal with Bitrix24 CRM — providing tools to interact with the Bitrix24 API, with
submodules for Commerce, contact forms, users, UTM tracking and Webform, so Drupal data (leads, contacts,
orders) can flow to Bitrix24. It is configured at `b24.credentials`, provides its own permissions, in the
bitrix24 package.

Use it to push/sync data with Bitrix24. Security note: it authenticates to Bitrix24 with API credentials
(webhook URL / OAuth) — **store those as secrets** (not in exported config), operate over HTTPS, and be
mindful that data sent to Bitrix24 (contact/lead PII) is a privacy consideration (consent/handling). It has
no access-control role beyond its permission. Configure the Bitrix24 credentials.

---

- Integrate with Bitrix24 CRM.
- Push leads/contacts/orders to Bitrix24.
- Ship commerce/contact/user/utm/webform submodules.
- Configure at b24.credentials.
- Provide its own permissions.
- Store Bitrix24 credentials as secrets.
- Operate over HTTPS.
- Mind PII sent to Bitrix24.
- Have no access-control role beyond permission.
- Configure the Bitrix24 connection.
- Handle CRM integration.
- Sync data to Bitrix24.
- Handle credentials securely.
- Configure credentials.
- Push data to CRM.
- Integrate Bitrix24.
- Handle the API.
- Configure the integration.
- Sync CRM data.
- Connect to Bitrix24.
