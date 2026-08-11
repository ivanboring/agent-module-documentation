<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Microsoft Entra User Sync — agent index

**Syncs users between Microsoft Entra (Azure AD) and Drupal** (via MS Graph). Stores credentials via **`key`**.
Depends on `ms_graph_api`. Provides permissions. Version **3.0.0-beta2**. Core `^10||^11`.

Directory/identity integration — calls the **MS Graph API** (egress) to read **user PII** + provisions accounts;
**Entra app credentials via the Key module** (positive; least-privilege Graph scopes, HTTPS). Provision least-
privilege roles. Own permissions.
