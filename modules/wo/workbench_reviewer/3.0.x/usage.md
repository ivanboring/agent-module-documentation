<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Workbench Reviewer assigns individual pieces of content to specific people for review, on top of content moderation.

---

Content moderation gives a site states and transitions: draft, review, published. What it does not give is a person. "In review" is a state that belongs to nobody, and on a site with any volume that is where content stops — everyone assumes someone else is looking at it.

This module adds the missing dimension. A piece of content is assigned to a named reviewer, so "in review" becomes "waiting for you", which is the difference between a workflow that moves and one that accumulates.

The editorial questions it makes answerable are the ones editors actually ask: what is waiting for me, what is waiting on someone who has left, how long has this been sitting there. None of those can be answered from a moderation state alone.

The release is **3.0.0-beta2**, a beta, on a module that sits in an editorial workflow — verify the assignment behaviour against your moderation states before depending on it, particularly what happens to an assignment when content transitions or when the assigned user is blocked or deleted. An assignment pointing at a departed colleague is the failure mode that reintroduces exactly the problem the module solves.

---

- Assign content to a named reviewer.
- Turn "in review" into "waiting for you".
- See what is waiting for me to review.
- Find content assigned to someone who left.
- Measure how long content sits in review.
- Move content through an editorial workflow.
- Combine assignment with moderation states.
- Reassign content to a different reviewer.
- Report on review workload.
- Chase an overdue review.
- Verify behaviour on a state transition.
- Handle an assignment to a blocked user.
- Handle an assignment to a deleted user.
- Evaluate a beta before depending on it.
- Plan an editorial review process.