<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Open Y Upgrade Tool (upgrade_tool) — agent index

Tracks which configuration a site has **customised away from its distribution's defaults**, with a
dashboard and per-item **config diff**. Depends on `config_import`. Version **4.1.2**.
**Core requirement `^11` — Drupal 11 only.**

**Name mismatch:** project `upgrade_tool`, module **`openy_upgrade_tool`** — `drush en upgrade_tool`
fails. It comes from **Open Y / YMCA Website Services**.

**The problem it solves is genuinely hard and belongs to distributions.** A distribution ships
configuration; the site customises some of it. On update, importing wholesale **destroys the
customisations**; importing nothing means the site **never receives the improvements it upgraded
for**. The update needs to know, per config object, whether the site has taken ownership.

**Two things worth noting:**
- **The routing paths begin with a space** — `' /admin/openy/development/upgrade-log/…'`. A
  packaging slip; verify actual reachability.
- **The pattern generalises.** Any site inheriting configuration from a shared upstream — an
  agency base profile, a multi-site platform, a **recipe** applied at build time — has the same
  problem, and a record of what has been customised is what makes upstream updates **applicable
  rather than theoretical**.
