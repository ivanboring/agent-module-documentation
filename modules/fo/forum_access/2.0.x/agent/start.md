<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Forum Access (forum_access) — agent index

Per-forum access control and moderators, built on the **ACL** module. Depends on
`acl (>=2.0)` and `forum`. PHP >= 8.1. Core requirement `^10.3 || ^11 || ^12`.
Administered through the existing forum overview (`configure: forum.overview`) — there is no
separate settings section. Submodule: `forum_access_migrate` (D7 settings migration).

Key facts:
- **On Drupal 11+ you must install `drupal/forum` separately.** Forum left core after
  Drupal 10; the composer `suggest` says so explicitly: *"Required in Drupal 11+. Included in
  Drupal 10 core."* A `drush en forum_access` on D11 fails without it.
- Access is implemented **through ACL**, not a bespoke grants system. That matters when
  debugging: unexpected access outcomes are usually visible in ACL's tables, and interactions
  with other node-access modules follow the usual Drupal grants-are-OR semantics — another
  module granting access can override a Forum Access restriction.
- Surface: `src/ForumAccess/`, `src/Plugin/`, `src/Routing/`,
  `templates/forum-access-table.html.twig` (the per-forum role/permission grid),
  `config/install`, `config/schema`, and `forum_access.install`.
- Already declares Drupal 12 support — unusual for a node-access module.
- After changing access settings, node access records may need rebuilding
  (`drush php:eval 'node_access_rebuild();'`) on large sites.
