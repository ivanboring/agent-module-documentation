<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Disable Web Install disables installation of modules and themes via the web.

---

Disable Web Install **disables installing modules and themes through the web UI** — removing the browser-based
"install new module/theme" upload/URL flow so extensions can only be added via the filesystem/Composer. It depends
on core System and Update.

Use it to harden a production site. This is a **security-positive** hardening module: the web install flow lets a
user with the right permission add arbitrary code to the site (a powerful capability and a foothold if that
account is compromised); disabling it enforces that code changes go through your controlled deployment pipeline.
It complements (does not replace) restricting the install permissions. Enable it in production.

---

- Disable web module/theme install.
- Remove the browser upload/URL flow.
- Force filesystem/Composer installs.
- Depend on core System + Update.
- Serve security hardening.
- BE security-positive.
- Block adding arbitrary code via the web (a code-execution foothold).
- Enforce a controlled deployment pipeline.
- Complement (not replace) restricting install permissions.
- Enable it in production.
- Handle install hardening.
- Disable web install.
- Configure nothing (behavior).
- Harden the site.
- Handle the flow.
- Block installs.
- Configure hardening.
- Handle deployment.
- Lock down code changes.
- Provide install disabling.
