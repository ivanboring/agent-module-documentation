<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Edit UUID (edit_uuid) — agent index

Exposes an entity's **UUID** on its edit form so it can be set. PHP >= 8.1.
Core requirement `^10 || ^11`. Configured through an `edit_uuid_config` config entity at
`/admin/config/development/edit-uuid-config`.

Three permissions — **all declared `restrict access: false`**:

| Permission | Grants |
|---|---|
| `administer edit_uuid_config configuration` | manage which types/bundles expose the field |
| `show edit_uuid` | see the UUID on the form |
| `edit edit_uuid` | **change** it |

> **Treat `edit edit_uuid` as restricted regardless of the flag.** A UUID is the identity that
> JSON:API, content deployment tools, default content and configuration dependencies match on.
> Changing one silently breaks every reference held elsewhere against the old value, and nothing
> in Drupal will report it. Grant for a migration or reconciliation window, then revoke.

Key facts:
- Per-bundle control is the useful part: expose the field only where reconciliation is actually
  needed rather than site-wide.
- Surface: `src/Entity/`, `src/EditUuidConfigAccessControlHandler.php`,
  `src/EditUuidConfigListBuilder.php`, `src/EditUuidConfigStorage.php`, `src/Form/`,
  `src/EditUuidConfigForm.php`.
- Legitimate uses are all identity reconciliation: content recreated by hand, a partial restore, a
  default-content export whose target exists, matching a sibling environment. For anything
  repeatable, Migrate sets UUIDs as part of a mapped, rollbackable process.
- Compare `custom_nid` (wave 61), which does the same thing for node IDs and *does* mark its
  permission restricted.
