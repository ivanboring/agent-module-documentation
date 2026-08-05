<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LocalGov Services: Core (localgov_services) — agent index

Base module for the LocalGov service model. **Does nothing on its own** — its own description
says so; enable the submodules. Requires `localgov_core`, `pathauto`, core `field`/`link`/`node`.
No `configure` route, no permissions, no config schema, no Drush.

Submodules (each ships its own node type / behaviour):

| Submodule | Purpose |
|---|---|
| `localgov_services_landing` | Top-level service landing pages |
| `localgov_services_sublanding` | Second-level pages within a service |
| `localgov_services_page` | Ordinary content pages inside a service |
| `localgov_services_navigation` | Navigation shared by service pages and external pages linking in |
| `localgov_services_status` | Status updates attached to a service landing page |

Key facts:
- `config/install` ships: `node.type.localgov_services_landing`,
  `node.type.localgov_services_sublanding`, the **`localgov-services-menu`** system menu, and two
  pathauto patterns — `pathauto.pattern.localgov_services_landing` and
  `pathauto.pattern.localgov_services_hierarchy` (the latter is what makes service URLs mirror the
  tree).
- `test_dependencies` lists `localgov_search`, so service **search** comes from that module, not
  this one — a site wanting searchable services needs it enabled separately.
- Other LocalGov modules hook into this tree: `localgov_directories`, `localgov_guides` and
  `localgov_step_by_step` all install an optional `localgov_services_parent` field when
  `localgov_services_navigation` is present, which is how they attach to a service.

```bash
drush en localgov_services localgov_services_landing localgov_services_page -y
drush cget pathauto.pattern.localgov_services_hierarchy
```
