<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Module Locator locates modules in the filesystem, showing where each installed module lives, for developers and administrators.

---

On a complex site with modules in multiple locations (core, contrib, custom, profiles), knowing where a given module actually lives helps debugging. Module Locator shows the filesystem path of installed modules. It is a developer/admin diagnostic. The mild security consideration is that filesystem paths and the full module inventory are mild reconnaissance information (which modules and where), so the tool should be admin-gated and not exposed to untrusted users — an attacker learning your exact module set and layout is a small aid to targeting. Keep it to developers/administrators.

---

- Locate a module's path.
- See where modules live.
- Debug module locations.
- Find a module in the filesystem.
- Inventory module paths.
- Restrict to admins.
- Avoid exposing paths to users.
- Diagnose a complex site.
- Map module locations.
- Keep it developer-only.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.