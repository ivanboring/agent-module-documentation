<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Rules HTTP Client adds a Rules action for making HTTP requests, so a Rules reaction can call an external URL as part of an automation.

---

Rules automates 'when X happens, do Y', and a common Y is calling an external service — a webhook, an API. Rules HTTP Client adds an HTTP-request action to Rules. The security consideration is server-side request forgery: the action makes the Drupal server issue an HTTP request to a URL, and if that URL is drawn from user-controlled data (a submitted field fed into the action via a Rules data selector), an attacker could steer the server to fetch internal services — the classic SSRF. When the URL is a static, admin-configured value the risk is low (an admin building a rule can already reach out); the risk appears when the URL, or parts of it, come from untrusted input. So treat any rule where the request URL derives from user data as an SSRF surface: validate/allow-list the destination, and prefer static or admin-controlled URLs. Restrict who can build Rules, since a Rules author can make the server call arbitrary URLs.

---

- Call an external URL from Rules.
- Make an HTTP request in an automation.
- Trigger a webhook on an event.
- Call an API from a reaction.
- Add an HTTP action to Rules.
- Guard against SSRF.
- Allow-list request destinations.
- Prefer static/admin URLs.
- Avoid user-controlled request URLs.
- Restrict who builds Rules.
- Validate the target URL.
- Automate an outbound call.
- Post data to a service.
- Treat user-derived URLs as SSRF.
- Integrate via HTTP.
- Send an event notification.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.