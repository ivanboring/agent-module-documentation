<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Views Addons (views_addons) — agent index

Assorted extensions to Views — additional handlers and options. Depends on core `views`. No
permissions, no routes, no configuration of its own; everything appears inside the Views UI, which
is the correct shape for this category. Version **1.3.0**. Core requirement `^9 || ^10 || ^11`.

**Standing advice for any "addons" module — apply it here:**
1. **Enumerate what it actually adds** before installing. The description will not, and the answer
   decides whether one handler justifies a dependency or a small custom plugin is cheaper.
2. **Check whether core has absorbed the feature.** Views gains capability every few releases;
   older addon modules routinely duplicate what is now built in.
3. **A view built on a contrib handler is bound to that module.** Removing it later leaves a
   **broken** view, not a degraded one — the dependency travels with every view that uses it.
