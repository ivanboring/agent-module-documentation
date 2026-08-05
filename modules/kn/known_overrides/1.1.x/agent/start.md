<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Known Overrides (known_overrides) — agent index

Reports which configuration values `settings.php` is overriding, compared against a
`$knownOverrides` global the developer declares. Report at `/admin/reports/known-overrides` behind
**`known overrides report`** (`restrict access: true`), with `no_cache: TRUE` — correct for a
report reading live state. Version **1.1.0**. Core requirement `^10 || ^11`.

**The confusion it resolves:** overrides work **invisibly by design**. The configuration UI shows
the *stored* value while the site runs on the *overridden* one — so an administrator changes a
setting, sees it saved, and nothing happens. Worst on hosting where overrides are injected by the
**platform** rather than written by the team.

The `$knownOverrides` mechanism is the useful part: it separates **"this is deliberate"** from
**"where did this come from"**.

**The restricted permission is warranted.** An override report is a map of how this environment
differs from the codebase — endpoint hostnames, service names, feature flags, deployment shape. Not
secrets if the site keeps those in environment variables, but a useful map for someone who should
not have it.
