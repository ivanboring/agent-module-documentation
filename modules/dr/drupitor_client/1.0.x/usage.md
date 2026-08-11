<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupitor Client collects and exposes available Composer updates for Drupal projects via Drupitor.

---

Drupitor Client **collects and exposes available Composer updates** — gathering which Drupal project updates
are available and exposing them (for the Drupitor monitoring service) so update status can be tracked centrally. It
depends on core System and User, provides its own permissions, in the Development package.

Use it to report update availability to Drupitor. It is a development/monitoring integration. Security/data
handling: update/version information is **fingerprinting data** (it reveals which modules/versions you run) — gate
the exposure to trusted users/authenticated Drupitor calls, don't expose it publicly, and store any Drupitor
credentials as secrets. It has no access-control role beyond its permission. Configure the Drupitor integration.

---

- Collect available Composer updates.
- Expose update status to Drupitor.
- Track updates centrally.
- Depend on core System + User.
- Provide its own permissions.
- Serve development/monitoring.
- Expose fingerprinting data (module/version info).
- Gate it to trusted users; don't expose publicly.
- Store any Drupitor credentials as secrets.
- Have no access-control role beyond permission.
- Configure the Drupitor integration.
- Handle update reporting.
- Report updates.
- Configure the client.
- Expose updates.
- Handle the integration.
- Track versions.
- Collect updates.
- Secure the exposure.
- Provide update reporting.
