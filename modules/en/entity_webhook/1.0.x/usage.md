<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Webhook provides webhook ingestion and entity upsert functionality for Drupal content entities.

---

Entity Webhook **ingests inbound webhooks and upserts content entities** — it exposes receiver endpoints at
`/webhook/{endpoint_name}/{source_type}` (POST) that parse a JSON payload and, via configurable field mappings,
create or update Drupal content entities; submodules add outbound broadcast and polling. It provides its own
permissions, in the Services package.

Use it to sync external data into Drupal entities. It is a **web-services** feature with an important security
property you must configure correctly: **the receiver route is public (`_access: 'TRUE'`) and payload
verification is optional and fail-open.** `WebhookController::receive()` gates processing on `runVerification()`,
which **returns TRUE (accept) whenever the source type's verification plugin is empty** — and that field
**defaults to empty**, with the config form offering "- None -" ("Leave empty for no verification"). So a webhook
source type created **without** choosing a verifier will accept **unauthenticated** POSTs whose attacker-controlled
JSON is written into created/updated content entities (content injection / overwrite, and worse depending on the
mapped entity type and fields). The module ships **HMAC**, **API-key** and **domain-whitelist** verifier plugins —
**always configure one** on every source type; treat "- None -" as unsafe. Store any HMAC/API-key secret via the
Key module or env, serve over HTTPS, and scope field mappings to the minimum needed. (This fail-open default is
recorded as a campaign security finding; the safe fix upstream would be to fail closed when no verifier is set.)
Configure the endpoint, source type **and a verification plugin**.

---

- Ingest inbound webhooks + upsert entities.
- Expose POST receivers at /webhook/{endpoint}/{source_type}.
- Map JSON payloads into content entities.
- Provide its own permissions + outbound/polling submodules.
- Serve web services.
- Sync external data into Drupal.
- EXPOSE the receiver as public (_access: TRUE) with FAIL-OPEN verification.
- Accept unauthenticated POSTs when no verifier is set (default empty / '- None -').
- Let attacker JSON create/update entities (content injection/overwrite) in that case.
- SHIP HMAC/API-key/domain-whitelist verifiers — ALWAYS configure one (never '- None -').
- Store the HMAC/API-key secret via Key/env + serve over HTTPS + scope field mappings.
- Configure the endpoint, source type AND a verification plugin.
- Handle webhook ingestion.
- Upsert entities.
- Configure the verifier.
- Receive webhooks.
- Map payloads.
- Verify requests.
- Fail closed by configuring a verifier.
- Provide entity webhook ingestion.
