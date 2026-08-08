<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal Remote Dashboard (DRD) is a dashboard to monitor and manage any number of remote Drupal sites from one place — updates, status, actions — via an authenticated remote connection, with ECA, migrate and hosting-provider submodules.

---

Managing a fleet of Drupal sites — checking for updates, running actions, monitoring status — from one dashboard is what DRD does. A central DRD instance connects to remote sites (which run a DRD agent) and can inspect and act on them, with submodules for ECA automation, migration, and hosting-provider integrations (Acquia, Pantheon, Platform.sh). This is a high-privilege remote-management system, and its security is paramount: the connection between the dashboard and each remote site authenticates and can trigger actions (updates, code operations) on those sites, so a compromise of the dashboard, or of the connection, is a compromise of every managed site. The considerations are therefore serious: the dashboard-to-site authentication (keys/credentials) must be strong and protected, the connection must be over TLS with verification, access to the DRD dashboard must be tightly restricted (it is effectively admin-of-all-sites), and the hosting-provider integrations carry those providers' API credentials. Treat DRD as critical infrastructure: harden the dashboard, protect all connection credentials, and restrict who can use it — its power is exactly its risk.

---

- Manage remote Drupal sites.
- Monitor a fleet of sites.
- Check updates across sites.
- Run actions on remote sites.
- Restrict DRD dashboard access tightly.
- Protect the dashboard-to-site credentials.
- Use TLS with verification.
- Treat DRD as critical infrastructure.
- Integrate hosting providers.
- Harden the dashboard.
- Automate with ECA.
- Understand it is admin-of-all-sites.
- Secure the remote connection.
- Audit DRD access.
- Protect provider API keys.
- Monitor site status centrally.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.