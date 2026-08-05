<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor Mentions adds `@`-mentions to CKEditor 5: typing `@` offers matching users, and the inserted mention becomes a link — with submodules extending it to arbitrary entities and to display names.

---

The pattern is familiar from every collaboration tool and the value is the same: mentioning a person creates a reference the system can act on, rather than a name in prose. The module supplies the CKEditor 5 plugin with an AJAX callback at `/ckeditor-mentions/ajax/{editor_id}/{plugin_id}/{match}` returning matches, `ckeditor_mentions.rules.events.yml` exposing events so a mention can trigger a notification through Rules or ECA, and two submodules — **ckeditor_mentions_entity** to mention things other than users, and **ckeditor_mentions_realname** to display real names rather than usernames. The access design is worth crediting: the AJAX callback is gated by a dedicated permission, `use inline mentions`, whose own title says it exists to protect the callback path. That matters because a user-matching endpoint is a **user-enumeration surface** — it answers "does a user matching this string exist" — so restricting it to roles that actually author content is the right default, and it should not be granted to anonymous. Requirements are PHP 8.1+, core `ckeditor5` and `image`, with `masterminds/html5` for parsing; the release is 3.0.0-beta5.

---

- Mention a colleague in a comment.
- Notify a user when they are mentioned.
- Link a mention to the user's profile.
- Mention content entities, not just users.
- Show real names instead of usernames.
- Trigger a workflow from a mention.
- Improve collaboration in editorial comments.
- Reference a person in a review note.
- Autocomplete usernames while typing.
- Restrict mention lookups by permission.
- Notify a moderator by mentioning them.
- Build an internal discussion feature.
- Mention a taxonomy term in text.
- Support an intranet's collaboration.
- Link mentions consistently.
- Fire an ECA model when mentioned.
- Reduce copy-pasted usernames.
- Support a community platform.
