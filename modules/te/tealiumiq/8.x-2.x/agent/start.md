<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Tealium iQ Tag Management (tealiumiq) — agent index

Embeds Tealium's **`utag`** loader and builds the **data layer** its tags read, with per-entity
values driven by **`token`**. Depends on core `field` and `token`. Submodule `tealiumiq_context`.
Admin at `/admin/config/services/tealiumiq`. Version **8.x-2.4**.
Core requirement `^10.2 || ^11`.

Permissions — **both `restrict access: TRUE`**, and correctly so:
`manage global tealium tags`, `administer tealium settings`.
**A tag manager can inject arbitrary JavaScript into every page.** Anyone who can point the site
at a container can, in practice, run code in every visitor's browser. Treat these permissions like
code deployment.

**The actual work is the data layer**, not the embed. A tag manager can only act on what the page
tells it — content type, section, publication date, author, product id. This module makes that
configurable with tokens so values come from the entity being viewed.

**Two further points:**
- **Consent governs the container**, not just individual scripts. The container must be integrated
  with the consent manager, not assumed to handle it.
- **A data layer is a disclosure decision.** Everything in it is visible to every tag in the
  container *and* to anyone reading the page source. Do not put personal data there by accident.

Peers: Google Tag Manager, Adobe Launch.
