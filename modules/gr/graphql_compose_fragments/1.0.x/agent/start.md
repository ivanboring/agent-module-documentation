<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GraphQL Compose: Fragments (graphql_compose_fragments) — agent index

Generates GraphQL **fragments** for the schema `graphql_compose` produces.
Configure at `graphql_compose.fragments`. Version **1.0.2**. Core `^10.2 || ^11`, **PHP 8.1**.
Depends on `graphql_compose:graphql_compose`. No routes or permissions of its own — inherits
GraphQL Compose's access model.

**The problem it solves:** GraphQL Compose builds a large schema automatically from entity types,
fields and view modes. Hand-written client selections drift from it — a new field is invisible
until someone edits a query, a removed one breaks silently. Generated fragments track the schema.

Workflow: generate → commit alongside front-end code → regenerate on content-model change, so the
change appears in a PR diff rather than at runtime. Feeds codegen tools for typed clients.