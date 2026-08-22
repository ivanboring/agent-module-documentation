# Commerce Order Document — manual setup guide

**Commerce Order Document** (`commerce_order_document`) generates formal
documents — such as invoices, pro forma documents, packing slips, credit memos,
or order confirmations — from Drupal Commerce orders. Core Commerce already emails
an order *receipt* at checkout, but many stores need something more document-like
that staff can view, download, or send on demand. That's the gap this module
fills.

It is deliberately **lightweight**. Unlike the heavier Commerce Invoice module, it
does **not store** the documents it produces — they are generated on the fly from
templates and then viewed, downloaded, or emailed. It can also send documents
automatically for configured order events, with the email bodies rendered from Twig
templates (much like the core order-receipt template). If you need persisted,
numbered invoices with their own storage, look at Commerce Invoice instead; if you
want a simple, template-driven way to hand customers and staff order paperwork,
this is a good fit.

It depends on **Commerce** and **Commerce Order** (`commerce`, `commerce_order`)
and provides its own permissions to control who may view and generate documents.
Note that this project's security-advisory coverage is listed as *not covered*, and
its maintainer is seeking co-maintainers — worth keeping in mind for a
production store.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer, enable
   it, and grant the document permissions.

There is no single module settings form; you set up **document types/templates**
and where their links appear, described in "How to use it" below.

## Where it lives in the admin menu

Order documents are produced from the order itself — staff view or download a
document from an order's administrative pages, and documents can be emailed to
customers. Document types and their templates are configured as part of your
Commerce order configuration under **Commerce → Configuration**.

## How to use it

1. After enabling, configure the **document type(s)** you need (for example an
   invoice or a packing slip) and their Twig templates. The document body comes
   from a template, so you override or theme it to control wording and layout.
2. Optionally wire documents to **order events** so a document is emailed
   automatically when, say, an order is placed or fulfilled.
3. From an order's admin view, staff can view or download the generated document,
   or send it to the order's contact email.

### A word on access and privacy

Order documents typically contain **personal and financial data** — customer
names, addresses, line items, and totals. This module provides permissions for
exactly that reason. Before you expose any document link, confirm that the access
rules match your privacy requirements: a customer should be able to see **only
their own** documents, and staff access should be gated behind the appropriate
permission. Review the document routes and download links after setup to be sure
they are not reachable by people who shouldn't see them.
