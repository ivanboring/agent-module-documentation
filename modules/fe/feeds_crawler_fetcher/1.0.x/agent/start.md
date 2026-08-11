<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feeds Crawler Fetcher — agent index

**Adds a Feeds fetcher that crawls a set of URLs** (server-side HTTP). Version **1.0.1**. Core `^10||^11`.

Import/integration — **SSRF consideration**: fetches URLs from the server; keep the URL list admin-controlled
(Feeds sources normally are), allowlist/validate if any URL is user-influenced (block internal/cloud-metadata). No
access role.
