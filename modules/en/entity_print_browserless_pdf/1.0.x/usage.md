<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Offloads Entity Print PDF generation to a Browserless instance.

---

Entity Print Browserless PDF offloads PDF printing to a Browserless instance — a print engine plugin for Entity Print that renders the entity's print HTML to PDF using a remote headless-Chrome (Browserless) service instead of a local PHP PDF library, for higher-fidelity output.

It sends the site's own Entity Print HTML to the admin-configured Browserless endpoint over the Guzzle HTTP client (default TLS); store any Browserless token securely (env-backed). Depends on `entity_print`; supports Drupal 10 and 11.

---

- Offload PDF printing to Browserless.
- Provide an Entity Print engine.
- Render HTML to PDF remotely.
- Use headless Chrome.
- Improve PDF fidelity.
- Send to an admin-configured endpoint.
- Store the Browserless token securely.
- Depend on `entity_print`.
- Support Drupal 10 and 11.
- Configure the connection.
- Aid PDF generation.
- Print entities
- Support Drupal.
- Support Drupal.
- Support Drupal.
