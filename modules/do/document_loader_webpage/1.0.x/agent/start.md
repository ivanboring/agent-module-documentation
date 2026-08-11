<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Document Loader Plugin - Webpage — agent index

**Scrapes/converts web pages** for Document Loader (server-side Guzzle GET). Depends on `document_loader`. Version
**1.0.0**. Core `^10.3||^11`.

Web-services/developer — **SSRF consideration**: fetches the given URL from the server, so a **user-controllable
URL can reach internal/private endpoints** (localhost, cloud metadata). Restrict who sets the URL + allowlist
targets (block private/link-local ranges). No access role.
