<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Access by Path (content_access_by_path) — agent index

Confines editing to sections whose **URL alias** begins with a configured path, driven by a taxonomy
field on the user. Depends on core `field` and `taxonomy`. Submodule
`content_access_by_path_admin_content`. Version **1.1.3**. Core requirement `^10 || ^11`.

**The mechanism is right** — `hook_node_access()` and `hook_entity_field_access()`, i.e. Drupal's
real access layer, so decisions reach **JSON:API, REST and Views**, not only the rendered page.
(That is what `par`, wave 76, gets wrong.)

**Three defects make this release unsafe to deploy as a restriction. All verified on a clean
install:**
1. **The own-content escape hatch returns `AccessResult::allowed()` rather than `neutral()`.**
   `hook_node_access()`'s *allowed* is **OR'd with core's decision**, so it **overrides** "this user
   has no permission". Result: **populating the restriction field grants update and delete on the
   user's own nodes to someone holding no edit or delete permission at all** — and the configured
   section is not consulted. *The act of restricting an editor is what widens them.*
   Fix: `AccessResult::neutral()`.
2. **Section matching is an unbounded `strpos($path, $section) === 0`** — `/news` also matches
   `/newsletter-admin`, `/news-archive-private`.
3. **Access is keyed on the URL alias, which is content.** Renaming an alias moves a node between
   sections; anyone who can set an alias can move their own content into a section they may edit.

Cache metadata is set deliberately (user, node and each term as dependencies; `user` and
`user.permissions` contexts). The settings permission is spelled
**`Administer content access by path`** — capitalised, with spaces.
