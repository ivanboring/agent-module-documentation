<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia Key Provider adds a key provider specific to Acquia hosting.

---

Acquia Key Provider adds a **Key module provider** that reads secrets from **Acquia hosting**'s
platform secret storage — so keys/credentials configured in the Key module can be sourced from Acquia's
secrets rather than stored in Drupal config or files. It depends on the Key module, in the Security package.

Use it on Acquia-hosted sites to keep secrets in the platform. This is a **security-positive** integration —
storing secrets in the hosting platform (and referencing them via Key) is the right pattern versus committing
them to config; the secret's security then rests on Acquia's platform controls. It has no access-control role.
Configure a Key entity to use the Acquia provider.

---

- Provide an Acquia-hosting key provider.
- Read secrets from Acquia's storage.
- Source Key entities from the platform.
- Depend on the Key module.
- Keep secrets out of config/files.
- Use the right secrets pattern.
- Rest security on Acquia platform controls.
- Have no access-control role.
- Configure a Key to use it.
- Handle the key provider.
- Source secrets.
- Configure Key entities.
- Read platform secrets.
- Handle the integration.
- Provide secrets access.
- Configure the provider.
- Handle secrets.
- Use Acquia secrets.
- Reference platform keys.
- Provide a key provider.
