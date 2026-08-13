<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Access Arguments List surfaces the machine name of every permission directly under its description on the People > Permissions admin page.
---
Drupal's permissions table (`/admin/people/permissions`) shows only human-readable permission titles, so site builders and developers who need the exact permission string (for a role config, a `_permission` route requirement, or a `hasPermission()` call) must dig through module `*.permissions.yml` files. This module removes that friction.

It implements `hook_form_user_admin_permissions_alter()`: it loads every permission from the `user.permissions` service and injects a small `<div>` into each row's description showing `Machine name: <permission>` in a `<code>` tag, and attaches its own CSS library (`access_arguments_list/permissions_form`) for styling. There is no configuration, no route, no permission, no database change and no data collection — it is a pure display enhancement of a core admin form, so its security posture is that of the underlying core permissions page (reachable only with `administer permissions`).
---
- Read a permission's exact machine name from the permissions UI without opening code.
- Copy a permission string for use in a `*.routing.yml` `_permission` requirement.
- Look up the argument for a `\Drupal::currentUser()->hasPermission()` call.
- Confirm the machine name a contrib module registered for a new permission.
- Cross-check a role's YAML config export against the UI labels.
- Teach new site builders which title maps to which machine name.
- Audit which permissions a freshly installed module added.
- Verify a permission renamed between module versions.
- Grab the string needed for a Views access "Permission" filter.
- Find the permission to reference in a custom access checker.
- Document a site's permission model with exact identifiers.
- Distinguish similarly-titled permissions from different modules.
- Speed up writing automated tests that grant specific permissions.
- Populate a `user_role` config entity by hand with correct keys.
- Debug why a `_permission` route returns 403 by confirming the exact string.
- Support translation work by separating the label from the stable machine name.
- Enable the module only on a dev/staging environment for reference.
- Screenshot the permissions table with machine names for a spec document.
- Help agents map natural-language permission names to identifiers.
