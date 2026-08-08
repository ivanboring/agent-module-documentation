<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor Standalone Styles allows the CKEditor styles dropdown to be configured separately from the editor configuration form.

---

CKEditor Standalone Styles lets the CKEditor "Styles" dropdown be configured **separately** from the
main editor configuration form — so you can manage the available styles without giving users access to the
full editor configuration. It depends on core CKEditor 5, provides its own permissions.

Use it to delegate styles-list management without exposing the whole editor config. This has a mild
least-privilege benefit: the full text-format/editor configuration is powerful (it governs allowed HTML, an
XSS-relevant setting), so being able to let a role manage just the styles dropdown — not the format's allowed
tags/filters — keeps that sensitive configuration restricted to fewer people. It is a content-editing/admin
feature; the styles produce markup governed by the format's allowed tags, and it has no access-control role
beyond its permission. Configure the standalone styles.

---

- Configure the styles dropdown separately.
- Manage styles without full editor config access.
- Depend on core CKEditor 5.
- Provide its own permissions.
- Keep the editor config restricted (least privilege).
- Avoid exposing allowed-HTML/filter settings.
- Delegate styles management only.
- Have no access-control role beyond permission.
- Configure the standalone styles.
- Manage the styles list.
- Restrict the editor config.
- Separate styles config.
- Handle styles management.
- Configure styles.
- Delegate styling.
- Manage editor styles.
- Restrict format config.
- Configure the dropdown.
- Handle standalone styles.
- Manage styles safely.
