<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Annotations is the base module of the Annotations suite, defining annotation entities, targets and types.

---

Annotations provides the shared foundation for the Annotations suite: annotation entities, annotation targets, and annotation types, plus a permission model for administering and collecting annotations. It lets a site attach structured notes/annotations to content and manage them as first-class entities.

Permissions separate administration (`administer annotations`, `administer annotation targets/types`) from collection/editing (`access annotation collection`, `edit any annotation`, `delete any annotation`). The `edit any`/`delete any` permissions are broad — grant them only to trusted roles. Depends on core `views`; requires Drupal 11.2+.

---

- Define annotation entities.
- Define annotation targets.
- Define annotation types.
- Attach structured notes to content.
- Manage annotations as entities.
- Provide a permission model.
- Gate admin with `administer annotations`.
- Gate targets/types with dedicated permissions.
- Gate access with `access annotation collection`.
- Offer `edit any`/`delete any annotation` (broad).
- Restrict broad permissions to trusted roles.
- Depend on core `views`.
- Require Drupal 11.2+.
- Serve as the suite's base module.
- Build annotation collections.
- Support content annotation workflows.
- List annotations via Views.
- Provide shared functionality for the suite.
- Support editorial notes.
