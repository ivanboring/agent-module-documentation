<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Request Data Conditions (request_data_conditions) — agent index

Condition plugins testing **cookies, HTTP headers, query parameters and session values**.
No dependencies, no routes, no permissions, no config page.
Core requirement `^9.3 || ^10 || ^11`. **Current release is 1.0.0-beta3 — beta.**

Key facts:
- Whole module: `src/Plugin/` (the four conditions), `request_data_conditions.install`,
  `.info.yml`, `README.txt`, `LICENSE.txt`.
- Being ordinary condition plugins, they work anywhere Drupal's condition system is consumed —
  block visibility, Context, Page Manager, custom code via `plugin.manager.condition`.
- **Two cautions worth stating whenever recommending it:**
  1. *Never use these for access control.* Cookies, headers, query parameters and (to a lesser
     degree) session values are all client-influenced. They decide what is *shown*, not what a
     user is *allowed* to see. Anything sensitive needs a real access check.
  2. *Check cache behaviour before relying on it for anonymous traffic.* A condition that varies
     on request data must contribute the matching cache context, or the internal page cache will
     serve one visitor's variant to the next. Verify under page cache, not only while logged in.
