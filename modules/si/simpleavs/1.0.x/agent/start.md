<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Simple AVS (Age Verification) — agent index

A **cookie/session-based age-verification gate** (themable "over N?" overlay). Provides permissions. Version
**1.0.5**. Core `^10.2||^11`.

**Advisory UX, NOT access control** (reviewed): token mechanism is sound (`random_bytes`, one-time), but
content is full HTML behind a **JS overlay** (JS-off reveals it) and the "yes" path does **no age check**
(DOB is attacker-supplied). Satisfies "show an age prompt"; **never** rely on it to protect content — use real
access control.
