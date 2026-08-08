<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Audit Export (audit_export) — agent index

Auditing/reporting tools that **export site information** (content/config/users/modules). Version
**1.0.0-beta3**. Submodules `audit_export_core`, `audit_export_post`, `audit_export_tool`.

**Security:** an export is a concentrated dump of site info, some sensitive (user data, access
config) — admin-gated; restrict who runs/reads it, keep exports out of public/shared locations.