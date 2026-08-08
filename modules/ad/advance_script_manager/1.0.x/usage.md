<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advance Script Manager lets administrators manage custom script snippets that are included on the website's pages, with per-script visibility and enable/disable.

---

Advance Script Manager lets administrators add and manage custom script snippets that are injected into
the site's pages — typically third-party tracking/analytics/marketing tags — with per-script visibility
rules and an enable/disable toggle (scripts are disabled by default so they aren't accidentally made
live). It injects the snippets into the page head via `hook_page_attachments_alter`. The capability is
gated by the `advance_script_manager_settings` permission, which is correctly marked
`restrict access: TRUE`. It is configured at `advance_script_manager.advance_script_controller_build`.

Use it to manage tracking/marketing scripts without editing theme templates. **Security caveat — this is a
highly privileged, dangerous-by-design capability.** The snippets are arbitrary code injected into every
matching page, so anyone with the `advance_script_manager_settings` permission can run arbitrary JavaScript
in every visitor's browser — effectively equivalent to full site compromise (steal session cookies/
credentials, deface, exfiltrate). The module does this correctly by marking the permission
`restrict access: TRUE` (the permissions UI warns) and defaulting scripts to disabled — but the permission
must still be granted **only to fully trusted administrators**, never to content editors. Privacy/consent
also applies to any tracking scripts added (pair with cookie-consent). Treat it like js_editor / PHP-eval
class capabilities.

---

- Manage custom script snippets.
- Inject tracking/marketing tags.
- Add scripts without editing templates.
- Set per-script visibility.
- Disable scripts by default.
- Gate by the restricted permission.
- Understand the permission is restrict access: TRUE.
- Grant only to fully trusted admins.
- Know it can run arbitrary JS for all visitors.
- Treat it as site-takeover-equivalent.
- Never grant to content editors.
- Inject via page attachments.
- Pair tracking with cookie-consent.
- Handle privacy/consent.
- Manage third-party tags.
- Enable scripts deliberately.
- Configure the script manager.
- Compare to js_editor/PHP class.
- Add analytics snippets.
- Control the dangerous permission.
