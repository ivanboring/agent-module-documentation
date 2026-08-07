<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Notify Widget sends messages to users and provides a widget for displaying them.

---

In-site notifications sit between email, which people ignore, and nothing, which tells them nothing. A message that appears when the user next visits suits things that matter but are not urgent: your submission was reviewed, your account changed, something you follow was updated.

The module supplies both halves — the sending and the display widget — which is what makes it usable without building a front end for it.

**Three questions decide whether a notification system is worth having, and they are the same every time.** Volume: notify on everything and users stop looking, which is worse than not notifying. Read state: a notification that cannot be dismissed becomes permanent clutter, and one that is silently marked read may never be seen. And retention: notifications accumulate per user forever unless something expires them, which is both a storage question and, since notifications often quote content, a data-retention one.

Worth also deciding what a notification contains. A message saying "your application was updated" is safe to store and show; one quoting the content of a restricted document has copied that content somewhere with different access rules.

---

- Notify a user in the site.
- Tell someone their submission was reviewed.
- Announce an account change.
- Alert a user about followed content.
- Display notifications in a widget.
- Mark a notification read.
- Let users dismiss notifications.
- Scope notifications to what matters.
- Avoid training users to ignore them.
- Expire old notifications.
- Plan notification retention.
- Decide what a notification may quote.
- Avoid copying restricted content into a message.
- Report on notification volume.
- Compare with email notifications.
