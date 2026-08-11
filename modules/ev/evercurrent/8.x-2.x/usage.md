<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Evercurrent sends data about required Drupal updates to the Evercurrent server.

---

Evercurrent **sends update data to the Evercurrent server** — reporting which core/contrib updates a site
needs to the Evercurrent monitoring service, so update status can be tracked centrally across sites. It depends on
core Update and provides its own permissions.

Use it to monitor update status via Evercurrent. It is a monitoring integration. Security/data handling: update/
version information is **fingerprinting data** (it reveals your installed modules and versions) that is **sent to
the external Evercurrent server** (egress) — authenticate with a secret token stored securely and only send to
your trusted Evercurrent endpoint over HTTPS. It has no access-control role beyond its permission. Configure the
Evercurrent endpoint and token.

---

- Send update data to Evercurrent.
- Report needed core/contrib updates.
- Track update status centrally.
- Depend on core Update.
- Provide its own permissions.
- Serve monitoring.
- Send fingerprinting data (module/version info) externally (egress).
- Authenticate with a securely-stored token over HTTPS.
- Send only to your trusted Evercurrent endpoint.
- Have no access-control role beyond permission.
- Configure the endpoint and token.
- Handle update reporting.
- Report updates.
- Configure the client.
- Send updates.
- Handle the integration.
- Track versions.
- Monitor updates.
- Secure the token.
- Provide update reporting.
