<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Vault Auth – AppRole (vault_auth_approle) — agent index

**AppRole** authentication strategy for the `vault` module. Depends on `vault (^2 || ^3)` and
**`key ^1`**. PHP `^8.1`. Core requirement `^9.3 || ^10 || ^11`.
No routes, permissions or UI — configured through Vault's own settings.

Key facts:
- Implements a **`VaultAuth` plugin** (`src/Plugin/`) for the base module documented in wave 58.
- **The `key` dependency is the important design choice.** Role id and secret id are held as
  **Key entities**, so they can come from an environment variable or file provider rather than
  living in this module's configuration — which means they are not written into a config export.
  That matches this repo's secrets convention exactly.
- AppRole's model: **role id** identifies the application, **secret id** authenticates it, and the
  two are delivered by different channels so neither alone suffices. Typically role id in
  configuration, secret id injected at deploy with a short TTL.
- Because Vault credentials are time-bound, check the base module's lease-storage plugin is
  configured (see the `vault` doc, wave 58) — otherwise authentication succeeds and then expires
  mid-flight.
