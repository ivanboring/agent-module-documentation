<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom pager for Elasticsearch - Search API elasticsearch pages. — a submodule of **elasticsearch_search_api**.

---

This is one of elasticsearch_search_api's submodules. Custom pager for Elasticsearch - Search API elasticsearch pages. It exposes nothing on its own beyond that role and is governed by the parent module's configuration, permissions and behavior; enable it when you need this specific capability and leave it off otherwise, so the site only carries the parts of elasticsearch_search_api it actually uses.

See the parent module for the overall system this fits into.

---
- Enable esa_pager to add this capability.
- Extend elasticsearch_search_api with esa_pager.
- Keep it disabled if not needed.
- Depend on elasticsearch_search_api.
- Scope functionality to what you enable.
- Add only the sub-features you use.
- Compose the parent's feature set.
- Turn on per requirement.
- Reduce surface by enabling selectively.
- Combine with sibling submodules.
- Configure via the parent module.
- Review what it exposes before enabling.
- Match it to your use case.
- Keep the parent's permissions in force.
- Enable alongside the parent.
- Use it as part of the parent's system.