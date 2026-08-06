<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Microsoft Graph API (ms_graph_api) — agent index

Connection and client layer for **Microsoft Graph** (Microsoft 365 / Entra ID).
Version **2.0.0-beta2** (**beta**). Core `^9 || ^10 || ^11`. Depends on **`key:key`**.

Deliberately plumbing, not a feature — credentials, token exchange and a client; business logic is
left to consuming modules, which is right because no two organisations want the same thing from
Graph.

**Credential handling is correct** — `key:key` is a hard dependency, so the client secret is a Key
entity and can live in an environment variable, out of config exports.

**The permissions that matter are Microsoft's, not Drupal's.** A Graph app registration granted
`User.Read.All` / `Directory.Read.All` exposes the whole organisation's directory to whatever holds
the credential. Scope to the minimum, prefer **delegated** over application permissions, and treat
a site holding an application-permission credential as a directory-read capability on a web
server.