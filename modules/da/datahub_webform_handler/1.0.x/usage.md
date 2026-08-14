<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Datahub adds a Webform handler that sends webform submissions to an external
"Datahub" registration API on submit.

---

Attach the `webform_datahub` handler to a webform and map its elements to the API's attendee
fields (first name, email, surname, company, event codes, etc.) via a `webform_mapping`
control. On `postSave`, the handler fetches an access token from `<endpoint>/api/secure/token`
(`GetAccessToken`, sending the configured username/password as request headers), builds the
attendee payload (`BodyValues`), and POSTs it to `<endpoint>/api/attendee/registration`
(`DatahubIntegration`) with the token in a `token` header. The endpoint base URL, username and
password are set on a global config form at
`/admin/config/services/webform_datahub-config` (permission **"access administration
pages"**).

Operational/security notes: the API base URL is admin-entered, so TLS depends on supplying an
`https://` endpoint (the form only checks that a protocol is present, and outbound calls use
Drupal's default Guzzle client). The username and password are stored in plain module
configuration (`webform_datahub.settings`, plain textfields — not a Key entity and not masked),
and a fetched `accessToken` is cached in that same config. Full request/response bodies are
written to Drupal's log on both success and error. There is no inbound callback. Use it to
push event-registration submissions into the Datahub CRM.

---

- POST webform submissions to an external Datahub API.
- Attach the `webform_datahub` handler to a webform.
- Map webform elements to Datahub attendee fields.
- Configure the Datahub endpoint base URL.
- Set the API username and password.
- Fetch an OAuth-style access token before posting.
- Send the token in the request `token` header.
- Register event attendees from a webform.
- Capture query-string context on submission.
- Use one config form for all Datahub settings.
- Restrict config to users with admin-pages access.
- Log API request/response for debugging.
- Integrate an event site with the Datahub CRM.
- Sync event registrations to the Datahub CRM automatically.
- Refresh the cached access token from the config form.
- Debug API failures from the Drupal log entries.
