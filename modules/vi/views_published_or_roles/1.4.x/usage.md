<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Views Published or Roles adds a Views filter expressing "published, **or** unpublished but the current user has one of these roles" — the condition a listing needs when editors should see their drafts inline with live content.

---

The requirement is common and awkward in Views: a listing that shows published content to everyone and also shows unpublished items to editors. Views' status filter is a single value, and its filter groups can express OR, but combining a status condition with a role condition across the OR boundary is not something the UI does cleanly — so the usual outcomes are two views rendered together (which breaks paging and sorting) or a hook_views_query_alter written per project. This module supplies the condition as a filter plugin in `src/Plugin`, with `config/schema` for its settings, depending on core `views` alone and spanning `^8 || ^9 || ^10 || ^11`. The important caveat for anyone reviewing it is what a Views filter is and is not: it shapes the **query**, and Drupal's node access system is what actually decides whether a user may see an entity. A filter that admits unpublished rows for a role does not grant that role access, and on a site where the rendered output could reveal more than the filter intends, the entity access check is the thing to verify — a filter is a listing convenience, not an access control.

---

- Show editors their unpublished drafts in a listing.
- List published content to everyone else.
- Avoid rendering two views together.
- Keep paging correct across mixed content.
- Show unpublished items to a review role.
- Build an editorial dashboard listing.
- Preview drafts alongside live content.
- Sort published and unpublished together.
- Avoid a custom query alter.
- Give moderators visibility of pending items.
- Show authors their own unpublished work.
- Build a "my content" listing.
- Combine status and role in one filter.
- Reduce bespoke Views code.
- Support a review workflow's listing.
- Show scheduled content to editors.
- Keep a single view for two audiences.
- Support a site still on Drupal 8.
