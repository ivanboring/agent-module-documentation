<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Environment Link Fixer rewrites links/URLs so they point at the correct environment.

---

Environment Link Fixer **rewrites links so they point at the correct environment** — fixing absolute URLs
that were authored for one environment (e.g. production) so they resolve to the current environment (dev/stage),
avoiding cross-environment link leakage. It provides its own permissions.

Use it to keep links environment-correct on non-production copies. It is a site-building/development aid; it
rewrites output links and has no access-control role beyond its permission. Note: correct rewriting helps prevent
staging content linking back to production (a minor data-hygiene benefit). Configure the link-fixer mappings.

---

- Rewrite links to the current environment.
- Fix cross-environment absolute URLs.
- Avoid link leakage.
- Provide its own permissions.
- Serve development/site building.
- Correct environment links.
- Rewrite output links.
- Prevent staging linking to production (data hygiene).
- Have no access-control role beyond permission.
- Configure the mappings.
- Handle link fixing.
- Rewrite links.
- Configure the fixer.
- Fix URLs.
- Handle the links.
- Correct URLs.
- Configure environments.
- Handle the rewrite.
- Map links.
- Provide link fixing.
