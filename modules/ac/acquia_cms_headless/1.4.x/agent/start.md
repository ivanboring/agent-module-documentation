<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia CMS Headless — agent index

Composes and configures the **decoupled stack** (JSON:API + JSON:API Extras/menu items, `next`/
`next_jsonapi`, Consumers, Simple OAuth, OpenAPI ReDoc/Swagger) for progressively decoupled or purely
headless Acquia CMS with **Next.js**. Version **1.4.1**. Core `^10||^11`. Optional
`acquia_cms_headless_ui` submodule adds the admin dashboard.

**Security surface = Simple OAuth config** (key material, token lifetimes, consumers/scopes) + which
entities JSON:API exposes. Provides permissions + Drush commands. Broad dependency set — expects the
Acquia CMS ecosystem.
