<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Vitals extras adds four checks to the Vitals health-check framework: update status, environment indicator configuration, development modules left enabled, and mail configuration.

---

Vitals provides the plugin type and the reporting; this module supplies checks for the things that most often go wrong quietly between deployments. Each is a `Plugin/VitalsCheck` — `UpdateStatus`, `EnvironmentIndicator`, `DevModules`, `Mail` — so they appear alongside whatever else the site's Vitals installation reports.

The `DevModules` check is the one that earns the module its `package: Security`. Development modules left enabled in production are a recurring, entirely avoidable exposure: Devel exposes arbitrary PHP execution and entity dumps; a database log UI, a stage-file-proxy, a test-content generator, an enabled `dblog` with no rotation — each is fine locally and a problem in front of the internet. They get enabled during an incident and never removed, because nothing complains.

`UpdateStatus` covers the other recurring one: a site running a module with a published security advisory, where the information was available and nobody was looking. `Mail` catches a site that cannot actually send — the failure that hides until a password reset does not arrive. `EnvironmentIndicator` catches the setup where staging looks exactly like production, which is how content gets edited in the wrong place.

Because they are Vitals plugins, the results go wherever the site already sends Vitals output, which is the point: a check nobody reads is not a check.

---

- Warn when development modules are enabled in production.
- Detect a module with an outstanding security advisory.
- Check that mail is actually configured.
- Verify the environment indicator is set.
- Add health checks to an existing Vitals setup.
- Include update status in automated monitoring.
- Catch Devel left on after an incident.
- Confirm staging is visually distinguishable from production.
- Detect a site that cannot send password resets.
- Report health checks to an external monitor.
- Add deployment hygiene to a routine audit.
- Standardise checks across a fleet of sites.
- Feed check results into an ops dashboard.
- Verify a site after a handover.
- Build a pre-launch checklist from the results.