<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Smashing Invoice (smashing_invoice) — agent index

**Admin invoicing app: manage clients/employees/allocations/org info and generate TCPDF tax-invoice PDFs.**

- **Version:** 1.0.x
- **Core:** ^8.8 || ^9 || ^10
- **Library:** requires `tecnickcom/tcpdf` (Composer).
- **Permission:** every route requires `administer smashing_invoice` (no anonymous access).
- **Storage:** custom tables `invoice_table`, `employee_table`, `client_table`, `allocation_table`, `organization_info_table` (org table holds bank account no., IFSC, PAN, GSTIN — financial PII).
- **Key routes:** `invoice.index` (`invoice/links`), `generateInvoice_form` (`generate/invoice`), `company_invoice.pdf` (`company_invoice_controller`, PDF download by `invoice_number`), `companies_invoice.table`, `add/edit/see` for clients & employees, `allocate/*`, `organization/*`.
- **Security:** all routes are `administer smashing_invoice`-gated, so invoices/PII are **not** anonymous-accessible and there is no invoice-id IDOR across trust boundaries (single admin realm, no per-record ownership). Cautions: `DeleteEmployee`/`DeleteClient`/`DeleteAllocation` delete via `$_GET` on GET requests with **no CSRF token** (CSRF-deletable by a logged-in admin); several handlers read ids from `$_REQUEST`/`$_GET`. DB access is parameterised (no SQLi); invoice HTML goes only into the TCPDF document.

See [configure/setup.md](configure/setup.md) and [api/routes.md](api/routes.md)
