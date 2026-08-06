<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GraphQL Export (graphql_export) — agent index

Exports a GraphQL server's schema as SDL or JSON introspection — UI, Drush, or automatically on
config export. Version **2.0.6**. Core `^10.2 || ^11`, **PHP 8.1**. Depends on `graphql:graphql`.
No permissions of its own.

Routes, all guarded by GraphQL's own `_graphql_explorer_access: graphql_server:{graphql_server}`
(inherits the explorer's access model rather than defining a new one):

- `/admin/config/graphql/servers/manage/{graphql_server}/export`
- `…/export/graphqls` — SDL
- `…/export/json` — introspection JSON

Drush (`src/Commands/GraphqlExportCommands`):

- `graphql-export:schema [server_ids] [--type=…]`
- `@hook post-command config:export` — exports the schema whenever config is exported, so the
  schema travels with config in version control and shows up in PR diffs.

Service: `GraphqlExportService`. Requires at least one configured GraphQL server.