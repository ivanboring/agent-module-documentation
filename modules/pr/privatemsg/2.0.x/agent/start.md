<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Private Messages (privatemsg) — agent index

User-to-user messaging — threads, inbox, read state, bulk actions — as content entities. Depends on
core `block`, `datetime`, `taxonomy`, `user`, `views`, `image` and **`views_bulk_operations`**
(which supplies the inbox actions). Three migration submodules (two D6, one D7) — that is where
most of its installed base comes from. Version **2.0.0-rc22** — a release candidate, and the high
rc number suggests a long stabilisation. Core requirement `^10.1 || ^11`.

Permissions: `administer privatemsg` (`restrict access: true`), `privatemsg write messages`,
`privatemsg use messages actions`, `privatemsg delete own messages`.

**What to test before trusting any messaging module — these are the failure modes that have
produced advisories in messaging code across every CMS:**
1. **Entity route access** — does requesting another user's `privatemsg_thread` or
   `privatemsg_message` id by URL get refused?
2. **Deleted/unpublished messages** — do they stay unreachable by direct id?
3. **The inbox Views** — do they filter by the current user **in the query**, or only in the
   display? A display-level filter is not access control.

Worth an afternoon's testing on any site where the messages actually matter.
