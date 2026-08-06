<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Viewfield Argument Helper (viewfield_argument_helper) — agent index

Entry assistance for **Viewfield** contextual arguments. Requires `views` and `viewfield`.
Settings at `/admin/config/…/viewfield_argument_helper`. Version **1.3.3**.
Core requirement `^9.4 || ^10 || ^11`.

**The problem is opacity.** Viewfield asks for contextual arguments as a **raw string**. An editor
who knows the term is "Renewable energy" does not know it is **47**, and nothing in the interface
tells them. **Worse, a wrong id produces no error** — the view returns nothing, which reads as
"there is no related content" rather than "this is misconfigured".

**Two things worth attaching:**
1. **An entity id stored in content is a reference Drupal does not know about.** Nothing stops the
   term being deleted, nothing updates the value, and **a migration renumbering terms silently
   repoints every embedded view** — the same portability problem `entity_reference_uuid` (wave 78)
   addresses from the other end.
2. **The embedded view brings its own access and cache metadata.** A view embedded in a node varies
   by whatever it varies by — the node's cacheability must account for it, or the first visitor's
   results are served to everyone.
