<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Static Page (static_page) — agent index

Node type whose **output is a text area of static markup**. Version **8.x-1.0-rc1**.

**Security = the field's text format.** A permissive format (Full HTML) lets an author put arbitrary
markup incl. script → stored XSS. Use a **restricted, filtered format** for anyone but fully-trusted
authors; the static markup is only as safe as that format.