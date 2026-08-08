<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Audit Export provides auditing and reporting tools that export site information — content, configuration, users — for review, with core, post and tool submodules.

---

Auditing a site — inventorying content, config, users, and modules — for a review, a handover, or a compliance check is tedious by hand. Audit Export provides tools to gather and export that information, with `audit_export_core`, `audit_export_post` and `audit_export_tool` submodules. The security note is that an audit export is a concentrated dump of site information, some of it sensitive (user data, configuration that includes access rules), so the export is admin-gated and the resulting files should be handled as sensitive: restrict who can run and read them, and do not leave audit exports in public or shared locations.

---

- Audit and export site info.
- Inventory content and config.
- Export a site review.
- Report on users and modules.
- Support a site handover.
- Restrict who runs audits.
- Handle exports as sensitive.
- Keep exports out of public paths.
- Audit for compliance.
- Export configuration inventory.
- Review site state.
- Gather audit data.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.