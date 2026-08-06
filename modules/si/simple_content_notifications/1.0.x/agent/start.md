<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple Content Notifications (simple_content_notifications) — agent index

Emails when content **changes or needs review**. Version **1.0.2**. Core `^10 || ^11`.
No dependencies.

Right size for a small site — the alternative is Rules or ECA, which is more machinery than the
requirement deserves. Simplicity is the feature.

**Three things to settle, applicable to any notification module:** **volume** (notifying on every
change trains recipients to ignore it), **delivery** (mail sent during a save ties editing to the
mail server — check whether it queues), and **recipients** (a notification carrying content
excerpts is that content leaving the site's access controls).

Email is a poor queue — pair with a listing of what is waiting.