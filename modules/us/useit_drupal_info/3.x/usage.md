<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Useit Drupal Info sends the site's Drupal version, PHP version and full module/project inventory (with available updates) to an administrator-configured destination URL on cron, for external monitoring.

---

Agencies monitoring many sites want each site to report its version and update status centrally. Useit Drupal Info does that: on cron it collects the Drupal version, PHP version, and every project's installed and latest version, and POSTs it to a configured destination URL with an API key. The behaviour is admin-configured and opt-in (the destination and key are set at a settings page gated by administer site configuration), which is the right control — but the data it transmits is sensitive reconnaissance: a complete map of which modules are installed, at which versions, and which are outdated (i.e. potentially vulnerable). If that reaches the wrong party, it is precisely the targeting information an attacker wants. So the operator must treat the destination as trusted infrastructure: use an HTTPS destination so the inventory is not sent in clear, confirm the receiving endpoint is one you control or trust, and keep the API key secure. Used to feed your own monitoring over HTTPS it is a reasonable operations tool; misconfigured, it hands out the site's vulnerability map.

---

- Report version info to a monitor.
- Send update status centrally.
- Monitor many sites' versions.
- POST the module inventory.
- Configure a destination URL.
- Use an HTTPS destination.
- Trust the receiving endpoint.
- Keep the API key secure.
- Understand it sends recon data.
- Avoid sending in cleartext.
- Report outdated modules.
- Feed your own monitoring.
- Confirm the destination is yours.
- Restrict the settings page.
- Know what is transmitted.
- Treat the inventory as sensitive.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.