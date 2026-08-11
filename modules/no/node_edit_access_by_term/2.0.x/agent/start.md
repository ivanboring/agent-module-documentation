<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Node Edit Access by Term — agent index

**Restricts node edit access by taxonomy term** (user/role allow-lists on terms). Provides permissions. Version
**2.0.0**. Core `^11||^12`.

**SECURITY (campaign finding)** — enforced **only in `hook_form_alter`** (throws `AccessDeniedHttpException` on the
edit form) with **no `hook_node_access`**, so it is **bypassed by JSON:API/REST `PATCH`, Quick Edit, VBO and
programmatic edits**. UI-only — a **false sense of protection**; don't rely on it where those edit channels exist.
Fix: enforce via `hook_node_access()` for the `update` op.
