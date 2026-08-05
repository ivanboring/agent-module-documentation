<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Symfony HTTP Client for Drupal (symfony_http_client) — agent index

Registers **Symfony's HTTP client** in the service container so code can autowire
`Symfony\Contracts\HttpClient\HttpClientInterface`. Version **1.0.0**.
Core requirement `^10.3 || ^11.0`. **`php: 8.3`** — a higher PHP floor than core requires.

No UI, no routes, no permissions, no configuration. Two classes: a service provider and a
compiler pass that aliases the interface to a private factory-built `HttpClient::create()`
definition.

Key facts:
- **Usually arrives as a dependency, not a choice.** Modern SDKs and Symfony components take
  `HttpClientInterface`, not a Guzzle client. On this site it came in with the `ai` family.
- **It is NOT core's `http_client`.** The client is built by bare `HttpClient::create()` with no
  Drupal-supplied configuration, so it does **not** inherit what core's `http_client_factory`
  applies to `http_client`:
  - **proxy settings** from `settings.php` — outbound requests bypass the proxy;
  - **timeouts** and **middleware** (logging, test interception).
  On a site behind an outbound proxy, that difference is the failure you will actually hit.
- Core's Guzzle-based `http_client` remains available and unchanged; this adds an alternative.
