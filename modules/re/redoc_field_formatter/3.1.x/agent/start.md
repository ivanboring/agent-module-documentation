<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Redoc Field Formatter (redoc_field_formatter) — agent index

Renders an **OpenAPI spec** held in a **file** or **link** field as Redoc documentation.
Two formatters: `redoc_ui` (file fields) and a link-field variant. Depends on core `file` and
`link`. Version **3.1.0**. Core requirement `^9.3 || ^10 || ^11`.

**The library is loaded from a third-party CDN.** `redoc_field_formatter.libraries.yml` declares
`https://cdn.jsdelivr.net/npm/redoc@2.0.0/bundles/redoc.standalone.js` as `type: external`. Decide
on this before launch — three consequences:
1. **Availability** — the page depends on jsDelivr being reachable. Fails in restricted or
   air-gapped networks.
2. **CSP** — a strict `script-src` must allow that host, or the documentation silently fails to
   render with no visible error.
3. **No SRI hash** — the site executes whatever that URL returns.

Sites with a strict CSP or a privacy requirement normally **vendor the library locally** and
override the library definition in a theme or module.
