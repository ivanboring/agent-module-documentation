<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Document Loader Plugin - Webpage scrapes and converts web pages for Document Loader.

---

Document Loader Plugin - Webpage **scrapes and converts web pages** — a Document Loader plugin that fetches a
given URL server-side (Guzzle `GET`), cleans the HTML and returns the content for ingestion into content/AI
pipelines. It depends on the Document Loader module.

Use it to pull web-page content into Drupal. It is a web-services/developer feature with an **SSRF consideration**:
the module makes an **outbound HTTP request from your server to the URL it's given** (`httpClient->request('GET',
$input->getUrl())`). If the target URL is admin/pipeline-configured, risk is limited; but if an end user can supply
an arbitrary URL, they can make the server fetch **internal/private endpoints** (localhost services, cloud
metadata like `169.254.169.254`, internal APIs) — a classic Server-Side Request Forgery vector. Mitigate by
restricting who can configure the URL and validating/allowlisting targets (block private/link-local ranges). It
has no access-control role. Configure the webpage loader (and restrict the URL source).

---

- Fetch and convert a web page.
- Make a server-side Guzzle GET.
- Clean the HTML for ingestion.
- Depend on the Document Loader module.
- Serve web services.
- Pull web-page content.
- FETCH the given URL from the server (SSRF consideration).
- Let a user-controllable URL reach internal/private endpoints (localhost/cloud-metadata).
- Restrict who can set the URL + allowlist targets (block private/link-local).
- Have no access-control role.
- Configure the webpage loader.
- Handle web scraping.
- Scrape pages.
- Configure the loader.
- Fetch pages.
- Handle the request.
- Convert HTML.
- Ingest web content.
- Validate the URL.
- Provide webpage loading.
