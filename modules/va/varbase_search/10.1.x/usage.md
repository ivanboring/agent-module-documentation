<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Search supplies the search configuration for a Varbase site: a Search API index, server and search page set up and ready, rather than left for each project to assemble.

---

Search API is powerful and unopinionated — it gives you indexes, servers, processors, datasources and views, and expects you to decide how they fit together. That flexibility is the right default for the module and the wrong starting point for a distribution, where every site wants roughly the same thing. This module makes the decision once: `config/install` and `config/optional` carry the index, server and search-page configuration, `recipes/default` provides the recipe form of the same, `src/Hook` holds the hook implementations and `src/assets` the front-end pieces. Its composer requirements are notably lean for the Varbase family — `search_api ~1`, `vardot/module-installer-factory ~1` and core — and unlike its siblings it does **not** require `vardot/varbase-patches`, so it installs without that composer plugin allowance. `core_version_requirement` is `~11.4.0`, pinned to a single core minor as the rest of the family is. The `config/optional` split is the useful detail: parts of the configuration apply only when the modules they depend on are present, so the module degrades rather than failing on a site that lacks them.

---

- Get a working Search API setup on a Varbase site.
- Ship a search page with a new site.
- Index site content without configuring Search API by hand.
- Provide a consistent search across a Varbase estate.
- Use a recipe to apply search configuration.
- Add search to an existing Varbase site.
- Get a preconfigured index and server.
- Reduce project setup time for search.
- Apply optional configuration when modules allow.
- Standardise search fields across sites.
- Give editors a working search out of the box.
- Layer facets onto a ready index.
- Provide a search block and page.
- Keep search configuration exportable.
- Re-apply search configuration from a recipe.
- Avoid bespoke Search API decisions per project.
- Support a multi-site rollout with shared search.
- Bootstrap search before content exists.
