<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Zoom API is a developer module wrapping the Zoom.us REST API: it registers a Zoom client through the API Tools framework and exposes incoming Zoom webhooks as Drupal events, so custom code can react to meetings, recordings and participants.

---

Rather than shipping a UI, the module gives developers the two halves of a Zoom integration. Outbound, it defines a client via `apitools` — the configuration form is API Tools' own (`configure: apitools.client_config_form.zoomapi`), so credentials, base URL and OAuth settings are managed there, and a `ZoomapiServiceProvider` wires the client into the container. Inbound, a single route `/zoomapi-webhooks` accepts **POST only** and hands the payload to `ZoomApiWebhooksController::capture()`, which dispatches a `ZoomApiWebhookEvent` carrying the decoded payload, the event name and the original request — so a custom module subscribes to that event and reacts. Access to the webhook route is a `_custom_access` callback, `ZoomApiWebhooksController::authorize()`, implementing Zoom's signature verification: it requires the `x-zm-signature` header and a configured Event Secret Token, rebuilds the expected signature from the request, and allows the request only if the two match — otherwise it logs a notice and returns `AccessResult::forbidden()`. The route is marked `no_cache`. As the description says, this is "mainly meant to be a developer module": read the README before wiring it up.

---

- React in Drupal when a Zoom meeting ends.
- Store recording links when Zoom publishes them.
- Create Drupal content from Zoom webinar registrations.
- Sync meeting participants into Drupal.
- Trigger notifications on Zoom events.
- Call Zoom REST endpoints from custom code.
- Manage Zoom credentials through API Tools.
- Verify webhook authenticity with Zoom's signature scheme.
- Log unverified webhook attempts.
- Build a meetings dashboard from Zoom data.
- Schedule Zoom meetings from Drupal content.
- Update event nodes when a Zoom webinar changes.
- Integrate attendance data with membership records.
- Subscribe to specific Zoom event types in a custom module.
- Keep webhook handling out of custom controllers.
- Provide a single verified webhook endpoint.
- Debug incoming Zoom payloads via the event object.
- Reuse the API Tools client for other Zoom calls.
- Support multiple Zoom accounts through client configuration.
- Automate follow-up emails after a Zoom session.
