<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Assignments defines an Assignment content entity (with Assignment types/bundles) and standard access permissions.

---

Assignments provides a custom Assignment content entity type — with configurable Assignment-type bundles, Views data, and published/unpublished states — so a site can model assignment records (tasks, allocations, coursework) as first-class fieldable entities rather than nodes. It's the base module that extensions (such as assignments_hootsuite) build on.

It exposes standard entity permissions: `add`/`edit`/`delete`/`administer assignment entities` and `view published`/`view unpublished assignment entities`. Grant the administer/unpublished permissions only to trusted roles. A content-entity provider with no external integrations of its own; supports Drupal 10 and 11.

---

- Define an Assignment content entity.
- Provide Assignment-type bundles.
- Expose Views data for assignments.
- Support published/unpublished states.
- Model tasks/allocations/coursework.
- Serve as a base for extensions.
- Gate creation with `add assignment entities`.
- Gate editing with `edit assignment entities`.
- Gate deletion with `delete assignment entities`.
- Gate admin with `administer assignment entities`.
- Separate `view published`/`view unpublished` permissions.
- Restrict admin/unpublished to trusted roles.
- Support Drupal 10 and 11.
- Provide fieldable assignment records.
- Build assignment workflows.
- List assignments via Views.
- Manage assignment types.
- Underpin assignments_hootsuite.
