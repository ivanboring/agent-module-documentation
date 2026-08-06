<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
GraphQL Compose: Fragments generates GraphQL fragments for the schema GraphQL Compose produces, so front-end clients can select fields without hand-writing them.

---

GraphQL Compose builds a schema automatically from the site's entity types, fields and view modes. That is a large schema, and the practical problem for the front end is not querying it but keeping queries in step: a field added in Drupal is invisible to a client until someone edits a query, and a field removed breaks one silently. Fragments are GraphQL's answer — a named, reusable field selection per type — and generating them from the live schema means the client's selections track the site instead of drifting from it.

The workflow that follows is straightforward: configure at `graphql_compose.fragments`, generate, commit the fragments alongside the front-end code, and regenerate when the content model changes. Because the fragments are files, a content-model change shows up in a pull request diff rather than as a runtime surprise, and codegen tools downstream produce typed clients from them.

It is a thin extension — no permissions or routes of its own, and it inherits GraphQL Compose's own access model. Requires PHP 8.1 and, obviously, a working GraphQL Compose installation; it has nothing to generate without one.

---

- Generate GraphQL fragments from a Compose schema.
- Keep front-end field selections in step with the content model.
- Give a client reusable per-type field selections.
- Commit generated fragments alongside front-end code.
- Regenerate fragments after a content-model change.
- See content-model changes in a pull request diff.
- Feed fragments into a codegen tool.
- Produce a typed client from generated fragments.
- Avoid hand-writing selections for a large schema.
- Catch a removed field before it breaks a query.
- Share fragments between several front-end apps.
- Reduce duplication across GraphQL queries.
- Onboard a front-end developer to an unfamiliar schema.
- Document what a type actually exposes.
- Support a decoupled build with generated artefacts.