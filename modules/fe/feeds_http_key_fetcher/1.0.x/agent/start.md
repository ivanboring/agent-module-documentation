<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feeds HTTP Key Fetcher — agent index

A **Feeds fetcher that sends an API key / auth header** when fetching a remote feed over HTTP (import from
key-protected endpoints). Used with `feeds`. Version **1.0.2**. Core `^8||^9||^10||^11`.

The fetch key is a **credential** — store as a secret, use **HTTPS** so it isn't sent cleartext (Drupal HTTP
client, TLS on by default). No access role.
