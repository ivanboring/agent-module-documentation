<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Access Policy (access_policy) — agent index

Entity access built from reusable **access rules** combined into named **policies** that authors
assign per entity. Core requirement `^10.3 || ^11`. **Release is 2.0.0-rc1 — release candidate.**
Submodule: `access_policy_ui` (the admin interface).

Key facts:
- **Layered permissions, and the layering is the design:**
  - `administer access policy entities` — define policies (`restrict access: true`);
  - `set entity access policy` — use the per-entity **Access** tab;
  - **plus per-policy permissions generated at runtime** by
    `AccessPolicyPermissions::entityPermissions()` (a `permission_callbacks:` entry). So *which*
    policies an author may assign is separately grantable — that is what stops an author applying
    a restriction they should not control. Grep the class, not just the YAML.
- Pluggable throughout: `AccessPolicyHandlerManager`, `AccessPolicyStorage`,
  `AccessPolicyDiscoveryInterface`, `AccessPolicyValidatorInterface`.
- `access_policy.403` at `/access_policy/403/{access_policy}` is `_access: 'TRUE'` — correct: a
  denial page must render for a user who has just been denied.
- Positioning: lighter than **Group** (no membership model) and more configurable than a
  fixed-semantics node-access module. Verify behaviour against **JSON:API, REST, Views and search**
  before relying on it — that is where entity-access modules most often leak, and it is the
  specific failure recorded against `entity_access_password` elsewhere in this collection.
