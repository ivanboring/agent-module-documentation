<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Print integration with TypeSet.sh registers a `typeset` print-engine plugin for the Entity Print module, so entities can be rendered to PDF using the commercial typeset.sh HTML-to-PDF library instead of the default engines.

---

Entity Print abstracts PDF/document generation behind swappable print-engine plugins; this module provides one more engine (`Plugin\EntityPrint\PrintEngine\Typeset`, extending `PdfEngineBase`). It instantiates `Typesetsh\HtmlToPdf`, renders a single page of HTML via `addPage()`/`render()`, and streams the result with `send()` (Content-Type application/pdf, inline or attachment) or returns the raw bytes with `getBlob()`. `dependenciesAvailable()` gates the engine on the `Typesetsh\HtmlToPdf` class existing, and only A4 paper is offered. The typeset.sh library is a **paid** dependency: you must add the `packages.typeset.sh` Composer repository with your credentials and `composer require typesetsh/typesetsh` before the engine appears.

There is nothing to configure in the module itself — once the library is installed you simply pick the *Typeset.sh* engine wherever Entity Print lets you choose one (Entity Print's own settings/print links). Typical task: install the paid library, then select this engine for your PDF exports.
---
- Render an entity to PDF using the typeset.sh engine
- Add a high-fidelity HTML-to-PDF engine to Entity Print
- Select *Typeset.sh* as the PDF engine in Entity Print settings
- Export a node as a nicely typeset A4 PDF
- Stream a generated PDF inline in the browser
- Force a generated PDF to download as an attachment
- Retrieve raw PDF bytes with `getBlob()` for programmatic use
- Gate PDF features on the typeset.sh library being installed
- Provide an alternative to dompdf/wkhtmltopdf engines
- Produce print-quality PDFs from rendered entity HTML
- Use the paid typeset.sh renderer via its Composer package
- Generate PDFs of view-mode-rendered content
- Integrate PDF generation into Entity Print's print links
- Keep PDF engine choice swappable per Entity Print config
- Render invoices, certificates or reports as PDFs
- Extend Entity Print without changing its core code
