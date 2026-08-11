<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupitor Client — agent index

**Collects and exposes available Composer updates** for Drupal projects via Drupitor. Depends on core `system`,
`user`. Provides permissions. Version **1.0.0**. Core `^10||^11`.

Development/monitoring — update/version info is **fingerprinting data** (gate to trusted users, don't expose
publicly; store any credentials as secrets). No access role beyond permission.
