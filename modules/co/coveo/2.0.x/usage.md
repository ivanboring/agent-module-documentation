<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Coveo provides integration with the Coveo search platform.

---

Coveo integrates the **Coveo hosted search platform** — indexing content to Coveo and rendering Coveo search
experiences (via the `coveo_atomic` UI, `coveo_search_api` backend and `coveo_secured_search` submodules). It
provides its own permissions, in the Search package.

Use it to power search with Coveo. It is a site-search/integration feature. Security/data handling: content is
**indexed in Coveo** (external service) and search runs against it — store the Coveo **API keys** as **secrets**
over HTTPS, and use the **`coveo_secured_search`** submodule (token-based) so that access-restricted content
isn't exposed to users who shouldn't see it (a hosted index is not governed by Drupal's entity access unless you
enforce it via secured search). It has no access-control role of its own beyond that submodule's tokens.
Configure the Coveo credentials and indexing.

---

- Integrate the Coveo search platform.
- Index content to Coveo.
- Render Coveo search UIs.
- Provide Atomic/Search API/secured-search submodules.
- Provide its own permissions.
- Serve site search.
- Index content in Coveo (external).
- Store the Coveo API keys as secrets.
- Use coveo_secured_search for restricted content.
- Know a hosted index isn't Drupal-access-governed by default.
- Have no access role of its own beyond secured-search tokens.
- Configure credentials + indexing.
- Handle Coveo search.
- Index content.
- Configure the integration.
- Search via Coveo.
- Handle the integration.
- Render search.
- Secure the index.
- Provide Coveo search.
