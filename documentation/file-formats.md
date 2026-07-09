# File formats

Every `modules/{name}/{version}/` directory holds exactly these three deliverables.

## `data.json`

Structured metadata, distilled from `*.info.yml`, `composer.json`, and the feed. Fields:

| Field | Source | Notes |
|---|---|---|
| `name` | info.yml `name` / feed `title` | human-readable |
| `data_name` | machine name | = directory name |
| `description` | info.yml `description` | one line |
| `version` | Composer / info.yml | `major.minor.x` |
| `package` | info.yml `package` | may be absent |
| `composer_namespace` | feed / composer.json `name` | e.g. `drupal/token` |
| `composer_requirements` | module `composer.json` `require` | the module's own deps (object) |
| `dependent_modules` | info.yml `dependencies` | Drupal module deps (array) |
| `configure` | info.yml `configure` | route name of the config UI, or `null` |
| `core_version_requirement` | info.yml | e.g. `^10.3 \|\| ^11` |
| `active_installs` | feed `field_active_installs_total` | popularity |
| `project_url` | derived | `https://www.drupal.org/project/{name}` |
| `license` | composer.json `license` | |
| `php_requirement` | composer.json `require.php` | if declared |
| `library_dependencies` | composer.json `require` (non-drupal) | external libs, if any |
| `suggests` | composer.json `suggest` / info.yml `recommends` | optional extras |
| `submodules` | `modules/*/` info.yml | array of machine names (`[]` if none) |
| `provides_permissions` | `{name}.permissions.yml` exists | bool |
| `provides_drush_commands` | `drush.services.yml` / `src/Drush` | bool |
| `provides_config_schema` | `config/schema/*` exists | bool |
| `provides_plugin_types` | plugin manager in `src/` | array of plugin type ids (`[]` if none) |
| `categories` | feed categories | official names, match `categories.yml` |
| `subcategories` | our taxonomy | finer groupings from `categories.yml` |
| `keywords` | derived | search terms |

## `usage.md`

Three blocks separated by a line containing only `---`:

1. **Short summary** — 1–2 sentences: what the module does.
2. **Long summary** — 5–8 sentences: what it does and how, at a glance.
3. **Use cases** — a markdown bullet list of **15–30** concrete things you'd use it for.

## `agent/start.md` + solution docs

`start.md` is a **token-cheap index**: a couple of orientation lines, then one bullet per
capability linking to a solution doc. Keep it scannable.

Solution docs live in `agent/{solution_type}/{name}.md`. Use only the types the module
warrants:

| Type | Covers |
|---|---|
| `configure` | admin UI config, settings keys, config entities, drush config |
| `plugins` | plugin types the module defines and how to implement one |
| `extend` | subclassing/decorating services, overriding behavior |
| `api` | services & public functions to call programmatically |
| `hooks` | hooks the module invites (`{name}.api.php`) |
| `drush` | Drush commands the module adds |
| `permissions` | permissions and what they gate |
| `theming` | templates, theme hooks, render elements |

**Golden rule:** each doc must cost fewer tokens to read than the source it summarizes.
If a module needs no configuration or has no plugins, don't create that doc.

### `screenshots/{name}/{version}/` (optional, top-level)

For modules with admin forms/UI, capture screenshots into the repo-root `screenshots/`
tree — mirroring the module path, e.g. `screenshots/pathauto/1.15.x/settings-form.png` —
and reference them from the relevant solution doc. From a doc at
`modules/{name}/{version}/agent/{type}/` that is five levels up, e.g.
`![alt](../../../../../screenshots/{name}/{version}/name.png)`. How-to (and the container
gotchas): [browser-screenshots.md](browser-screenshots.md). Skip for modules with no UI.
