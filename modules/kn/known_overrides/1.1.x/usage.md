<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Known Overrides reports which configuration values are being overridden by `settings.php`, comparing them against a `$knownOverrides` global the developer declares.

---

Configuration overrides in `settings.php` are how a Drupal site differs per environment — a development mail transport, a disabled cache, a different API endpoint, a search server pointing at a local instance. They work invisibly by design, which is exactly the problem: the configuration UI shows the stored value while the site runs on the overridden one, so an administrator can change a setting, see it saved, and have nothing happen. That produces some of the most confusing support conversations in Drupal, and the confusion is worst on hosting where overrides are injected by the platform rather than written by the team. This module surfaces them at `/admin/reports/known-overrides` behind a `known overrides report` permission marked `restrict access: true`, and the `$knownOverrides` mechanism lets a developer declare which overrides are expected — so the report distinguishes "this is deliberate" from "where did this come from". Version **1.1.0** on core `^10 || ^11`, with `no_cache: TRUE` on the route, which is correct for a report reading live state. The restricted permission deserves a moment: **an override report is a list of how this environment differs from the codebase**, which can include endpoint hostnames, service names, feature flags and the shape of the deployment — not secrets if the site is following good practice and keeping those in environment variables, but a useful map for anyone who should not have it.

---

- See which config values settings.php overrides.
- Explain why a saved setting has no effect.
- Audit an inherited site's overrides.
- Compare expected and actual overrides.
- Diagnose a configuration mystery.
- Document environment differences.
- Find a platform-injected override.
- Support a deployment review.
- Check overrides after a migration.
- Verify a development environment's settings.
- Identify unexpected overrides.
- Support a troubleshooting session.
- Review overrides before a release.
- Confirm a feature flag is set.
- Explain a config import conflict.
- Onboard onto an unfamiliar site.
- Audit a multidev environment.
- Track declared versus actual overrides.
