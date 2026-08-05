<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Extended Logger (extended_logger) — agent index

Structured logging with custom metadata to database, file, syslog or **stdout/stderr**.
PHP >= 8.0. Core requirement `^9.4 || ^10 || ^11`. **Release is 1.3.0-beta2 — beta.**
Settings at `/admin/config/development/extended-logger`, permission
`administer extended_logger configuration`.

| Submodule | Role |
|---|---|
| `extended_logger_db` | database storage |
| `extended_logger_fallback` | secondary destination when the primary is unavailable |

Key facts:
- **The fallback submodule matters more than it sounds.** A logger whose destination is
  unreachable fails silently, which is worse than no logging — enable it whenever the primary
  destination is remote (syslog, an aggregator).
- Field selection uses **`softcreatr/jsonpath`**, so what is logged is configurable by expression
  rather than fixed. `adhocore/json-fixer` repairs malformed JSON before output, which keeps a bad
  line from breaking an aggregator's parser.
- `src/Event/` lets other modules contribute metadata to entries — the extension point for a
  trace id, deployment version or tenant.
- stdout/stderr output is the container use case: the platform collects it, so no database and no
  file rotation.
- **Privacy:** entries carry user input, IP addresses, usernames and request paths. Shipping them
  to an aggregator is a personal-data flow — it needs a retention policy and, for a third-party
  service, a processor agreement.
