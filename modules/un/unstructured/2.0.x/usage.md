<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Unstructured is a client for Unstructured.io — a service that takes a document (PDF, Word, image, and others) and returns its contents as structured elements. The module wraps the API and exposes it as AI Automator types.

---

Getting text out of a PDF is the sort of task that looks trivial until you try it. Unstructured.io does the parsing; this module supplies the Drupal side: an `UnstructuredApi` service, three output formatters (markdown, HTML, plain text), and four AI Automator plugins — `FileToText`, `FileToString`, `FileToTable` and `FileToImage` — so a file field can drive another field's value without any custom code.

It can run either against the hosted API or against a self-hosted container. The README documents a DDEV recipe for the local case: add a `docker-compose.unstructured.yaml` with the `unstructured-api` image, restart, and point the module's host name at it, leaving the API key blank. That path is worth knowing about because it keeps documents out of a third-party service during development.

**Credential handling here is done correctly**, which is worth saying because it often is not. The settings form uses `'#type' => 'key_select'`, so the API key is a Key entity and configuration stores only the key's id. Combined with the Key module's env provider, the secret never enters config, exported config, or git. This is the pattern other modules in this campaign get wrong.

The service is also usable directly — `\Drupal::service('unstructured.api')` — for cases the Automator plugins do not cover.

---

- Extract text from a PDF.
- Extract text from a Word document.
- Extract tables from a document.
- Extract images from a document.
- Populate a text field from an uploaded file.
- Drive an AI Automator from a file field.
- Return parsed content as markdown.
- Return parsed content as HTML.
- Return parsed content as plain text.
- Run against the hosted Unstructured.io API.
- Run against a self-hosted container.
- Run locally in DDEV with no API key.
- Store the API key as a Key entity.
- Keep the API key out of exported configuration.
- Call unstructured.api directly from custom code.
- Keep documents out of a third-party service in development.