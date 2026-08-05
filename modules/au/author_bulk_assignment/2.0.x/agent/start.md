<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Author Bulk Assignment (author_bulk_assignment) — agent index

Views **bulk operation** reassigning the author of selected content. Depends on core `views`.
Permissions: `assign author to selected content`, plus an administrative one for settings.
Version **2.0.0**. Core requirement `^10 || ^11`.

**The need arrives with a departure.** Someone leaves, their account must go or be blocked, and four
hundred nodes name them as author — which matters because **"own content" permissions key off
authorship**, because **the byline is published**, and because deleting the account offers the
destructive shortcut of reassigning everything to **Anonymous** (which `prevent_user_delete_reassign`,
wave 76, exists to remove).

**Three things to think about — this is a bulk write with consequences:**
1. **The byline is published.** Reassigning changes what readers are told about who wrote something
   — an **editorial and sometimes ethical** decision, not a data cleanup.
2. **Revisions carry their own author.** Reassigning the node does **not** rewrite its history; the
   departed user remains in the revision log. Usually correct — worth knowing before someone assumes
   otherwise.
3. **"Own content" permissions follow the change.** The new author gains edit and delete rights over
   everything reassigned. That is the point — check it against whose account that is.
