# Block Token — permissions

Defined via `BlockTokenPermissions::permissions()`.

| Permission | `restrict access` | Gates |
|---|---|---|
| `administer block token` | (not set → **not restricted**) | The "Create the token for this block" checkbox on block forms. Its own description also states it "gives permission to View/Edit/Save block forms." |

## Important side effect — block route access is REPLACED
`block_token.services.yml` registers a `RouteSubscriber` that **overwrites** the access
requirements on two core routes:

```php
// src/Routing/RouteSubscriber.php
$collection->get('entity.block.edit_form')->setRequirements(['_custom_access' => '\block_token_route_access']);
$collection->get('block.admin_display_theme')->setRequirements(['_custom_access' => '\block_token_route_access']);
```

`block_token_route_access()` returns **allowed** if the user has `administer taxonomy` OR
`administer block token`, else forbidden. Because `setRequirements()` *replaces* (not adds to) the
core `_permission: 'administer blocks'` requirement, after this module is enabled:

- Anyone with the non-restricted **`administer block token`** permission can reach and use the
  **full block configuration form** and the **block listing** for every block/theme — i.e. place,
  configure, and remove any block — not just toggle tokens.
- Anyone with **`administer taxonomy`** likewise gains block-administration access, which is
  unrelated to taxonomy.

Treat `administer block token` as equivalent to `administer blocks` when deciding who to grant it
to. See the module-root `security.md` for the finding write-up.
