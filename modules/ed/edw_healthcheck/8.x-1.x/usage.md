<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EDW Health check monitoring exposes a Drupal site's status and module versions as JSON, for an external monitoring system to poll.

---

An organisation running many Drupal sites needs to know, centrally, which of them are behind on security updates — and asking each site's update report by hand does not scale past a handful. A machine-readable endpoint lets a dashboard poll every site nightly and produce one list of what needs attention, which is how a fleet actually gets patched. This supplies that, depending on core `update` for the version data and core `basic_auth` for the authentication, with the endpoint at `/edw_healthcheck/{type}`. Version **8.x-1.31** on `^8` through `^11`. **The access model is correct and is the thing to check on any module of this kind**: the route requires an `edw healthcheck access` permission and declares `_auth: ['basic_auth', 'cookie']`, so a monitoring system authenticates as a dedicated account over HTTP basic auth rather than the endpoint being open. That matters because **the payload is a reconnaissance document**: an exact list of installed modules with exact versions is precisely what an attacker wants, since it turns "try known Drupal exploits" into "look up the advisories for these versions". A site that exposes it anonymously has published its own vulnerability inventory. Two operational points. **The monitoring account should hold that permission and nothing else**, and its credentials belong wherever the monitoring system keeps secrets rather than in a shared password. And **basic auth over plain HTTP sends the password in every poll**, so the endpoint needs TLS — which is obvious and is exactly the sort of thing that gets missed on an internal monitoring path nobody thinks of as public.

---

- Monitor a fleet of Drupal sites.
- Report module versions to a dashboard.
- Detect sites behind on security updates.
- Poll site status from monitoring.
- Track Drupal core versions centrally.
- Support a patching programme.
- Report update status as JSON.
- Monitor an agency's client sites.
- Detect an unpatched module.
- Feed a compliance dashboard.
- Check site health automatically.
- Report installed module lists.
- Support an infrastructure inventory.
- Monitor a multi-site estate.
- Alert on available security updates.
- Track versions across environments.
- Support an SLA reporting requirement.
- Automate update surveillance.
