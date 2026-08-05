<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Varbase Core (varbase_core) — agent index

The component bundle behind the Varbase distribution. Depends on ~28 modules directly and
**requires ~100 contrib projects** in `composer.json`, of which ~60 are listed under `install:`
and enabled automatically. Core requirement is pinned to `~11.4.0` — a single core minor, not a
range. Configure at `/admin/config/varbase` (`varbase_core.settings_index`).

Key facts:
- Only **one permission**: `access varbase settings` — it gates both routes
  (`varbase_core.settings_index`, `varbase_core.general_settings`).
- The module's own code is thin (`src/Hook`, `src/Form`, `src/Drush`). Its substance is in
  `config/`, which is split four ways: `install`, `optional`, `managed`, and a `permissions`
  directory.
- Eight submodules, each owning one area:

  | Submodule | Owns |
  |---|---|
  | `varbase_admin` | administration configuration |
  | `varbase_page` | Basic page content type + config |
  | `varbase_security` | password policy, username-enumeration prevention, SecKit, Security Review |
  | `varbase_internationalization` | languages and translation |
  | `varbase_webform` | web form features and settings |
  | `varbase_tour` | editor tours |
  | `varbase_default_content` | starter content |
  | `varbase_development` | dev tooling — **its own description says to disable it in production** |

- Notable transitive weight: ECA + BPMN.iO (and ~15 `eca_*` submodules), Gin/Gin Login/Gin
  Everywhere, Webform, Content Lock, Trash, Ultimate Cron, Project Browser, Automatic Updates.
  Installing `varbase_core` is a large, opinionated commitment, not a small addition.
- Requires the `vardot/varbase-patches` composer plugin. It must be in
  `config.allow-plugins` or `composer require` fails outright.

Caution for agents: because ~60 modules are enabled by `install:`, a site that adds
`varbase_core` late will have its module list, admin theme and security configuration changed
substantially. Check what is already enabled before recommending it to an existing site.
