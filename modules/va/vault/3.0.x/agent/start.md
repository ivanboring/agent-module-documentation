<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Vault (vault) — agent index

Base module of the HashiCorp **Vault** suite. Wraps `csharpru/vault-php ^4.2`; PHP `^8.1`;
Symfony Cache `^6`. Core requirement `^10.0 || ^11.0`.
Settings at `/admin/config/system/vault` (`vault.admin`).

Key facts:
- **It is infrastructure, not a feature.** Its own description says it "provides core
  dependencies of vault module suite" — the consumers (Key provider, encryption integration)
  are separate projects. Enabling this alone gives you a configured client and nothing that
  uses it.
- Two plugin types:
  - **`VaultAuth`** — authentication methods (`VaultAuthBase`, `VaultAuthInterface`,
    `VaultAuthManager`, `src/Annotation/`);
  - **`VaultLeaseStorage`** — where leases are persisted (`VaultLeaseStorageBase`,
    `…Manager`, `src/Plugin/VaultLeaseStorage/`).
  Lease storage is not incidental: Vault credentials are time-bound, so a site must persist and
  renew leases or secrets stop resolving mid-flight.
- Client surface: `VaultClient`, `VaultClientFactory`, `VaultConfig`, `VaultCacheManager`,
  `src/Logging/`, `src/Exceptions/`.
- **Permission note:** `administer vault` is **not** marked `restrict access: true`, although the
  form it gates configures how the site authenticates to the secrets manager. Grant it as
  narrowly as full site administration.
- Upstream docs are a `mkdocs.yml` site, not just the README.
- Fits this repo's secrets convention as the tier above environment variables: where a Key
  entity's env provider is enough, use that; Vault is for rotation, leases and central audit.
