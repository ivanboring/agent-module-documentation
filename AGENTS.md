# Agent Module Documentation

A reusable, **agent-consumable** knowledge base of popular Drupal 11 contrib modules.
For each module we install it, read its code and config, and distill compact structured
docs an agent can read *instead of* the module source — cheaper in tokens, faster to act on.

This file is the specification. The step-by-step method lives in [`documentation/`](documentation/).

## Mission

Go module by module, in **popularity order**, over every module that supports Drupal 11.
For each one: fetch the latest release (highest major) compatible with Drupal 11 via
Composer, install and set it up, and produce three files that let an agent understand and
operate the module without reading its source.

## Data source

Modules come from the Drupal.org JSON:API, sorted by active installs, paginated:

```
https://www.drupal.org/jsonapi/node/project_module
  ?sort=-field_active_installs_total
  &filter[min][condition][path]=field_core_semver_minimum
  &filter[min][condition][operator]=<=
  &filter[min][condition][value]=11999999
  &filter[max][condition][path]=field_core_semver_maximum
  &filter[max][condition][operator]=>=
  &filter[max][condition][value]=11000000
```

- ~8 items per page. Advance with `page[offset]=N*8` (or `page[offset]` + `page[limit]`).
- The current page/offset we have reached is stored in [`pagination.md`](pagination.md)
  (just the integer) so any agent can resume.
- Release/version numbers are **not** in this feed — get the real installed version from
  Composer after `composer require`.
- See [`documentation/data-source.md`](documentation/data-source.md) for the field map.

## What we produce, per module

```
modules/{machine_name}/{major.minor.x}/
├── data.json          # structured metadata (see documentation/file-formats.md)
├── usage.md           # short summary / long summary / 15–30 use cases, split by ---
├── agent/
│   ├── start.md       # token-cheap index linking to the solution docs below
│   └── {solution_type}/{name}.md   # configure, plugins, extend, drush, api, hooks, ...
└── eval/
    └── evals.json     # easy + medium + hard eval cases (see the Evals section below)
```

**Submodules nest under their parent**, mirroring how they ship inside the project.
A submodule lives in a `modules/` directory *beside* the parent's version directory,
so its docs sit at `modules/{parent}/modules/{submodule}/{version}/…`. Nesting can be
more than one level deep when a submodule itself has submodules, e.g.:

```
modules/video_embed_field/3.1.x/…
modules/video_embed_field/modules/video_embed_media/3.1.x/…
modules/video_embed_field/modules/video_embed_media/modules/vem_migrate_oembed/3.1.x/…
```

Admin-UI screenshots are stored **outside this repo**, one level up at the project root
(`<project-root>/screenshots/{machine_name}/{major.minor.x}/*.png`), and referenced from the
solution docs. They are binary artifacts we intentionally do not commit.

- The version directory is `major.minor.x` (patch dropped), derived from the installed
  release, e.g. `token/1.17.x`, `pathauto/1.15.x`.
- **Submodules** shipped inside a module each get their own tree with the same three
  files, nested under the parent at
  `modules/{parent}/modules/{submodule_machine_name}/{version}/` (see the layout above).
- Every `agent/**/*.md` must be **shorter than reading the equivalent source** — that is
  the whole point. If it isn't, cut it.

## Categories

[`categories.yml`](categories.yml) is the canonical category → subcategory taxonomy.
Consult it before inventing a category name so we don't create duplicates. Top-level
categories are seeded from Drupal.org's official module-category vocabulary; subcategories
grow organically as modules are processed. Add new names there, never duplicate.

## Install & setup rules

- This is a Drupal 11 site in DDEV (`module-documentor`). From the **host** prefix commands
  with `ddev` (`ddev composer`, `ddev drush`); **inside the container** run `composer` /
  `drush` directly.
- Install: `composer require drupal/{name} -W`, then `drush en {name} -y`.
- Setup: read exported/default config, resolve the `configure` route from `*.info.yml`,
  note permissions and any Drush commands.
- **Use the simplest tool for each step** (`drush`/config over the UI). When a module has
  admin forms/UI, drive them with `agent-browser` and save screenshots to
  `<project-root>/screenshots/{name}/{version}/` — **outside this repo** (screenshots are
  binaries we do not commit) — see
  [`documentation/browser-screenshots.md`](documentation/browser-screenshots.md).
- **Test every code snippet** you put in a doc against the live site before committing it.
- Installs are **cumulative** (modules are left enabled). If the site breaks, reinstall it
  with `drush site:install -y` and continue — nothing here depends on site content.

## Evals

Every module gets an `eval/evals.json`, and it must **always contain all three difficulty
tiers** — do not stop at asking questions. See [`evaluation/README.md`](evaluation/README.md)
for the exact case shape, grading, and harness mechanics. Aim for **2-3 cases of each tier**:

- **easy** (`mode: "recipe"`) — answer a question out of the box, graded on the response
  text (`must_contain_any` / `must_not_contain`). No site changes.
- **medium** (`mode: "introspection"`) — answer a question about the module's *current
  setup on the live site*. A per-case `setup` script first saves a **known config** (an
  entity, a settings value, a field, a plugin instance); the agent must inspect the running
  site to answer; a `cleanup` script restores the baseline. This proves the agent can find
  and read real configuration, not just recite docs.
- **hard** (`mode: "execution"`) — the agent must **build** something and it is verified
  against live state. A `reset` script clears state, the agent writes the config / creates
  the entities / codes the plugin, and a `verify` script checks the result (exit 0 = pass).

So the suite must exercise the full range: **read about it (easy) → look up how it's
configured here (medium) → configure it / write configs, entities, and plugins (hard)**.
Reset/setup/cleanup/verify scripts live in `evaluation/verify/` and are referenced from the
case (paths relative to the project root). Every script must be smoke-tested: a medium
`setup` makes the answer discoverable then `cleanup` restores baseline; a hard case must
FAIL on empty state, PASS after a correct build, and leave the site clean. Tag every case
with `difficulty` (`easy` | `medium` | `hard`). Do **not** run the eval harness as part of
documenting a module — authoring the cases is enough; runs are a separate step.

## Pipeline (summary)

1. Read `pagination.md`; fetch that page of the feed.
2. For each module: `composer require` → determine version → read code/config →
   `drush en` → set up → write `data.json`, `usage.md`, `agent/*`, and
   `eval/evals.json` (easy + medium + hard — see the Evals section).
3. Recurse into submodules.
4. Update `categories.yml`; advance `pagination.md`.

Full detail: [`documentation/workflow.md`](documentation/workflow.md).
Reusable helpers live in [`scripts/`](scripts/).
