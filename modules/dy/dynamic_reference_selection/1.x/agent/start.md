<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dynamic Reference Selection (dynamic_reference_selection) — agent index

Entity-reference **selection handler** narrowing referenceable entities **dynamically by context**.
Version **1.0.3**.

**Not a security boundary** — narrowing the list guides selection but isn't access control (a crafted
request could reference a hidden entity). Rely on **entity access** for real restriction.