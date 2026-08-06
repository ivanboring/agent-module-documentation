<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feeds Fetcher POST (feeds_fetcher_post) — agent index

**Feeds** fetcher retrieving its source with an HTTP **POST** rather than a GET. Requires `feeds`.
Version **2.0.0**. Core requirement `^10 || ^11`.

**Why it is needed:** Feeds assumes a GET-able source — an RSS feed, a CSV at a URL, a JSON
endpoint. Many real endpoints are not: an API taking a **query in the body**, a **SOAP** service, an
endpoint whose search specification is too long or too structured for a query string, a reporting
service expecting a POST describing what to return. The fallback is **a custom fetcher plugin per
integration**.

**Three things to plan:**
1. **The request body usually contains credentials or a query**, and it is stored in the **feed
   type's configuration** — so an API key in a POST body **ends up in version control** unless it is
   a **token reference resolved at request time**. That is the difference between a working
   integration and a leaked credential.
2. **POST is not idempotent by convention.** A fetcher that retries — on timeout, queue re-run or
   cron overlap — may make the far end **act twice**. Harmless for a reporting endpoint; not for
   anything that records a request.
3. **The response is untrusted input to a parser**, exactly as with a GET source. A feed that trusts
   what it receives is trusting **whoever controls the endpoint** — which matters most when that is
   a partner rather than the organisation.
