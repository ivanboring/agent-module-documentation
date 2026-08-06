<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Gin Toolbar Local Tasks (gin_toolbar_local_tasks) — agent index

Moves **local task tabs into the toolbar**, for sites on the **Gin** admin theme. Depends on core
`toolbar`. Version **2.0.0**. Core requirement `^10 || ^11`.

**Context:** Gin is the most widely used contrib admin theme and the direction core's administration
is moving. It rearranges the interface substantially, which leaves the **local tasks row** awkward —
it was designed for a layout Gin no longer has. Those tabs are the controls editors use most.

**Two things to check — the same two for every relocation of these elements in this campaign:**
1. **Local tasks are navigation** — keyboard reachable, visible focus indicator, active tab
   distinguishable by **more than colour**. That is where cosmetic changes to this row go wrong.
2. **The toolbar is itself contested space.** Core's **`navigation`** module is replacing the toolbar
   in newer releases, so a module placing things into the **old** toolbar builds on something the
   project is moving away from. Its longevity depends on following that transition.

Compare `workbench_tabs` (wave 78) and `admin_toolbar_messages` (wave 75), which address the same
placement problem from different directions.
