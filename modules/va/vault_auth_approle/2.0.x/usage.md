<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Vault Auth AppRole supplies the **AppRole** authentication method for the Vault module — the way a machine, rather than a person, proves its identity to HashiCorp Vault.

---

Vault's whole value is that secrets live outside the application, which raises the question of how the application authenticates to Vault in the first place. AppRole is HashiCorp's answer for services: a role id identifies the application and a secret id authenticates it, and the two are delivered separately so that neither alone is sufficient — the role id can be baked into configuration while the secret id is injected at deploy time with a short TTL. This module implements that strategy as a `VaultAuth` plugin (`src/Plugin`) for the Vault base module documented in wave 58, and takes a dependency on **Key**, which is the right choice: the credentials are held as Key entities rather than in this module's own configuration, so they can come from an environment variable or a file provider instead of being exported with the site. Requirements are PHP 8.1+, Vault `^2 || ^3`, Key `^1`, and core `^9.3 || ^10 || ^11`. There are no routes, permissions or UI of its own — it is configured through Vault's settings once enabled.

---

- Authenticate a Drupal site to Vault as a service.
- Use AppRole instead of a static token.
- Deliver a secret id at deploy time.
- Keep Vault credentials in Key entities.
- Rotate the secret id without a code change.
- Meet a policy requiring machine identity.
- Avoid a long-lived Vault token in config.
- Source Vault credentials from environment variables.
- Support a containerised deployment.
- Separate role identity from authentication.
- Integrate Drupal with an existing Vault estate.
- Limit credential lifetime.
- Audit Vault access per application.
- Support several environments with distinct roles.
- Provide credentials from a file provider.
- Meet an audit requirement for secret handling.
- Configure authentication through Vault's settings.
- Replace a hard-coded Vault token.
