<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Aggregation JS CSS async defer (agg_jscss_asyncdefer) — agent index

Adds **`async`/`defer`** attributes to Drupal asset **libraries** and produces **aggregate files
that carry those attributes** (aggregates are split so each combined file holds only assets sharing
the same attribute). Version **1.0.1**, core `^10 || ^11`, package `Performance`, license
GPL-2.0-or-later. No dependencies, no permissions of its own, no Drush commands.

## How it works (from source)

The module owns no hooks. Instead `src/AggJscssAsyncdeferServiceProvider.php` **swaps three core
services** in the container:
- `asset.resolver` → `AssetResolverAggJscssAsyncdefer` (extends core `AssetResolver`).
- `asset.css.collection_grouper` → `CssCollectionGrouperAggJscssAsyncdefer`.
- `asset.js.collection_grouper` → `JsCollectionGrouperAggJscssAsyncdefer`.

`AssetResolverAggJscssAsyncdefer::getCssAssets()` / `::getJsAssets()` reimplement the core resolver
loops and, for each library asset, read config `agg_jscss_asyncdefer.settings` and inject
`$options['attributes']['async'|'defer'] = TRUE`:
- **`js_all` / `css_all`** (`none`|`async`|`defer`): if not `none`, the attribute is forced on
  **every** JS / CSS asset.
- **`libraries`** (`['async' => [...], 'defer' => [...]]`): per-library opt-in by full
  `extension/library` name. A library listed under `async` is skipped when `*_all` is `defer`, and
  vice-versa (the global force wins its opposite).
- Assets that would receive a **non**-async/defer attribute have `preprocess` forced to `FALSE`
  (excluded from aggregation); async/defer-only assets stay aggregatable.

The two grouper subclasses add the `async`/`defer` attribute name to the aggregation **group key**,
so core's optimizer builds a **separate aggregate** per attribute — a deferred bundle and an async
bundle instead of one mixed file. This is the "different compressed files based on the attribute"
behavior from the README.

## Configuration

- Form: `Drupal\agg_jscss_asyncdefer\Form\SettingsForm` (a standard `ConfigFormBase`).
- Route `agg_jscss_asyncdefer.settings` at **`/admin/config/development/performance/agg-jscss-asyncdefer`**
  (a tab under Configuration ▸ Development ▸ Performance).
- Access: permission **`administer site configuration`** (core permission; no custom permission).
- The form enumerates every library of core, each enabled module, the default theme, and its base
  theme, offering **None / Async / Defer** radios per library, plus the two "Force all JS / CSS"
  radios. Submit stores only libraries set to async/defer.
- Config keys: `js_all` (string), `css_all` (string), `libraries` (sequence). Schema in
  `config/schema/agg_jscss_asyncdefer.settings.schema.yml`. No default config ships; unset behaves
  as `none` / no libraries.

## Operational cautions

- **`async` reorders execution**; a script that depends on another not yet run fails
  **intermittently** (network-timing dependent, will not reproduce on a fast/local connection).
  `defer` preserves document order and is the safe default; reserve `async` for genuinely
  independent scripts (e.g. analytics).
- Core's own JS (`drupalSettings`, `once`, `Drupal.behaviors` on `DOMContentLoaded`) has
  dependencies, so forcing an attribute across **all** core/contrib libraries is the usual source of
  breakage. Prefer per-library selection; measure and test on a throttled connection.
- `css_all` / async-defer on stylesheet `<link>` elements is non-standard for CSS; treat it as
  experimental and verify rendering.

## Files

- `src/AggJscssAsyncdeferServiceProvider.php` — container service swaps.
- `src/AssetResolverAggJscssAsyncdefer.php` — attribute injection + preprocess handling.
- `src/CssCollectionGrouperAggJscssAsyncdefer.php`, `src/JsCollectionGrouperAggJscssAsyncdefer.php` —
  per-attribute aggregate grouping.
- `src/Form/SettingsForm.php` — settings form.
- Menu/task links: `agg_jscss_asyncdefer.links.menu.yml`, `.links.task.yml`.

See `../usage.md` for prose and use cases.
