<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Parameters (parameters) — agent index

Defines configuration objects with **arbitrary properties** — a named, fielded settings container
without a settings form class or config schema. Submodules `parameters_ui` (interface) and
`parameters_content` (content-side variant). Version **1.7.4**.
Core requirement `^10.3 || ^11`.

**What it replaces, and why each alternative is more work than the value deserves:** a **settings
form** (form class + config schema + route + permission + menu entry); **`settings.php`** (a
deployment per change, nothing an administrator can edit); **a block or node** (content pretending
to be configuration).

**Two things to settle — the same two that decide every "where does this value live" question:**
1. **Configuration or content.** Configuration **exports, is reviewable in a diff, and is
   overwritten by a config import** — so an editor's production change is lost. Content survives
   deployment and is invisible in review. The two submodules show the module knows this is a
   choice; **make it deliberately per value**.
2. **A schema is what makes configuration safe.** "Arbitrary properties" means a **typo creates a
   new property** rather than an error, nothing validates a value's type, and **config import
   cannot check what it is importing**. The flexibility is real; so is what it removes.
