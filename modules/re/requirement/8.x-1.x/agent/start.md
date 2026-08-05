<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Requirement (requirement) — agent index

Lets modules declare configuration **requirements and suggestions** and — the distinguishing part —
supply a **fix an administrator can apply from the report**. No dependencies. Version **8.x-1.3**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**The gap in core:** `hook_requirements()` produces a list of things that are wrong, with **no way
to do anything about them from where you are reading**. The report says "the private file path is
not set" and the administrator leaves to find the setting. That friction is why status reports stay
red.

**Two things to think about:**
1. **A one-click fix is a configuration change.** It needs the **same permission** as making the
   change by hand, and it must **say exactly what it will do** first. A button that silently alters
   configuration is worse than a message, because the administrator no longer knows the site's
   state.
2. **Requirements are a good place to encode a site's own standards**, not just a module's — "the
   private file path must be outside the webroot", "the anonymous role must not hold this
   permission". That turns a checklist nobody reads into **a check that runs**.
