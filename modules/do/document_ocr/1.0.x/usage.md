<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Document OCR extracts structured data from documents using OCR services.

---

Document OCR extracts **structured data from documents** using OCR / document-understanding services —
via pluggable processors and transformers (it ships Google Document AI and Google Text-to-Speech plugins) that
send an uploaded document to the service and map the returned fields into Drupal, driven by configurable
mappings (`/admin/config/structure/document-ocr`). It provides its own permissions (`administer document ocr`),
in the AI package.

Use it to turn uploaded documents/scans into structured Drupal data. It is an AI/media feature. Data-handling
caveats: the processor plugins **send document content to an external service** (e.g. Google Cloud) — that is
outbound data egress of potentially **sensitive** documents, so confirm this is acceptable for your data, and
the service **credentials** must be stored as secrets (not committed config). It has no access-control role
beyond its permission. Configure the mapping, processor and credentials.

---

- Extract structured data from documents.
- Use OCR/document-AI services.
- Ship Google Document AI/TTS plugins.
- Map returned fields into Drupal.
- Drive extraction with mappings.
- Provide administer document ocr.
- KNOW documents are sent to an external service.
- Confirm the data egress is acceptable.
- Store service credentials as secrets.
- Have no access-control role beyond permission.
- Configure the mapping/processor.
- Handle document OCR.
- Extract document data.
- Configure OCR.
- Process documents.
- Map OCR fields.
- Handle the extraction.
- Extract from scans.
- Configure credentials.
- Provide OCR extraction.
