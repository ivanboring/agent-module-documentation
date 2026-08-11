<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ES Attachment — agent index

**Uses the Elasticsearch ingest pipeline to index document contents (PDF etc.)**. Depends on `search_api`,
`elasticsearch_connector`, `search_api_attachments`. Version **1.0.2**. Core `^10||^11||^12`.

Search/integration — document contents **sent to Elasticsearch** (egress); respect Search API access so indexed
text isn't exposed. No access role.
