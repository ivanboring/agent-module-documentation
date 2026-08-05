<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
ECK Bundle Permissions gives Entity Construction Kit entities **per-bundle** permissions, so a role can be allowed to edit one ECK bundle without being allowed to edit them all.

---

ECK lets a site define custom entity types without writing code, and its own permissions are per entity *type*: "edit any Event entity" covers every bundle of that type. On a site using ECK to model several unrelated things — events, sponsors, resources, all bundles of one entity type — that is too coarse, and the usual workaround is a separate entity type per bundle, which defeats the point of bundles. This module supplies the missing granularity: `EckBundlePermissionsGenerator::entityPermissions()` generates create/edit/delete permissions per bundle at runtime through a `permission_callbacks` entry, and `EckBundleAccessControlHandler` enforces them. The module is five files with `eck` as its only dependency and a wide core range of `^8 || ^9 || ^10 || ^11`; there are no routes, forms or configuration — enabling it makes the finer permissions appear on the permissions page. Note that because the permissions are generated rather than declared, they cannot be found by grepping a YAML file, and adding an ECK bundle adds permissions that no role holds until they are granted — so a new bundle is closed by default, which is the safe direction.

---

- Let a role edit one ECK bundle only.
- Separate permissions for events and sponsors.
- Avoid one entity type per bundle.
- Delegate a bundle to a specific team.
- Grant create rights on a single bundle.
- Keep ECK bundles independently governed.
- Restrict deletion to one bundle's owners.
- Model several things in one ECK entity type.
- Give editors narrower ECK access.
- Audit which roles can edit which bundle.
- Support a multi-team content model.
- Close a new bundle by default.
- Reduce over-granting on ECK entities.
- Match ECK permissions to node-style granularity.
- Support a site with many ECK bundles.
- Delegate a resource library to librarians.
- Keep ECK usable as it grows.
- Enforce per-bundle access in code.
