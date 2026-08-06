<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Workbench Reviewer (workbench_reviewer) — agent index

Assigns individual content to **named reviewers**, on top of content moderation.
Version **3.0.0-beta2** (**beta**). Core `^9 || ^10 || ^11`.
Depends on `content_moderation (>= 8.4)`.

**What it adds that moderation lacks: a person.** "In review" is a state belonging to nobody, which
is where content stops. Assignment makes it "waiting for you".

**Verify before depending on it (beta, in an editorial workflow):** what happens to an assignment
on a state transition, and when the assigned user is **blocked or deleted**. An assignment pointing
at a departed colleague reintroduces exactly the problem the module solves.