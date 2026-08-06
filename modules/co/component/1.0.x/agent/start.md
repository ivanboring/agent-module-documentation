<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Component (component) — agent index

Exposes **JS components as Drupal blocks from a single YAML file** — no plugin class, no module.
Version **1.0.0-rc5**. Core `^9 || ^10 || ^11`. No dependencies.
Submodule: `component_example`.

**Documented from source. It fatals on every cache clear once enabled — verified.**

```yaml
component.discovery:
  class: Drupal\component\ComponentDiscovery
  tags:
    - { name: plugin_manager_cache_clear }
```

Core's `CachedDiscoveryClearer` calls `clearCachedDefinitions()` on every service with that tag.
`ComponentDiscovery implements ComponentDiscoveryInterface`, which declares only
`getComponents()`:

```
Error: Call to undefined method Drupal\component\ComponentDiscovery::clearCachedDefinitions()
```

**Worse than a broken `drush cr`:** module installation ends with a cache clear, so enabling it
fatals **mid-install** — after `core.extension` is written, before `system.schema` is. Here that
left `component` **and the seven other modules in the same batch** half-installed (reporting as
Enabled with `hook_install()` never run). Recovery: remove from `core.extension`, re-enable without
it.

One-line fix upstream: implement `CachedDiscoveryInterface`, or drop the tag.