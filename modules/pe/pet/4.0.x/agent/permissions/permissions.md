# PET — permissions

From `pet.permissions.yml` and `PetAccessControlHandler`:

| Permission | `restrict access` | Gates |
|---|---|---|
| `add PET entity` | no | Create templates (`checkCreateAccess`). |
| `view PET entity` | no | View a template AND reach the interactive send form `/pet/{pet}` (`pet.preview`) and the template collection. |
| `edit PET entity` | no | Edit templates (`update`). |
| `delete PET entity` | yes | Delete templates. |
| `administer PET entity` | yes | The settings form `/admin/config/system/pet/settings`. |
| `administer previewable email templates` | yes | Reveals the From/CC/BCC/recipient-callback "Additional options" group on the template form. |
| `use previewable email templates` | no | Documented (README) as the permission to send interactively — but **not enforced** by any route. |

## Access mismatch worth knowing

The interactive send route `pet.preview` (`/pet/{pet}`) requires only `view PET entity`. The
README states interactive sends should require `use previewable email templates`, but that
permission is defined and never checked. Consequently a user granted the (non-restricted,
read-sounding) `view PET entity` can actually **send email** to arbitrary recipients and, via
`?uid=<any user>`, pull that user's `[user:*]` token values into a message delivered to an
attacker-chosen address. Grant `view PET entity` only to trusted roles. See the module-root
`security.md`.
