<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Component lets a front-end developer expose a JavaScript component to Drupal as a placeable block by writing one YAML file — no plugin class, no module.

---

The friction it removes is real. Making a JS widget available to site builders normally means a block plugin, a form for its settings, a library definition and a template: four files and a module for something the front-end developer already finished. A single declarative file that says "here is the component, here are its settings, here is its library" is a much better ratio, and it keeps the component's definition next to the component.

**This release fatals on every cache clear once enabled, and it was verified.** `component.services.yml` registers:

```yaml
component.discovery:
  class: Drupal\component\ComponentDiscovery
  tags:
    - { name: plugin_manager_cache_clear }
```

Core's `CachedDiscoveryClearer` collects every service carrying that tag and calls
`clearCachedDefinitions()` on each. `ComponentDiscovery` implements only the module's own
`ComponentDiscoveryInterface`, which declares a single method, `getComponents()` — so the call
fails:

```
Error: Call to undefined method Drupal\component\ComponentDiscovery::clearCachedDefinitions()
  in Drupal\Core\Plugin\CachedDiscoveryClearer->clearCachedDefinitions()
```

The practical consequence is worse than a broken `drush cr`. Module installation ends with a cache
clear, so enabling `component` fatals **mid-install** — after `core.extension` has been written and
before `system.schema` is. On this site that left `component` and the seven other modules enabled
in the same batch half-installed, which is a state that reports as Enabled while `hook_install()`
never ran. Recovery meant removing them from `core.extension` and re-enabling without `component`.

The fix is one line: implement `CachedDiscoveryInterface`, or drop the tag. Until then the module
cannot be enabled on a site you intend to keep working, and this documentation is from source.

---

- Expose a JS component as a Drupal block.
- Define a component in a single YAML file.
- Avoid writing a block plugin per component.
- Keep a component's definition beside its code.
- Give site builders placeable front-end widgets.
- Declare a component's settings declaratively.
- Attach a library to a component.
- Reduce boilerplate for front-end developers.
- Diagnose a cache clear that fatals.
- Recognise the plugin_manager_cache_clear contract.
- Recover modules left half-installed by a mid-install fatal.
- Check for modules in core.extension without a system.schema entry.
- Understand why a module reports Enabled but misbehaves.
- Implement CachedDiscoveryInterface when tagging a service.
- Evaluate the module once the tag is fixed.