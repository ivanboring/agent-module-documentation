<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ECK Bundle Permissions (eck_bundle_permissions) — agent index

Adds **per-bundle** permissions to Entity Construction Kit entities. Depends on `eck`.
Core requirement `^8 || ^9 || ^10 || ^11`.

Key facts:
- **Permissions are generated, not declared.** `eck_bundle_permissions.permissions.yml` contains
  only a `permission_callbacks:` entry pointing at
  `EckBundlePermissionsGenerator::entityPermissions`. Grepping YAML finds nothing — read the class.
- Enforcement is `src/EckBundleAccessControlHandler.php`.
- Whole module is five files; no routes, no forms, no configuration. Enabling it makes the finer
  permissions appear on the permissions page.
- **New bundles are closed by default**: adding an ECK bundle adds permissions no role yet holds,
  so access must be granted deliberately. That is the safe direction, but it means a new bundle
  looks broken until permissions are assigned — the first thing to check.
- Why it exists: ECK's own permissions are per entity **type**, which is too coarse when one type
  carries several unrelated bundles. The alternative — one entity type per bundle — defeats the
  purpose of bundles.
