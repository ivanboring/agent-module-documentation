<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Document OCR — agent index

Extracts **structured data from documents** via OCR/document-AI services (pluggable processors/transformers —
ships **Google Document AI** + Google TTS; mappings at `/admin/config/structure/document-ocr`). Provides
`administer document ocr`. Version **1.0.14**. Core `^9.5||^10||^11`.

AI/media — processors **send document content to an external service** (data egress of potentially sensitive
docs — confirm acceptable); store service **credentials as secrets**. No access role beyond permission.
