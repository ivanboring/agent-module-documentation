<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Document Loader: HTML Processor lets document_loader use html_processor's HTML services.

---

Document Loader: HTML Processor is a bridge module that exposes the html_processor module's services as a document_loader plugin — so pipelines built on the document_loader plugin manager can load and process HTML documents using html_processor's capabilities. It's developer plumbing that connects the two modules.

It's a bridge/plugin module with no content or access role of its own. Depends on `document_loader` (>=2.0) and `html_processor`; supports Drupal 10.4+ and 11.

---

- Bridge html_processor to document_loader.
- Expose HTML services as a plugin.
- Load HTML documents in pipelines.
- Process HTML via html_processor.
- Connect the two modules.
- Act as developer plumbing.
- Depend on `document_loader` (>=2.0).
- Depend on `html_processor`.
- Support Drupal 10.4+ and 11.
- Carry no content/access role.
- Integrate plugin managers.
- Support document pipelines.
- Enable HTML processing plugins.
- Wire services together.
- Support data transformation.
- Provide a bridge plugin.
- Complement document_loader.
- Extend loader capabilities.
