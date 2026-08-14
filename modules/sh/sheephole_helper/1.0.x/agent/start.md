<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Sheephole helper (sheephole_helper) — agent index
**Bridges Project Browser to a loopback desktop app that runs composer module installs over SSH.**

- **Version:** 1.0.x (1.0.0-alpha1)
- **Core:** ^10 || ^11 · **Depends on:** project_browser
- **Routes:** `sheephole_helper.online` → `/sheephole-helper/is-online`; `sheephole_helper.install` → `/sheephole-helper/install-module` — both `_permission: 'access content'`
- **Talks to:** `http://127.0.0.1:41295` (`/hurdy`, `/install-module`)

**Security observations:** Both routes gated only by `access content` (effectively anonymous). `isOnline` checks `getClientIp() in [127.0.0.1, localhost]`; `installModule` does **not** — it forwards an arbitrary request `machine_name` to the localhost helper (SheepholeHelperController.php:72-89). Mutating install action reachable without meaningful permission; blast radius bounded by the loopback-only helper and its own auth. Recommend restricting/removing these routes post-setup.
