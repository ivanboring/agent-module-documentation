<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# API Sync — agent index

A framework to **integrate Drupal with a REST / OData API** (sync entities to/from an external system). Provides
permissions. Version **1.0.0-alpha22**. Core `^10||^11`.

Integration — external API **credentials** as secrets (env/Key, HTTPS); exchanges **entity/record data** (may be
PII; gate config by permission). No access role beyond permission.
