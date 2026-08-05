<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Vault integrates Drupal with **HashiCorp Vault**, so credentials, API keys and other secrets can be fetched from a dedicated secrets manager at runtime instead of living in settings.php or in exported configuration.

---

This is the base module of a suite — its own description says it "provides core dependencies of vault module suite", and the consumer modules (Key provider, encryption integration) are separate projects that build on it. What it supplies is the client and the extension points: `VaultClient` and `VaultClientFactory` wrap the `csharpru/vault-php ^4.2` library, `VaultConfig` and `VaultCacheManager` handle configuration and caching (Symfony Cache `^6`), and two plugin types define the pluggable parts — **VaultAuth** for authentication methods (`VaultAuthBase`, `VaultAuthManager`, `src/Annotation`) and **VaultLeaseStorage** for where Vault leases are persisted, which matters because Vault credentials are time-bound and must be renewed before expiry. A settings form at `/admin/config/system/vault` sits behind the `administer vault` permission, and there is a `mkdocs.yml`, so upstream documentation is maintained as a docs site rather than only a README. Requirements are PHP 8.1+ and core `^10 || ^11`. Note that `administer vault` is **not** marked `restrict access: true`, even though the form configures how the site authenticates to the secrets manager — that is a permission to grant as narrowly as site administration itself.

---

- Fetch API credentials from HashiCorp Vault at runtime.
- Keep secrets out of settings.php and config exports.
- Rotate credentials without redeploying Drupal.
- Use short-lived dynamic database credentials.
- Centralise secrets across an estate of sites.
- Renew Vault leases before they expire.
- Choose an authentication method by plugin.
- Store leases in a backend that suits the environment.
- Meet a policy requiring a dedicated secrets manager.
- Supply a Key entity from Vault.
- Audit secret access centrally in Vault.
- Avoid secrets in version control.
- Support per-environment secret scoping.
- Integrate encryption keys from Vault.
- Give CI a path to inject secrets safely.
- Cache Vault responses to reduce round trips.
- Extend authentication with a custom plugin.
- Separate secret custody from application code.
