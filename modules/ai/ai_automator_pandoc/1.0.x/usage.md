<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Automator: Pandoc adds a document-conversion automator that turns Word/PDF into HTML via pandoc.

---

AI Automator: Pandoc plugs into the AI Automators framework to convert uploaded Word and PDF documents into HTML using the pandoc document converter, so imported documents can populate rich-text fields automatically as part of an AI-driven content workflow.

Conversion runs pandoc on the server (via a Drush command / automator plugin), so pandoc must be installed in the environment and file inputs are processed server-side — validate the source of uploaded documents. Depends on core `system` and `ai_automators`; supports Drupal 10.4+, 11, and 12.

---

- Convert Word/PDF to HTML.
- Run conversion via pandoc.
- Plug into the AI Automators framework.
- Populate rich-text fields from documents.
- Support AI-driven content workflows.
- Require pandoc installed on the server.
- Process uploaded files server-side.
- Validate document sources.
- Expose a Drush command for conversion.
- Depend on `ai_automators`.
- Depend on core `system`.
- Support Drupal 10.4+, 11, and 12.
- Automate document import.
- Handle Word documents.
- Handle PDF documents.
- Feed converted HTML into fields.
- Integrate with AI automators.
- Convert on upload.
- Keep conversion inside Drupal.
- Support document-to-content pipelines.
