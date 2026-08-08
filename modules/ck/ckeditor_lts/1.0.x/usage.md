<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 4 - LTS restores CKEditor 4 as a contrib module after core removed it in favour of CKEditor 5, as an interim path for sites that cannot immediately migrate their editor configuration and plugins.

---

Drupal core shipped CKEditor 4 for years, then removed it — CKEditor 5 is a different editor with a different plugin architecture, and migrating a site with custom CKEditor 4 plugins and configuration is real work. This module keeps CKEditor 4 available so a site can stay on Drupal 10/11 without doing that migration on core's timetable. Its machine name is `ckeditor` (it replaces the removed core module of that name).

The essential thing to understand is a security one. **CKEditor 4 reached end of life in June 2023.** Ongoing security fixes for it are available only through CKSource's paid Extended Support Model; the open-source CKEditor 4 line receives no more free security patches. So running this module means running an editor whose client-side security is frozen unless you hold that commercial license — and a WYSIWYG editor is directly in the path of untrusted content, exactly where XSS lives. This module is therefore a **migration bridge, not a destination**: it exists to buy time to move to CKEditor 5, not to stay on CKEditor 4 indefinitely.

Use it if a CKEditor 5 migration genuinely cannot be done yet, plan the migration, and understand the security posture in the meantime. Text-format filtering (the server-side sanitisation) still applies and is your real protection — do not rely on the frozen editor for safety.

---

- Keep CKEditor 4 after core removed it.
- Delay a CKEditor 5 migration.
- Run legacy CKEditor 4 plugins.
- Bridge to CKEditor 5 over time.
- Stay on Drupal 11 without migrating the editor.
- Preserve CKEditor 4 configuration.
- Understand CKEditor 4 is end-of-life.
- Know security fixes need a paid license.
- Treat it as a migration bridge.
- Plan the move to CKEditor 5.
- Rely on text-format filtering for safety.
- Keep custom CKEditor 4 builds working.
- Avoid rushing an editor migration.
- Assess the XSS posture of a frozen editor.
- Hold the CKSource ESM license if staying.
- Replace the removed core ckeditor module.
- Buy time for a complex migration.
- Keep editorial workflows during migration.
- Audit content filters while on CKEditor 4.
- Migrate off it as the goal.