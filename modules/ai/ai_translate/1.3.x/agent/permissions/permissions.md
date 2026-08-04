# AI Translate — permissions

Defined in `ai_translate.permissions.yml`. None are marked `restrict access: true`.

| Permission | Gates | Route |
|---|---|---|
| `create ai content translation` | Trigger AI translation of a content entity (creates + saves the target-language translation). | `ai_translate.translate_content` |
| `create ai interface translation` | Use the AJAX "AI translate" button on the locale interface-translation form. | `ai_translate.translate_interface` |
| `manage ai translation prompts` | Access the settings form / manage prompts. | `ai_translate.settings_form` |

## Security note (see module-root `security.md`)

`create ai content translation` gates `ai_translate.translate_content`, whose controller loads **any**
entity of **any** type by ID and saves a new translation **without calling `$entity->access()`** and
with **no CSRF token** (plain GET). Because the permission is not `restrict access: true`, treat it as
sensitive: a holder can add translations to entities they cannot otherwise edit, and the GET route is
CSRF-forgeable. Grant it only to trusted translator roles.
