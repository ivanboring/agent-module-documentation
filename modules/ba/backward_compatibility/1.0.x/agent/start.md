<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Backward Compatibility (backward_compatibility) — agent index

Restores functions and APIs removed by newer Drupal, so older code keeps running.
Version **1.0.2** (**2023**), package `Custom`. Declares `^9 || ^10 || ^11`.

**The legitimate use, worth stating plainly:** a site with a five-year-old custom module whose
author left and whose tests do not exist. A shim lets it **upgrade core now** — and therefore
receive security updates — with the call sites fixed afterwards. "Just update the code" assumes a
budget and an author the site does not have.

**Three things to be clear about:**
1. **It is a bridge, not a destination.** Shimmed code is unmaintained code running against a core
   that no longer expects it, and **the removals happened because the old APIs had problems** —
   often correctness or security ones — **which the shim reintroduces**.
2. **Its own maintenance is the risk.** A compatibility layer that lags behind core becomes the
   thing that breaks the next update. A module from **2023** declaring compatibility with a core
   major released afterwards is a **declaration, not a test result**.
3. **Enumerate and track what it is providing.** Each restored API is a named piece of technical
   debt. The honest use is: install, list, and **close the list down deliberately** rather than
   forgetting it is there.
