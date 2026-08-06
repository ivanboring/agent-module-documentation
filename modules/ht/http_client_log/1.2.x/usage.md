<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
HTTP Client Log records outbound HTTP requests made through Drupal's client as entities, with a viewer and detail pages.

---

Debugging an integration without this is guesswork. A payment gateway rejects a request and the site knows only that it failed; a CRM sync produces the wrong records and nobody can see what was sent; an API returns 400 and the message is in a response nobody kept. The provider's own dashboard shows their side, which is often enough and is not always available and never shows what the site actually transmitted. Logging requests as entities gives them a listing, a detail view, and access control through `_entity_access` rather than a flat permission — which is the right structure. Version **1.2.1** on `^8.8` through `^11`, in the Development package. **The privacy and security weight is the whole story and it should be stated first**, because a request log is the most sensitive log a Drupal site can keep. Outbound requests carry **Authorization headers, API keys and bearer tokens**; their bodies carry **whatever is being synchronised**, which for a CRM or payment integration is personal and financial data; and the responses carry the same. A complete log is therefore a credential store and a copy of the data, in the database, in every backup, and readable by whoever holds the permission. Three consequences. **Redact headers and bodies rather than storing them whole**, or accept that the log needs the same protection as the credentials in it. **Keep it off production**, or enable it deliberately and briefly for a specific investigation, which is what the Development package implies. And **set a retention limit**, because a log with no expiry on a busy integration grows without bound and becomes the largest table in the database.

---

- Debug a failing payment gateway call.
- See what was sent to a CRM.
- Investigate an API 400 response.
- Log outbound integration requests.
- Diagnose a sync producing wrong records.
- Capture a request for a support ticket.
- Verify a webhook's outgoing payload.
- Debug an authentication failure.
- Inspect an API's error response.
- Trace an integration's behaviour.
- Confirm what a module transmits.
- Debug a migration reading an API.
- Investigate an intermittent failure.
- Capture request timing.
- Verify a header is being sent.
- Debug a provider's rejection.
- Support an integration handover.
- Inspect a third-party call's response.
