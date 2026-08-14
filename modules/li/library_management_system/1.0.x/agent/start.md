<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Library Management System - agent index

In-Drupal **library catalog & circulation** app (version **1.0.3**, core `^8||^9||^10`; depends on `views_bulk_operations`).

- Custom entities: LmsBook, LmsPublication, LmsBookAuthor, RequestedLmsBook, IssuedLmsBook. Admin CRUD gated by per-entity `administer *` permissions; entity view/edit/delete use `_entity_access`.
- NOTE: `library_management_system.request` (`/lmsbook/{lmsbook}/request`, perm `access content`) is a state-changing GET with no CSRF token that creates a RequestedLmsBook for the current user - low-severity anon-writable/CSRF issue (see security notes).
- CSV import forms + fine settings gated by `administer lmsbooks`.
- Category: Content editing experience / Entity API.
