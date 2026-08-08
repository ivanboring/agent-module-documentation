<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Content Moderation Bypass (content_moderation_bypass) — agent index

Adds a **per-workflow permission** `bypass {workflow} transition restrictions` that lets its holder
set content to **any** moderation state, ignoring the workflow's transitions.
Version **8.x-1.0-alpha10**. Core `^10.1 || ^11`. Depends on core `content_moderation`.
Permissions are generated dynamically (`transitionPermissions()` + a container alter).

**High-privilege permission — grant deliberately.** It bypasses the workflow's integrity (the
reason the workflow exists), though **not** edit *access* — you still need to edit the content.
Give it to a narrow administrative role, per workflow, never to general editors. Its virtue is
being **separable**: override transitions without unrelated admin power.

Use cases: fixing a stuck item, landing a migration in Published, correcting a bad state.