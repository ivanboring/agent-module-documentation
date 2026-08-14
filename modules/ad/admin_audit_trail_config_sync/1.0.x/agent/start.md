<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Admin Audit Trail Config Sync (admin_audit_trail_config_sync) — agent index

**Logs CLI `drush config:import` events into Admin Audit Trail, which core skips for non-web requests.**

- **Version:** 1.0.x  •  **Core:** ^10 || ^11 || ^12  •  **Package:** Administration
- **Depends on:** `admin_audit_trail`.
- **How:** subscribes to the core config-import event and writes an `import_success` audit entry (change summary + SSH user when available); registers a "Config Sync" event type.
- **No** routes, permissions, or config of its own.
- **Security:** No endpoints or request handling; passive event subscriber only — no added attack surface. No security findings.
