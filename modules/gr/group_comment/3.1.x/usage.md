<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group Comment brings comments under the Group module's access system, so who may read and post them is decided by group membership rather than by site-wide permissions.

---

Comments are the part of a group site that most obviously wants group scoping and that core does not scope. A department's discussion, a project team's notes on a document, a course cohort's questions, a club's thread about an event — each is a conversation that belongs to a group, and Drupal's comment permissions are per comment type and per site, so a member of one group can read another group's discussion unless something intervenes. Bringing comments into Group's relation model makes membership the deciding factor, which is what the site's users already assume is happening. Version **3.1.0-alpha1** — an **alpha** — on core `^10 || ^11`, requiring core `comment` and `group`. Two things worth attaching, and the first is the one that decides whether the module is doing what it appears to. **Group access is real entity access**, so a comment restricted to a group is restricted in Views, in JSON:API and in REST, not merely hidden on the page — that is the property worth verifying, because a module that filtered only the rendered display would leave the comment readable through every other path, which is the failure `par` (wave 76) exhibits. And **comments are indexed and notified**: a search index built before the restriction was applied still contains the text, and a comment notification email sends the content to whoever is subscribed regardless of group, so scoping comments means checking the search index and the notification path as well as the access layer.

---

- Scope comments to a group.
- Keep a department's discussion private.
- Restrict a project team's notes.
- Support a course cohort's questions.
- Keep a club's thread to members.
- Apply group membership to comments.
- Restrict discussion by group role.
- Support a private group forum.
- Keep patient-facing notes group-scoped.
- Restrict comments on group content.
- Support a multi-team intranet's discussions.
- Apply group permissions to replies.
- Keep a working group's thread private.
- Scope feedback to a project's members.
- Restrict comments in a community site.
- Support a members-only discussion.
- Keep a committee's comments internal.
- Apply group access to a document's notes.
