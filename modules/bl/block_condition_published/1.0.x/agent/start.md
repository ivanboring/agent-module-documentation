<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Block Condition Published (block_condition_published) — agent index

Block **visibility condition** on the viewed entity's **published status**. Version
**1.0.0-beta1** — beta. Core requirement `^9 || ^10 || ^11`.

**The gap:** core's conditions cover paths, content types, roles, languages and the front page — not
publication status. Without it the alternatives are a preprocess function checking status, a
duplicated block with path conditions that go stale, or showing the block everywhere and accepting
it is sometimes wrong.

**Two things to keep straight:**
1. **A visibility condition is presentation, not access.** A block hidden on unpublished content is
   genuinely not rendered — but it says nothing about whether the visitor should be seeing the
   unpublished entity at all, which is **entity access's** job. **Never a way to protect anything.**
2. **The condition adds a cache context.** Visibility depending on the current entity's status means
   the block's cacheability must **vary by that entity**, or the first rendering is reused — and the
   failure is visible in the embarrassing direction: **a draft notice cached onto a published page**
   is the kind of thing a client notices before you do.

Compare `user_not_role` (wave 78), another condition filling a core gap.
