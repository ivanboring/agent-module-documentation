<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI File to Text extracts text from Word, ODT, ODS, PDF, CSV and plain text files, as automators and agents for the AI module.

---

A model can only work with text, and most of an organisation's knowledge is not text — it is in documents. Extraction is therefore the first step of every practical AI pipeline: summarise this report, answer questions from these policies, index this archive for retrieval. Without it, an AI integration is limited to content already in Drupal fields.

Exposing extraction as automators and agents rather than as a service is what makes it composable — an extraction step can sit inside a larger automated flow rather than requiring code to call it.

**Document parsing is an attack surface, and this belongs in any recommendation.** PDF and Office format parsers are historically a rich source of vulnerabilities, and the input here is by definition a file someone uploaded. Know which library performs each format's extraction, keep it patched, and treat parsing of untrusted uploads as something to isolate if the site accepts documents from the public.

**And extraction moves content across an access boundary.** Text pulled from a private document and handed to a model has left the site — to whatever provider the AI module is configured with, under that provider's terms. For an internal policy document that may be fine; for anything confidential or personal it is a decision that should be made deliberately rather than discovered. Where the site uses a hosted model, extraction is the point at which document contents become a third-party transfer.

---

- Extract text from a PDF.
- Read a Word document into text.
- Convert a spreadsheet to text.
- Feed documents into an AI pipeline.
- Summarise an uploaded report.
- Index an archive for retrieval.
- Compose extraction into an automated flow.
- Know which library parses each format.
- Keep document parsers patched.
- Isolate parsing of public uploads.
- Recognise extraction as a transfer boundary.
- Decide what may be sent to a model.
- Handle confidential documents deliberately.
- Check the AI provider's terms.
- Chunk extracted text for embedding.
