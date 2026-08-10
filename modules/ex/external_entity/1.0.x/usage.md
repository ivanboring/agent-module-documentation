<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Entities consumes external entities from various sources.

---

External Entities lets you **consume data from external sources as Drupal entities** — mapping an API,
database or file (via storage-client plugins) into a browsable/queryable external entity type, without importing
the data into Drupal's own storage. It requires PHP 8.3, provides its own permissions, in the External Entity
package.

Use it to surface external data as entities. It is an integration/external-data feature. Security/data
handling: the data comes from an **external source** (API/file) — handle any source **credentials** as secrets
(env/Key), use HTTPS, and ensure the source is trusted; external-entity access follows the configuration you
set (make sure sensitive external data isn't exposed more broadly than intended). It has no access-control role
of its own beyond its permission. Configure the external-entity type and storage client.

---

- Consume external data as entities.
- Map an API/DB/file to entities.
- Avoid importing to Drupal storage.
- Require PHP 8.3.
- Use storage-client plugins.
- Provide its own permissions.
- Handle source credentials as secrets.
- Use HTTPS + a trusted source.
- Ensure external data isn't over-exposed.
- Have no access-control role of its own.
- Configure the type and storage client.
- Handle external entities.
- Surface external data.
- Configure the source.
- Browse external data.
- Handle the integration.
- Query external entities.
- Map external data.
- Secure the source.
- Provide external entities.
