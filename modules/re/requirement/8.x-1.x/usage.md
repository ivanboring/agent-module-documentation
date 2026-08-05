<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Requirement gives modules a way to declare configuration requirements and suggestions, and — the part that distinguishes it — to supply a fix that an administrator can apply from the report.

---

Core's `hook_requirements()` produces the status report: a list of things that are wrong, each with a description and a severity, and no way to do anything about them from where you are reading. So the report says "the private file path is not set" and the administrator goes to find the setting; it says "cron has not run" and they go elsewhere to run it. For requirements that have an obvious remedy — a configuration value that should be changed, a permission that should not be granted to anonymous, a setting that contradicts another — the gap between knowing and fixing is pure friction, and friction is why status reports stay red. Adding a solution to the declaration closes it. Version **8.x-1.3** on `^8` through `^11`, no dependencies. Two things to think about. **A one-click fix is a configuration change**, so it needs the same permission as making that change by hand, and it should say exactly what it will do before doing it — a button that silently alters configuration is worse than a message, because the administrator no longer knows what state the site is in. And **requirements are a good place to encode a site's own standards**, not just a module's: a team can declare "this site must have the private file path set outside the webroot" or "the anonymous role must not hold this permission" and have the status report enforce it, which turns a checklist nobody reads into a check that runs.

---

- Add a fixable requirement to the status report.
- Let an administrator apply a suggested fix.
- Declare a module's configuration prerequisite.
- Encode a site's own standards as checks.
- Warn about a risky permission grant.
- Suggest a performance setting.
- Check a configuration contradiction.
- Reduce friction fixing status warnings.
- Declare a recommended setting.
- Enforce a deployment checklist.
- Warn when a module is misconfigured.
- Check that a required key exists.
- Suggest enabling a companion module.
- Validate a site's own conventions.
- Provide a one-click configuration fix.
- Check environment-specific settings.
- Warn about a development module in production.
- Support a site audit process.
