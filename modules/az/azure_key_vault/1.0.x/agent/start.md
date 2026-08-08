<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Azure Key Vault — agent index

Integrates **Azure Key Vault** with Drupal — fetch secrets (keys/passwords/certs) from the vault at runtime;
`azure_key_vault_key_provider` submodule plugs into the **Key** module. Config at `azvault.admin`. Version
**1.0.7**. Core `^10.3||^11`.

**Positive** secrets-management (secrets in the vault, fetched over TLS, not committed). The module must
authenticate to Azure (service-principal secret / **managed identity**) — store that credential securely;
prefer **managed identity** (no stored secret). No access role.
