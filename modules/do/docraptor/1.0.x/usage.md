<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DocRaptor integrates the DocRaptor HTML-to-PDF API (Prince-based) for PDF generation.

---

DocRaptor **integrates the DocRaptor HTML-to-PDF API** — sending HTML to DocRaptor's cloud service (which
uses the Prince PDF engine) and receiving a generated PDF, for high-fidelity document/PDF output. It stores its
credentials via the **Key** module and provides its own permissions, in the PDF package.

Use it to generate PDFs via DocRaptor. It is an integration/PDF feature. Security/data handling: it **sends your
HTML content to the external DocRaptor API** (egress — content can be sensitive; confirm acceptable) and
authenticates with a **DocRaptor API key stored via the Key module** (secret handling, a positive). Serve over
HTTPS. It has no access-control role beyond its permission. Configure the DocRaptor API key (via Key).

---

- Generate PDFs via DocRaptor.
- Send HTML to the DocRaptor API.
- Use the Prince PDF engine.
- Store credentials via the Key module.
- Provide its own permissions.
- Serve PDF generation.
- Send HTML content to DocRaptor (egress; can be sensitive).
- Store the API key via Key (positive).
- Serve over HTTPS.
- Have no access-control role beyond permission.
- Configure the DocRaptor API key via Key.
- Handle PDF generation.
- Generate PDFs.
- Configure the client.
- Render PDFs.
- Handle the integration.
- Convert HTML.
- Produce documents.
- Secure the key via Key.
- Provide DocRaptor PDF generation.
