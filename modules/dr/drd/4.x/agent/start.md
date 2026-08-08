<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupal Remote Dashboard (drd) — agent index

Dashboard to **monitor and manage many remote Drupal sites** (updates, status, actions) via an
authenticated connection. Version **4.1.7**. Submodules `drd_eca`, `drd_migrate`, `drd_pi` (+ Acquia/
Pantheon/Platform.sh), `drd_install_core`.

**High-privilege / critical infrastructure:** DRD is **admin-of-all-managed-sites** — the connection
authenticates and triggers actions on remote sites. **Restrict dashboard access tightly**, protect the
dashboard-to-site credentials, use **TLS with verification**, secure hosting-provider API keys. A
dashboard compromise = every managed site compromised.