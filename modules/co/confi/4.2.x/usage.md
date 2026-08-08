<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Import (project confi, machine name config_import) is a configuration-import tool aimed at importing config more selectively and cleverly than core's all-or-nothing `config:import`.

---

Core configuration management is deliberately whole-site: `drush config:import` applies the entire sync directory, and if anything in it conflicts with the active state the whole import can stall. That is safe but blunt, and on real projects it produces friction — you want to import *this* set of changes, or import despite an unrelated divergence, without hand-editing the sync directory. This module offers a more granular import path.

The machine name is `config_import` while the project is `confi`, which matters when enabling it or referencing its routes. Configuration import is powerful and consequential — it can change permissions, roles, field definitions and access rules — so any tool that makes importing easier also makes it easier to import the wrong thing. Restrict who can drive it to trusted administrators, review what a granular import will actually change before applying, and treat it as part of a deliberate deployment process rather than an ad-hoc button.

For teams whose deployment workflow chafes against core's all-or-nothing import, it is a sharper tool. Use it with the same care as any config-changing operation, since the blast radius of a bad import is the whole site's behaviour.

---

- Import configuration selectively.
- Avoid core's all-or-nothing import.
- Import a subset of config changes.
- Import despite an unrelated divergence.
- Smooth a config deployment.
- Apply specific config changes.
- Review changes before importing.
- Drive a granular config import.
- Deploy config more flexibly.
- Restrict who can import config.
- Reduce config-import friction.
- Handle config conflicts pragmatically.
- Import config in a workflow.
- Preview a config import's effect.
- Treat imports as deliberate.
- Manage configuration deployment.
- Import changed items only.
- Avoid hand-editing the sync directory.
- Control the config-import blast radius.
- Support a CI deployment.