<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Centarro Search integrates Elastic Enterprise Search with Search API as a search backend.

---

Centarro Search **integrates Elastic Enterprise Search with Search API** — providing a Search API backend
that indexes and queries content in Elastic Enterprise Search (a hosted/enterprise search service), from Centarro.
It depends on the Search API module.

Use it to back site search with Elastic Enterprise Search. It is a search/integration feature. Security/data
handling: it **sends indexed content and queries to the Elastic Enterprise Search endpoint** (external egress —
confirm acceptable for your content) and authenticates with the service's **credentials/API key** (store as
secrets — env/Key — over HTTPS). Only expose in search what the audience may see (respect Search API's access
handling). Configure the Elastic endpoint and credentials.

---

- Integrate Elastic Enterprise Search.
- Provide a Search API backend.
- Index and query content.
- Depend on Search API.
- Serve site search.
- Back search with Elastic.
- Send content/queries to Elastic (egress).
- Store the service credentials as secrets (env/Key, HTTPS).
- Respect Search API access handling.
- Configure the endpoint and credentials.
- Handle search indexing.
- Index content.
- Configure the backend.
- Query content.
- Search content.
- Configure Elastic.
- Handle the integration.
- Serve results.
- Secure the credentials.
- Provide Elastic search.
