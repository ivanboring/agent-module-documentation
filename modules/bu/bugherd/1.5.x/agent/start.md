<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# BugHerd (bugherd) — agent index

Embeds the **BugHerd** feedback overlay. No dependencies.
Core requirement `^10 || ^11 || ^12` (declares Drupal 12).
Settings at `/admin/config/development/bugherd` (`administer bugherd`).

Key facts:
- **`access bugherd` is the control that matters** — it decides which roles receive the overlay.
  The widget is third-party JavaScript; grant it to reviewer roles only.
- The module can suppress the overlay on admin pages.
- **Two things to state when recommending it:**
  - it loads a **third-party script** into the page, so it is a data-flow and consent question
    anywhere real visitors could encounter it;
  - prefer enabling it on **staging** rather than production.
