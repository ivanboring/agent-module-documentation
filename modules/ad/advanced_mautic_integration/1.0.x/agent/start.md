<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Advanced Mautic Integration — agent index

Integrates Drupal with **Mautic marketing automation** (tracking script + contact/token data → Mautic
campaigns). Depends on `token`. Provides permissions. Version **1.0.0-beta2**. Core `^10||^11`.

Marketing/integration — enables **visitor tracking** (GDPR/consent) and, where it calls the Mautic API,
handle **API credentials as secrets** (Key/env) over **HTTPS**. No access role beyond permission.
