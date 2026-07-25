# Devel Kint Extras — agent index (DEPRECATED / OBSOLETE)

**Do not try to enable this module.** It is marked `lifecycle: obsolete` in its `.info.yml`
and `drush en devel_kint_extras` fails with "module 'devel_kint_extras' is obsolete".

## What it was

A dev-only add-on for **Devel**. It replaced Devel's `kint` dumper with `KintExtended` (class
`Drupal\devel_kint_extras\Plugin\Devel\Dumper\KintExtended`, extending Devel's `Kint` dumper)
via `hook_devel_dumper_info_alter()`, so a Kint dump (`kint()` / `ksm()`) also showed an
object's **methods and static properties**. Internally its `configure()` removed Kint's
`IteratorPlugin`, set internal-function aliases, disabled `RichRenderer::$folder`, and
shallow-blacklisted the service `ContainerInterface`.

## Why it is obsolete

Devel **removed its Kint integration in v5.4.0**
(https://www.drupal.org/project/devel/releases/5.4.0), so there is no Devel `kint` dumper left
to extend. Deprecation notice: https://www.drupal.org/node/3549864 and issue
https://www.drupal.org/project/devel_kint_extras/issues/3535663.

## What replaced it

The standalone **Kint module** — https://www.drupal.org/project/kint. Port requests for this
module's features belong in the Kint module's issue queue.

## Notes

- `devel_kint_extras_update_8001()` resets Devel's dumper from `kint_extended` back to `kint`
  if it was selected.
- No `configure/`, `api/`, or `plugins/` solution docs exist because the module provides no
  usable live surface on Drupal 11 — it cannot be installed.
