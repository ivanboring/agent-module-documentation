<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Disable User 1 (disable_user_1) — agent index

Blocks the account with **uid 1** — Drupal's implicit superuser. No dependencies, no routes, no
permissions, no configuration. Core requirement `^10 || ^11`.

Key facts:
- Whole module: `src/EventSubscriber/`, `disable_user_1.module`, `.services.yml`.
- **Why it matters:** uid 1 is a hard-coded exception in Drupal — `hasPermission()` returns TRUE
  for it regardless of the permissions page. It is the highest-value account on any site and the
  one least likely to be governed, typically created at install and shared during the build.
- **Two things to establish before enabling:**
  1. A real administrator account with an **administrator role** exists and works. Enabling this
     without one leaves nobody able to administer the site.
  2. The **recovery path**: `drush uli --uid=1` and Drush's user commands operate below the level
     this module intercepts, so command-line access remains the way back in. That is also the
     argument *for* the module — it moves superuser access from a password to server access.
- Drupal 11 has been moving away from the uid-1 exception in core; check whether the site's core
  version already restricts it before adding this.
