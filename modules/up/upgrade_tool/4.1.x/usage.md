<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Open Y Upgrade Tool tracks which configuration a site has customised away from its distribution's defaults, so a distribution update knows what it may safely overwrite.

---

The problem belongs to distributions and is genuinely hard. A distribution ships configuration — content types, views, block layouts — and a site built on it customises some of that. When the distribution releases an update with improved defaults, importing them wholesale destroys the site's customisations, and importing nothing means the site never receives the improvements it upgraded for. Neither is acceptable, so the update needs to know, per configuration object, whether the site has taken ownership of it. This module maintains that record: a log of what diverged from the distribution's defaults, with a dashboard and a per-item **config diff** so a maintainer can decide item by item. It comes from **Open Y / YMCA Website Services**, a substantial distribution for YMCA associations, which is why the module and its routes are named `openy_upgrade_tool` while the project is `upgrade_tool` — `drush en upgrade_tool` fails. Version **4.1.2**, core requirement **`^11`** — Drupal 11 only — depending on `config_import`. Two things worth noting. The **routing paths begin with a space** (`' /admin/openy/development/upgrade-log/…'`), which is a packaging slip worth verifying against actual reachability. And the pattern generalises beyond this distribution: **any site that inherits configuration from a shared upstream** — an agency's base profile, a multi-site platform, a recipe applied at build time — has the same problem, and a record of what has been customised is the thing that makes upstream updates applicable rather than theoretical.

---

- Track configuration customised from a distribution.
- Decide what an upgrade may overwrite.
- Diff a config object against its default.
- Support an Open Y upgrade.
- Review divergence before updating.
- Log configuration overrides over time.
- Support a YMCA site's maintenance.
- Audit customisation of shipped config.
- Apply distribution improvements selectively.
- Support a shared base profile.
- Review a view's local changes.
- Plan a distribution upgrade.
- Identify untouched configuration.
- Support a multi-site platform's updates.
- Compare active and shipped configuration.
- Support an agency's site fleet.
- Reduce risk in a distribution update.
- Document configuration ownership.
