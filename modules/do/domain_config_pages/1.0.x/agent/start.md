<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Domain Config Pages (domain_config_pages) — agent index

Adds a **domain context plugin** to **Config Pages**, so a settings page holds different values per
domain. Requires `config_pages` and `domain`. Version **1.0.1**.
Core requirement `^10 || ^11`.

**Why `config_pages` matters here:** it gives site builders a **fielded settings form** — contact
address, footer notice, social links, announcement banner — without writing a settings form class,
stored as entities editors can change. On a Domain multi-site the obvious next question is
**per-domain values**, since a footer address identical across every site defeats the arrangement.

**Two things worth attaching:**
1. **A per-domain value is a per-domain cache context.** Anything rendering these values **must vary
   by domain**, or one site is served another's footer — and because Domain sites share an
   installation, that is a **cross-site content leak**, not a cosmetic error.
2. **The fallback rule is the design decision.** What a domain with no value of its own gets — the
   default domain's value, an empty field, or the field default — determines whether **adding a new
   domain is safe by default** or silently publishes another domain's content. Settle it before
   creating the second domain.
