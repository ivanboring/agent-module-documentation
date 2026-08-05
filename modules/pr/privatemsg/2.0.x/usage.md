<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Private Messages provides user-to-user messaging: threads, an inbox, read state and bulk actions, as content entities.

---

Any site with a community eventually needs members to be able to contact each other without exchanging email addresses, and the Drupal 7 `privatemsg` module was the standard answer. This is the Drupal 10/11 line of the same project, modelling messages and threads as entities with their own settings forms, view modes and Views integration, and depending on **`views_bulk_operations`** for the "mark read, delete" actions an inbox needs. There are three migration submodules — two for Drupal 6 and one for Drupal 7 — which tells you where most of its installed base is coming from. Version **2.0.0-rc22** on core `^10.1 || ^11`: a release candidate, and the high rc number suggests a long stabilisation. Permissions are `administer privatemsg` (`restrict access: true`), `privatemsg write messages`, `privatemsg use messages actions` and `privatemsg delete own messages`. Because messages are private by definition, the thing to test on any messaging module before trusting it is **access on the entity routes**: whether requesting another user's thread or message id by URL is refused, whether an unpublished or deleted message stays unreachable, and whether the Views listings that build the inbox filter by the current user in the query rather than only in the display. Those are the failure modes that have produced advisories in messaging modules across every CMS, and they are worth an afternoon's testing on a site where the messages actually matter.

---

- Let members message each other privately.
- Add an inbox to a community site.
- Avoid exchanging email addresses.
- Support member-to-member contact.
- Provide threaded conversations.
- Mark messages as read.
- Delete a conversation.
- Migrate messages from Drupal 7.
- Add messaging to a membership site.
- Support moderator-to-user contact.
- Notify users of new messages.
- Provide a support conversation channel.
- Bulk-manage an inbox.
- Support a forum's private replies.
- Add messaging to an intranet.
- Keep contact details private.
- Provide a message archive.
- Support a marketplace's buyer-seller chat.
