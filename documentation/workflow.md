# Workflow — how a module gets documented

This is the exact loop used to generate everything under `modules/`. It is resumable:
state lives in [`../pagination.md`](../pagination.md).

## Environment

Drupal 11 site in DDEV (`module-documentor`). Inside the container run `drush` /
`composer` directly; from the host prefix with `ddev`. Contrib installs to
`web/modules/contrib/{name}`. If the site breaks at any point, reinstall with
`drush site:install -y` and continue — no generated data depends on site content.

## Picking what to document

Two sources, cheapest first.

**A. Modules already on disk** — `scripts/undocumented-on-disk.sh [--verbose]`.
Composer pulls dependencies, and dependencies are modules too; by wave 53 the site had
50+ contrib modules nobody had ever put on a wave list. They need **no composer
resolution at all**, cannot fail to install, and are usually already enabled. Exhaust this
pool before requiring anything new — wave 53 was built entirely from it.

**B. The campaign list** — `scripts/next-wave.sh [N]`, then **pre-filter**:

```bash
scripts/next-wave.sh 250 | scripts/check-d11.sh --stdin --only-ok > wave.txt
```

`check-d11.sh` asks drupal.org's release-history feed whether a project has *any* D11
compatible release. This matters: in the rank ~1598-1801 slice, **26 of 40 projects had no
D11 release at all** and burned 1-2 minutes of composer resolution each before failing.
The check costs ~1s per project. It is a heuristic — a project can pass and still fail on
dependency conflicts — so composer remains the arbiter, but it removes the hopeless cases.

Record everything unusable in `scripts/.campaign-skip` **with a reason comment** so it is
never re-served. Entries must be bare project names on their own line (an inline `#`
comment on the same line will not match).

## Loop

For each module picked above:

1. **Pick the next module.** Take its `field_project_machine_name`,
   `field_composer_namespace`, `field_active_installs_total`, description, and category
   term refs from the feed. Skip modules already present under `modules/`.

2. **Install.** `composer require drupal/{name} -W`. Note the resolved version from the
   Composer output (e.g. `token (1.17.0)`). Prefer `scripts/safe-install.sh --file wave.txt`
   for a batch — it isolates failures and rolls composer.json back after each one.

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

6. **Write the docs** into `modules/{ab}/{name}/{version}/` (`{ab}` = machine name's first
   two letters — the bucket that keeps `modules/` browsable, e.g. `modules/to/token/1.17.x/`):
   - `data.json` — see [file-formats.md](file-formats.md).
   - `usage.md` — short summary `---` long summary `---` 15–30 use cases.
   - `agent/start.md` + `agent/{solution_type}/{name}.md` — only the solution types the
     module actually warrants (`configure`, `plugins`, `extend`, `api`, `hooks`, `drush`,
     `permissions`, `theming`). Each doc must be cheaper to read than the source.

7. **Recurse** into every submodule (step 4–6), writing it nested under its parent at
   `modules/{ab}/{parent}/modules/{submodule_name}/{version}/` (deeper if the submodule
   itself has submodules; the two-letter bucket applies only to the top-level parent).

8. **Update taxonomy.** Add any new category/subcategory to
   [`../categories.yml`](../categories.yml) — never duplicate an existing name.

9. **Advance** `pagination.md` when a page is fully processed.

## Verify before moving on

- `drush pm:list --status=enabled` includes the module.
- **It is really installed, not half-installed.** A module can sit in `core.extension` with no
  `system.schema` entry — `hook_install()` never ran, so default config is missing and the
  module misbehaves while reporting as Enabled. Check with
  [`../scripts/repair-half-installed.sh`](../scripts/repair-half-installed.sh) `--list`
  (`--repair N` fixes them via a real uninstall/install cycle, in batches of N).
- `data.json` is valid JSON; `usage.md` has three `---` blocks and 15–30 bullets.
- Links in `agent/start.md` resolve; the `configure` value matches a real route.
- Helper: [`../scripts/validate-docs.sh`](../scripts/validate-docs.sh) `modules/{ab}/{name}/{version}`
  (run it inside the container — it needs `php`).

## When a module cannot be documented live

Some modules install but cannot be enabled, or take the site down when they are. Document them
**from source** and say so explicitly in `data.json` (`version_note`) and at the top of
`agent/start.md`, with the actual error. Seen in waves 52–53:

- `content_sync` 5.0.x-dev — normalizer signature incompatible with core `serialization`; fatals
  every container build, and cannot be uninstalled with Drush because bootstrap fails. Recovery:
  remove it from `core.extension` directly in the `config` table, truncate the cache tables.
- `domain_language` 2.0.0-alpha2 — `services.yml` passes one argument to a four-argument
  constructor; the config override service is built during container compilation, so the site
  fatals as soon as it is enabled.
- `graphql_metatag` — targets the GraphQL 3.x plugin API (`graphql_core`), so it cannot be
  enabled alongside graphql 4/5 regardless of its core constraint.

A module that fatals the container blocks **every** subsequent `drush en` in the same wave, which
looks like the whole batch failing. If a wave's modules all report FAILED, check for one of these
first.
