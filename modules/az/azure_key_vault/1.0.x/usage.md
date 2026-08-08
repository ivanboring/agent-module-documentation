<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Azure Key Vault provides Azure Key Vault integration with Drupal, including a key provider to retrieve secrets from the vault.

---

Azure Key Vault integrates Microsoft Azure Key Vault with Drupal — letting the site retrieve secrets
(API keys, passwords, certificates) from an Azure Key Vault at runtime rather than storing them in Drupal
config/files. It ships an `azure_key_vault_key_provider` submodule that plugs into the Key module (so a Key
entity's value is fetched from the vault), is configured at `azvault.admin`, in the Security package.

Use it to keep secrets in Azure Key Vault instead of in the site. This is a **positive** secrets-management
practice (secrets live in the vault, fetched over TLS, not committed to config). The one bootstrapping
consideration: the module must itself authenticate to Azure (a service-principal client ID/secret or managed
identity) — **store that Azure credential securely** (environment variable / managed identity), because it is
the key that unlocks the vault; prefer managed identity where available so no secret is stored at all. It has
no access-control role. Configure the vault connection and the Key provider.

---

- Fetch secrets from Azure Key Vault.
- Provide a Key module provider.
- Retrieve API keys/passwords/certs.
- Avoid storing secrets in Drupal config.
- Configure at azvault.admin.
- Keep secrets in the vault (positive).
- Store the Azure credential securely.
- Prefer managed identity where available.
- Fetch secrets over TLS.
- Have no access-control role.
- Configure the vault connection.
- Plug into the Key module.
- Manage secrets externally.
- Configure the Key provider.
- Retrieve vault secrets.
- Handle secrets management.
- Fetch runtime secrets.
- Secure the Azure credential.
- Configure secrets.
- Integrate Azure Key Vault.
