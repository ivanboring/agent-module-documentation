<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Content Moderation Owner Permissions adds permissions for moderating one's own content, so a user can transition their own content through workflow states without power over others' content.

---

Content moderation transition permissions are global — 'may move Draft to Review' applies to all content. Often you want authors to moderate their own content but not everyone's. Content Moderation Owner Permissions adds owner-scoped moderation permissions, so a user can transition their own content's state without gaining that power over content they do not own. Because it is access-control (who may transition what), the correctness matters: it should grant the transition only when the user owns the content. Confirm the ownership check behaves as expected, and remember it complements, not replaces, the global transition permissions — grant the owner-scoped permission to let authors self-moderate while keeping the global one restricted.

---

- Let authors moderate their own content.
- Scope transitions to own content.
- Grant owner moderation permissions.
- Restrict global transitions.
- Self-moderate own drafts.
- Transition own content only.
- Confirm the ownership check.
- Complement global permissions.
- Let authors publish their own work.
- Avoid power over others' content.
- Scope moderation by ownership.
- Grant owner-scoped transitions.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.