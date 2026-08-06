<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Group Notify emails a group's members when content is added to that group.

---

A group without notification is a group people forget to visit. The whole value of a departmental workspace, a project team's area or a course cohort's space is that members find out when something happens in it, and without that the site becomes a place people are told to check rather than one that tells them — which is the difference between a working intranet and a document dump. Because Group already models membership and roles, it knows exactly who should be told, which is the part that is difficult when the same feature is built from scratch. Version **2.0.0-rc1** — a release candidate — requiring `gnode`, on core `^9.5 || ^10 || ^11`. Three things to plan. **Volume determines whether it works**: a group with daily activity emailing every member per item produces a filter rule within a week and the notification stops being read, so the useful shape is usually a digest or a per-member frequency preference rather than immediate-per-item — which is the same conclusion `webform_digests` reaches from the other direction. **Access and notification must agree**: a notification announcing content its recipient cannot open is worse than none, and the check is not automatic, since the mail is composed at save time while access is evaluated at read time. And **the email's content is a disclosure decision** — a message carrying the content itself sends group-restricted material to whatever mailbox the member uses, including a shared one, so a subject line and a link is the safer shape and the one that keeps the access decision on the site.

---

- Notify a department of new content.
- Email a project team about a document.
- Tell a course cohort about new material.
- Notify group members of an announcement.
- Alert a working group to a new page.
- Keep an intranet's groups active.
- Notify members without a separate list.
- Tell a committee about new papers.
- Notify a club about an event post.
- Alert a team to a shared file.
- Notify members by group role.
- Keep a community space engaged.
- Tell members about new discussions.
- Notify a research group of a publication.
- Alert a team to a policy update.
- Notify members of a new resource.
- Keep a private group informed.
- Send group activity notifications.
