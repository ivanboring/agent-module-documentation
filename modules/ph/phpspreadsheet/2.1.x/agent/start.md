<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# PhpSpreadsheet — agent orientation

Dependency-only wrapper shipping `phpoffice/phpspreadsheet` (~1).

- Version 2.1.x, core `^8||^9||^10`. Only files: `phpspreadsheet.info.yml`, `composer.json`.
- No routes, services, permissions, config, or hooks. Nothing to exploit in the module itself.
- Security lives in CONSUMERS: CSV/formula injection on export, unsafe `IOFactory::load()` of untrusted uploads. This module adds no endpoints.