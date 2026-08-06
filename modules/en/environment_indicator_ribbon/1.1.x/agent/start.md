<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Environment indicator ribbon (environment_indicator_ribbon) — agent index

Corner **ribbon** showing the current environment, extending **`environment_indicator`**'s toolbar
treatment. Permission `access environment indicator ribbon`. Version **1.1.0**.
Core requirement `^9 || ^10 || ^11`.

**The mistake it prevents is specific, common and expensive:** doing something on production
believing it is staging — deleting content, running a migration, sending a test email to a real
list, clearing a cache at peak. Done by competent people with three near-identical tabs open.

**Why a ribbon rather than the toolbar:** the toolbar is not always where attention is — an editor
in a front-end theme, a developer looking at a rendered page, anyone whose toolbar has scrolled
away. A ribbon stays in the viewport corner.

**Two things determine whether it works:**
1. **The environment must be detected, not configured.** A value read from an **environment
   variable** is correct everywhere automatically; a value in **exported configuration** is the same
   on every environment and therefore says "production" on staging — **worse than no ribbon, because
   it is trusted**.
2. **Colour alone is not enough.** Red-versus-green fails a colour-blind developer — the
   environment's **name** must be in the ribbon text.
