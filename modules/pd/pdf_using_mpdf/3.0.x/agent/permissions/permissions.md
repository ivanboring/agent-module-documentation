# Permissions

Defined in `pdf_using_mpdf.permissions.yml` plus a dynamic callback
(`PdfUsingMpdfNodeTypePermissions::accessPermissions`).

| Permission | `restrict access` | Gates |
|---|---|---|
| `administer mpdf settings` | **true** | The settings form `admin/config/user-interface/mpdf`. |
| `generate <type> pdf` | *(none — grantable to any role)* | The `node/{node}/pdf` route for that content type. One permission is generated **per node type** (e.g. `generate article pdf`, `generate page pdf`). |

## How the route access is checked

`pdf_using_mpdf.generate_pdf` (`node/{node}/pdf`) uses the `_access_generate_pdf` requirement,
served by `GeneratePdfAccessCheck`:

```php
$permission = 'generate ' . $node->getType() . ' pdf';
return $account->hasPermission($permission) ? AccessResult::allowed() : AccessResult::forbidden();
```

- The check tests **only** the per-type permission — it does **not** additionally require
  `access content` or node view access. Granting `generate <type> pdf` to a role (including
  authenticated or anonymous) lets that role render *any* node of that type to PDF via the route,
  even nodes it could not otherwise view, unless `render_anonymous`/other access still restricts
  the rendered build.
- The `generate <type> pdf` permissions are **not** marked `restrict access: true`, so they are
  meant to be handed to lower-trust roles. See `../../security.md` for why the combination of a
  low-trust trigger and unsanitised HTML reaching mPDF is worth noting.
