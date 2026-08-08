<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Commerce Order Document — agent index

Generates **order documents (e.g. invoices)** for Drupal Commerce orders. Depends on `commerce`,
`commerce_order`; provides permissions. Version **1.0.2**. Core `^10.1||^11`.

**Security:** documents contain personal/financial data — ensure document routes/downloads are
access-controlled (customers see only their own; staff permission-gated). Verify access checks before
exposing links.
