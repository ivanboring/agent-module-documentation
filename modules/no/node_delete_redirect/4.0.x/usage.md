<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Node Delete Redirect lets users with the right permission define where the browser is redirected after a node is deleted, per content type.

---

After deleting a node, core sends the user to the front page; sites often want somewhere more useful — the content list, a dashboard, a parent section. Node Delete Redirect makes the post-delete destination configurable per content type, gated by `administer content types`. The redirect target is admin-configured, not taken from the request, so it is not an open-redirect surface. Confirm the destinations point where editors expect to land after deleting content.

---

- Redirect after deleting a node.
- Send editors to the content list.
- Configure the post-delete destination.
- Set a per-type redirect.
- Avoid the front-page default.
- Route to a dashboard after delete.
- Restrict to content-type admins.
- Improve the editing flow.
- Confirm the destination.
- Keep the target admin-set.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.
- Match it to your use case.