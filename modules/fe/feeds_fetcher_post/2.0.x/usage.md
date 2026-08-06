<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Feeds Fetcher POST adds a fetcher to the Feeds module that retrieves its source with an HTTP POST rather than a GET.

---

Feeds assumes a source is something you fetch with a GET — an RSS feed, a CSV at a URL, a JSON endpoint. A great many real endpoints are not: an API that takes a query in the request body, a SOAP service, an endpoint requiring credentials or a search specification that is too long or too structured for a query string, a reporting service that expects a POST describing what to return. Without a POST fetcher those sources are unreachable from Feeds, and the fallback is a custom fetcher plugin per integration — which is a small class each time and a maintenance surface nobody wants. This supplies the general case, requiring `feeds`, version **2.0.0** on core `^10 || ^11`. Three things to plan. **The request body usually contains credentials or a query**, so whatever is configured is stored in the feed type's configuration and exported with it — which means an API key in a POST body ends up in version control unless it is a token reference resolved at request time, and that is the difference between a working integration and a leaked credential. **POST is not idempotent by convention**, so a fetcher that retries — on a timeout, on a queue re-run, on a cron overlap — may cause the far end to act twice, which for a reporting endpoint is harmless and for anything that records a request is not. And **the response is untrusted input to a parser**, exactly as with a GET source: a feed that trusts what it receives is trusting whoever controls the endpoint, which matters most when the endpoint is a partner's rather than the organisation's own.

---

- Fetch a feed from a POST endpoint.
- Import from an API taking a body query.
- Fetch from a SOAP service.
- Import search results from an API.
- Send a query specification with a fetch.
- Import from a reporting endpoint.
- Fetch data requiring a request body.
- Import from a partner's POST API.
- Fetch a filtered dataset.
- Import from an endpoint with credentials in the body.
- Fetch paginated API results.
- Import from a legacy web service.
- Fetch a report from a POST API.
- Import product data from a supplier API.
- Fetch from an endpoint rejecting GET.
- Import with a structured query.
- Fetch from an internal service.
- Import from a JSON-RPC endpoint.
