<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
FolderShare manages shared files and folders — a hierarchical file manager inside Drupal with per-item ownership and sharing, like a private cloud drive.

---

FolderShare turns Drupal into a file-and-folder manager: users have folders, upload files, organise them hierarchically, and share items with other users or publicly — a private-cloud-drive experience. Because it stores and shares files with a per-item access model, its security is that access model, and it is built around a dedicated permission set: `view foldershare`, `author foldershare` (create/upload), `share foldershare` (share with users), `share public foldershare` (make public), and `administer foldershare`. The separation matters — public sharing is its own permission, so making a file world-readable is a distinct capability, not implied by ordinary sharing. The routes reflect it: `/foldershare` (own), `/foldershare/shared`, `/foldershare/public`, and `/foldershare/all` (admin-only). The things to get right operationally are which roles hold `share public foldershare` (that permission is what can expose files beyond the site's users) and confirming that the file storage is private (`private://`) so shared files are served through FolderShare's access checks rather than being directly fetchable. It is a substantial subsystem; treat the sharing permissions as the control surface and verify public-sharing is granted deliberately.

---

- Give users private folders.
- Upload and organise files.
- Share a file with another user.
- Make a file public.
- Browse a folder hierarchy.
- Restrict who can share publicly.
- Use private file storage.
- Provide a cloud-drive experience.
- Grant author/share separately.
- Audit public-sharing access.
- Manage shared files.
- Confirm files are served via access checks.
- Restrict administer foldershare.
- Control per-item access.
- Share folders with a team.
- Keep public sharing deliberate.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.