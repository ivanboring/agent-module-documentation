<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Import (project `confi`, module `config_import`) — agent index

A service for importing/exporting a **named subset** of configuration. No routes, no permissions,
no schema, no Drush of its own, no module dependencies. Core `^11` only.

> **Naming:** the drupal.org project is **`confi`**; the module machine name, services and
> namespace are **`config_import`**. `composer require drupal/confi`, then
> `drush en config_import`.

Key facts:
- Service **`config_import.importer`** → `ConfigImporterService`
  (interface `ConfigImporterServiceInterface`):

  | Method | Purpose |
  |---|---|
  | `setDirectory($directory)` / `getDirectory()` | Source directory for the import |
  | `importConfigs(array $configs)` | Import the named config objects |
  | `exportConfigs(array $configs)` | Export the named config objects |

  Constructor arguments show it does a *real* import rather than raw writes: `uuid`,
  `config.storage`, `config.manager`, `event_dispatcher`, `lock`, `config.typed`,
  `module_handler`, `module_installer`, `theme_handler`, `string_translation`, `file_system`,
  `extension.list.module`, `extension.list.theme`.
- Service **`config_import.param_updater`** → `ConfigParamUpdaterService`
  (`config.manager`, `logger.factory`) for updating individual parameters inside config.
- `ConfigImportServiceProvider` registers/alters the services.
- Alter hook (`config_import.api.php`):

  ```php
  function hook_config_import_configs_alter(array &$configs) {
    $configs[] = 'action.settings';
  }
  ```

Typical use in an update hook:

```php
function mymodule_update_10001() {
  $importer = \Drupal::service('config_import.importer');
  $importer->setDirectory(\Drupal::service('extension.list.module')->getPath('mymodule') . '/config/install');
  $importer->importConfigs([
    'views.view.my_view',
    'core.entity_view_display.node.article.teaser',
  ]);
}
```

Note: importing a config object that already exists **overwrites** it — including editor changes
made on the live site. List only what you intend to reset.
