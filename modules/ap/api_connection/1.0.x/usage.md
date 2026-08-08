<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
API Connection is a helper module that provides generic API connection functionality — a reusable client/config layer other modules can build on.

---

API Connection provides generic API connection functionality as a foundation for other modules — a
reusable way to configure and make outbound API calls (endpoints, credentials, requests) rather than
each integration reinventing it. It ships an `api_connection_example` submodule demonstrating the
pattern and is configured at `api_connection.settings_form`.

Use it as infrastructure when building integrations that call external APIs and you want a common
connection/configuration layer. The security-relevant considerations are the usual ones for outbound
API helpers: store credentials as secrets, and ensure requests use TLS verification (the default) —
never disable certificate verification. It provides its own permissions for administering connection
settings. By itself it adds no end-user feature; its value is to consuming modules.

---

- Provide a reusable API connection layer.
- Configure API endpoints and credentials.
- Make outbound API calls generically.
- Build integrations on a common layer.
- Use the api_connection_example submodule.
- Configure at api_connection.settings_form.
- Store API credentials as secrets.
- Keep TLS verification enabled.
- Avoid reinventing API clients per module.
- Administer connection settings via permission.
- Serve as integration infrastructure.
- Reuse connection configuration.
- Provide a client/config foundation.
- Support consuming modules.
- Make requests to external APIs.
- Centralise API connection logic.
- Handle credentials securely.
- Never disable certificate verification.
- Add no end-user feature by itself.
- Enable custom API integrations.
