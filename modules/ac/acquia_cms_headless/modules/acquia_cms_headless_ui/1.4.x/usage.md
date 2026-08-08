<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia CMS Headless UI is the admin dashboard submodule of Acquia CMS Headless, providing the interface to manage headless settings, API consumers and OAuth tokens.

---

Acquia CMS Headless UI is the administrative UI submodule of Acquia CMS Headless. It provides the
dashboard and screens for managing the headless setup — API consumers, OAuth tokens/keys, and the
JSON:API/decoupled configuration that the parent module wires up. It is optional: the parent
`acquia_cms_headless` provides the functional decoupled stack, and this submodule adds the management
interface on top.

Use it when administrators need a UI to create and manage consumers and tokens for a headless Acquia
CMS site rather than doing so through generic Simple OAuth/Consumers admin. Because it manages OAuth
tokens and API access, treat access to this UI as sensitive — it governs credentials that grant API
access to site content.

---

- Manage Acquia CMS Headless from an admin UI.
- Create and manage API consumers.
- Manage OAuth tokens and keys.
- Provide a headless management dashboard.
- Configure JSON:API/decoupled settings via UI.
- Add a UI on top of acquia_cms_headless.
- Govern API credentials for the site.
- Treat access to the UI as sensitive.
- Manage consumers without generic admin.
- Support headless site administration.
- Issue tokens for API access.
- Review exposed API configuration.
- Complement Simple OAuth/Consumers.
- Enable optionally alongside the parent.
- Manage decoupled front-end access.
- Control which consumers exist.
- Provide headless dashboards.
- Handle token lifecycle in the UI.
- Secure the credential-management screens.
- Depend on the Acquia CMS Headless parent.
