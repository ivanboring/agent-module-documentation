<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Eulerian — agent index

Integrates **Eulerian** analytics/tracking (visitor + Commerce cart/checkout/product events). Depends on
core `path_alias`; `eulerian_commerce_*` submodules. Config at `eulerian.settings_form`; provides
permissions. Version **1.1.0**. Core `^10.3||^11`.

**Privacy/consent:** sends visitor/purchase/behaviour data to Eulerian — require consent, integrate
cookie-consent, disclose; store credentials as secrets. No access role.
