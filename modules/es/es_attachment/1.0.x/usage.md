<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ES Attachment uses the Elasticsearch ingest pipeline to index document contents (PDF etc.).

---

ES Attachment **indexes document contents via the Elasticsearch pipeline** — using Elasticsearch's
attachment/ingest pipeline to extract and index the text of documents (PDF and others) attached to content, for
full-text search. It depends on Search API, Elasticsearch Connector and Search API Attachments.

Use it to make document contents searchable via Elasticsearch. It is a search/integration feature. Security/data
handling: document contents are **sent to Elasticsearch** for extraction/indexing (egress to your ES cluster —
confirm acceptable for sensitive documents) — respect Search API's access handling so indexed document text isn't
exposed to unauthorized users. It has no access-control role. Configure the ES attachment pipeline.

---

- Index document contents via Elasticsearch.
- Extract PDF/document text.
- Enable full-text document search.
- Depend on Search API + Elasticsearch Connector.
- Serve search.
- Use the ES ingest pipeline.
- Send document contents to Elasticsearch (egress).
- Respect Search API access (don't expose indexed text).
- Confirm acceptable for sensitive documents.
- Have no access-control role.
- Configure the ES attachment pipeline.
- Handle document indexing.
- Index documents.
- Configure the pipeline.
- Extract text.
- Handle the integration.
- Search documents.
- Index attachments.
- Secure the index.
- Provide document-content indexing.
