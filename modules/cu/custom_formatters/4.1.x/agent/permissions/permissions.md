<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Custom Formatters permissions & access

## Declared permission

`custom_formatters.permissions.yml` defines exactly one permission:

| Permission | Gates |
|---|---|
| `administer custom formatters` | Everything: the formatters collection/add/edit/delete/settings routes and full CRUD on `formatter` and `formatter_setting` entities. |

It is **not** marked `restrict access: true`.

## Access handlers

- `FormatterAccessControlHandler` — grants **all** operations on a `formatter` config entity to any user
  with `administer custom formatters` (else falls back to core `EntityAccessControlHandler`).
- `FormatterSettingAccessControlHandler` — same, for the `formatter_setting` content entity (view/create
  included), `cachePerPermissions()`.
- The `formatter` config entity's `admin_permission` is also `administer custom formatters`.

The per-instance-settings field UI on a formatter uses a `FormatterSettingAccessControlHandler` as well.

## Security implication (see module-root `security.md`)

`administer custom formatters` is the sole gate for creating PHP (`eval`) and Twig formatters, i.e. it
confers **arbitrary code execution**. Because the permission is not flagged `restrict access: true`,
Drupal's permissions UI shows no "this is a security risk" warning and nothing signals it should be
limited to fully trusted administrators. Treat it as equivalent to `administer software updates` / PHP
Filter — grant only to site administrators.
