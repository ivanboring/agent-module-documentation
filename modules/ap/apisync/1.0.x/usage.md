<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
API Sync integrates Drupal with a REST/OData API.

---

API Sync provides a **framework to integrate Drupal with a REST / OData API** — synchronizing entities/data
between Drupal and an external system's API (mappings, pull/push), modelled after Salesforce-style sync. It
provides its own permissions, in the liip package.

Use it to two-way-sync Drupal with an external API. It is an integration framework. Security/data handling: it
authenticates to the **external API** with **credentials** (store as secrets — env/Key — over HTTPS) and
exchanges **entity/record data** (which may be PII) — handle per privacy obligations, and gate sync configuration
by its permission. It has no access-control role beyond its permission. Configure the API connection and
mappings.

---

- Sync Drupal with a REST/OData API.
- Map/pull/push entities.
- Integrate an external system.
- Provide its own permissions.
- Serve integration.
- Two-way sync data.
- Authenticate to the external API (credentials as secrets, HTTPS).
- Exchange entity/record data (may be PII).
- Handle PII per privacy + gate config by permission.
- Have no access-control role beyond permission.
- Configure the connection and mappings.
- Handle API sync.
- Sync entities.
- Configure the mappings.
- Pull/push data.
- Handle the integration.
- Sync records.
- Connect the API.
- Secure the credentials.
- Provide API sync.
