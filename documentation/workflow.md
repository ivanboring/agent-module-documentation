# Workflow — how a module gets documented

This is the exact loop used to generate everything under `modules/`. It is resumable:
state lives in [`../pagination.md`](../pagination.md).

## Environment

Drupal 11 site in DDEV (`module-documentor`). Inside the container run `drush` /
`composer` directly; from the host prefix with `ddev`. Contrib installs to
`web/modules/contrib/{name}`. If the site breaks at any point, reinstall with
`drush site:install -y` and continue — no generated data depends on site content.

## Loop

For each page of the [data source](data-source.md), starting at the offset in
`pagination.md`:

1. **Pick the next module.** Take its `field_project_machine_name`,
   `field_composer_namespace`, `field_active_installs_total`, description, and category
   term refs from the feed. Skip modules already present under `modules/`.

2. **Install.** `composer require drupal/{name} -W`. Note the resolved version from the
   Composer output (e.g. `token (1.17.0)`).

3. **Determine the version directory.** `major.minor.x` (drop the patch): `1.17.0` →
   `1.17.x`. Confirm against `web/modules/contrib/{name}/{name}.info.yml`.

4. **Read the source** (this is what the docs replace). In priority order:
   - `{name}.info.yml` — description, `package`, `dependencies`, `configure`, `recommends`.
   - `composer.json` — `require` (the module's own deps), `suggest`, `conflict`.
   - `README.md` / `README.txt`, and any `docs/`.
   - `{name}.routing.yml` — admin paths and the `configure` route target.
   - `{name}.permissions.yml` — permissions the module defines.
   - `config/install/*.yml`, `config/schema/*.yml` — default settings & their schema.
   - `src/` — services (`*.services.yml`), plugin managers (`Plugin/…`, `src/*Manager.php`,
     `Attribute/`, `Annotation/`), forms, hooks (`src/Hook/*`), event subscribers.
   - `drush.services.yml` / `src/Drush/` — Drush commands.
   - `{name}.api.php` — the hooks the module invites you to implement.
   - Any submodule `modules/*/{sub}.info.yml`.

5. **Enable & set up.** `drush en {name} -y`. Read the resulting config, resolve the
   `configure` route, note permissions. Prefer the simplest tool for each step
   (`drush`/config over UI). When a module has admin **forms/UI**, drive them with
   `agent-browser` and save screenshots to `<project-root>/screenshots/{name}/{version}/`
   — **outside** this repo (they are binary artifacts, not committed) — referenced from the
   relevant solution doc. See [browser-screenshots.md](browser-screenshots.md).

6. **Write the docs** into `modules/{name}/{version}/`:
   - `data.json` — see [file-formats.md](file-formats.md).
   - `usage.md` — short summary `---` long summary `---` 15–30 use cases.
   - `agent/start.md` + `agent/{solution_type}/{name}.md` — only the solution types the
     module actually warrants (`configure`, `plugins`, `extend`, `api`, `hooks`, `drush`,
     `permissions`, `theming`). Each doc must be cheaper to read than the source.

7. **Recurse** into every submodule (step 4–6), writing it nested under its parent at
   `modules/{parent}/modules/{submodule_name}/{version}/` (deeper if the submodule itself
   has submodules).

8. **Update taxonomy.** Add any new category/subcategory to
   [`../categories.yml`](../categories.yml) — never duplicate an existing name.

9. **Advance** `pagination.md` when a page is fully processed.

## Verify before moving on

- `drush pm:list --status=enabled` includes the module.
- `data.json` is valid JSON; `usage.md` has three `---` blocks and 15–30 bullets.
- Links in `agent/start.md` resolve; the `configure` value matches a real route.
- Helper: [`../scripts/validate-docs.sh`](../scripts/validate-docs.sh) `modules/{name}/{version}`.
