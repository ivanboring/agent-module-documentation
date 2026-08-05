<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Search (varbase_search) — agent index

Preconfigured **Search API** setup (index, server, search page) for Varbase.
`core_version_requirement: ~11.4.0`. Composer: `drupal/search_api ~1`,
`vardot/module-installer-factory ~1`, core.

Key facts:
- **Lean for the Varbase family** — and notably it does **not** require
  `vardot/varbase-patches`, so unlike `varbase_core`, `varbase_email` and `varbase_landing` it
  installs without that composer-plugin allowance.
- Configuration-first: `config/install` + **`config/optional`** + `recipes/default`, with
  `src/Hook/` and `src/assets/`. The `config/optional` split means parts apply only when the
  modules they depend on are present, so it degrades instead of failing on a site without them.
- It configures Search API; it does not replace it. Index/server behaviour, processors and
  backend choice are Search API's — debug there.
- The shipped server is the default database backend unless the site swaps it; check before
  assuming Solr or another backend on a Varbase site.
