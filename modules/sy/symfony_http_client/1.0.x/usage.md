<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Symfony HTTP Client for Drupal registers Symfony's HTTP client in the service container, so code can autowire `HttpClientInterface` instead of using Guzzle.

---

Drupal ships Guzzle as `http_client` and has done for a decade, but the wider PHP ecosystem has largely moved to Symfony's client — it is what Symfony's own components expect, it supports HTTP/2 and streaming and async natively, and many modern SDKs take an `HttpClientInterface` rather than a Guzzle client. This module makes that available: a service definition autowiring `Symfony\Contracts\HttpClient\HttpClientInterface`, with a compiler pass that aliases the interface to a private factory-built `HttpClient::create()` definition. It is infrastructure with no UI, no permissions, no routes and no configuration — version **1.0.0**, core `^10.3 || ^11.0`, and note **`php: 8.3`** in the info.yml, a higher floor than core requires. It usually arrives as a **dependency** rather than a deliberate choice; on this site it came in with the `ai` module family. One thing to understand before writing code against it: the client is created with `HttpClient::create()` and no Drupal-supplied configuration, which means it does **not** inherit the proxy settings, timeouts or middleware that core applies to `http_client` through the `http_client_factory` service. If a site depends on an outbound proxy, or on core's client middleware for logging or test interception, requests made through this client will bypass all of it.

---

- Autowire a Symfony HTTP client.
- Use an SDK that expects HttpClientInterface.
- Call an external API with HTTP/2.
- Stream a large response.
- Make concurrent outbound requests.
- Satisfy a module's dependency.
- Use Symfony components that need a client.
- Avoid adapting Guzzle to Symfony's contract.
- Call an AI provider's API.
- Consume a REST service from a module.
- Use async requests in a queue worker.
- Share one client across modules.
- Modernise a module's HTTP layer.
- Avoid bundling a client per module.
- Use the client in a service.
- Call a webhook endpoint.
- Fetch a remote feed.
- Integrate a third-party PHP library.
