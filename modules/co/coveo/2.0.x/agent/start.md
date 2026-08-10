<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Coveo — agent index

Integrates the **Coveo hosted search platform** (`coveo_atomic` UI, `coveo_search_api`, `coveo_secured_search`
submodules). Provides permissions. Version **2.0.1**. Core `^10||^11`.

Site-search/integration — content **indexed in Coveo** (external): API keys as secrets (HTTPS); use
**`coveo_secured_search`** so restricted content isn't exposed (hosted index isn't Drupal-access-governed by
default). No access role of its own beyond secured-search tokens.
