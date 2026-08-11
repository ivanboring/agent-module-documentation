<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Advanced File Destination adds destination-directory selection to file uploads, gated by fine-grained permissions.

---

Advanced File Destination extends file uploads so users can pick a destination directory (including creating new directories and, with permission, private-file locations) rather than always using the field's fixed target. It exposes a set of granular permissions covering access, directory creation, private-file access, and enable/disable of the feature per context.

Because it lets users influence where uploaded files land, the permissions matter: `access advanced file destination private files` and `create advanced file destination directories` should go only to trusted roles — unconstrained directory choice near the private filesystem is a path-handling concern. Requires core `file`, `system`, and `config`.

---

- Choose a destination directory on upload.
- Create new directories during upload.
- Target private-file locations (with permission).
- Override a field's fixed upload path.
- Gate access with `access advanced file destination`.
- Gate directory creation with a dedicated permission.
- Gate private-file access separately.
- Enable/disable the feature per context.
- Restrict private/directory permissions to trusted roles.
- Treat destination choice as path-handling.
- Requires core `file`, `system`, `config`.
- Support Drupal 10 and 11.
- Manage upload destinations flexibly.
- Separate create/delete permissions.
- Control who can enable the feature.
- Avoid broad grants near private files.
- Configure allowed destinations.
- Improve editorial upload control.
- Audit directory-creation rights.
- Keep private storage protected.
