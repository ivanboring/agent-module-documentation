<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CiviCRM Autologout Bridge (civicrm_autologout_bridge) — agent index

**Keep-alive bridge**: feeds CiviCRM AJAX interaction into the Automated Logout timer so CiviCRM users aren't logged out mid-task.

**Version:** 1.0.x (1.0.5). Core: `^10.3 || ^11`. Depends on `autologout` and `civicrm`.

Implementation: `hook_page_attachments` attaches JS library `civicrm_autologout_bridge/bridge` for authenticated users on CiviCRM pages (route `civicrm.*` or path `/civicrm[/...]`). Cache contexts declared: `user.roles:authenticated`, `route`, `url.path`. No routes, permissions, services or config.

**Security:** no endpoints; anonymous users explicitly skipped. Purely a client-side keep-alive signal into an existing module. No security findings.