<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Group Notify (group_notify) — agent index

Emails a **group's members** when content is added to that group. Requires **`gnode`**.
Version **2.0.0-rc1** — release candidate. Core requirement `^9.5 || ^10 || ^11`.

**Why it matters:** a group without notification is a group people forget to visit — the difference
between a **working intranet** and a **document dump**. Because Group already models membership and
roles, it **knows exactly who should be told**, which is the hard part when this is built from
scratch.

**Three things to plan:**
1. **Volume determines whether it works.** A group with daily activity emailing every member per
   item produces a **filter rule within a week**, and the notification stops being read. The useful
   shape is a **digest or a per-member frequency preference** — the same conclusion
   `webform_digests` (wave 78) reaches from the other direction.
2. **Access and notification must agree.** A notification announcing content its recipient **cannot
   open** is worse than none — and the check is **not automatic**, since the mail is composed at
   **save** time while access is evaluated at **read** time.
3. **The email's content is a disclosure decision.** A message carrying the content sends
   group-restricted material to whatever mailbox the member uses, **including a shared one**. A
   subject line and a **link** is the safer shape, and keeps the access decision on the site.
