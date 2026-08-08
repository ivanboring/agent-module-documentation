<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Routes List provides an admin report listing all registered routes on the site, for developers and site auditors.

---

When debugging or auditing a site, seeing every registered route — path, name, controller, requirements — in one place is genuinely useful, and Drupal offers no such overview out of the box. Routes List adds it as a report at /admin/reports/routes-list, gated by a dedicated `access routes list` permission. That permission matters: a full route inventory is a map of the site's surface, useful to a developer and equally useful to an attacker, so it should be restricted to trusted developers/administrators, not granted broadly. Keep it to the people who need it.

---

- List all registered routes.
- Audit the site's routes.
- Debug routing.
- See every path and controller.
- Find a route by name.
- Restrict route-list access.
- Grant it to developers only.
- Map the site's surface.
- Review route requirements.
- Keep the inventory restricted.
- Enable when the feature is needed.
- Keep it disabled otherwise.
- Restrict administration to trusted roles.
- Confirm behaviour on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep the setup minimal.
- Document why it was added.
- Verify it fits your theme.
- Audit access to it.
- Match it to your use case.