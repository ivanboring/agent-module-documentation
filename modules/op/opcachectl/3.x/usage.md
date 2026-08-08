<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
OPcache Control shows PHP OPcache status and allows clearing the opcode cache from within Drupal.

---

PHP OPcache caches compiled code, and after a deploy the opcache sometimes needs clearing to pick up changed files. OPcache Control shows opcache status and provides a clear action from Drupal. It is a server-operations tool, and the clearing capability is the security-relevant part: clearing opcache forces PHP to recompile everything, a momentary performance hit, so the ability to trigger it should be restricted to administrators — an unprivileged user able to clear opcache repeatedly could degrade performance (a mild DoS). Confirm the status page and clear action are admin-gated, and treat opcache clearing as an operational action for deploys, not a routine user feature.

---

- View OPcache status.
- Clear the opcode cache.
- Refresh opcache after deploy.
- Restrict opcache clearing to admins.
- See opcache memory use.
- Avoid unprivileged clearing.
- Trigger a recompile.
- Use for deploys.
- Confirm admin gating.
- Monitor opcache.
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