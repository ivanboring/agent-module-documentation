<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Access by Path confines an editor to the parts of a site whose URL aliases begin with a configured path, so a news team edits `/news/…` and nothing else.

---

Delegating editing by section is one of the most common requirements on a large site and one Drupal has no native answer for: permissions are per content type and per ownership, and neither expresses "this team owns this branch of the site". The usual workarounds are a content type per section, which distorts the content model, or Organic Groups, which is a large piece of machinery for a simple rule. Keying on the path alias is a neat idea, because the alias is already the site's structure. The implementation uses **`hook_node_access()` and `hook_entity_field_access()`** — Drupal's real access layer, so decisions apply to JSON:API, REST and Views rather than only to the rendered page, which is the thing comparable modules get wrong. Version **1.1.3** on core `^10 || ^11`. **Three defects make this release unsafe to deploy as a restriction, and they were verified on a clean install.** The own-content escape hatch returns `AccessResult::allowed()` rather than `neutral()`, and because `hook_node_access()`'s allowed is OR'd with core's decision, **populating the restriction field grants update and delete on the user's own nodes to someone holding no edit or delete permission at all** — the act of restricting an editor is what widens them. Section matching is a bare `strpos(…) === 0`, so `/news` also matches `/newsletter-admin`. And access is keyed on the **alias**, which is content: renaming an alias moves a node between sections, and anyone who can set an alias can move their own content into a section they may edit.

---

- Confine a news team to /news.
- Delegate a section to a department.
- Restrict editing by URL branch.
- Give a team ownership of a site area.
- Avoid a content type per section.
- Delegate editing without Organic Groups.
- Restrict a microsite's editors.
- Scope editing to a directory.
- Support a devolved editorial model.
- Restrict a campaign team's reach.
- Delegate a policy section.
- Limit editors to their department's pages.
- Scope access by path prefix.
- Support a large site's editorial teams.
- Restrict a language section's editors.
- Delegate a product area.
- Limit editing to a documentation branch.
- Support section-based content ownership.
