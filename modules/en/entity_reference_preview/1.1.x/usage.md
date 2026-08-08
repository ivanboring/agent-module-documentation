<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Reference Preview lets referenced entities show their latest-revision (draft) content when the parent entity is viewed in its latest-revision preview.

---

Entity Reference Preview solves a preview gap with content moderation: when you view the latest
(draft) revision of an entity, its referenced entities normally still render their *published*
revision, so a coordinated draft change across referenced content isn't fully visible in preview. This
module makes embedded entity references resolve to their latest revision while previewing the latest
revision of the parent, so editors see the draft state of the whole composition. It provides a settings
form and its own permissions.

Use it on moderated sites where content is composed of referenced entities (paragraphs, referenced
nodes/media) and editors need an accurate draft preview. It is an editorial/preview feature; it changes
which revision is shown in the latest-revision context, respecting the viewer's access — access to the
referenced entities is unchanged. Configure which reference fields participate via its settings.

---

- Preview referenced entities' latest revision.
- See draft state across references.
- Fix preview of referenced content.
- Show draft references in latest-revision view.
- Support content-moderation preview.
- Preview composed content accurately.
- Configure participating reference fields.
- Provide its own permissions.
- Preview paragraphs' draft state.
- Preview referenced nodes/media drafts.
- Respect the viewer's access.
- Change shown revision, not access.
- Use on moderated sites.
- See coordinated draft changes.
- Preview the whole composition as draft.
- Configure via the settings form.
- Improve editorial preview.
- Resolve references to latest revision.
- Give editors an accurate draft view.
- Handle embedded entity references.
