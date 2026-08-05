<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Forum Access makes individual forums private and gives them moderators, turning Drupal's forum from an all-or-nothing public space into one where different groups see different boards.

---

Core's forum module has no per-forum access model: if you can see forums, you can see all of them. This module adds one, built on the **ACL** module rather than on its own grants implementation — ACL provides the per-user, per-node access-list primitive, and Forum Access maps forum containers onto it. Administration is folded into the existing forum overview (`configure: forum.overview`) rather than a separate settings section, with `templates/forum-access-table.html.twig` rendering the per-forum grid of roles and permissions. `src/ForumAccess`, `src/Plugin` and `src/Routing` hold the implementation, and the **forum_access_migrate** submodule exists to bring settings across from the Drupal 7 version. Two release facts matter. First, `core_version_requirement: ^10.3 || ^11 || ^12` — this is one of the few access modules already declaring Drupal 12. Second, the composer `suggest` records that `drupal/forum` is **required in Drupal 11+** because forum left core after Drupal 10, so a Drupal 11 site must install the contributed forum project as well. PHP 8.1+ and ACL `^2.0` complete the requirements.

---

- Make a forum visible only to certain roles.
- Give a forum its own moderators.
- Run a staff-only board alongside public forums.
- Let a members' area have private discussion.
- Restrict posting rights per forum.
- Allow reading but not posting in an announcements forum.
- Delegate moderation without site-wide permissions.
- Support a paid-membership discussion area.
- Hide an archive forum from general users.
- Set per-forum access from the forum overview screen.
- Migrate forum access settings from Drupal 7.
- Build a community with tiered access.
- Give a working group a private board.
- Control who may create topics in a forum.
- Combine forum access with ACL-based rules.
- Grant a single user access to one forum.
- Run support forums separated by customer tier.
- Prepare a forum site for Drupal 12.
