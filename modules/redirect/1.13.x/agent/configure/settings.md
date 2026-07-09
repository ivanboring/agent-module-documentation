# Configure redirects & settings

## Manage individual redirects (UI)

Routes (all `/admin/config/search/redirect/...`):

| Route | Path | Purpose |
|---|---|---|
| `redirect.list` | `/` | List all redirects (`administer redirects`) |
| `redirect.add` | `/add` | Add a redirect |
| `entity.redirect.edit_form` | `/edit/{redirect}` | Edit |
| `entity.redirect.delete_form` | `/delete/{redirect}` | Delete one |
| `entity.redirect.multiple_delete_confirm` | `/delete` | Bulk delete |
| `redirect.settings` | `/settings` | Global settings (`administer redirect settings`) |

A redirect record holds a **source path** (+ optional query), a **destination URL**, an
**HTTP status code**, and a language.

## Global settings — `redirect.settings`

Edit at `/admin/config/search/redirect/settings` or via `drush cset redirect.settings <key>`.
Defaults shown:

| Key | Default | Meaning |
|---|---|---|
| `auto_redirect` | `true` | Auto-create a redirect when an entity's URL alias changes |
| `default_status_code` | `301` | Status code used for new redirects |
| `passthrough_querystring` | `true` | Keep the incoming query string on redirect |
| `warning` | `false` | Show users a message when they are redirected |
| `ignore_admin_path` | `false` | If false, admin paths are not redirected |
| `access_check` | `false` | Check destination route access before redirecting |
| `route_normalizer_enabled` | `true` | Enforce clean/canonical URLs (trailing slash, alias→canonical) |

Config schema: `config/schema/redirect.schema.yml`. Settings are a config object, so they
export/deploy with `drush config:export`. Changing them invalidates cached redirects via the
`redirect.settings_cache_tag` subscriber.
